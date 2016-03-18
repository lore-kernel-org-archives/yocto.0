Return-Path: <yukatharsanij@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9927E00C8D; Fri, 18 Mar 2016 14:13:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.124.92 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3568 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Mar 2016 14:13:24 PDT
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-hk2apc01on0092.outbound.protection.outlook.com [104.47.124.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D541DE00C87
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 14:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=dq3wnWXSgg6KjAEiNcuPo2aSWN7a6/98Q3aUkaM1Bjs=;
	b=W8GOH3HIszgQ/ecRHbEpAoJ8NA2d5ezl33cHtbczkz6CGpYpFZYsE/DBKu4d054mnYLXjhRIojUH+v0NyR2FRBLY1BOfMbG4MfXk9N+4Pbhe55f9SOqymjMMiDWbbR86Rh9MTW4NiZ0YmeFFnu0Q50IXrBJTCydjij/HHfkkcw0=
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com (10.162.175.143) by
	SIXPR04MB0666.apcprd04.prod.outlook.com (10.162.175.141) with Microsoft
	SMTP Server (TLS) id 15.1.443.7; Fri, 18 Mar 2016 19:41:01 +0000
Received: from SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) by
	SIXPR04MB0668.apcprd04.prod.outlook.com ([10.162.175.143]) with mapi id
	15.01.0443.013; Fri, 18 Mar 2016 19:41:01 +0000
From: YUKATHARSANI JEYACHANDRA <yukatharsanij@tataelxsi.co.in>
To: Mark T <mtl1nuxd3v@gmail.com>, Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Conditional compile for package in layer.conf for Qemu
Thread-Index: AQHRf2HXE9IySdfgPk+qhEc4qaU2kJ9bxjiAgAGU1oCAAh6WAIAAI5YA
Date: Fri, 18 Mar 2016 19:41:01 +0000
Message-ID: <SIXPR04MB0668902010E4292FB45B3081EC8C0@SIXPR04MB0668.apcprd04.prod.outlook.com>
References: <CALf_N3bObyR-EPgVLtjS+NMmYETQsavs+DT45gxhF8CT1m1-yw@mail.gmail.com>
	<CAJTo0LaVEa3-GL6Nd3uMkBC0P7PvUj23FqTLchMo8bLcLbKXCg@mail.gmail.com>
	<CAJ86T=V-YaLEbH=i+34ZfB27Krnpg_F-XP=k7dBRA+g=D_gBFA@mail.gmail.com>,
	<CALf_N3YgGQOZpfT17GNd+m-hbCDRekm9zeR6WpKbwuYZjKzHUA@mail.gmail.com>
In-Reply-To: <CALf_N3YgGQOZpfT17GNd+m-hbCDRekm9zeR6WpKbwuYZjKzHUA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=tataelxsi.co.in; 
x-originating-ip: [173.49.93.234]
x-ms-office365-filtering-correlation-id: 092d6607-382c-41b2-2aac-08d34f653cb5
x-microsoft-exchange-diagnostics: 1; SIXPR04MB0666;
	5:X3/yk9umSdXwNPpwG2pB0jo810yh4OTwMGEezwWPnjg5Otpgamirreeo+F7VyPmJXurd8JHc1FEylpWEVZ2uf/aoUXjZ2YhnRzFBwP1TYFRD69YE9Nhaa2Zbr87F52b0DQpH8pvt0ZYF+0Te8PnzMQ==;
	24:oNK/aCsy5uMC8b9nYsSnyfoboGJzNazx5BMljOupd1mKoOofgk98gcYKNZVLKd2PaXbuY4DlUYHDhel9tJN44MMunJj6loVdvGdF9GNLES4=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SIXPR04MB0666;
