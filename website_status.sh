#!/bin/bash
SOCIAL_MEDIA_URL=("https://google.com" "https://facebook.com" "https://twitter.com")

# Array to save the responces
responce=()

# Make the request to the URL and add it to array "responce"
for ((i=0; i<3; i++))
do
responce+=$(curl -s "${SOCIAL_MEDIA_URL[$i]}")
done

# Check if get the responce and print if it down or up
for ((i=0; i<3; i++)); do
if [[ -z "${responce[$i]}" ]]; 
then
echo "[${SOCIAL_MEDIA_URL[$i]}] is UP"
else
echo "[${SOCIAL_MEDIA_URL[$i]}] is DOWN"
fi
done