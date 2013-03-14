Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B27ECE01460;
	Thu, 14 Mar 2013 12:53:04 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id ez12so4167906wid.5
	for <multiple recipients>; Thu, 14 Mar 2013 12:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to:cc
	:content-type; bh=yFdfno1E2H8Pvb2POozy61doTiNAS1JzuQJ9/Nvmjqw=;
	b=bzGB6Hi44Mi4UYSsptPdLySDPmWIIL4QSTxIQW4vGJL6aEo23Vmlp4LowUDjlpCeXc
	WeuXCF4KioJT1o2CHqhq4mQ8iS2yrQcky29kFEdQ1DE/GX1Pto/vyc1rWu2c2Q1r87nH
	uBO6pVuYs5zwMDh2ZQVypCrtvse/P75bNYMr77Ls2ccQfVQEEjlCrzxTPCM1r5yDgnZX
	5zWmdoOSG9m18Ovcm5+0wuR+JAo9qahFYaDfZRao2AF9ezf7gp1eT3lKNEPQNIttmI0Z
	yUJZ0ArnthVaL+DLneMd6907vH0+9iAJ9VvDOG0hyt+u+PXRcs4MMbceRk89biTte8Cg
	zprg==
X-Received: by 10.194.76.37 with SMTP id h5mr6777677wjw.21.1363290783178; Thu,
	14 Mar 2013 12:53:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 12:52:43 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 12:52:43 -0700
Message-ID: <CACzyEJ_WLRVObY-EuECAaF4UyCS8x9DJsHOhn9p45EhurS5g8g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: [PATCH] [meta-realtime] Add rt-app and define core-image-realtime
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
X-List-Received-Date: Thu, 14 Mar 2013 19:53:05 -0000
X-Groupsio-MsgNum: 12563
Content-Type: multipart/mixed; boundary=047d7bb03bc4db678e04d7e7deae

--047d7bb03bc4db678e04d7e7deae
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

This is for adding rt-app, please let me know what you think.
For next patch, I will add schedtool_dl

Regards,

Insop

----------------------------------------------------------------------------------

- "rt-app" is a test application that starts multiple periodic threads
  in order to simulate a real-time periodic load

  - run example

  root@qemux86:~# rt-app -t 100000:35000:d -D 1
  [rt-app] <notice> [0] Using SCHED_DEADLINE policy:
  [rt-app] <notice> [0] starting thread with period: 100000, exec:
  35000,deadline: 100000, priority: 10
  [rt-app] <notice> [0] Locking pages in memory
  deadline	dur.	slack	Budget	Used Budget
  0	100000	35000	35000	64705	305724113	305759126
  305824105	35013	64979
  0	100000	35000	35000	165100	305824508	305859531
  ....
  0	100000	35000	35000	864955	306524363	306559381
  306624105	35019	64724
  0	100000	35000	35000	965099	306624507	306659526
  306724105	35019	64578
  [rt-app] <notice> [0] Exiting.
---
 recipes-extended/images/core-image-realtime.bb     |   12 +++++++++
 ...adline-as-a-default-to-go-around-yocto-bu.patch |   26 ++++++++++++++++++
 recipes-tools/rt-app/rt-app.bb                     |   28 ++++++++++++++++++++
 3 files changed, 66 insertions(+)
 create mode 100644 recipes-extended/images/core-image-realtime.bb
 create mode 100644
recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
 create mode 100644 recipes-tools/rt-app/rt-app.bb