x-microsoft-antispam-prvs: <SIXPR04MB066665FA72B6D69EAC4D215FEC8C0@SIXPR04MB0666.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:SIXPR04MB0666; BCL:0; PCL:0; RULEID:; SRVR:SIXPR04MB0666; 
x-forefront-prvs: 088552DE73
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(24454002)(377454003)(164054003)(19580405001)(5004730100002)(19580395003)(450100001)(189998001)(4326007)(86362001)(50986999)(54356999)(76176999)(2906002)(5002640100001)(81166005)(122556002)(74316001)(5003600100002)(6116002)(1096002)(106116001)(4001450100002)(87936001)(1220700001)(102836003)(92566002)(76576001)(3846002)(33656002)(586003)(11100500001)(74482002)(5008740100001)(3660700001)(3280700002)(66066001)(16236675004)(2900100001)(2950100001)(19617315012)(5001770100001)(106356001)(10400500002)(93886004)(77096005)(15975445007)(80872002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SIXPR04MB0666;
	H:SIXPR04MB0668.apcprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2016 19:41:01.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SIXPR04MB0666
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Conditional compile for package in layer.conf for Qemu
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
X-List-Received-Date: Fri, 18 Mar 2016 21:13:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SIXPR04MB0668902010E4292FB45B3081EC8C0SIXPR04MB0668apcp_"

--_000_SIXPR04MB0668902010E4292FB45B3081EC8C0SIXPR04MB0668apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


You can use BBMASK variable in your layer.conf file.
________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Mark T <mtl1nuxd3v@gmail.com>
Sent: Friday, March 18, 2016 11:02:54 PM
To: Andre McCurdy
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Conditional compile for package in layer.conf for Qemu

Ross,

Thanks, that  " IMAGE_INSTALL_append_intel-corei7-64 =3D "package_b" "  wor=
ked a treat.

If I want to exclude a recipe from a layer for qemu builds  - is there a si=
milar method for that ?

Thanks,
Mark


On 17 March 2016 at 09:10, Andre McCurdy <armccurdy@gmail.com<mailto:armccu=
rdy@gmail.com>> wrote:
On Wed, Mar 16, 2016 at 2:01 AM, Burton, Ross <ross.burton@intel.com<mailto=
:ross.burton@intel.com>> wrote:
>
> On 16 March 2016 at 08:56, Mark T <mtl1nuxd3v@gmail.com<mailto:mtl1nuxd3v=
@gmail.com>> wrote:
>>
>> I'd like to be able to do the following
>>
>> IMAGE_INSTALL_append +=3D "package_a"

It's not typical usage to combine +=3D with _append, pick one or the other.

Using _append is generally more reliable if you're not sure how the
variable you're appending to was originally initialised, however with
_append you need to manually include a leading space character, ie:

IMAGE_INSTALL_append =3D " package_a"

>> if ( not qemu )
>> IMAGE_INSTALL_append +=3D "package_b"
>> endif
>
>
> The neater way would be if you can easily identify what "not qemu" is, fo=
r
> example:
>
> IMAGE_INSTALL_append_intel-corei7-64 =3D "package_b"
>
> Would install package_b only for intel-corei7-64 machines.
>
> If you want to support arbitrary machines but not qemu then something lik=
e
> this might work:
>
> MOREDEPS =3D "package_b"
> MOREDEPS_qemuall =3D ""
> IMAGE_INSTALL_append =3D " ${MOREDEPS}"
>
> (qemuall is an override that is enabled by all qemu machines)

Another alternative would be something like:

IMAGE_INSTALL_remove_qemuall =3D "package_b"

> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>


--_000_SIXPR04MB0668902010E4292FB45B3081EC8C0SIXPR04MB0668apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<br>
You can use BBMASK variable in your layer.conf file.&nbsp;&nbsp;
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Mark T &lt;mt=
l1nuxd3v@gmail.com&gt;<br>
<b>Sent:</b> Friday, March 18, 2016 11:02:54 PM<br>
<b>To:</b> Andre McCurdy<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Conditional compile for package in layer.conf f=
or Qemu</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div>
<div>
<div>Ross, <br>
<br>
</div>
Thanks, that&nbsp; &quot; <span class=3D"im">IMAGE_INSTALL_append_intel-cor=
ei7-64 =3D &quot;package_b&quot; &quot;&nbsp;
</span>worked a treat.&nbsp; <br>
<br>
</div>
If I want to exclude a recipe from a layer for qemu builds&nbsp; - is there=
 a similar method for that ?<br>
<br>
</div>
Thanks,<br>
</div>
Mark<br>
<div>
<div><br>
</div>
</div>
</div>
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 17 March 2016 at 09:10, Andre McCurdy <span d=
ir=3D"ltr">
&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmai=
l.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<span class=3D"">On Wed, Mar 16, 2016 at 2:01 AM, Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 16 March 2016 at 08:56, Mark T &lt;<a href=3D"mailto:mtl1nuxd3v@gma=
il.com">mtl1nuxd3v@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I'd like to be able to do the following<br>
&gt;&gt;<br>
&gt;&gt; IMAGE_INSTALL_append &#43;=3D &quot;package_a&quot;<br>
<br>
</span>It's not typical usage to combine &#43;=3D with _append, pick one or=
 the other.<br>
<br>
Using _append is generally more reliable if you're not sure how the<br>
variable you're appending to was originally initialised, however with<br>
_append you need to manually include a leading space character, ie:<br>
<br>
IMAGE_INSTALL_append =3D &quot; package_a&quot;<br>
<span class=3D""><br>
&gt;&gt; if ( not qemu )<br>
&gt;&gt; IMAGE_INSTALL_append &#43;=3D &quot;package_b&quot;<br>
&gt;&gt; endif<br>
&gt;<br>
&gt;<br>
&gt; The neater way would be if you can easily identify what &quot;not qemu=
&quot; is, for<br>
&gt; example:<br>
&gt;<br>
&gt; IMAGE_INSTALL_append_intel-corei7-64 =3D &quot;package_b&quot;<br>
&gt;<br>
&gt; Would install package_b only for intel-corei7-64 machines.<br>
&gt;<br>
&gt; If you want to support arbitrary machines but not qemu then something =
like<br>
&gt; this might work:<br>
&gt;<br>
&gt; MOREDEPS =3D &quot;package_b&quot;<br>
&gt; MOREDEPS_qemuall =3D &quot;&quot;<br>
&gt; IMAGE_INSTALL_append =3D &quot; ${MOREDEPS}&quot;<br>
&gt;<br>
&gt; (qemuall is an override that is enabled by all qemu machines)<br>
<br>
</span>Another alternative would be something like:<br>
<br>
IMAGE_INSTALL_remove_qemuall =3D &quot;package_b&quot;<br>
<br>
&gt; Ross<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">
https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</font></span></blockquote>
</div>
<br>
</div>
</div>
</body>
</html>

--_000_SIXPR04MB0668902010E4292FB45B3081EC8C0SIXPR04MB0668apcp_--
