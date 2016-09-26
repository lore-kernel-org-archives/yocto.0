Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88453E00C2E; Mon, 26 Sep 2016 05:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.34.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Sep 2016 05:01:49 PDT
Received: from COL004-OMC3S3.hotmail.com (col004-omc3s3.hotmail.com
	[65.55.34.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68F2E008FB
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 05:01:49 -0700 (PDT)
Received: from EUR02-AM5-obe.outbound.protection.outlook.com ([65.55.34.137])
	by COL004-OMC3S3.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 26 Sep 2016 05:00:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=yWn/V7GyX0oUqag3d6CVxLBV8xpEluEozjf86YNDUqQ=;
	b=h8GvaLh2Wd2rQhAjWm0J9NMTc1ZxFZOMmgKEulkV5U6oMoC4cFn5wTYVGgeSppGzk3vKHCEby85UdcNRCydpT2i+hie+y2DSah9lOAVpmDVPFazbJZoNfIQPBaU6H1oy0STgbLJ6HjYAyvgv8pI59Rsd63mpU1SPmzokkCTuDaEubt7/k3GGnqE2uele7Jy+fERrCT2NzHPQ9ZD60FMplJe45BvCwcppBkNPTPmaySjjxHs09V53GXohvM49V7MttnA4R627ROQrtqg+jkAwAfVQHN9r0uwhRYxlhprZIrXCpmtaTU++5nXM06XE4S4nnp9tQurh1xn9EGTqJJJp1Q==
Received: from AM5EUR02FT009.eop-EUR02.prod.protection.outlook.com
	(10.152.8.58) by AM5EUR02HT112.eop-EUR02.prod.protection.outlook.com
	(10.152.8.253) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 26 Sep 2016 12:00:43 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.8.60) by
	AM5EUR02FT009.mail.protection.outlook.com (10.152.8.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 26 Sep 2016 12:00:43 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.018; Mon, 26 Sep 2016 12:00:42 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Thread-Topic: [yocto] [meta-toraxdex] unrecoverable build error
Thread-Index: AQHSF87QUI7pZ12XKUmmB+wipPiGlKCLq1FF
Date: Mon, 26 Sep 2016 12:00:42 +0000
Message-ID: <HE1PR01MB1883682C2AB332B0A62FDB6192CD0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<CAHiDW_GJ1cJaX7ehQqoUCySk5renSb6oLnaY9ziERRjQSNH8PQ@mail.gmail.com>
In-Reply-To: <CAHiDW_GJ1cJaX7ehQqoUCySk5renSb6oLnaY9ziERRjQSNH8PQ@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.8.60)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.8.60 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [DtnPqLkma/Q7WNBikYcPDW8p8ZvzyjvR]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT112;
	6:ZnGkVqfv7wspmxkJRvFn9z2E7iMoFKd22LZnxa+AoOlL3KxhXcObwWi6WKup+IsgGx7chrBGrq2lGXauGxbxQD8W/C6cge5l5U/0aMu+ZoWwjq0BgtHBIKBpBYv2CPGqQ0pjr/0a37UYUF7O7ps9tP2nMiP64XNButqusDHmMH1dlgF7d8tMoUyYNEOMyY8zGmAgiykSslbbu/18hKODKIr1/UqIYX5c8zH8uZEH+LcyySnqA4nXa9JJFF6T0/OAh7bGx3BZJurh7pxfdfX14PiO1RHtio00GeXjQ23ANoA=;
	5:3wRym+q5MQHtfydtgnk6QlzeMChEA2Z13CNfTuo6bFdfQLH9YES6Ql4zyzpRe+0syPPcjsPdwKpetCb1j89o7onECWzYaOH+AtsLXy662fOfByVUCDD5NIwHgdZsfalF4niqacGqaSq/+zg/01568Q==;
	24:LLWbm0RWDuJ/qeSrQqG2CJ/Rl7UlXqJjzC7pkCBaMZ8+Jvax9uyQQTiMqRcYkgL/x2UVMw57kca0DBcxgD41ow4U3qywUX7wDgmyO9+EPQI=;
	7:Phpbw4Wj3tahzbWWQ+rtgFbsmEGvqm57ddxiLO02sJfIlcEmTazBm8FeJ5Mw6wDvD0yLPIeYF19r2hciO7enkYMvbzwEMemeFYYqCeQwo/HvI4yc2WLiTzaydkEs9f68iJRahPaFPGYtM5PpNT1wwPGv4Wtuuru6bg9m5L4iKovDccHrI8BWL4OCBps0JqNpofRUujoGPD51SgPAhfmYQJli7+MUrnKOLZLJYNYhZzl8kSI/+y3LzT/Tm58n/3W8bs6L88rieAXYbu+2jZlfplXqU+2JPn/hiDKhAh/xKVQH9l1Kxj+TRcs8bM5//MrU
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT112;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: c135c033-b12d-4248-470e-08d3e604bdd4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR02HT112;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR02HT112; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT112; 
x-forefront-prvs: 00770C4423
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2016 12:00:42.7724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT112
X-OriginalArrivalTime: 26 Sep 2016 12:00:48.0897 (UTC)
	FILETIME=[9EF8F710:01D217ED]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-toraxdex] unrecoverable build error
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
X-List-Received-Date: Mon, 26 Sep 2016 12:01:53 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883682C2AB332B0A62FDB6192CD0HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883682C2AB332B0A62FDB6192CD0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jussi,


