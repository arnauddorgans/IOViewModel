

echo "--- Deleting old templates ---"

rm -rf ~/Library/Developer/Xcode/Templates/IOViewModel


echo "--- Installing new templates ---"

mkdir -p ~/Library/Developer/Xcode/Templates/IOViewModel
cp -r ./ViewModel.xctemplate 			~/Library/Developer/Xcode/Templates/IOViewModel

echo "--- Success ---"
