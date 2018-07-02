Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D0E2E01381; Mon,  2 Jul 2018 13:13:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE002E010BB
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 13:13:36 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id u16-v6so7999227pfh.3
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2018 13:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ydxmA5GwKNgubC/aOn6pAfWsd3QmOO6A6ZYfGsz/HFY=;
	b=on6UIMFu1DkDQUQqWwcfCEsOszndK+H9y2guQIraluWqAO/yIDVQw8T1RV0u8vWe01
	XjVM9FKRnHVu+Yi80cMWNChWj+7e4xgTKZf6U9s/Q47MpFD0H66y/OxEBv4MyjsM6JGZ
	O8WQU1tf9EHN4KPjfT06vxQrjd+y2kUdooWjCqS3O4o+GX4OFByc+k2YpoHuw5UepTVO
	NalT891gyBUtXtQyYftk4czpxLsJzLITK6IgeLEa5or+tpkTjY9xLZTh88C5G/stDvDG
	Bwj9l6cqpiPj1f5ZQkV2HLOpwKil7p/qEqHZeZsY4sdN/2or/+S2o6uiMlydHR0ZxAep
	DZyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ydxmA5GwKNgubC/aOn6pAfWsd3QmOO6A6ZYfGsz/HFY=;
	b=rEiy/BZGqGkvqwtFcg1MsZ+i92+djdwCyTlmxKRVePrrJMg1mpRafUMPJg6gVO72o9
	hVqhutiDbh2atD2pYcHQdAXoHNygZ08yTPWxDAyeE4UuPtWsqdocz9uOMPwS1JARYxLJ
	9i0UpQ27ggV6x4MAa8GL9c2D5+NOi668MLcvT+MtlSxPnTN6ThWhlC+KZEh3AxiWg/Sn
	a/1x269sXzoLpLu9rytWWA7NyGOoJw4X6cMGufKO3ZuiK9n0qUY9ZwVi1nbBLc9xWPZu
	7GVnhKz1z2YmUda+HVGt23/lZFGyZe6I5o/p0TK1qPb46AaUlPR43Zs06zYlgFFadrpC
	YU2A==
X-Gm-Message-State: APt69E2fEwyGsFqrd96orWmyFyckSI2DLYIFvjb4DrYyYLaUTbc4tr/x
	9hpp9xSEBzY6+CZ85b02Ih/i6A==
X-Google-Smtp-Source: ADUXVKI5nZpZ53mQSrHbK7lE4/QaFy8IyGff+iOLE6zzTREiiUcVMwx3eZfYi7IqBttE/4wx4ziHiA==
X-Received: by 2002:a65:56cd:: with SMTP id
	w13-v6mr23374594pgs.227.1530562415701; 
	Mon, 02 Jul 2018 13:13:35 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4000:1184:2428:17ac:bf67:b172])
	by smtp.gmail.com with ESMTPSA id
	v1-v6sm14905223pfg.101.2018.07.02.13.13.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 02 Jul 2018 13:13:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  2 Jul 2018 13:13:33 -0700
Message-Id: <1530562413-8743-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: Nagalakshmi Veeramallu <nveeramallu@mvista.com>
Subject: [meta-security][PATCH] CVE-2018-11652 nikto: arbitray OS command injection via http server field.
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
X-List-Received-Date: Mon, 02 Jul 2018 20:13:39 -0000

From: Nagalakshmi Veeramallu <nveeramallu@mvista.com>

CSV Injection vulnerability in Nikto 2.1.6 and earlier allows remote attackers
to inject arbitrary OS commands via the Server field in an HTTP response header,
 which is directly injected into a CSV report.

Signed-off-by: Nagalakshmi Veeramallu <nveeramallu@mvista.com>
Reviewed-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/nikto/files/CVE-2018-11652.patch | 106 ++++++++++++++++++++++
 recipes-security/nikto/nikto_2.1.5.bb             |   3 +-
 2 files changed, 108 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/nikto/files/CVE-2018-11652.patch

