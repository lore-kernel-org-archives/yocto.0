Return-Path: <prvs=156785dc31=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8DD9E00E17; Mon, 29 Jan 2018 02:22:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23FC4E00DA8
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 02:22:55 -0800 (PST)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w0TAMCIo019158; Mon, 29 Jan 2018 04:22:54 -0600
Received: from ni.com (skprod3.natinst.com [130.164.80.24])
	by mx0a-00010702.pphosted.com with ESMTP id 2frpb24av6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 29 Jan 2018 04:22:53 -0600
Received: from us-aus-exch2.ni.corp.natinst.com
	(us-aus-exch2.ni.corp.natinst.com [130.164.68.12])
	by us-aus-skprod3.natinst.com (8.16.0.22/8.16.0.21) with ESMTPS id
	w0TAMrjW032250
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 29 Jan 2018 04:22:53 -0600
Received: from us-aus-exch7.ni.corp.natinst.com (130.164.68.17) by
	us-aus-exch2.ni.corp.natinst.com (130.164.68.12) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 29 Jan 2018 04:22:52 -0600
Received: from us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) by
	us-aus-exch7.ni.corp.natinst.com (130.164.68.17) with Microsoft SMTP
	Server (TLS) id 15.0.1156.6; Mon, 29 Jan 2018 04:22:52 -0600
Received: from delcastillo3.amer.corp.natinst.com (130.164.49.7) by
	us-aus-exhub2.ni.corp.natinst.com (130.164.68.32) with Microsoft SMTP
	Server
	id 15.0.1156.6 via Frontend Transport; Mon, 29 Jan 2018 04:22:52 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: <opkg-devel@googlegroups.com>, <yocto@yoctoproject.org>
Date: Mon, 29 Jan 2018 04:23:15 -0600
Message-ID: <20180129102315.29220-1-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 2.15.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2018-01-29_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=2 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1711220000 definitions=main-1801290140
Subject: [PATCH] opkg-build: improve package reproducibility
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
X-List-Received-Date: Mon, 29 Jan 2018 10:22:56 -0000
Content-Type: text/plain

Implements some of the recommendations by reproducible-build.org [1]

- Set modification time to SOURCE_DATE_EPOCH env variable
- Enable deterministic sorting of directory entries
- Do not save timestamp on gzip compressed archive

bugzilla #11242

[1] https://reproducible-builds.org/docs/archives/

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 opkg-build | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/opkg-build b/opkg-build
index 0fe513a..7bfdd99 100755
--- a/opkg-build
+++ b/opkg-build
@@ -149,6 +149,7 @@ outer=ar
 noclean=0
 opkext=0
 compressor=gzip
+compressorargs="-9n"
 
 # Determine if tar supports the --format argument by checking the help output.
 #
@@ -222,6 +223,15 @@ done
 
 cext=$(compressor_ext $compressor)
 
+if [ $compressor = "gzip" ] ; then
+	# pgzip requires -T to avoid timestamps on the gzip archive
+	if gzip --help 2>&1 | grep -- "-T" > /dev/null; then
+		compressorargs="-9nT"
+	fi
+else
+	compressorargs=""
+fi
+
 shift $(($OPTIND - 1))
 
 # continue on to process additional arguments
@@ -267,9 +277,11 @@ fi
 tmp_dir=$dest_dir/IPKG_BUILD.$$
 mkdir $tmp_dir
 
+build_date="$(date --utc --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y-%m-%d)"
+
 echo $CONTROL > $tmp_dir/tarX
-( cd $pkg_dir && tar $ogargs -X $tmp_dir/tarX -c --$compressor $tarformat -f $tmp_dir/data.tar.$cext . )
-( cd $pkg_dir/$CONTROL && tar $ogargs -cz $tarformat -f $tmp_dir/control.tar.gz . )
+( cd $pkg_dir && tar $ogargs --sort=name --mtime=$build_date -X $tmp_dir/tarX -c $tarformat . | $compressor $compressorargs > $tmp_dir/data.tar.$cext )
+( cd $pkg_dir/$CONTROL && tar $ogargs --sort=name --mtime=$build_date -c $tarformat . | gzip $compressorargs > $tmp_dir/control.tar.gz )
 rm $tmp_dir/tarX
 
 echo "2.0" > $tmp_dir/debian-binary
@@ -284,7 +296,7 @@ rm -f $pkg_file
 if [ "$outer" = "ar" ] ; then
   ( cd $tmp_dir && ar -crf $pkg_file ./debian-binary ./control.tar.gz ./data.tar.$cext )
 else
-  ( cd $tmp_dir && tar -cz $tarformat -f $pkg_file ./debian-binary ./control.tar.gz ./data.tar.$cext )
+  ( cd $tmp_dir && tar -c --sort=name --mtime=$build_date $tarformat ./debian-binary ./control.tar.gz ./data.tar.$cext | gzip $compressorargs > $pkg_file )
 fi
 
 rm $tmp_dir/debian-binary $tmp_dir/data.tar.$cext $tmp_dir/control.tar.gz
-- 
2.15.1


