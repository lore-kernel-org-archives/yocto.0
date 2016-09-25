Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D526E00A1E; Sat, 24 Sep 2016 23:11:29 -0700 (PDT)
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
	*      [65.54.190.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Sep 2016 23:11:25 PDT
Received: from BAY004-OMC2S2.hotmail.com (bay004-omc2s2.hotmail.com
	[65.54.190.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0210E0098A
	for <yocto@yoctoproject.org>; Sat, 24 Sep 2016 23:11:25 -0700 (PDT)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([65.54.190.124])
	by BAY004-OMC2S2.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 24 Sep 2016 23:10:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=eM0KQjJoeTdT8EZh7XBIuhcmqOJQ+kUB2u7bkR29PLU=;
	b=Y4KjPWCgt5GTV0PTNBfAgBh52tunm04xVFB/uQy0LY31qPchmWkIZuGFdW+axrp++GRsny8dBFcAAB1WM4TjLKIVxvFphQaix1qUfefdpYQjnjtVuC56eO4yzqOV/RhiObxcdovTmrc9ujQBxXZXY2+xjU3Wj1kdgrMIJuwOi9TgPDzdqvWnyOrVIe8M/F97k94cz8Wr17A9Gxes1hfmLYYCmWOnwfU3iOsucRr+62Y/L07guoFHL1OEAxk2OMGYWQszhFYKVO8BdRFK07iGp6QJA1wkEzgXV5daZpA6SHbIxhQDXceUmFDGN1Fm/xXD1+zHeezeldvTcvdIfXIv+g==
Received: from VE1EUR01FT021.eop-EUR01.prod.protection.outlook.com
	(10.152.2.55) by VE1EUR01HT107.eop-EUR01.prod.protection.outlook.com
	(10.152.3.133) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Sun, 25 Sep 2016 06:10:20 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.2.52) by
	VE1EUR01FT021.mail.protection.outlook.com (10.152.2.223) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Sun, 25 Sep 2016 06:10:20 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.018; Sun, 25 Sep 2016 06:10:19 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][meta-toraxdex] unrecoverable build error 
Thread-Index: AQHSFvM8q5Ewu9dlXEaeteSRc7isAw==
Date: Sun, 25 Sep 2016 06:10:19 +0000
Message-ID: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.2.52)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.2.52 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wuRjrS9VjnuZeXCykLyTmC9pL0vwKVZw]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT107;
	6:y3p3wccR+W4hnMkSxv6k+afzLkFMtzrbodh87mfLTZy2NLAiVkHbSqjrIAHURKx3kfHqcwGodJ5qXhaArQCL89JIAtNTsz96F5HrsvYAe9PI0ibhvMLwns1wV/GqWEgmSSkvufgPH3OZR20UGphBER0RZTUAxc52xJ0ELcgScHP1KOGWcL0SJaKrohrPI4ACxR/meJzoJTwdqT8SNvdxsLKAaIJka/I0iI8GqzkeYO5ptZM2yVE/Vd225yWOOGhxoEqkbifpDmicv1QzaDk49N3c1g1pkzM68Li021Xgb6c=;
	5:8HoAs3N/XWavq5vSwGOWfGWJ3VDLaWmbdX9SCZcXuTi4Kvl4lY6vCi4uDhANgHWK5vXtJm8+rw62AjZeR+ou2Yx0vzLPPHD2wX7xHPAsJS4dHerOtVlmbn6DUdrnSPtG+kWhaF7UXPdt8fN0rZHWCg==;
	24:byPgccaxyHwowC6SCq/AIMktoMxpn9xHfiD+oGAmyV3k1SdrYGV21pEmO4Co8MiiyuyrAG5Lm5bN/uslouNUq5XLZQsomgutw6CVdNUck7s=;
	7:CdeBp25ax737b8UPnB3QZqHEsNFBYOhLp9k+F0FLMWa1R5Q4n1e8bpsg2ygWw1mEk1FH0M9WDBeAoFZjDCzngsX5QxVNRgIIBqo0FCgS5SjyzAGHGudp77UD2LZiU/d1/mISIe99eXSqYWmOzL9KfrkwK0yGbKqKSLVa44SzMSDcFAhqIxq5G40l/2v654YOcVx91DJ3bucIwhlcv9ThhHwzLyrRnv+b6KLEvGMK6JYqu++dXWHQuLXjSJxR03GVk1z0M1ugmCFzkT1Dl5i5aDYDXxC65eWfZDoTsSwvhPjLA3yGiLqOdqcrqfUCNhsL
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT107;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b9e0afe4-912b-4c7d-ca01-08d3e50aa08a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR01HT107;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR01HT107; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT107; 
x-forefront-prvs: 0076F48C8A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2016 06:10:19.3674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT107
X-OriginalArrivalTime: 25 Sep 2016 06:10:22.0326 (UTC)
	FILETIME=[7FBF1960:01D216F3]
Subject: [meta-toraxdex] unrecoverable build error
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
X-List-Received-Date: Sun, 25 Sep 2016 06:11:29 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18834F369C7B2C7149C9A56592CA0HE1PR01MB1883eurp_"

--_000_HE1PR01MB18834F369C7B2C7149C9A56592CA0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hi,


