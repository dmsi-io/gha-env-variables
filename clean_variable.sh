# https://kubernetes.io/docs/concepts/overview/working-with-objects/names/

INPUT="something/feature/---123-TEST-!@#$%-0000000000000000000000000000000000000000000000000012345---"
# echo $INPUT

# removes all content before and including last forward slash
SHORT_INPUT=${INPUT##*/}
# echo $SHORT_INPUT

# converts all alphabetical characters to lowercase
LOWERCASE=${SHORT_INPUT,,}
# echo $LOWERCASE

# replaces all non-alphanumeric characters with dashes
ALPHANUMERIC=$(echo $LOWERCASE | tr -cs '[:alnum:]' '-')
# echo $ALPHANUMERIC

# removes all leading and trailing dashes
NO_LEAD_TRAIL_DASHES=$(echo $ALPHANUMERIC | sed 's/^-\+//' | sed 's/-\+$//')
# echo $NO_LEAD_TRAIL_DASHES

# truncates string to 63 for subdomain maximum
TRUNCATE=${NO_LEAD_TRAIL_DASHES:0:63}

echo $TRUNCATE