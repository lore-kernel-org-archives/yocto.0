Return-Path: <veerabrahmam.vr@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4248E0049D
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 23:37:10 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml211-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AOM98180; Thu, 06 Sep 2012 14:37:05 +0800 (CST)
Received: from SZXEML439-HUB.china.huawei.com (10.72.61.74) by
	szxeml211-edg.china.huawei.com (172.24.2.182) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Thu, 6 Sep 2012 14:36:32 +0800
Received: from SZXEML523-MBS.china.huawei.com ([169.254.6.74]) by
	szxeml439-hub.china.huawei.com ([10.72.61.74]) with mapi id
	14.01.0323.003; Thu, 6 Sep 2012 14:36:28 +0800
From: Veerabrahmam vr <veerabrahmam.vr@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 4/4] qemuimagetest: modifying the scenario file as per
	new test cases
Thread-Index: Ac2L+fIoirjQfV9kT6mlkEVcqX3kyg==
Date: Thu, 6 Sep 2012 06:36:28 +0000
Message-ID: <C175418477740840BC00A33D88D2C4FA523E3792@szxeml523-mbs.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.96]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 06 Sep 2012 00:01:23 -0700
Cc: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
Subject: [PATCH 4/4] qemuimagetest: modifying the scenario file as per new test cases
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
X-List-Received-Date: Thu, 06 Sep 2012 06:37:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

modified scenario files.

Signed-off-by: veerabrahmam <veerabrahmamvr@huawei.com>
---
 .../scenario/qemuarm/core-image-sato               |    3 +++
 .../scenario/qemuarm/core-image-sato-sdk           |    3 +++
 .../scenario/qemumips/core-image-sato              |    3 +++
 .../scenario/qemumips/core-image-sato-sdk          |    3 +++
 .../scenario/qemuppc/core-image-sato               |    3 +++
 .../scenario/qemuppc/core-image-sato-sdk           |    3 +++
 .../scenario/qemux86-64/core-image-sato            |    3 +++
 .../scenario/qemux86-64/core-image-sato-sdk        |    3 +++
 .../scenario/qemux86/core-image-sato               |    3 +++
 .../scenario/qemux86/core-image-sato-sdk           |    3 +++
 10 files changed, 30 insertions(+), 0 deletions(-)
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemuarm/core-image-sato
index 7a6353e..0e79703 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato
@@ -6,3 +6,6 @@ sanity zypper_search
 sanity rpm_query
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato-sdk b=
/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato-sdk
index 42b8e19..726842c 100644
--- a/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuarm/core-image-sato-sdk
@@ -7,3 +7,6 @@ sanity rpm_query
 sanity compiler
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemumips/core-image-sato b/sc=
ripts/qemuimage-tests/scenario/qemumips/core-image-sato
index 7a6353e..0e79703 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/core-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemumips/core-image-sato
@@ -6,3 +6,6 @@ sanity zypper_search
 sanity rpm_query
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemumips/core-image-sato-sdk =
b/scripts/qemuimage-tests/scenario/qemumips/core-image-sato-sdk
index 42b8e19..726842c 100644
--- a/scripts/qemuimage-tests/scenario/qemumips/core-image-sato-sdk
+++ b/scripts/qemuimage-tests/scenario/qemumips/core-image-sato-sdk
@@ -7,3 +7,6 @@ sanity rpm_query
 sanity compiler
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemuppc/core-image-sato
index 7a6353e..0e79703 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato
@@ -6,3 +6,6 @@ sanity zypper_search
 sanity rpm_query
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato-sdk b=
/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato-sdk
index 42b8e19..726842c 100644
--- a/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato-sdk
+++ b/scripts/qemuimage-tests/scenario/qemuppc/core-image-sato-sdk
@@ -7,3 +7,6 @@ sanity rpm_query
 sanity compiler
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato b/=
scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato
index 7a6353e..0e79703 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato
@@ -6,3 +6,6 @@ sanity zypper_search
 sanity rpm_query
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato-sd=
k b/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato-sdk
index 42b8e19..726842c 100644
--- a/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86-64/core-image-sato-sdk
@@ -7,3 +7,6 @@ sanity rpm_query
 sanity compiler
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemux86/core-image-sato b/scr=
ipts/qemuimage-tests/scenario/qemux86/core-image-sato
index 7a6353e..0e79703 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/core-image-sato
+++ b/scripts/qemuimage-tests/scenario/qemux86/core-image-sato
@@ -6,3 +6,6 @@ sanity zypper_search
 sanity rpm_query
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
diff --git a/scripts/qemuimage-tests/scenario/qemux86/core-image-sato-sdk b=
/scripts/qemuimage-tests/scenario/qemux86/core-image-sato-sdk
index 42b8e19..726842c 100644
--- a/scripts/qemuimage-tests/scenario/qemux86/core-image-sato-sdk
+++ b/scripts/qemuimage-tests/scenario/qemux86/core-image-sato-sdk
@@ -7,3 +7,6 @@ sanity rpm_query
 sanity compiler
 sanity connman
 sanity shutdown
+systemusage bash
+systemusage df
+systemusage syslog
--=20
1.7.7=