>

>10-evdev.conf was moved from xserver-xorg to to the driver. If you are usi=
ng krogoth, xserver-xorg really should be new enough (>=3D1.18.0) to not in=
stall the file.
>Does meta-toradex maybe provide an older xorg?

Actually, I don't know.
In which kind of file can I find this information ?



________________________________
De : Jussi Kukkonen <jussi.kukkonen@intel.com>
Envoy=E9 : lundi 26 septembre 2016 10:18
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [meta-toraxdex] unrecoverable build error

On 25 September 2016 at 09:10, Karim ATIKI <karim_atiki@hotmail.com<mailto:=
karim_atiki@hotmail.com>> wrote:
>
> hi,
>
> During a core-image-x11  build   (yocto krogoth, meta-toradex) , I got th=
e following error I never encountered with Yocto:
>
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe xf86-=
input-evdev is trying to install files into a shared area when those files =
already exist. Those files and their manifest location are:
>    /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11=
/xorg.conf.d/10-evdev.conf
>  Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot
> Please verify which recipe should provide the above files.


 - Jussi


> The build has stopped as continuing in this scenario WILL break things, i=
f not now, possibly in the future (we've seen builds fail several months la=
ter). If the system knew how to recover from this automatically it would ho=
wever there are several different scenarios which can result in this and we=
 don't know which one this is. It may be you have switched providers of som=