diff --git a/recipes-extended/images/core-image-realtime.bb
b/recipes-extended/images/core-image-realtime.bb
new file mode 100644
index 0000000..624aacf
--- /dev/null
+++ b/recipes-extended/images/core-image-realtime.bb
@@ -0,0 +1,12 @@
+require recipes-core/images/core-image-minimal-dev.bb
+
+DEPENDS = "linux-yocto"
+
+IMAGE_FEATURES += "package-management ssh-server-dropbear"
+EXTRA_IMAGE_FEATURES = "tools-debug debug-tweaks tools-profile dbg-pkgs"
+
+IMAGE_INSTALL = "\
+	${CORE_IMAGE_BASE_INSTALL} \
+	rt-app \
+	libgcc \
+	"
diff --git a/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
new file mode 100644
index 0000000..a697e89
--- /dev/null
+++ b/recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
@@ -0,0 +1,26 @@
+From 041b2b65889c44c47f90313c5bf9ce61effa96df Mon Sep 17 00:00:00 2001
+From: Insop Song <insop.song@gmail.com>
+Date: Sat, 9 Mar 2013 01:23:24 -0800
+Subject: [PATCH] set "--with-deadline" as a default to go around yocto build
+ error on deadline enabled
+
+---
+ configure.ac |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac b/configure.ac
+index a5e2990..64e57e4 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -34,7 +34,7 @@ AC_ARG_WITH([deadline],
+ 	[AS_HELP_STRING([--with-deadline],
+          [Add support for SCHED_DEADLINE])],
+ 	[],
+-	[with_deadline=no])
++	[with_deadline=yes])
+
+ AS_IF([test "x$with_deadline" != xno],
+ 	[AC_DEFINE([DLSCHED], [1], [Define if you have SCHED_DEADLINE support])
+--
+1.7.9.5
+
diff --git a/recipes-tools/rt-app/rt-app.bb b/recipes-tools/rt-app/rt-app.bb
new file mode 100644
index 0000000..acce437
--- /dev/null
+++ b/recipes-tools/rt-app/rt-app.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "rt-app is a test application that starts multiple
periodic threads in order to simulate a real-time periodic load"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM =
"file://COPYING;endline=339;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
+PR = "r1"
+
+SRCREV = "e81cbe9f76ee298feded17bb7455d4deb2fb32af"
+
+SRC_URI = "git://github.com/gbagnoli/rt-app.git \
+	file://0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch \
+	"
+
+S = "${WORKDIR}/git"
+
+inherit autotools gettext pkgconfig
+
+do_configure_prepend() {
+	autoreconf --install --verbose --force
+}
+
+do_install() {
+     	install -d ${D}${bindir}
+     	install -m 0755 src/rt-app ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/rt-app"
+
+PARALLEL_MAKE = ""
-- 
1.7.9.5

--047d7bb03bc4db678e04d7e7deae
Content-Type: application/octet-stream; 
	name="0001-Add-rt-app-and-define-core-image-realtime.patch"
Content-Disposition: attachment; 
	filename="0001-Add-rt-app-and-define-core-image-realtime.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_heac35dx0

RnJvbSA0NTIwNWQzMGZhYmZkYmQ3NjQxOWUxZTQ3NmJiZTQwMTIzOGYzYWM4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5zb25nQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAxNCBNYXIgMjAxMyAxMjo0Njo0NiAtMDcwMApTdWJqZWN0OiBbUEFUQ0hdIEFkZCBy
dC1hcHAgYW5kIGRlZmluZSBjb3JlLWltYWdlLXJlYWx0aW1lCgotICJydC1hcHAiIGlzIGEgdGVz
dCBhcHBsaWNhdGlvbiB0aGF0IHN0YXJ0cyBtdWx0aXBsZSBwZXJpb2RpYyB0aHJlYWRzCiAgaW4g
b3JkZXIgdG8gc2ltdWxhdGUgYSByZWFsLXRpbWUgcGVyaW9kaWMgbG9hZAoKICAtIHJ1biBleGFt
cGxlCgogIHJvb3RAcWVtdXg4Njp+IyBydC1hcHAgLXQgMTAwMDAwOjM1MDAwOmQgLUQgMQogIFty
dC1hcHBdIDxub3RpY2U+IFswXSBVc2luZyBTQ0hFRF9ERUFETElORSBwb2xpY3k6CiAgW3J0LWFw
cF0gPG5vdGljZT4gWzBdIHN0YXJ0aW5nIHRocmVhZCB3aXRoIHBlcmlvZDogMTAwMDAwLCBleGVj
OgogIDM1MDAwLGRlYWRsaW5lOiAxMDAwMDAsIHByaW9yaXR5OiAxMAogIFtydC1hcHBdIDxub3Rp
Y2U+IFswXSBMb2NraW5nIHBhZ2VzIGluIG1lbW9yeQogIGRlYWRsaW5lCWR1ci4Jc2xhY2sJQnVk
Z2V0CVVzZWQgQnVkZ2V0CiAgMAkxMDAwMDAJMzUwMDAJMzUwMDAJNjQ3MDUJMzA1NzI0MTEzCTMw
NTc1OTEyNgogIDMwNTgyNDEwNQkzNTAxMwk2NDk3OQogIDAJMTAwMDAwCTM1MDAwCTM1MDAwCTE2
NTEwMAkzMDU4MjQ1MDgJMzA1ODU5NTMxCiAgLi4uLgogIDAJMTAwMDAwCTM1MDAwCTM1MDAwCTg2
NDk1NQkzMDY1MjQzNjMJMzA2NTU5MzgxCiAgMzA2NjI0MTA1CTM1MDE5CTY0NzI0CiAgMAkxMDAw
MDAJMzUwMDAJMzUwMDAJOTY1MDk5CTMwNjYyNDUwNwkzMDY2NTk1MjYKICAzMDY3MjQxMDUJMzUw
MTkJNjQ1NzgKICBbcnQtYXBwXSA8bm90aWNlPiBbMF0gRXhpdGluZy4KLS0tCiByZWNpcGVzLWV4
dGVuZGVkL2ltYWdlcy9jb3JlLWltYWdlLXJlYWx0aW1lLmJiICAgICB8ICAgMTIgKysrKysrKysr
CiAuLi5hZGxpbmUtYXMtYS1kZWZhdWx0LXRvLWdvLWFyb3VuZC15b2N0by1idS5wYXRjaCB8ICAg
MjYgKysrKysrKysrKysrKysrKysrCiByZWNpcGVzLXRvb2xzL3J0LWFwcC9ydC1hcHAuYmIgICAg
ICAgICAgICAgICAgICAgICB8ICAgMjggKysrKysrKysrKysrKysrKysrKysKIDMgZmlsZXMgY2hh
bmdlZCwgNjYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMtZXh0ZW5k
ZWQvaW1hZ2VzL2NvcmUtaW1hZ2UtcmVhbHRpbWUuYmIKIGNyZWF0ZSBtb2RlIDEwMDY0NCByZWNp
cGVzLXRvb2xzL3J0LWFwcC9maWxlcy8wMDAxLXNldC13aXRoLWRlYWRsaW5lLWFzLWEtZGVmYXVs
dC10by1nby1hcm91bmQteW9jdG8tYnUucGF0Y2gKIGNyZWF0ZSBtb2RlIDEwMDY0NCByZWNpcGVz
LXRvb2xzL3J0LWFwcC9ydC1hcHAuYmIKCmRpZmYgLS1naXQgYS9yZWNpcGVzLWV4dGVuZGVkL2lt
YWdlcy9jb3JlLWltYWdlLXJlYWx0aW1lLmJiIGIvcmVjaXBlcy1leHRlbmRlZC9pbWFnZXMvY29y
ZS1pbWFnZS1yZWFsdGltZS5iYgpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi42
MjRhYWNmCi0tLSAvZGV2L251bGwKKysrIGIvcmVjaXBlcy1leHRlbmRlZC9pbWFnZXMvY29yZS1p
bWFnZS1yZWFsdGltZS5iYgpAQCAtMCwwICsxLDEyIEBACityZXF1aXJlIHJlY2lwZXMtY29yZS9p
bWFnZXMvY29yZS1pbWFnZS1taW5pbWFsLWRldi5iYgorCitERVBFTkRTID0gImxpbnV4LXlvY3Rv
IgorCitJTUFHRV9GRUFUVVJFUyArPSAicGFja2FnZS1tYW5hZ2VtZW50IHNzaC1zZXJ2ZXItZHJv
cGJlYXIiCitFWFRSQV9JTUFHRV9GRUFUVVJFUyA9ICJ0b29scy1kZWJ1ZyBkZWJ1Zy10d2Vha3Mg
dG9vbHMtcHJvZmlsZSBkYmctcGtncyIKKworSU1BR0VfSU5TVEFMTCA9ICJcCisJJHtDT1JFX0lN
QUdFX0JBU0VfSU5TVEFMTH0gXAorCXJ0LWFwcCBcCisJbGliZ2NjIFwKKwkiCmRpZmYgLS1naXQg
YS9yZWNpcGVzLXRvb2xzL3J0LWFwcC9maWxlcy8wMDAxLXNldC13aXRoLWRlYWRsaW5lLWFzLWEt
ZGVmYXVsdC10by1nby1hcm91bmQteW9jdG8tYnUucGF0Y2ggYi9yZWNpcGVzLXRvb2xzL3J0LWFw
cC9maWxlcy8wMDAxLXNldC13aXRoLWRlYWRsaW5lLWFzLWEtZGVmYXVsdC10by1nby1hcm91bmQt
eW9jdG8tYnUucGF0Y2gKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uYTY5N2U4
OQotLS0gL2Rldi9udWxsCisrKyBiL3JlY2lwZXMtdG9vbHMvcnQtYXBwL2ZpbGVzLzAwMDEtc2V0
LXdpdGgtZGVhZGxpbmUtYXMtYS1kZWZhdWx0LXRvLWdvLWFyb3VuZC15b2N0by1idS5wYXRjaApA
QCAtMCwwICsxLDI2IEBACitGcm9tIDA0MWIyYjY1ODg5YzQ0YzQ3ZjkwMzEzYzViZjljZTYxZWZm
YTk2ZGYgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5z
b25nQGdtYWlsLmNvbT4KK0RhdGU6IFNhdCwgOSBNYXIgMjAxMyAwMToyMzoyNCAtMDgwMAorU3Vi
amVjdDogW1BBVENIXSBzZXQgIi0td2l0aC1kZWFkbGluZSIgYXMgYSBkZWZhdWx0IHRvIGdvIGFy
b3VuZCB5b2N0byBidWlsZAorIGVycm9yIG9uIGRlYWRsaW5lIGVuYWJsZWQKKworLS0tCisgY29u
ZmlndXJlLmFjIHwgICAgMiArLQorIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQorCitkaWZmIC0tZ2l0IGEvY29uZmlndXJlLmFjIGIvY29uZmlndXJlLmFjCitp
bmRleCBhNWUyOTkwLi42NGU1N2U0IDEwMDY0NAorLS0tIGEvY29uZmlndXJlLmFjCisrKysgYi9j
b25maWd1cmUuYWMKK0BAIC0zNCw3ICszNCw3IEBAIEFDX0FSR19XSVRIKFtkZWFkbGluZV0sCisg
CVtBU19IRUxQX1NUUklORyhbLS13aXRoLWRlYWRsaW5lXSwgCisgICAgICAgICAgW0FkZCBzdXBw
b3J0IGZvciBTQ0hFRF9ERUFETElORV0pXSwKKyAJW10sCistCVt3aXRoX2RlYWRsaW5lPW5vXSkK
KysJW3dpdGhfZGVhZGxpbmU9eWVzXSkKKyAKKyBBU19JRihbdGVzdCAieCR3aXRoX2RlYWRsaW5l
IiAhPSB4bm9dLAorIAlbQUNfREVGSU5FKFtETFNDSEVEXSwgWzFdLCBbRGVmaW5lIGlmIHlvdSBo
YXZlIFNDSEVEX0RFQURMSU5FIHN1cHBvcnRdKQorLS0gCisxLjcuOS41CisKZGlmZiAtLWdpdCBh
L3JlY2lwZXMtdG9vbHMvcnQtYXBwL3J0LWFwcC5iYiBiL3JlY2lwZXMtdG9vbHMvcnQtYXBwL3J0
LWFwcC5iYgpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5hY2NlNDM3Ci0tLSAv
ZGV2L251bGwKKysrIGIvcmVjaXBlcy10b29scy9ydC1hcHAvcnQtYXBwLmJiCkBAIC0wLDAgKzEs
MjggQEAKK0RFU0NSSVBUSU9OID0gInJ0LWFwcCBpcyBhIHRlc3QgYXBwbGljYXRpb24gdGhhdCBz
dGFydHMgbXVsdGlwbGUgcGVyaW9kaWMgdGhyZWFkcyBpbiBvcmRlciB0byBzaW11bGF0ZSBhIHJl
YWwtdGltZSBwZXJpb2RpYyBsb2FkIgorU0VDVElPTiA9ICJkZXZlbCIKK0xJQ0VOU0UgPSAiR1BM
djIiCitMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO2VuZGxpbmU9MzM5O21kNT1l
NDNmYzE2ZmNjZDg1MTlmYmE0MDVmMGEwZmY2ZThhMyIKK1BSID0gInIxIgorCitTUkNSRVYgPSAi
ZTgxY2JlOWY3NmVlMjk4ZmVkZWQxN2JiNzQ1NWQ0ZGViMmZiMzJhZiIKKworU1JDX1VSSSA9ICJn
aXQ6Ly9naXRodWIuY29tL2diYWdub2xpL3J0LWFwcC5naXQgXAorCWZpbGU6Ly8wMDAxLXNldC13
aXRoLWRlYWRsaW5lLWFzLWEtZGVmYXVsdC10by1nby1hcm91bmQteW9jdG8tYnUucGF0Y2ggXAor
CSIKKworUyA9ICIke1dPUktESVJ9L2dpdCIKKworaW5oZXJpdCBhdXRvdG9vbHMgZ2V0dGV4dCBw
a2djb25maWcKKworZG9fY29uZmlndXJlX3ByZXBlbmQoKSB7CisJYXV0b3JlY29uZiAtLWluc3Rh
bGwgLS12ZXJib3NlIC0tZm9yY2UKK30KKworZG9faW5zdGFsbCgpIHsKKyAgICAgCWluc3RhbGwg
LWQgJHtEfSR7YmluZGlyfQorICAgICAJaW5zdGFsbCAtbSAwNzU1IHNyYy9ydC1hcHAgJHtEfSR7
YmluZGlyfQorfQorCitGSUxFU197UE59ID0gIiR7YmluZGlyfS9ydC1hcHAiIAorCitQQVJBTExF
TF9NQUtFID0gIiIKLS0gCjEuNy45LjUKCg==

--047d7bb03bc4db678e04d7e7deae--
