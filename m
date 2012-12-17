Return-Path: <david.c.nystrom@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1FF1E0073D
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:16:57 -0800 (PST)
Received: by mail-bk0-f48.google.com with SMTP id jc3so2780375bkc.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding;
	bh=SyYtXxZ9iyNplbEMxhjjV3nj90VHX4Hir7lIIFQw/co=;
	b=o6xU2nTu2kqLM8zdPmJDJGttVhw4c/lhzigkhnyZRkM+7X4y4068YXJnSxeCLFo+b8
	qYv5uuMe637M3QcF/18XCHwpXuqlynYho6pnB3ICnTRai8crG0g21HFsa213xlSMOl5f
	+S5fJ0IOc6wawhMelzheHJVNFtioxJcHExzzspJK1dI65YblnYTjr9DV/cy+VovLkli+
	fu2nhQrHB4SDx2EBwDHbVN2QAndLac2gDA98Kru4jFEq5Jl/mz6VVKpFZBdf3c1zUt+M
	/7MZ54oUiE28gcNTdkxFVTWjZ45gJjZThQcfVV1OPhu68FhG6wM2+z1kxWIQc5GS93R1
	2CXA==
Received: by 10.204.5.135 with SMTP id 7mr5951464bkv.48.1355757416266;
	Mon, 17 Dec 2012 07:16:56 -0800 (PST)
Received: from nysan (sestofw01.enea.se. [192.36.1.252])
	by mx.google.com with ESMTPS id c10sm9676613bkw.1.2012.12.17.07.16.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Dec 2012 07:16:55 -0800 (PST)
Received: by nysan (Postfix, from userid 1000)
	id 07E744004F7; Mon, 17 Dec 2012 16:16:47 +0100 (CET)
From: "=?UTF-8?q?David=20Nystr=C3=B6m?=" <david.c.nystrom@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 17 Dec 2012 16:16:37 +0100
Message-Id: <1355757397-8143-1-git-send-email-david.nystrom@enea.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH] Added ability to parse python sources to create-recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 15:16:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

Added python source parsing abilities to create-recipe.

Signed-off-by: David Nyström <david.nystrom@enea.com>
---
 scripts/create-recipe |   51 ++++++++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 48 insertions(+), 3 deletions(-)

diff --git a/scripts/create-recipe b/scripts/create-recipe
index 776c91d..a556e39 100755
--- a/scripts/create-recipe
+++ b/scripts/create-recipe
@@ -40,6 +40,8 @@ my $version = $predef_version;
 my $description = "";
 my $summary = "";
 my $url = "";
+my $homepage;
+my @rdepends;
 my $configure = "";
 my $localename = "";
 my @sources;
@@ -1679,6 +1681,7 @@ sub write_bbfile
 	open(BBFILE, ">${name}_$version.bb");
 	print BBFILE "SUMMARY = \"$summary\"\n";
 	print BBFILE "DESCRIPTION = \"$description\"\n";
+	print BBFILE "HOMEPAGE = \"$homepage\"\n";
 
 	print BBFILE "LICENSE = \"@license\"\n";
 	print BBFILE "LIC_FILES_CHKSUM = \"";
@@ -1698,6 +1701,10 @@ sub write_bbfile
 		print BBFILE "DEPENDS = \"@out\"\n\n";
 	};
 
+	if (@rdepends > 0) {
+	    print BBFILE "RDEPENDS_\$\{PN\} += \"@rdepends\"\n";
+	}
+
 	print BBFILE 'PR = "r0"' . "\n\n";
 	print BBFILE "SRC_URI = \"";
 	foreach (@sources) {
@@ -1734,6 +1741,7 @@ sub calculate_sums
     chomp($sha256sum);
 }
 
+
 ############################################################################
 #
 # Main program 
@@ -1820,6 +1828,40 @@ foreach (@dirs) {
 
 $fulldir = $dir;
 
+if ( -e "$dir/setup.py" ) {
+       	$python = 1;
+	push(@inherits, "distutils");
+	
+	system("cd $dir ; python setup.py build sdist &> /dev/null");	
+
+        $templic = `sed '/^License: */!d; s///;q' $dir/*.egg-info/PKG-INFO`;
+	chomp($templic);
+	push(@license, $templic);
+	$summary = `sed '/^Name: */!d; s///;q' $dir/*.egg-info/PKG-INFO`;
+	chomp($summary);
+	$description = `sed '/^Summary: */!d; s///;q' $dir/*.egg-info/PKG-INFO`;
+	chomp($description);
+	$homepage = `sed '/^Home-page: */!d; s///;q' $dir/*.egg-info/PKG-INFO`;
+	chomp($homepage);
+	$findoutput = `find $dir/*.egg-info/ -name "requires.txt" 2>/dev/null`;
+	@findlist = split(/\n/, $findoutput);
+	foreach (@findlist) {
+	    # Adding dependency do buildreqs should be removed when
+	    # distutils is unbroken, i.e. blocks setup.py install from 
+	    # downloading and installing dependencies.
+	    push(@buildreqs, `sed 's/[^a-zA-Z]//g' $dir/*.egg-info/requires.txt`);
+	    chomp(@buildreqs);	    
+	    foreach $item (@buildreqs) {
+		$item = "python-" . $item
+	    }
+	    push(@rdepends, `sed 's/[^a-zA-Z]//g' $dir/*.egg-info/requires.txt`);
+	    chomp(@rdepends);
+	    foreach $item (@rdepends) {
+		$item = "python-" . $item
+	    }
+	}
+}
+
 if ( -e "$dir/autogen.sh" ) {
 	$configure = "autogen";
 	$uses_configure = 1;
@@ -1859,7 +1901,6 @@ if (-e "$dir/$name.pro") {
 	push(@inherits, "qmake2");
 }
 
-
 #
 # This is a good place to generate configure.in
 #
@@ -1868,6 +1909,8 @@ if (length($configure) > 2) {
 		system("cd $dir ; ./autogen.sh &> /dev/null");
 	}
 }
+
+
 @files = <$dir/configure>;
 foreach (@files) {
 	process_configure("$_");
@@ -1893,8 +1936,10 @@ foreach (@files) {
 	guess_license_from_file("$_");
 }
 
-
-guess_description($dir);
+ 
+if ($python != 1) {
+        guess_description($dir);
+}
 
 #
 # Output of bbfile file
-- 
1.7.9.5


