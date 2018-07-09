Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 534D4E00E1A; Mon,  9 Jul 2018 23:04:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.1.99 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 35900 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jul 2018 23:04:38 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-oln040092001099.outbound.protection.outlook.com [40.92.1.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33115E00CA6
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 23:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=/EbmxYDMMTm7O7lkYv1+0Oo4qyNn5JNCZSbIAzcqvhE=;
	b=W3o6m3GYwsVsC/bYZGlO7BUrMGKQV2EZk8+vl+AEEd7+2wgjAvYke+eQ+og9x/dvYcceY7b5wpZtis13CoYmoexTap3LwR2KeYR1McpPnx/j8bNUTTNNRVXt5s1PBrET6qrHz5iCkb5tKnXh94j054AWpznCLbjRjSuX5uSrEgKDP9eJvyfW06S3rvOnr0ourlBooMOICV5Jy254ZtG87vFbsmi+m3GAZ0hNRbutZvh3uoNNmJSbSwCHIHzaCNpWm/jl7IRTnniu4wPNOOhx/H57d7UpTBmvamW/8d6F4yQclhSVDa0tN8JnZLnU/SdKIoRMqJH1blYXV3U2eevMqw==
Received: from BN3NAM01FT061.eop-nam01.prod.protection.outlook.com
	(10.152.66.55) by BN3NAM01HT140.eop-nam01.prod.protection.outlook.com
	(10.152.67.217) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Mon, 9 Jul 2018 19:33:42 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.66.58) by
	BN3NAM01FT061.mail.protection.outlook.com (10.152.66.252) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Mon, 9 Jul 2018 19:33:42 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.022;
	Mon, 9 Jul 2018 19:33:42 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Any Linux/Yocto Image Installer (for target system)
Thread-Index: AQHUFkNrHJn1kPyQq0uRSPXu478g/qSGN4K+gABjLYCAAK16Mw==
Date: Mon, 9 Jul 2018 19:33:42 +0000
Message-ID: <MWHPR19MB11837072489F2D28FF8E136BC5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LbjTeL3HTQXztNyxEaA78hoA1cBSiUAQBom7r8sDDE7kQ@mail.gmail.com>
	<MWHPR19MB118343CB9AD0BA7EBF868E3CC5440@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CAJTo0LaJQ3U-WxonTXWNQErGV+=oR_SNShQjjLX59EVkePv5cg@mail.gmail.com>
In-Reply-To: <CAJTo0LaJQ3U-WxonTXWNQErGV+=oR_SNShQjjLX59EVkePv5cg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:94B8A7093B5DEACFE9A97C32DFBB921AF6A858BB2554B38BDA3D3E19540B523F;
	UpperCasedChecksum:4A48EA66D545EA4D390AD063D79F701D28221900F956BA5C8F03B9BB8DC03F68;
	SizeAsReceived:7508; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [vX6bpywQ1HiMsNpiauTJk9HqRElOVAu2]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT140;
	7:mFph/bEaFAOCw5MShE48OkNhO/GmMxt3Hmm+kYuiiVuKX8F7zWfih6tp+UFR8hzwO/HcjHOhYEftu5vWGx0T8tfqzIUgVmn0YfjHyLZCu3CaB0g571YZHltr193Q7+W66iBizwOjjLQ/YZdVZb1XUIKTNZ3ZzAYwV8CjPdo9emWNZCdZSUR9mBStq8HFWK65BRqux4W8UHMQ+FaAi0xLBXPoYWEF/zleLJrHCLSw0CWhtic4SGIMPYlXO7p8ss9p
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:BN3NAM01HT140; 
x-ms-traffictypediagnostic: BN3NAM01HT140:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(82015058);
	SRVR:BN3NAM01HT140; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT140; 
x-forefront-prvs: 07283408BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(5250100002)(5660300001)(53546011)(6506007)(2900100001)(6346003)(73972006)(87572001)(20460500001)(93886005)(26005)(6606003)(82202002)(76176011)(68736007)(8936002)(106356001)(229853002)(236005)(54896002)(6306002)(86362001)(7696005)(6916009)(99286004)(104016004)(102836004)(55016002)(6436002)(606006)(256004)(9686003)(81156014)(97736004)(19627405001)(105586002)(83332001)(476003)(8676002)(53386004)(25786009)(486006)(4326008)(33656002)(6246003)(966005)(11346002)(14454004)(45080400002)(446003)(74316002)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BN3NAM01HT140;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: FVZn20miEHOazlDBpw9nI5qzjT3uA1dzZn9nXfJ7keeKbk9b2Wa+Fo/zFBaQ4E04vwVmyKRy+O1O1exYNaYDVonZec3o0pmYwp7BxWdaXQmoNd+0UiBYIQXKmEhYcP51r3HoKw88Dc3guJhP25FGiZNjKn9hF+2Kv3a92CAVttIFdinvWkV6QtUlWE2Ec/owGojQggXkDkXx2zIhPLRSUJmNe6XjC/M/WabBTXXd7uM=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: d5876464-97da-4219-7d8f-08d5e5d2e0f3
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2018 19:33:42.2209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT140
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Tue, 10 Jul 2018 06:04:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11837072489F2D28FF8E136BC5440MWHPR19MB1183namp_"

