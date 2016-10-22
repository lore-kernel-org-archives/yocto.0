Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2485E00839; Sat, 22 Oct 2016 11:59:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.160 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC3S22.hotmail.com (bay004-omc3s22.hotmail.com
	[65.54.190.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF2EE00712
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 11:59:43 -0700 (PDT)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com ([65.54.190.189])
	by BAY004-OMC3S22.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 22 Oct 2016 11:59:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=cYDMdDIFiSGcBI4/ukrpoLOFW5K6V9HByEZfnQz03yU=;
	b=KMiqsnRoEfnIf1HFS0/FTDI6pNCIqKaqglH/WEw4fTPhIGQmI3wrPs6rsKCo0AqqTdR6de5I6cFXsporigDi/D7DhNRUb+JK++6YfU03DtXhow0NnNmlJny5Z3Y1SKdd4YzxOPbc/kcKT2Ve+MvTZZKYvHuLeDcaC8y1K8whLXY/75ee8ZOV0QIgkvoDl9fKzQeMEwMUEbQlpSN2tQRHAhSaWGyfDX9pzdUHhg1dF8Dphd0k1iEBe6MCfZKocgHiksn81NgWxnzSulycOHlnXKnQxjTmZM86EvbyxsOhviiZ5AOlmOfqKADCW27hfpU+tIeYND5WyAjGTqrWB0xZ4w==
Received: from DB5EUR01FT030.eop-EUR01.prod.protection.outlook.com
	(10.152.4.55) by DB5EUR01HT031.eop-EUR01.prod.protection.outlook.com
	(10.152.5.161) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Sat, 22 Oct 2016 18:59:40 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.4.60) by
	DB5EUR01FT030.mail.protection.outlook.com (10.152.4.254) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sat, 22 Oct 2016 18:59:40 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.021; Sat, 22 Oct 2016 18:59:39 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [raspberrypi3][meta-qt5] Failed to build
	meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCu6C0lPiBgAAQ2YCAAAFsLIAADBF5gAAfizQ=
Date: Sat, 22 Oct 2016 18:59:39 +0000
Message-ID: <HE1PR01MB18837C50555202631BDE3F9792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<682A676C-7174-476C-B845-13329DC857F9@gmail.com>,
	<HE1PR01MB18830215696B2C95CA18945F92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<HE1PR01MB1883F24DAFB37D6ED3C5956792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
In-Reply-To: <HE1PR01MB1883F24DAFB37D6ED3C5956792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [kTf3wHq6yc05KR9EHS0am5IUL0IdpOOd]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT031;
	6:jARpbmrvDXU8bgYiBxFUM9bz5WjuTbcpqOnduwC0kAeM3/vuzRCDQX/A5Y/3YJ4HBHdmYk+yebhO7pN/XkJ6C9tM3PxBPsmd48e5ydFXPXWae9XqPzYytdpgfEZ4jUcPZ0TO0V8dWT3rEw5lkuTjZBFLzQ9VjWieFyYokOoo1EQJbySEwUrmGVyclUe/DBPBUpVuEeRJ0nxtn3yKCmSZoabAHD49Bj8vykYOI4k9BacoMZbx/ZISv3/H9Ufz48MywLe/mx17K8TBpDdwrnU7DByBT44TQAaPr/g0NASiATpyWAJ1Mg2TUXiUAYOZUSwO;
	5:xbducNKw1+1Y9LFVYBwOXAbBG1l/7hO+rSusyBwhpYA4AwUTO4pAkdAHOwXRZ3+UxvINvUSZnoQpBCHmIoUBOufWZiIrmK00lfXIvA/ASBjp6YnEvQHtoX8LgbjxnLH3o0NKi8nZD5Y5VEleNJGLiPbovqtg0bPbPLxpU43tTbA=;
	24:e6uWA36PA2JN/QIpd7zu52KDwhom2U72e5Aa+jPEo3owuBfpLnu1cFjW3kxbSVlpJhWVXJ1C8aRU0IYPm1Amlzt9ir8PMdEw2E1sA/2Bs1k=;
	7:Ea9Wbj5kTg7Wm3/H+cVKVWPgLjp4yKoA1mCy+k1azIGTmcbIft3548f1m+Ivh/5u9GhXOHRRA0mAXMu0hfl8qBEiU8trN9d6EvlTHS1NBE2QLGRLgRfjpiB5dCyAvr87aeU75Uu0WIc33ERjnuOR260ZDq4pHBXuVHhhMTPU04AA1Mkn5gi/3B4MYD245OMditOVqjbVqGEkFMimBOzNL4Zt626Z693PQscsXS0y0PwTJkKvPNlWZCcR0CGhxt8Evy3IRJq8M6nYLraPv7wZTFVeRPz7F6G3Po9gB5TmJYIoYYzoeoT6Cp4jLmBqhvzGO2von+/F3d8Dpc+M02Wsc1JFNy53vOKp5W1i+EDse1I=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR01HT031;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 407d1b0d-5ade-4fdf-ff56-08d3faad9358
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR01HT031;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR01HT031; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT031; 
x-forefront-prvs: 01039C93E4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2016 18:59:39.5869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT031
X-OriginalArrivalTime: 22 Oct 2016 18:59:42.0766 (UTC)
	FILETIME=[72AA84E0:01D22C96]
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 18:59:45 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18837C50555202631BDE3F9792D70HE1PR01MB1883eurp_"

--_000_HE1PR01MB18837C50555202631BDE3F9792D70HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi ,


I just found out something interesting.

I setup a build with poky-krogoth, I didn't include any of my custom recipe=
s.


I've jsut included meta-raspberrypi in the layers.

Setup a machine "raspberrypi3"


Launched: bitbake gstreamer1.0-plugins-bad


It worked successfully.

Then, I deleted the tmp and sstate directories.


And I added in the local.conf:

DISTRO_FEATURES_remove =3D " x11 wayland".


Launched: bitbake gstreamer1.0-plugins-bad


>>>> It failed at the exact step (see below in the conversation)


Is there a problem with this configuration ?


Cheers,


Karim



________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : samedi 22 octobre 2016 19:03
=C0 : Khem Raj
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5


Hi Khem,


Furthermore, please find fattached the config.log of the gstreamer1.0-plugi=
ns-bad.

It looks like bcm_hoist is correctly detected thuogh.



Cheers,


Karim


________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : samedi 22 octobre 2016 18:19
=C0 : Khem Raj
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5


Khem,


I found the follwoing pc files, and bcm_host is found.



kai@odyssey:~/yocto/build-magnolia/tmp/work$ find . -name *.pc | grep userl=
and
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/g=
lesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/e=
gl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
cm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/v=
g.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgconfig/b=
rcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userland-d=
ev/usr/lib/pkgconfig/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/lib/p=
kgconfig/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/git/.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgconfig=
/brcmglesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmvg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/glesv2.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/egl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/bcm_host.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/vg.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmegl.pc
./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmglesv2.pc




________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : samedi 22 octobre 2016 18:13
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5


On Oct 22, 2016, at 8:16 AM, Karim ATIKI <karim_atiki@hotmail.com<mailto:ka=
rim_atiki@hotmail.com>> wrote:

Actually, it looks like the issue comes from gstreamer1.0-plugins-bad recip=
e.

This function, graphics_get_display_size, comes from libbcm_host which seem=
s to be present in sysroot.

In log.doconfigure i found:


checking for bcm_host_init in -lbcm_host... yes
checking bcm_host.h usability... yes
checking bcm_host.h presence... yes
checking for bcm_host.h... yes

So it seems that it found the necessary library.

However, in the logfile of the compile error, there is no "-lbcm_host" depe=
ndency at all.

Any idea to solve it ?

Look at the packageconfig files from userland package and see if its export=
ing the right libraries in .pc files.


Karim



________________________________
De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
<yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> de =
la part de Karim ATIKI <karim_atiki@hotmail.com<mailto:karim_atiki@hotmail.=
com>>
Envoy=E9 : samedi 22 octobre 2016 14:26
=C0 : yocto
Objet : [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5

Hi all,

Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-plu=
gins-bad.

The underlying error seems to be:

| ./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display_siz=
e

This function seems to come from bcm_host library.
Isn't it related to  RaspberryPi graphic libs ?

Should I add a specific dependency ?

Weird.

Karim


--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


--_000_HE1PR01MB18837C50555202631BDE3F9792D70HE1PR01MB1883eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-size: 12pt;">Hi ,</span><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-size: 12pt;"><br>
</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-size: 12pt;">I just found out something interesting.</s=
pan></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-size: 12pt;">I setup a build with poky-krogoth, I didn'=
t include any of my custom recipes.</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
I've jsut included meta-raspberrypi in the layers.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Setup a machine &quot;raspberrypi3&quot;</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;">Launched: bitbake gstreamer1.0-plugins-bad</span><br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;"><br>
</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;">It worked successfully.</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Ap=
ple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Se=
goe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16=
px;">Then, I deleted the tmp and sstate directories.</span></p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
And I added in the local.conf:</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
DISTRO_FEATURES_remove =3D &quot; x11 wayland&quot;.</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Launched: bitbake gstreamer1.0-plugins-bad</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
&gt;&gt;&gt;&gt; It failed at the exact step (see below in the conversation=
)</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Is there a problem with this configuration ?</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Cheers,</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
<br>
</p>
<p style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple=
 Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe=
 UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;=
">
Karim</p>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<br>
<p></p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 19:03<br>
<b>=C0 :</b> Khem Raj<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Khem,</p>
<p><br>
</p>
<p>Furthermore, please find fattached the config.log of the gstreamer1.0-pl=
ugins-bad.</p>
<p>It looks like bcm_hoist is correctly detected thuogh.</p>
<p><br>
</p>
<p><br>
</p>
<p>Cheers,</p>
<p><br>
</p>
<p>Karim</p>
<p><br>
</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 18:19<br>
<b>=C0 :</b> Khem Raj<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p>Khem,</p>
<p><br>
</p>
<p>I found the follwoing pc files, and bcm_host is found.</p>
<p><br>
</p>
<p><br>
</p>
<p></p>
<div>kai@odyssey:~/yocto/build-magnolia/tmp/work$ find . -name *.pc | grep =
userland</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/image/usr/lib/pkgcon=
fig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/packages-split/userl=
and-dev/usr/lib/pkgconfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/sysroot-destdir/usr/=
lib/pkgconfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/git/.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmvg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/glesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/bcm_host.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmegl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/package/usr/lib/pkgc=
onfig/brcmglesv2.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmvg.pc</div=
>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/glesv2.pc</div=
>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/egl.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/bcm_host.pc</d=
iv>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/vg.pc</div>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmegl.pc</di=
v>
<div>./raspberrypi3-poky-linux-gnueabi/userland/git-r5/build/brcmglesv2.pc<=
/div>
<div><br>
</div>
<br>
<p></p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 18:13<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
<div><br class=3D"">
<div>
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Oct 22, 2016, at 8:16 AM, Karim ATIKI &lt;<a href=3D"mai=
lto:karim_atiki@hotmail.com" class=3D"">karim_atiki@hotmail.com</a>&gt; wro=
te:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-style:normal; fon=
t-weight:normal; letter-spacing:normal; orphans:auto; text-align:start; tex=
t-indent:0px; text-transform:none; white-space:normal; widows:auto; word-sp=
acing:0px; font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Actually, it lo=
oks like the issue comes from gstreamer1.0-plugins-bad recipe.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">This function, =
graphics_get_display_size, comes from libbcm_host which seems to be present=
 in sysroot.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">In log.doconfig=
ure i found:</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<p class=3D"" style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"">checking for bcm_host_init in -lbcm_host... yes</div>
<div class=3D"">checking bcm_host.h usability... yes</div>
<div class=3D"">checking bcm_host.h presence... yes</div>
<div class=3D"">checking for bcm_host.h... yes</div>
<div class=3D""><br class=3D"">
</div>
So it seems that it found the necessary library.
<p class=3D"" style=3D"margin-top:0px; margin-bottom:0px"></p>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">However, in the=
 logfile of the compile error, there is no &quot;-lbcm_host&quot; dependenc=
y at all.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Any idea to sol=
ve it ?</div>
</div>
</div>
</blockquote>
<div><br class=3D"">
</div>
<div>Look at the packageconfig files from userland package and see if its e=
xporting the right libraries in .pc files.</div>
<br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-style:normal; fon=
t-weight:normal; letter-spacing:normal; orphans:auto; text-align:start; tex=
t-indent:0px; text-transform:none; white-space:normal; widows:auto; word-sp=
acing:0px; font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Karim</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<br class=3D"">
<br class=3D"">
<div class=3D"" style=3D"">
<hr class=3D"" tabindex=3D"-1" style=3D"display:inline-block; width:1054.46=
875px">
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, san=
s-serif" class=3D"" style=3D"font-size:11pt"><b class=3D"">De :</b><span cl=
ass=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:yocto-bounces@=
yoctoproject.org" class=3D"">yocto-bounces@yoctoproject.org</a>
 &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" class=3D"">yocto-bou=
nces@yoctoproject.org</a>&gt; de la part de Karim ATIKI &lt;<a href=3D"mail=
to:karim_atiki@hotmail.com" class=3D"">karim_atiki@hotmail.com</a>&gt;<br c=
lass=3D"">
<b class=3D"">Envoy=E9 :</b><span class=3D"Apple-converted-space">&nbsp;</s=
pan>samedi 22 octobre 2016 14:26<br class=3D"">
<b class=3D"">=C0 :</b><span class=3D"Apple-converted-space">&nbsp;</span>y=
octo<br class=3D"">
<b class=3D"">Objet :</b><span class=3D"Apple-converted-space">&nbsp;</span=
>[yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5</font>
<div class=3D"">&nbsp;</div>
</div>
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-size:12pt; font-f=
amily:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Hi all,</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Tryng to build =
the meta-toolchain-qt5, I've a failure while bulidng gst-plugins-bad.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">The underlying =
error seems to be:</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><i class=3D""><=
b class=3D""></b></i><span class=3D""><b class=3D""><i class=3D"">| ./.libs=
/libgstgl-1.0.so: undefined reference to `graphics_get_display_size</i></b>=
</span><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
">This function seems to come from bcm_host library.</span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
">Isn't it related to&nbsp; RaspberryPi graphic libs ?</span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Should I add a =
specific dependency ?</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Weird.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Karim</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
"><b class=3D""><i class=3D""><br class=3D"">
</i></b></span></div>
</div>
</div>
</div>
</div>
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">--<span clas=
s=3D"Apple-converted-space">&nbsp;</span></span><br class=3D"" style=3D"fon=
t-family:Times-Roman; font-size:14px; font-style:normal; font-weight:normal=
; letter-spacing:normal; orphans:auto; text-align:start; text-indent:0px; t=
ext-transform:none; white-space:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">____________=
___________________________________</span><br class=3D"" style=3D"font-fami=
ly:Times-Roman; font-size:14px; font-style:normal; font-weight:normal; lett=
er-spacing:normal; orphans:auto; text-align:start; text-indent:0px; text-tr=
ansform:none; white-space:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important">yocto
 mailing list</span><br class=3D"" style=3D"font-family:Times-Roman; font-s=
ize:14px; font-style:normal; font-weight:normal; letter-spacing:normal; orp=
hans:auto; text-align:start; text-indent:0px; text-transform:none; white-sp=
ace:normal; widows:auto; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important"><a href=3D"m=
ailto:yocto@yoctoproject.org" class=3D"">yocto@yoctoproject.org</a></span><=
br class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-style:=
normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-align=
:start; text-indent:0px; text-transform:none; white-space:normal; widows:au=
to; word-spacing:0px">
<span class=3D"" style=3D"font-family:Times-Roman; font-size:14px; font-sty=
le:normal; font-weight:normal; letter-spacing:normal; orphans:auto; text-al=
ign:start; text-indent:0px; text-transform:none; white-space:normal; widows=
:auto; word-spacing:0px; float:none; display:inline!important"><a href=3D"h=
ttps://lists.yoctoproject.org/listinfo/yocto" class=3D"">https://lists.yoct=
oproject.org/listinfo/yocto</a></span></div>
</blockquote>
</div>
<br class=3D"">
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB18837C50555202631BDE3F9792D70HE1PR01MB1883eurp_--
