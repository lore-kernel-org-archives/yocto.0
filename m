Return-Path: <sanzi.voicu@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18C9CE00CA1; Sat, 30 Apr 2016 03:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sanzi.voicu[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [72.30.238.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm35-vm0.bullet.mail.bf1.yahoo.com
	(nm35-vm0.bullet.mail.bf1.yahoo.com [72.30.238.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B20E00CA1
	for <yocto@yoctoproject.org>; Sat, 30 Apr 2016 03:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1462012167; bh=DkCyYR+7hoEOXRS0Lqysx+i9qU29IOMLs2lcR5TEkLM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject;
	b=FlqA9TDo+suP5ygxbI5M2WftZdbakR4MKhEhd/k12dHi/mwfrfVUNmn3VBcDNJsOI2vAA3aSpYW3JTC6CC/DbqS5O2VwiKLVLqtXHkc0e8CKLvduYzBt/uqfQqcleuv3y6ZAYaqEHXaSOdTjebyhhpGr1pmFfZEfzszC24iGboo2/0z/M3g3ry5h17TFNX/rrvD5UlprMHtsDwvkdiDIxW+1PVitVzGWMMc+bPxqUKVOtbd1JQRgaoj7A6F+LpRuuPXlCpKLB1bRzPF56gYK3a0gpWvVCsKIpRU33ReYhe4SkFj59YytAA084N9ipKxU1csOuf0KHezWEsPrB5+w8Q==
Received: from [66.196.81.172] by nm35.bullet.mail.bf1.yahoo.com with NNFMP;
	30 Apr 2016 10:29:27 -0000
Received: from [98.139.211.193] by tm18.bullet.mail.bf1.yahoo.com with NNFMP;
	30 Apr 2016 10:29:27 -0000
Received: from [127.0.0.1] by smtp202.mail.bf1.yahoo.com with NNFMP;
	30 Apr 2016 10:29:27 -0000
X-Yahoo-Newman-Id: 596342.39199.bm@smtp202.mail.bf1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: lx4U8m0VM1mMbIKq4LNfWHJBT7d8Xf8eEhiu32Ic28D_5oq
	gGB8lIU5yx6l0d5bIAEMSncSUGfVBuKEp8mmPO0Eme1ooZHJPdE2glhCdpc0
	DbH00sl3d4vXGxuuTmVIRZldaC2d06a8RV6gM4pMTzXql031zRQWSx8bFxxx
	43voPrh7.yridyiNbFQjKDnaeAbGrBNP78g667ogWECZ4RSSQg3lxKuR8LOJ
	qpLT_PS0m81tHheDGq254YJn0Hfjzmtl7eSQmVukRPJcjKYPVjFPDPDcZQYF
	ACBJiWNu2sAxaGfIwW0b9.igxa42GKd3JHq8axSlfszqEWB5nqsRoQMEgXMb
	nzsV1i4H39i6xIEYm7YMYEjKiz.6P.tbB8WRHnrh7j5FHJLNi7sFHjACnGvl
	d0m3heqhBl5LiYSVLxnXEjbuvP2ibhby.9FYMdsFobeqhUArpxIL9Ft4zu_2
	ssRg6MG7BvFFe0L0RBzfEwrttreKD_C0mczVckZ1Kckrc0uSeU_lCQWVEagk
	v2a_1oXIXmHjo5Xq0T9SffYQqigiDnmZ.zTybQgmSp0Y-
X-Yahoo-SMTP: I18nf8WswBCbDnbjxFg1KGYs2dWSvlUt
From: "Sanziana.Voicu" <sanzi.voicu@yahoo.com>
To: yocto@yoctoproject.org
Date: Sat, 30 Apr 2016 13:29:21 +0300
Message-Id: <1462012161-17330-2-git-send-email-sanzi.voicu@yahoo.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1462012161-17330-1-git-send-email-sanzi.voicu@yahoo.com>
References: <1462012161-17330-1-git-send-email-sanzi.voicu@yahoo.com>
Subject: [meta-cgl][PATCH] CGL Requirements Template Parser first draft
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
X-List-Received-Date: Sat, 30 Apr 2016 10:29:33 -0000

From: Sanziana Voicu <sanzi.voicu@yahoo.com>

The script creates three arrays for each type of requirement, based on
a template. The arrays are ordered for a highly costumisable search.
This script is the first component of a calculator/automatic template
parser and updater tool.

Signed-off-by: Sanziana Voicu <sanzi.voicu@yahoo.com>
---
 scripts/open.pl | 270 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 270 insertions(+)
 create mode 100644 scripts/open.pl

diff --git a/scripts/open.pl b/scripts/open.pl
new file mode 100644
index 0000000..dc229a5
--- /dev/null
+++ b/scripts/open.pl
@@ -0,0 +1,270 @@
+#!/usr/bin/perluse strict;
+
+use warnings;
+use diagnostics;
+use open ':std', ':encoding(UTF-8)';
+use Spreadsheet::ParseExcel;
+use Spreadsheet::ParseXLSX;
+
+my $parser = Spreadsheet::ParseExcel->new();
+my $workbook = $parser->parse('ECGL 5.0 for PPC Registration - P204x.xls');   
+
+my $avl_p1=1;
+my $avl_p2=1;
+my $index_p1=1;
+my $index_p2=1;
+
+
+#Worksheet Requirements
+my $worksheet = $workbook->worksheet(1);
+
+
+my $id = $worksheet->get_cell( 1, 0 );
+my $i = 1;
+my $aux = substr $id->value(), 0, 3;
+my @p1 = ();
+my @p2 = ();
+
+#AVL - Availability Requirements
+while ( $aux eq "AVL") {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();
+		$index_p2=$index_p2+1;	
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $cls_p1=$index_p1;
+my $cls_p2=$index_p2;
+
+
+#CLS - Clustering Requirements
+while ( ( $aux eq "CFH" ) || ( $aux eq "CSM" ) || ( $aux eq "CCM" ) || ( $aux eq "CAF" ) || ( $aux eq "CDI" ) ) {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();
+		$index_p2=$index_p2+1;	
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $srv_p1=$index_p1;
+my $srv_p2=$index_p2;
+
+#SRV - Serviceabilitu Requirements
+while ( ( $aux eq "SMM" ) || ( $aux eq "SPM" ) || ( $aux eq "SFA" ) ) {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();
+		$index_p2=$index_p2+1;	
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $prf_p1=$index_p1;
+my $prf_p2=$index_p2;
+
+#PRF - Performance Requirements
+while ( $aux eq "PRF" ) {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();
+		$index_p2=$index_p2+1;	
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $std_p1=$index_p1;
+my $std_p2=$index_p2;
+
+#STD - Standards Requirements
+while ( $aux eq "STD" ) {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();		
+		$index_p2=$index_p2+1;
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $sec_p1=$index_p1;
+my $sec_p2=$index_p2;
+
+#SEC - Security Requirements
+while ( $aux eq "SEC" ) {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();		
+		$index_p2=$index_p2+1;
+	}
+
+	$i=$i+1;
+	$id = $worksheet->get_cell( $i, 0 );
+	$aux = substr $id->value(), 0, 3;
+
+}
+
+my $pms_p1=$index_p1;
+my $pms_p2=$index_p2;
+
+#HW - Hardware Requirements
+my ( $row_min, $row_max ) = $worksheet->row_range();
+while ( $aux eq "PMS") {
+	$priority = $worksheet->get_cell( $i, 2 );
+
+	if ( $priority->value() eq "P1") {
+		$p1[1][$index_p1] = $id->value();
+		get_package_name_p1();
+		$index_p1=$index_p1+1;
+	}
+	else {
+		$p2[1][$index_p2] = $id->value();
+		get_package_name_p2();
+		$index_p2=$index_p2+1;	
+	}
+	$i=$i+1;
+	if ( $i != $row_max+1 ) {
+		$id = $worksheet->get_cell( $i, 0 );
+		$aux = substr $id->value(), 0, 3;
+	}
+
+}
+
+#Extragerea numelor pachetelor pentru P1.
+sub get_package_name_p1{
+
+   	$id = $worksheet->get_cell( $i, 3 );
+   	$aux = $id->value();
+   	$name=substr $aux, 0, 8;
+
+   	if ( $aux eq "not" ) {
+   		$p1[2][$index_p1] ="not";
+   	}
+   	else {
+  		if ( $name eq "Kernel (" ) {
+  			$p1[2][$index_p1] ="kernel";
+  		}
+  		else {
+   			if ( $aux eq "Kernel / Package Combination") {
+   				$id = $worksheet->get_cell( $i, 4 );
+   				$aux = $id->value();
+   				$p1[2][$index_p1] = $aux . "_k";
+   			}
+   			else {
+   				$id = $worksheet->get_cell( $i, 4 );
+   				$aux = $id->value();
+   				$p1[2][$index_p1] = $aux;
+   			}
+   		}
+   	}	
+}
+
+#Extragerea numelor pachetelor pentru P2.
+sub get_package_name_p2{
+
+   	$id = $worksheet->get_cell( $i, 3 );
+   	$aux = $id->value();
+   	$name=substr $aux, 0, 8;
+
+   	if ( $aux eq "Not" ) {
+   		$p2[2][$index_p2] ="Not";
+   	}
+   	else {
+  		if ( $name eq "Kernel (" ) {
+  			$p2[2][$index_p2] ="kernel";
+  		}
+  		else {
+   			if ( $aux eq "Kernel / Package Combination") {
+   				$id = $worksheet->get_cell( $i, 4 );
+   				$aux = $id->value();
+   				$p2[2][$index_p2] = $aux . "_k";
+   			}
+   			else {
+   				$id = $worksheet->get_cell( $i, 4 );
+   				$aux = $id->value();
+   				$p2[2][$index_p2] = $aux;
+   			}
+   		}
+   	}	
+}
+
+#Gaps
+my @g = ();
+
+$worksheet = $workbook->worksheet(2);
+
+$id = $worksheet->get_cell( 1, 0 );
+my $index_g = 1;
+
+( $row_min, $row_max ) = $worksheet->row_range(); 
+
+while ( $index_g <= $row_max ) {
+	$g[$index_g] = $id->value();
+	$index_g=$index_g+1;
+	if ( $index_g != $row_max+1 ) {
+		$id = $worksheet->get_cell( $index_g, 0 );
+	}
+}
\ No newline at end of file
-- 
2.5.0


