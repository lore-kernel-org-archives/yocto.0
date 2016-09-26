Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2572E00D99; Mon, 26 Sep 2016 06:12:29 -0700 (PDT)
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
	*      [65.55.90.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from SNT004-OMC2S5.hotmail.com (snt004-omc2s5.hotmail.com
	[65.55.90.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7573EE00C7C
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 06:12:25 -0700 (PDT)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com ([65.55.90.71])
	by SNT004-OMC2S5.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 26 Sep 2016 06:12:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=6pXPVkOoGcofxZ9rbMdOF3XHl26tE5uwbCU7PNM7T+o=;
	b=jF+X4EEd07ldTD7B5mzbxcexUWIGV9hCb3yQa+/Z8S4HVls/R3a0UhEwxpvGoQYLP6HoWH6G3c7MdmR2ogAtzRfZP9EswDzV35FCP96edKtTfjWfcVd/LMaTmE2OTT97hLN5rBoIbfyiLy0/RxGjCSpwoCKqrduuF6WWjcURZxQLf6Q4uYrXL5S52B2qOG0SveyR4h32xGGAD0uxXD+dS0xDAeoHatdeqtFdVK9fN408Siwj6nJqV5TMpMu0dDV9GK8tJKT5Jr/y6XAQ7EdTGz8moY3BS0hhs/Z8+2WJFdyBbN6pyC32pbV+57w2uuN91BK9kIsvTJMjLKMR9gxtKg==
Received: from AM5EUR03FT007.eop-EUR03.prod.protection.outlook.com
	(10.152.16.52) by AM5EUR03HT142.eop-EUR03.prod.protection.outlook.com
	(10.152.16.249) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 26 Sep 2016 13:12:23 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.16.51) by
	AM5EUR03FT007.mail.protection.outlook.com (10.152.16.145) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 26 Sep 2016 13:12:22 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.018; Mon, 26 Sep 2016 13:12:22 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-toraxdex] unrecoverable build error
Thread-Index: AQHSF8e5BX3C5/UgUUWHbUb3lQF9FKCLvyfz
Date: Mon, 26 Sep 2016 13:12:22 +0000
Message-ID: <HE1PR01MB18835A21AF63FDCEAE31BAE092CD0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<CAMKF1sqQnvxFeXkTVuPFgGFH1ai+N=fznG4EaZ8OwpMjdMuqjw@mail.gmail.com>
In-Reply-To: <CAMKF1sqQnvxFeXkTVuPFgGFH1ai+N=fznG4EaZ8OwpMjdMuqjw@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.16.51)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.16.51 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LaAejYWTeU1g0sGP5uFbdzq59yWp0M9G]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT142;
	6:sbz/qXOhZJpi01T1SsKu2j7uGNY/phy3WWdMwGmYDxceUbdM6WlrRAzAoTZmIYkSFVj7dBigZlCLdrYjuMznbTBmtyH/JGooPu4HELARleAgPq/i4ByXvXBNBanF6PA1VAGjGwvzh5ugs0LHVXSEa6h3Qw+c5dv1Ld1+iupOlruoVQVQO3UvJxvB9XrIckK5wljokmaMyeZgmugfng9SueCs4SAnKCI9RLmV2IxUCvbAHFtgXHHpodOb0MjAsmILWv2b2djAS68TDkSBiAGuzu03DmpmlsK6FKzB1HOWZZA=;
	5:Z4atunC0YNX7r2walxHKzLVhJjl+e1qVNCXJMUMxf1HH51FuzjaTEGhfH4j/chZqdmBeWRcTI8PIyCTxIH0NzKOmgrrUs/9tz9qrHotjPs2tRl9tNh5IARwxoom1z3C5JHxZB72hDIzL08vW/L2SmQ==;
	24:0sf1PJlB8CIWNtdpaKCsZZerJ97pYjiC4Jrv4zoAIXSolmzgOBCQI71hjWKDyndJnXtbleDUGI4LLDNtMDxlJx2a0+nPxQoj8rvIRgss7ko=;
	7:dOrM2TgZUCAHKv7JpA/XMwrvioVmvHOQpdMecUGRXPBmmnDEocT/UtpLfxdLaPD3wbyT8njCPau8eKMRwXrPgMQZlujQ7YOEcCyVKBIJ4OoF2vncRpR7qC23ZGsu62W3Cfu0n5puefW+eo5ighmIX7qZNYv2JOX1KItit7Ax9Qy1qOji0XpqdPz1yhY0+WxzAFcOEkOXpqIWahzRXlQZmheK1ftJuPWbDpIbAWJU6WWjitBNobJBI1KV7XC0vhqZNt5L/g7uWinCyNRqL2F+9ZX0ufSziHjMXplFRScSHWD6MDhlsbJZbMepK25TFivh
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR03HT142;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 47ba777d-4f74-4311-bf5c-08d3e60ec0b3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR03HT142;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR03HT142; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT142; 
x-forefront-prvs: 00770C4423
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2016 13:12:22.4326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT142
X-OriginalArrivalTime: 26 Sep 2016 13:12:25.0336 (UTC)
	FILETIME=[9FD98780:01D217F7]
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
X-List-Received-Date: Mon, 26 Sep 2016 13:12:30 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18835A21AF63FDCEAE31BAE092CD0HE1PR01MB1883eurp_"

