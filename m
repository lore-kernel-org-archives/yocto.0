Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9896BE014DE
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 06:10:11 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 13 Jun 2013 09:10:10 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "scott.m.rifenbark@intel.com" <scott.m.rifenbark@intel.com>
Date: Thu, 13 Jun 2013 09:08:52 -0400
Thread-Topic: [PATCH] Clarified language for the rtc machine feature option
Thread-Index: Ac5oNybBCUICRiC4Qs60LYVVbOnFsA==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B910EC38C@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0049F1ED0048DE0049F33A
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH] Clarified language for the rtc machine feature option
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
X-List-Received-Date: Thu, 13 Jun 2013 13:10:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Bryan Evenson <bevenson@melinkcorp.com>

The language in the manual on how to disable the "rtc" machine feature was =
a little confusing upon first reading.  Reworded this section to clarify th=
e author's original intent.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 documentation/ref-manual/ref-features.xml |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/documentation/ref-manual/ref-features.xml b/documentation/ref-=
manual/ref-features.xml
index 7c43ab3..59b88cf 100644
--- a/documentation/ref-manual/ref-features.xml
+++ b/documentation/ref-manual/ref-features.xml
@@ -297,10 +297,10 @@
                     Because of this, the feature is backfilled and thus en=
abled
                     for all machines through the <filename>MACHINE_FEATURE=
S_BACKFILL</filename>
                     variable in the <filename>meta/conf/bitbake.conf</file=
name> file.
-                    However, your target device does not have this capabil=
ity.
-                    You can disable RTC support for your device without
-                    affecting other machines that need RTC support
-                    by adding the feature to your machine's
+                    However, if your target device does not have this capa=
bility,=20
+                    you can disable RTC support for your device without
+                    affecting other machines that need RTC support.
+                    Add the feature to your machine's
                     <filename>MACHINE_FEATURES_BACKFILL_CONSIDERED</filena=
me>
                     list in the machine's <filename>.conf</filename> file.
                     Adding the feature to this variable when it also
--=20
1.7.9.5

