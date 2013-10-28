Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE31E01796
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 16:11:07 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Vavxh-00015I-34
	for yocto@yoctoproject.org; Tue, 29 Oct 2013 00:11:05 +0100
Received: from koontz.sgh.dk (unknown [192.168.0.31])
	by asrock (Postfix) with ESMTP id 2775B7EC32
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 00:11:05 +0100 (CET)
From: =?UTF-8?q?S=C3=B8ren=20Holm?= <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Tue, 29 Oct 2013 00:11:04 +0100
Message-Id: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH] e2fsprogs: Escape filenames in populate-extfs.sh
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 Oct 2013 23:11:08 -0000

[YOCTO #5401]
---
 .../e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh     | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
index 9eff030..7de720b 100644
--- a/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
+++ b/meta/recipes-devtools/e2fsprogs/e2fsprogs-1.42.8/populate-extfs.sh
@@ -35,7 +35,7 @@ DEBUGFS="debugfs"
 		fi
 
 		# Only stat once since stat is a time consuming command
-		STAT=$(stat -c "TYPE=\"%F\";DEVNO=\"0x%t 0x%T\";MODE=\"%f\";U=\"%u\";G=\"%g\"" $FILE)
+		STAT=$(stat -c "TYPE=\"%F\";DEVNO=\"0x%t 0x%T\";MODE=\"%f\";U=\"%u\";G=\"%g\"" "$FILE")
 		eval $STAT
 
 		case $TYPE in
@@ -43,20 +43,20 @@ DEBUGFS="debugfs"
 			echo "mkdir $TGT"
 			;;
 		"regular file" | "regular empty file")
-			echo "write $FILE $TGT"
+			echo "write \"$FILE\" \"$TGT\""
 			;;
 		"symbolic link")
-			LINK_TGT=$(readlink $FILE)
-			echo "symlink $TGT $LINK_TGT"
+			LINK_TGT=$(readlink "$FILE")
+			echo "symlink \"$TGT\" \"$LINK_TGT\""
 			;;
 		"block special file")
-			echo "mknod $TGT b $DEVNO"
+			echo "mknod \"$TGT\" b $DEVNO"
 			;;
 		"character special file")
-			echo "mknod $TGT c $DEVNO"
+			echo "mknod \"$TGT\" c $DEVNO"
 			;;
 		"fifo")
-			echo "mknod $TGT p"
+			echo "mknod \"$TGT\" p"
 			;;
 		*)
 			echo "Unknown/unhandled file type '$TYPE' file: $FILE" 1>&2
@@ -64,11 +64,11 @@ DEBUGFS="debugfs"
 		esac
 
 		# Set the file mode
-		echo "sif $TGT mode 0x$MODE"
+		echo "sif \"$TGT\" mode 0x$MODE"
 
 		# Set uid and gid
-		echo "sif $TGT uid $U"
-		echo "sif $TGT gid $G"
+		echo "sif \"$TGT\" uid $U"
+		echo "sif \"$TGT\" gid $G"
 	done
 
 	# Handle the hard links.
-- 
1.8.3.2