--_000_HE1PR01MB18835A21AF63FDCEAE31BAE092CD0HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Khem,


>do you have x11 in DISTRO_FEATURES

No, the DISTRO_FEATURES variable was not even declared in the default local=
.conf

Karim

________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : lundi 26 septembre 2016 09:28
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [meta-toraxdex] unrecoverable build error

On Sat, Sep 24, 2016 at 11:10 PM, Karim ATIKI <karim_atiki@hotmail.com> wro=
te:
> hi,
>
>
> During a core-image-x11  build   (yocto krogoth, meta-toradex) , I got th=
e
> following error I never encountered with Yocto:
>
>
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe
> xf86-input-evdev is trying to install files into a shared area when those
> files already exist. Those files and their manifest location are:
>
> /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11/xo=
rg.conf.d/10-evdev.conf
>  Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot
> Please verify which recipe should provide the above files.
> The build has stopped as continuing in this scenario WILL break things, i=
f
> not now, possibly in the future (we've seen builds fail several months
> later). If the system knew how to recover from this automatically it woul=
d
> however there are several different scenarios which can result in this an=
d
> we don't know which one this is. It may be you have switched providers of
> something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev),=
 in
> that case you need to execute the clean task for both recipes and it will
> resolve this error. It may be you changed DISTRO_FEATURES from systemd to
> udev or vice versa. Cleaning those recipes should again resolve this erro=
r
> however switching DISTRO_FEATURES on an existing build directory is not
> supported, you should really clean out tmp and rebuild (reusing sstate
> should be safe). It could be the overlapping files detected are harmless =
in
> which case adding them to SSTATE_DUPWHITELIST may be the correct solution=
.
> It could also be your build is including two different conflicting versio=
ns
> of things (e.g. bluez 4 and bluez 5 and the correct solution for that wou=
ld
> be to resolve the conflict. If in doubt, please ask on the mailing list,
> sharing the error and filelist above.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above
> message is too much, the simpler version is you're advised to wipe out tm=
p
> and rebuild (reusing sstate is fine). That will likely fix things in most
> (but not all) cases.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed:
> sstate_task_postfunc
> ERROR: Logfile of failure stored in:
> /home/kai/yocto/colibri-t20-kts/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/=
xf86-input-evdev/2_2.10.1-r0/temp/log.do_populate_sysroot.639
> ERROR: Task 2181
> (/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg-driver/xf86-inpu=
t-evdev_2.10.1.bb,
> do_populate_sysroot) failed with exit code '1'
>
>
> I cant' get rid of this error. I have deleted the tmp and
> sstate-cache...nothing. it always occurs again.
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
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto -- Discussion of all things Yocto Project<https://lists.yoctoproject.=
org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



>

--_000_HE1PR01MB18835A21AF63FDCEAE31BAE092CD0HE1PR01MB1883eurp_
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
<p>Hi Khem,</p>
<p><br>
</p>
<p>&gt;<span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 13.3333px;">do you have x11 in DISTRO_FEATURES</span></p>
<div><br>
</div>
No, the DISTRO_FEATURES variable was not even declared in the default local=
.conf
<div><br>
</div>
<div>Karim<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khe=
m@gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 26 septembre 2016 09:28<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [meta-toraxdex] unrecoverable build error</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Sat, Sep 24, 2016 at 11:10 PM, Karim ATIKI &lt;=
karim_atiki@hotmail.com&gt; wrote:<br>
&gt; hi,<br>
&gt;<br>
&gt;<br>
&gt; During a core-image-x11&nbsp; build&nbsp;&nbsp; (yocto krogoth, meta-t=
oradex) , I got the<br>
&gt; following error I never encountered with Yocto:<br>
&gt;<br>
&gt;<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe<br=
>
&gt; xf86-input-evdev is trying to install files into a shared area when th=
ose<br>
&gt; files already exist. Those files and their manifest location are:<br>
&gt;<br>
&gt; /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11=
/xorg.conf.d/10-evdev.conf<br>
&gt;&nbsp; Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot<br=
>
&gt; Please verify which recipe should provide the above files.<br>
&gt; The build has stopped as continuing in this scenario WILL break things=
, if<br>
&gt; not now, possibly in the future (we've seen builds fail several months=
<br>
&gt; later). If the system knew how to recover from this automatically it w=
ould<br>
&gt; however there are several different scenarios which can result in this=
 and<br>
&gt; we don't know which one this is. It may be you have switched providers=
 of<br>
&gt; something like virtual/kernel (e.g. from linux-yocto to linux-yocto-de=
v), in<br>
&gt; that case you need to execute the clean task for both recipes and it w=
ill<br>
&gt; resolve this error. It may be you changed DISTRO_FEATURES from systemd=
 to<br>
&gt; udev or vice versa. Cleaning those recipes should again resolve this e=
rror<br>
&gt; however switching DISTRO_FEATURES on an existing build directory is no=
t<br>
&gt; supported, you should really clean out tmp and rebuild (reusing sstate=
<br>
&gt; should be safe). It could be the overlapping files detected are harmle=
ss in<br>
&gt; which case adding them to SSTATE_DUPWHITELIST may be the correct solut=
ion.<br>
&gt; It could also be your build is including two different conflicting ver=
sions<br>
&gt; of things (e.g. bluez 4 and bluez 5 and the correct solution for that =
would<br>
&gt; be to resolve the conflict. If in doubt, please ask on the mailing lis=
t,<br>
&gt; sharing the error and filelist above.<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above<=
br>
&gt; message is too much, the simpler version is you're advised to wipe out=
 tmp<br>
&gt; and rebuild (reusing sstate is fine). That will likely fix things in m=
ost<br>
&gt; (but not all) cases.<br>
&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function fail=
ed:<br>
&gt; sstate_task_postfunc<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/kai/yocto/colibri-t20-kts/tmp/work/armv7ahf-vfp-poky-linux-gnuea=
bi/xf86-input-evdev/2_2.10.1-r0/temp/log.do_populate_sysroot.639<br>
&gt; ERROR: Task 2181<br>
&gt; (/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg-driver/xf86-i=
nput-evdev_2.10.1.bb,<br>
&gt; do_populate_sysroot) failed with exit code '1'<br>
&gt;<br>
&gt;<br>
&gt; I cant' get rid of this error. I have deleted the tmp and<br>
&gt; sstate-cache...nothing. it always occurs again.<br>
&gt;<br>
&gt;<br>
&gt; Any idea?<br>
<br>
<br>
<br>
&gt;<br>
&gt;<br>
&gt; Z.<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk8=
80717">https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14748954331710.9953051884864401" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14748954331620.7191380187210454" cellspacing=3D"0"=
 style=3D"width: 90%; background-color: rgb(255, 255, 255); position: relat=
ive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: 2=
0px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted r=
gb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14748954331650.15093746999540758" colspan=3D"2" style=3D=
"vertical-align: top; position: relative; padding: 0px; display: table-cell=
;">
<div id=3D"LPRemovePreviewContainer_14748954331660.30106532372066286"></div=
>
<div id=3D"LPTitle_14748954331660.3865268538945883" style=3D"top: 0px; colo=
r: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf_=
segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &qu=
ot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-he=
ight: 21px;">
<a id=3D"LPUrlAnchor_14748954331680.3715287119085289" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n: none;">yocto -- Discussion of all things Yocto Project</a></div>
<div id=3D"LPMetadata_14748954331680.7264376894871021" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14748954331690.7983057998025829" style=3D"display:=
 block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_seg=
oe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sa=
ns-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow: =
hidden;">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
&gt;<br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB18835A21AF63FDCEAE31BAE092CD0HE1PR01MB1883eurp_--