ething like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in t=
hat case you need to execute the clean task for both recipes and it will re=
solve this error. It may be you changed DISTRO_FEATURES from systemd to ude=
v or vice versa. Cleaning those recipes should again resolve this error how=
ever switching DISTRO_FEATURES on an existing build directory is not suppor=
ted, you should really clean out tmp and rebuild (reusing sstate should be =
safe). It could be the overlapping files detected are harmless in which cas=
e adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your build is including two different conflicting versions of thing=
s (e.g. bluez 4 and bluez 5 and the correct solution for that would be to r=
esolve the conflict. If in doubt, please ask on the mailing list, sharing t=
he error and filelist above.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above mes=
sage is too much, the simpler version is you're advised to wipe out tmp and=
 rebuild (reusing sstate is fine). That will likely fix things in most (but=
 not all) cases.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed:=
 sstate_task_postfunc
> ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t20-kts/tmp/=
work/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0/temp/log.=
do_populate_sysroot.639
> ERROR: Task 2181 (/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg=
-driver/xf86-input-evdev_2.10.1.bb<http://xf86-input-evdev_2.10.1.bb>, do_p=
opulate_sysroot) failed with exit code '1'
>
>
> I cant' get rid of this error. I have deleted the tmp and sstate-cache...=
nothing. it always occurs again.
>
>
> Any idea?
>
>
> Z.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>

--_000_HE1PR01MB1883682C2AB332B0A62FDB6192CD0HE1PR01MB1883eurp_
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
<p>Hi Jussi,</p>
<p><br>
</p>
<p>&gt;</p>
<div dir=3D"ltr">&gt;10-evdev.conf was moved from xserver-xorg to to the dr=
iver. If you are using krogoth, xserver-xorg really should be new enough (&=
gt;=3D1.18.0) to not install the file.&nbsp;</div>
<div dir=3D"ltr">&gt;Does meta-toradex maybe provide an older xorg?<br>
</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Actually, I don't know.</div>
<div dir=3D"ltr">In which kind of file&nbsp;can I find this information ?</=
div>
<div><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 16px;"><br>
</span></div>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Jussi Kukkonen &lt;jus=
si.kukkonen@intel.com&gt;<br>
<b>Envoy=E9 :</b> lundi 26 septembre 2016 10:18<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [meta-toraxdex] unrecoverable build error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">On 25 September 2016 at 09:10, Karim ATIKI &lt;<a href=3D"=
mailto:karim_atiki@hotmail.com">karim_atiki@hotmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; hi,<br>
&gt;<br>
&gt; During a core-image-x11 &nbsp;build &nbsp; (yocto krogoth, meta-torade=
x) , I got the following error I never encountered with Yocto:<br>
&gt;<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe xf=
86-input-evdev is trying to install files into a shared area when those fil=
es already exist. Those files and their manifest location are:<br>
&gt; &nbsp; &nbsp;/home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/=
usr/share/X11/xorg.conf.d/10-evdev.conf<br>
&gt; &nbsp;Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot<br=
>
&gt; Please verify which recipe should provide the above files.<br>
<br>
</div>
<div dir=3D"ltr">
<div><br>
</div>
<div>&nbsp;- Jussi&nbsp;<br>
<br>
</div>
<div><br>
</div>
<div>&gt; The build has stopped as continuing in this scenario WILL break t=
hings, if not now, possibly in the future (we've seen builds fail several m=
onths later). If the system knew how to recover from this automatically it =
would however there are several different
 scenarios which can result in this and we don't know which one this is. It=
 may be you have switched providers of something like virtual/kernel (e.g. =
from linux-yocto to linux-yocto-dev), in that case you need to execute the =
clean task for both recipes and
 it will resolve this error. It may be you changed DISTRO_FEATURES from sys=
temd to udev or vice versa. Cleaning those recipes should again resolve thi=
s error however switching DISTRO_FEATURES on an existing build directory is=
 not supported, you should really
 clean out tmp and rebuild (reusing sstate should be safe). It could be the=
 overlapping files detected are harmless in which case adding them to SSTAT=
E_DUPWHITELIST may be the correct solution. It could also be your build is =
including two different conflicting
 versions of things (e.g. bluez 4 and bluez 5 and the correct solution for =
that would be to resolve the conflict. If in doubt, please ask on the maili=
ng list, sharing the error and filelist above.<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above =
message is too much, the simpler version is you're advised to wipe out tmp =
and rebuild (reusing sstate is fine). That will likely fix things in most (=
but not all) cases.<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function fail=
ed: sstate_task_postfunc<br>
&gt; ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t20-kts/t=
mp/work/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0/temp/l=
og.do_populate_sysroot.639<br>
&gt; ERROR: Task 2181 (/home/kai/yocto/poky-toradex/meta/recipes-graphics/x=
org-driver/<a href=3D"http://xf86-input-evdev_2.10.1.bb">xf86-input-evdev_2=
.10.1.bb</a>, do_populate_sysroot) failed with exit code '1'<br>
&gt;<br>
&gt;<br>
&gt; I cant' get rid of this error. I have deleted the tmp and sstate-cache=
...nothing. it always occurs again.<br>
&gt;<br>
&gt;<br>
&gt; Any idea?<br>
&gt;<br>
&gt;<br>
&gt; Z.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB1883682C2AB332B0A62FDB6192CD0HE1PR01MB1883eurp_--