diff --git a/recipes-security/nikto/files/CVE-2018-11652.patch b/recipes-security/nikto/files/CVE-2018-11652.patch
new file mode 100644
index 0000000..5ddb169
--- /dev/null
+++ b/recipes-security/nikto/files/CVE-2018-11652.patch
@@ -0,0 +1,106 @@
+From e759b3300aace5314fe3d30800c8bd83c81c29f7 Mon Sep 17 00:00:00 2001
+From: sullo <sullo@cirt.net>
+Date: Thu, 31 May 2018 23:30:03 -0400
+Subject: [PATCH] Fix CSV injection issue if server responds with a malicious
+ Server string & CSV output is opened in Excel or other spreadsheet app.
+ Potentially malicious cell start characters are now prefaced with a ' mark.
+ Thanks to Adam (@bytesoverbombs) for letting me know!
+
+Also fixed a crash in the outdated plugin if the $sepr field ends up being something that triggers a panic in split().
+
+CVE: CVE-2018-11652
+Upstream-Status: Backport
+Signed-off-by: Nagalakshmi Veeramallu <nveeramallu@mvista.com>
+---
+ plugins/nikto_outdated.plugin   |  2 +-
+ plugins/nikto_report_csv.plugin | 42 +++++++++++++++++++++++++++++------------
+ 2 files changed, 31 insertions(+), 13 deletions(-)
+
+diff --git a/plugins/nikto_outdated.plugin b/plugins/nikto_outdated.plugin
+index 72379cc..eb1d889 100644
+--- a/plugins/nikto_outdated.plugin
++++ b/plugins/nikto_outdated.plugin
+@@ -83,7 +83,7 @@ sub nikto_outdated {
+             $sepr = substr($sepr, (length($sepr) - 1), 1);
+ 
+             # break up ID string on $sepr
+-            my @T = split(/$sepr/, $mark->{'banner'});
++            my @T = split(/\\$sepr/, $mark->{'banner'});
+ 
+             # assume last is version...
+             for ($i = 0 ; $i < $#T ; $i++) { $MATCHSTRING .= "$T[$i] "; }
+diff --git a/plugins/nikto_report_csv.plugin b/plugins/nikto_report_csv.plugin
+index d13acab..b942e78 100644
+--- a/plugins/nikto_report_csv.plugin
++++ b/plugins/nikto_report_csv.plugin
+@@ -52,10 +52,12 @@ sub csv_open {
+ sub csv_host_start {
+     my ($handle, $mark) = @_;
+     $mark->{'banner'} =~ s/"/\\"/g;
+-    print OUT "\"$mark->{'hostname'}\","
+-      . "\"$mark->{'ip'}\","
+-      . "\"$mark->{'port'}\"," . "\"\"," . "\"\"," . "\"\","
+-      . "\"$mark->{'banner'}\"\n";
++    print $handle "\"" . csv_safecell($hostname) . "\","
++      . "\"" . csv_safecell($mark->{'ip'}) . "\","
++      . "\"" . csv_safecell($mark->{'port'}) . "\"," . "\"\"," . "\"\"," . "\"\","
++      #. "\"" . $mark->{'banner'} . "\"\n";
++      . "\"" . csv_safecell($mark->{'banner'}) . "\"\n";
++
+     return;
+ }
+ 
+@@ -65,26 +67,42 @@ sub csv_item {
+     my ($handle, $mark, $item) = @_;
+     foreach my $uri (split(' ', $item->{'uri'})) {
+         my $line = '';
+-        $line .= "\"$item->{'mark'}->{'hostname'}\",";
+-        $line .= "\"$item->{'mark'}->{'ip'}\",";
+-        $line .= "\"$item->{'mark'}->{'port'}\",";
++        $line .= "\"" . csv_safecell($hostname) . "\",";
++        $line .= "\"" . csv_safecell($item->{'mark'}->{'ip'}) . \",";
++        $line .= "\"" . csv_safecell($item->{'mark'}->{'port'}) . "\",";
+ 
+         $line .= "\"";
+         if ($item->{'osvdb'} ne '') { $line .= "OSVDB-" . $item->{'osvdb'}; }
+         $line .= "\",";
+ 
+         $line .= "\"";
+-        if ($item->{'method'} ne '') { $line .= $item->{'method'}; }
++        if ($item->{'method'} ne '') { $line .= csv_safecell($item->{'method'}); }
+         $line .= "\",";
+ 
+         $line .= "\"";
+-        if ($uri ne '') { $line .= $mark->{'root'} . $uri; }
++                       { $line .= csv_safecell($mark->{'root'}) . $uri; }
++               else { $line .= csv_safecell($ur
+         $line .= "\",";
+ 
+-        $item->{'message'} =~ s/"/\\"/g;
+-        $line .= "\"$item->{'message'}\"";
+-        print $handle "$line\n";
++       my $msg = $item->{'message'};
++       $uri=quotemeta($uri);
++       my $root = quotemeta($mark->{'root'});
++       $msg =~ s/^$uri:\s//;
++       $msg =~ s/^$root$uri:\s//;
++         $msg =~ s/"/\\"/g;
++        $line .= "\"" . csv_safecell($msg) ."\"";
++         print $handle "$line\n";
++
+     }
+ }
+ 
++###############################################################################
++# prevent CSV injection attacks
++sub csv_safecell {
++    my $celldata = $_[0] || return;
++    if ($celldata =~ /^[=+@-]/) { $celldata = "'" . $celldata; }
++    return $celldata;
++}
++
++
+ 1;
+-- 
+2.6.4
+
diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
index 8080d4a..19eb14f 100644
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ b/recipes-security/nikto/nikto_2.1.5.bb
@@ -7,7 +7,8 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://cirt.net/nikto/${BP}.tar.gz \
-           file://location.patch"
+           file://location.patch \
+           file://CVE-2018-11652.patch"
 
 SRC_URI[md5sum] = "efcc98a918becb77471ee9a5df0a7b1e"
 SRC_URI[sha256sum] = "0e672a6a46bf2abde419a0e8ea846696d7f32e99ad18a6b405736ee6af07509f"
-- 
2.7.4


