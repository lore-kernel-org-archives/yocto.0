Return-Path: <Tudor.Florea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 1AD32E016BD
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 01:13:56 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.02.0318.001; Mon, 7 Oct 2013 10:13:50 +0200
From: Tudor Florea <Tudor.Florea@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm for
	latencytop
Thread-Index: AQHOvrkOM+aqysGEGUG2hURFmeEXupno7MTA
Date: Mon, 7 Oct 2013 08:13:48 +0000
Message-ID: <26724FB0BFCB3D4C91BDE184751AA3A42893C6B8@sestoex09.enea.se>
References: <1380640517-8681-1-git-send-email-tudor.florea@enea.com>
In-Reply-To: <1380640517-8681-1-git-send-email-tudor.florea@enea.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.157]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm for latencytop
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
X-List-Received-Date: Mon, 07 Oct 2013 08:13:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Kind reminder.

-----Original Message-----
From: Tudor Florea [mailto:tudor.florea@enea.com]=20
Sent: Tuesday, October 01, 2013 18:15
To: yocto@yoctoproject.org
Cc: Tudor Florea
Subject: [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm for latency=
top

Use xterm instead of vt100 in order to avoid having=20
unreadable output for latencytop due to some control characters.

Signed-off-by: Tudor Florea <tudor.florea@enea.com>
---
 .../src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java     |    =
2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetool=
s/actions/LatencytopHandler.java b/plugins/org.yocto.sdk.remotetools/src/or=
g/yocto/sdk/remotetools/actions/LatencytopHandler.java
index e931388..1ef34cb 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/LatencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actio=
ns/LatencytopHandler.java
@@ -13,7 +13,7 @@ package org.yocto.sdk.remotetools.actions;
=20
 public class LatencytopHandler extends DialogHandler {
 =09
-	private static String initCmd=3D"export PATH=3D$PATH:/usr/local/sbin:/usr=
/sbin:/sbin; cd; sudo latencytop\r";
+	private static String initCmd=3D"export TERM=3Dxterm; export PATH=3D$PATH=
:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
 =09
 	@Override
 	protected String getInitCmd() {
--=20
1.7.10.4


