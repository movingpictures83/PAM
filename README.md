# PAM
# Language: R
# Input: CSV
# Output: CSV
# Tested with: PluMA 1.1, R 4.0.0
# Dependencies: cluster_2.1.0

PluMA plugin to perform Partition Around Medoids (PAM) clustering (Kaufman and Rousseeuw, 1987).

The plugin takes as input a table of input data in column-separated value (CSV) format,
with samples as rows and measurements as columns.  Samples are then clustered based on values
of all measurements. 

Typically PAM requires a number of clusters to be specified in advance; however this 
plugin first uses an internal Silhouette plot to determine an optimal number of clusters,
and uses that when running PAM.

The output CSV file will contain samples as rows and two columns, the first with the name
of the sample (same as the input CSV), and the second with the cluster number.