--_000_MWHPR19MB11837072489F2D28FF8E136BC5440MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Ross.  I found init-install.sh that I could relate to run-time insta=
llation offered at BOOT time.  And I'd used it to install image on SSD from=
 USB drive.


Would you or anyone know where the script that formats/generates .hddimg?  =
I'd like to see if we could customize the layout of this image to multiple =
partitions.  The reason I'm thinking this way is that our real H/W (vs. the=
 evaluation platform I've been using) doesn't support USB port, thus no run=
-time installer.


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Monday, July 9, 2018 2:02 AM
To: Raymond Yeung
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Any Linux/Yocto Image Installer (for target system)

The relevant recipes are in meta/recipes-core/initrdscripts/.

Ross

On 9 July 2018 at 04:10, Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeun=
g@hotmail.com>> wrote:

This brings up the next logical question - where is the installer?  I'd alr=
eady done a grep and looked into the volume of output.  You could ask why d=
on't I read the code.  Yes, only if I know what I'm reading is the "correct=
" file/code.  Otherwise, I could be spending a lot of time reading a lot of=
 unrelated codes.


If I did "dd" of .hddimg to SSD, there's only 1 partition.  If I could loca=
te where the logic is that generates this .hddimg file, perhaps I could fig=
ure out how it creates its single partition, and perhaps add one or more pa=
rtitions to it as well.


________________________________
From: Burton, Ross <ross.burton@intel.com<mailto:ross.burton@intel.com>>
Sent: Saturday, July 7, 2018 3:39 PM
To: Raymond Yeung
Cc: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: Re: [yocto] Any Linux/Yocto Image Installer (for target system)

The easiest thing would be to edit the installer script that goes into
the hddimg to create your extra partitions and whatever else you want
done.

Ross

On 6 July 2018 at 22:52, Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeun=
g@hotmail.com>> wrote:
> Is there any installer that I could download along with the .hddimg (or
> .iso) image to the RAM, invoke the installer, so we could have a bootable
> image installed on a SSD?
>
>
> History:
>
> I can already create USB live image with dd and .hddimg.  I could also dd
> the .hddimg onto SSD and make it bootable.  The problem is that I need
> multiple partitions on my 250MB SSD, some reserved for other purposes.
>
>
> I find that when booting up with USB running SysLinux, I could install GR=
UB,
> vmlinuz, along with boot.img and core.img under /boot directory, and the
> rootFs under root (i.e. '/') directory.  That's 4 partitions.  I believe =
I
> could resize the largest partition after installation to do what I want.
>
>
> Is there a way to do this manually, possibly with a utility or a shell
> script?
>
>
> Thanks,
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org<http://lists.yoctoproject.org>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.



>


--_000_MWHPR19MB11837072489F2D28FF8E136BC5440MWHPR19MB1183namp_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks Ross. &nbsp;I found init-i=
nstall.sh that I could relate to run-time installation offered at BOOT time=
. &nbsp;And I'd used it to install image on SSD from USB drive.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Would you or anyone know where th=
e script that formats/generates .hddimg? &nbsp;I'd like to see if we could =
customize the layout of this image to multiple partitions. &nbsp;The reason=
 I'm thinking this way is that our real H/W
 (vs. the evaluation platform I've been using) doesn't support USB port, th=
us no run-time installer.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Monday, July 9, 2018 2:02 AM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Any Linux/Yocto Image Installer (for target sys=
tem)</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Dutf-8">
<div>
<div dir=3D"ltr">
<div>The relevant recipes are in&nbsp;meta/recipes-core/initrdscripts/.</di=
v>
<div><br>
</div>
<div>Ross</div>
</div>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">On 9 July 2018 at 04:10, Raymond Yeung <span d=
ir=3D"ltr">
&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank" id=3D"LPlnk79=
0297" class=3D"OWAAutoLink" previewremoved=3D"true">rksyeung@hotmail.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-5451635003736426467divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<p style=3D"margin-top:0; margin-bottom:0">This brings up the next logical =
question - where is the installer?&nbsp; I'd already done a grep and looked=
 into the volume of output.&nbsp; You could ask why don't I read the code.&=
nbsp; Yes, only if I know what I'm reading is the
 &quot;correct&quot; file/code.&nbsp; Otherwise, I could be spending a lot =
of time reading a lot of unrelated codes.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">If I did &quot;dd&quot; of .hddi=
mg to SSD, there's only 1 partition.&nbsp; If I could locate where the logi=
c is that generates this .hddimg file, perhaps I could figure out how it cr=
eates its single partition, and perhaps add one or
 more partitions to it as well.</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-5451635003736426467divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_bla=
nk" id=3D"LPlnk507547" class=3D"OWAAutoLink" previewremoved=3D"true">ross.b=
urton@intel.com</a>&gt;<br>
<b>Sent:</b> Saturday, July 7, 2018 3:39 PM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=
=3D"LPlnk184692" class=3D"OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] Any Linux/Yocto Image Installer (for target sys=
tem)</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_m_-5451635003736426467BodyFragment"><font size=3D"2"><span =
style=3D"font-size:11pt">
<div class=3D"x_m_-5451635003736426467PlainText">
<div>
<div class=3D"x_h5">The easiest thing would be to edit the installer script=
 that goes into<br>
