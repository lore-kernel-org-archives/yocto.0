Return-Path: <Tudor.Florea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 756ACE016BA
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 04:27:28 -0700 (PDT)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.02.0318.001; Mon, 14 Oct 2013 13:27:22 +0200
From: Tudor Florea <Tudor.Florea@enea.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm
	for	latencytop
Thread-Index: AQHOxslbWiJTMwlBGUSoiwd0sl1PQ5n0Dy2w
Date: Mon, 14 Oct 2013 11:27:22 +0000
Message-ID: <26724FB0BFCB3D4C91BDE184751AA3A42893EBEA@sestoex09.enea.se>
References: <1380640517-8681-1-git-send-email-tudor.florea@enea.com>
	<C6510F6D410BB64A8C15398EDC6B847C80507A3A@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C80507A3A@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.147]
MIME-Version: 1.0
Subject: Re: [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm for	latencytop
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
X-List-Received-Date: Mon, 14 Oct 2013 11:27:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,
Thank you for your quick follow up on this. Indeed, your approach for the f=
ix is more consistent.
Unfortunately, the commit for eclipse-poky-juno branch (http://git.yoctopro=
ject.org/cgit/cgit.cgi/eclipse-poky-juno/commit/?id=3Df55ee82475d714ca4dbb4=
e52399fc3a55ef6f4d8) have one line missing:
In the file TerminalHandler.java around the line 100 we need to use "change=
Term()" instead of "changeTerm".
Thank you,
  Tudor.


-----Original Message-----
From: Zhang, Jessica [mailto:jessica.zhang@intel.com]=20
Sent: Saturday, October 12, 2013 00:32
To: Tudor Florea; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm=
 for latencytop

Hi Tudor,

I fixed the issue with the following approach which is more consistent for
class inheritance and overriding:

http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-kepler/commit/?id=3D=
dbf
dae3b8f536eb327526647f49022c324e939ea

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]
On Behalf Of Tudor Florea
Sent: Tuesday, October 01, 2013 8:15 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH] [eclipse-poky-juno] sdk.remotetools: use xterm for
latencytop

Use xterm instead of vt100 in order to avoid having unreadable output for
latencytop due to some control characters.

Signed-off-by: Tudor Florea <tudor.florea@enea.com>
---
 .../src/org/yocto/sdk/remotetools/actions/LatencytopHandler.java     |    =
2
+-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/L=
a
tencytopHandler.java
b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/L=
a
tencytopHandler.java
index e931388..1ef34cb 100644
---
a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/L=
a
tencytopHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac
+++ tions/LatencytopHandler.java
@@ -13,7 +13,7 @@ package org.yocto.sdk.remotetools.actions;
=20
 public class LatencytopHandler extends DialogHandler {
 =09
-	private static String initCmd=3D"export
PATH=3D$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
+	private static String initCmd=3D"export TERM=3Dxterm; export=20
+PATH=3D$PATH:/usr/local/sbin:/usr/sbin:/sbin; cd; sudo latencytop\r";
 =09
 	@Override
 	protected String getInitCmd() {
--
1.7.10.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

