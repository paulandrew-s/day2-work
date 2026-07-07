# clearing project files
rm -rf ./project_files
rm -rf ./extracted_files
rm -rf project_files_backup.tar.gz

# creating directory
mkdir project_files
cd ./project_files

# creating files
touch file1.txt file2.txt file3.txt
echo "this is file 1" >> file1.txt
echo "this is file 2" >> file2.txt
echo "this is file 3" >> file3.txt

# copy and moving files
mkdir backup
cp file2.txt ./backup/file2_backup.txt
mv file3.txt ./backup/

# renaming files
mv ./backup/file3.txt ./backup/file3_backup.txt

# searching for files
find . -name "*backup"

# setting permissions
echo "echo hello" >> script.sh
chmod 777 script.sh

cd ..
tar -czvf project_files_backup.tar.gz project_files/


mkdir extracted_files
cp project_files_backup.tar.gz ./extracted_files
cd extracted_files
tar -xzvf project_files_backup.tar.gz




