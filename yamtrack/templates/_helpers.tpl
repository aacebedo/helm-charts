{{- define "yamtrack.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{- define "yamtrack.name" -}}
{{- if .Values.nameOverride -}}
{{- .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "yamtrack.labels" -}}
{{ include "yamtrack.selectorLabels" .}}
{{ if .Chart.Version -}}
{{ printf "app.kubernetes.io/chart-version: '%s'" .Chart.Version }}
{{- end }}
{{ if .Chart.AppVersion -}}
{{ printf "app.kubernetes.io/app-version: '%s'" .Chart.AppVersion }}
{{- end }}
{{- end -}}

{{- define "yamtrack.selectorLabels" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{ printf "app.kubernetes.io/name: %s" $name }}
{{ printf "app.kubernetes.io/instance: %s" .Release.Name }}
{{- end -}}
