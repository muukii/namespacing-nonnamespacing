#! /bin/zsh

# ファイルを作成するディレクトリを指定します。存在しない場合は作成します。
directory="./Sources/namespacing"
mkdir -p $directory

# 1から1000までの数字をループします。
for i in $(seq 1 1000)
do
    # ファイル名を指定します。
    filename="${directory}/Entity_Model_${i}.swift"

    # ファイルを作成し、内容には現在のループのインデックスを書き込みます。
    cat << EOF > $filename
public struct Entity_Model_$i {
  public var arg1: String = ""
  public var arg2: String = ""
  public var arg3: String = ""
  public var arg4: String = ""
  public var arg5: String = ""
  public var arg6: String = ""
  public var arg7: String = ""
  public var arg9: String = ""
}    
EOF
done

echo "Files created in $directory"