the hddimg to create your extra partitions and whatever else you want<br>
done.<br>
<br>
Ross<br>
<br>
On 6 July 2018 at 22:52, Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotma=
il.com" target=3D"_blank" id=3D"LPlnk177946" class=3D"OWAAutoLink" previewr=
emoved=3D"true">rksyeung@hotmail.com</a>&gt; wrote:<br>
&gt; Is there any installer that I could download along with the .hddimg (o=
r<br>
&gt; .iso) image to the RAM, invoke the installer, so we could have a boota=
ble<br>
&gt; image installed on a SSD?<br>
&gt;<br>
&gt;<br>
&gt; History:<br>
&gt;<br>
&gt; I can already create USB live image with dd and .hddimg.&nbsp; I could=
 also dd<br>
&gt; the .hddimg onto SSD and make it bootable.&nbsp; The problem is that I=
 need<br>
&gt; multiple partitions on my 250MB SSD, some reserved for other purposes.=
<br>
&gt;<br>
&gt;<br>
&gt; I find that when booting up with USB running SysLinux, I could install=
 GRUB,<br>
&gt; vmlinuz, along with boot.img and core.img under /boot directory, and t=
he<br>
&gt; rootFs under root (i.e. '/') directory.&nbsp; That's 4 partitions.&nbs=
p; I believe I<br>
&gt; could resize the largest partition after installation to do what I wan=
t.<br>
&gt;<br>
&gt;<br>
&gt; Is there a way to do this manually, possibly with a utility or a shell=
<br>
&gt; script?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Raymond<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" id=3D"LPln=
k197378" class=3D"OWAAutoLink" previewremoved=3D"true">
yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk5=
69497" class=3D"x_m_-5451635003736426467OWAAutoLink OWAAutoLink" target=3D"=
_blank" previewremoved=3D"true">
https://lists.yoctoproject.<wbr>org/listinfo/yocto</a> </div>
</div>
<div id=3D"x_m_-5451635003736426467LPBorder_GT_15311056702970.9730854530905=
975" style=3D"margin-bottom:20px; overflow:auto; width:100%; text-indent:0p=
x">
<table id=3D"x_m_-5451635003736426467LPContainer_15311056702930.26177465851=
91326" cellspacing=3D"0" style=3D"width:90%; background-color:rgb(255,255,2=
55); overflow:auto; padding-top:20px; padding-bottom:20px; margin-top:20px;=
 border-top-width:1px; border-top-style:dotted; border-top-color:rgb(200,20=
0,200); border-bottom-width:1px; border-bottom-style:dotted; border-bottom-=
color:rgb(200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"x_m_-5451635003736426467TextCell_15311056702940.734335358912997" =
colspan=3D"2" style=3D"vertical-align:top; padding:0px; display:table-cell"=
>
<div id=3D"x_m_-5451635003736426467LPRemovePreviewContainer_15311056702940.=
5136939606474453">
</div>
<div id=3D"x_m_-5451635003736426467LPTitle_15311056702940.31575185467581424=
" style=3D"color:rgb(0,120,215); font-weight:normal; font-size:21px; font-f=
amily:wf_segoe-ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quo=
t;,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; line-=
height:21px">
<a id=3D"LPlnk319300" href=3D"https://lists.yoctoproject.org/listinfo/yocto=
" target=3D"_blank" style=3D"text-decoration:none" class=3D"OWAAutoLink" pr=
eviewremoved=3D"true">yocto Info Page</a></div>
<div id=3D"x_m_-5451635003736426467LPMetadata_15311056702950.02513276831460=
6757" style=3D"margin:10px 0px 16px; color:rgb(102,102,102); font-weight:no=
rmal; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&qu=
ot;,Tahoma,Arial,sans-serif; font-size:14px; line-height:14px">
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank" id=3D"LPlnk6837=
04" class=3D"OWAAutoLink" previewremoved=3D"true">lists.yoctoproject.org</a=
></div>
<div id=3D"x_m_-5451635003736426467LPDescription_15311056702960.05565136184=
9063385" style=3D"display:block; color:rgb(102,102,102); font-weight:normal=
; font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,=
Tahoma,Arial,sans-serif; font-size:14px; line-height:20px; max-height:100px=
; overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
 Subscribe before posting to bypass moderation.</div>
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
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11837072489F2D28FF8E136BC5440MWHPR19MB1183namp_--