During a core-image-x11  build   (yocto krogoth, meta-toradex) , I got the =
following error I never encountered with Yocto:


ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe xf86-in=
put-evdev is trying to install files into a shared area when those files al=
ready exist. Those files and their manifest location are:
   /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11/x=
org.conf.d/10-evdev.conf
 Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break things, if =
not now, possibly in the future (we've seen builds fail several months late=
r). If the system knew how to recover from this automatically it would howe=
ver there are several different scenarios which can result in this and we d=
on't know which one this is. It may be you have switched providers of somet=
hing like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in tha=
t case you need to execute the clean task for both recipes and it will reso=
lve this error. It may be you changed DISTRO_FEATURES from systemd to udev =
or vice versa. Cleaning those recipes should again resolve this error howev=
er switching DISTRO_FEATURES on an existing build directory is not supporte=
d, you should really clean out tmp and rebuild (reusing sstate should be sa=
fe). It could be the overlapping files detected are harmless in which case =
adding them to SSTATE_DUPWHITELIST may be the correct solution. It could al=
so be your build is including two different conflicting versions of things =
(e.g. bluez 4 and bluez 5 and the correct solution for that would be to res=
olve the conflict. If in doubt, please ask on the mailing list, sharing the=
 error and filelist above.
ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above messa=
ge is too much, the simpler version is you're advised to wipe out tmp and r=
ebuild (reusing sstate is fine). That will likely fix things in most (but n=
ot all) cases.
ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed: s=
state_task_postfunc
ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t20-kts/tmp/wo=
rk/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0/temp/log.do=
_populate_sysroot.639
ERROR: Task 2181 (/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg-d=
river/xf86-input-evdev_2.10.1.bb, do_populate_sysroot) failed with exit cod=
e '1'



I cant' get rid of this error. I have deleted the tmp and sstate-cache...no=
thing. it always occurs again.


Any idea?


Z.

--_000_HE1PR01MB18834F369C7B2C7149C9A56592CA0HE1PR01MB1883eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>hi,</p>
<p><br>
</p>
<p>During a core-image-x11&nbsp; build &nbsp;&nbsp;(yocto krogoth, meta-tor=
adex) , I got the following error I never encountered with Yocto:</p>
<p><i><br>
</i></p>
<p></p>
<div><span style=3D"color: rgb(255, 0, 0);"><i>ERROR: xf86-input-evdev-2_2.=
10.1-r0 do_populate_sysroot: The recipe xf86-input-evdev is trying to insta=
ll files into a shared area when those files already exist. Those files and=
 their manifest location are:</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>&nbsp; &nbsp;/home/kai/yocto=
/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11/xorg.conf.d/10-evde=
v.conf</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>&nbsp;Matched in manifest-co=
libri-t20-xserver-xorg.populate_sysroot</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>Please verify which recipe s=
hould provide the above files.</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>The build has stopped as con=
tinuing in this scenario WILL break things, if not now, possibly in the fut=
ure (we've seen builds fail several months later). If the system knew how t=
o recover from this automatically
 it would however there are several different scenarios which can result in=
 this and we don't know which one this is. It may be you have switched prov=
iders of something like virtual/kernel (e.g. from linux-yocto to linux-yoct=
o-dev), in that case you need to
 execute the clean task for both recipes and it will resolve this error. It=
 may be you changed DISTRO_FEATURES from systemd to udev or vice versa. Cle=
aning those recipes should again resolve this error however switching DISTR=
O_FEATURES on an existing build
 directory is not supported, you should really clean out tmp and rebuild (r=
eusing sstate should be safe). It could be the overlapping files detected a=
re harmless in which case adding them to SSTATE_DUPWHITELIST may be the cor=
rect solution. It could also be
 your build is including two different conflicting versions of things (e.g.=
 bluez 4 and bluez 5 and the correct solution for that would be to resolve =
the conflict. If in doubt, please ask on the mailing list, sharing the erro=
r and filelist above.</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>ERROR: xf86-input-evdev-2_2.=
10.1-r0 do_populate_sysroot: If the above message is too much, the simpler =
version is you're advised to wipe out tmp and rebuild (reusing sstate is fi=
ne). That will likely fix things in
 most (but not all) cases.</i></span></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>ERROR: xf86-input-evdev-2_2.=
10.1-r0 do_populate_sysroot: Function failed: sstate_task_postfunc</i></spa=
n></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>ERROR: Logfile of failure st=
ored in: /home/kai/yocto/colibri-t20-kts/tmp/work/armv7ahf-vfp-poky-linux-g=
nueabi/xf86-input-evdev/2_2.10.1-r0/temp/log.do_populate_sysroot.639</i></s=
pan></div>
<div><span style=3D"color: rgb(255, 0, 0);"><i>ERROR: Task 2181 (/home/kai/=
yocto/poky-toradex/meta/recipes-graphics/xorg-driver/xf86-input-evdev_2.10.=
1.bb, do_populate_sysroot) failed with exit code '1'</i></span></div>
<div><br>
</div>
<br>
<p></p>
<p>I cant' get rid of this error. I have deleted the tmp and sstate-cache..=
.nothing. it always occurs again.</p>
<p><br>
</p>
<p>Any idea?</p>
<p><br>
</p>
<p>Z.</p>
</div>
</body>
</html>

--_000_HE1PR01MB18834F369C7B2C7149C9A56592CA0HE1PR01MB1883eurp_--
