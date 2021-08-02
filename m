Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.112])
 by mx.groups.io with SMTP id smtpd.web10.17739.1627896953851790007
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Aug 2021 02:35:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cwareitservice.onmicrosoft.com header.s=selector2-cwareitservice-onmicrosoft-com header.b=dNkyF9Y/;
 spf=pass (domain: c-ware.de, ip: 40.107.22.112, mailfrom: christofer.dutz@c-ware.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gkKiwd7lz5Pl4gnfu+vSDTzaIgmtkjtv0NJAsyvGK8RhRNQoHp18Py3JQgDMqUasVW+Rj0NpL3yKzUFrehCwM+KMy65FM6pbPlIF0iAjECwkgyDQdVmXLKTrzfOX1UH2G7PGq5gyvzh2SOMVS8kRpEWcpumdruDNC6vj2+6kAf03BSFn6zAYPnIUTJwPybWwyGLo8w/wYyprpio8YRn2YEns/QhY/QSbdoCVKGJKX1AjHkgjMxCifLR0bCJdMsLzWqrdiZ0WQ+iTyOYhmUP6M0AtCd3NC20GWB3YSeibz2sJYecphvQtK/K2/1Oyj4jxx8lq+IoT66R2zjhd46lGCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Av5bO4UgN9xEMLERvvYa7X3pOCaO/Ad0Zm7OyfFj5yM=;
 b=WZp8LEvoO/ncMAE34B2woVAcIaj89fLWPYR+7Tkost6dM05bSeG8UpV2eUrGah//E5rCI6bHLhD9KsZ3kHhMTRCweObwPQGJtnnhrfu2nrPs1g+KtIvniKcF/d8UtcVIZuPbweaMKegCpaEqcXZxOy1E0mBKNJqGGT7uEsUqf2BUDhb9PDGj6bGe3jNs78SCUVJdWMQ9Y3EBQRbNgmMHoqIwxyhfCISTjhgtmvbWQTaNAeoSodlXauhoVUhfS4SjMLmvT92gRG2Axot3wuy/vm0KbI2pot1oDEpG/ktEwnSpBRxxO9mj2YdcLt86RrVewTf15IPQ6QV4NjvFLTc4nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=c-ware.de; dmarc=pass action=none header.from=c-ware.de;
 dkim=pass header.d=c-ware.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=CWareITService.onmicrosoft.com; s=selector2-CWareITService-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Av5bO4UgN9xEMLERvvYa7X3pOCaO/Ad0Zm7OyfFj5yM=;
 b=dNkyF9Y/+26fHYL8PN6u/s/YOX5aQofujhelo6x43Jcd2zTAdyBpPGd/BCc+att99TpbdlNwsCtAmuWYWw1tVeMQ7W5cQFRZgvY3edKti0B1/uNMsHnaazsfZFsB9eUmqCbJkrxex4HhbtArC3+BOfOrXuh4eTAusM7J+HzGmgQ=
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com (2603:10a6:20b:137::22)
 by AM6PR05MB6327.eurprd05.prod.outlook.com (2603:10a6:20b:ba::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Mon, 2 Aug
 2021 09:35:51 +0000
Received: from AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289]) by AM7PR05MB6807.eurprd05.prod.outlook.com
 ([fe80::d58d:77ba:393a:2289%8]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 09:35:51 +0000
From: "Christofer Dutz" <christofer.dutz@c-ware.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] (Go) Library for configuring Yocto based boxes?
Thread-Topic: [yocto] (Go) Library for configuring Yocto based boxes?
Thread-Index: AdeFFoupQ2bOnA6sQuup4q7x7Xd86AAAyqmAABQMS9A=
Date: Mon, 2 Aug 2021 09:35:51 +0000
Message-ID: 
 <AM7PR05MB68071F9410BE1219864FA253A2EF9@AM7PR05MB6807.eurprd05.prod.outlook.com>
References: 
 <AM7PR05MB68079F0EE9AA57AAC765E903A2EC9@AM7PR05MB6807.eurprd05.prod.outlook.com>
 <4d53db74437d5a537fbddfc98193b18b35706acd.camel@delisys.ch>
In-Reply-To: <4d53db74437d5a537fbddfc98193b18b35706acd.camel@delisys.ch>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=c-ware.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d85a5324-a791-44f0-0f2b-08d95598ead1
x-ms-traffictypediagnostic: AM6PR05MB6327:
x-microsoft-antispam-prvs: 
 <AM6PR05MB632791BB1198126450455CA5A2EF9@AM6PR05MB6327.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 u/eO3I1578Mu9NIEHoiFHkEh0o1kuHP/MQ7LbBolI21LqrdA7ttWhtZqsC/ZavjhTDZDJoEAylacYpxyBA4593YveFGw96C/Nx3SWetl/gjm0KgpOycldWwbB75mRsn7SFX0TBbSxRB6wRC05TNDwqt+MJxIsTvIvbVZsC6CV2uVU2Z3SwLCpaWZWtxZsnKfBpJxH9asmUMw8NnhI8Lf2kftrfeACvQHVeKNC8F0ajvlcXmYrpNVF+hx0X9VTvQ+oeev79TCqd/15zH03HmDo1YecmgIbqmRFsbxSsKA7xMex7TdRAbKoWJaerLtoVMy6csHsEkB4sl7YXMC2TsXXe4juuSP18C7IfR4qEWxlEA5yr47kWnaz2rj6AtBMCAc2LmTSIrswgNhGc5VK1AYXyTrtnkN4g0qDVsslzPrfrGSQCoQf++zgrTLBLPM2vRsB7QC/4Dx26QixNhx1uguFr/ygBRR1ePQMryUtiSbTiKxKIllqrrGmsgvfTAzV4YhF0QEYwopMIR10WtWVpxJzeu9GxN1w4fszM2MxxdQWFRJ0i8e6BII/i0ecsmjkjOfKwAJhLT5nLoXhpuAdwR82Z0SYlOXbKecjrrEQeBAJKhK+lVpxIzEAbVmMM/YTOLhlJR9Mr41oBBUELCZnW6jH+FQOtTO/LXpv4qrL1SUbR4gpeThE68125juqapIfgQ5mS196miPTo/LWCQexdHqhv+x5nfoz2wEeM4eFc/atEWrHSKwtTXWfgCgdGVRbzHn6/vmKXMqbStC7zqzBeSDVA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6807.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(396003)(376002)(346002)(136003)(39830400003)(83380400001)(55016002)(71200400001)(8676002)(6916009)(7696005)(478600001)(44832011)(316002)(966005)(66556008)(64756008)(66476007)(2906002)(6506007)(52536014)(33656002)(38070700005)(9686003)(66446008)(66946007)(186003)(66574015)(8936002)(38100700002)(122000001)(166002)(76116006)(86362001)(5660300002)(19627235002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IheixIC+KeH+1D7Ia6ZXj50iixgheAf8VehVGxCNh/wbt9GL+s2+3f17Zc?=
 =?iso-8859-1?Q?oFHiuAjHQZR4oBllWBBDToA0BbVAE+gqNUKSZ3fewd+kkWWKDDoCdcHOe/?=
 =?iso-8859-1?Q?Sih4oCKw12VN7yehba05GhgN4ojVQlN0+YSt30YmsTtckVJlkqVvdyzAkI?=
 =?iso-8859-1?Q?in2wgKvd+bbHzNQUZsAtCgG74WJXAZeckqPCZAE18lhGu0MiIMLl7LC55O?=
 =?iso-8859-1?Q?GmWLPGNu6goPSlPyyZWJhpVBXHVvm17XGAdki59yxqrsSQ4m77HUZ3Hlzg?=
 =?iso-8859-1?Q?j1qrjePE9ypsoYAvx6/6k+LYoJmcDCtzKSdPemiAkQJH3mdRVnlhOmAbXD?=
 =?iso-8859-1?Q?XlNPpwmh70YbO9LzGr7lKAN9nHsiGzVjdHcfXVHAyotngLOY7K+lWwMdTr?=
 =?iso-8859-1?Q?sEIiBwhiOJzOrFTtz4fNizWTbonC5ZQZ0jRS4tmlXDNX9CNbWRitJZFroo?=
 =?iso-8859-1?Q?4KnkJkak2omG0/KyvVS/H+JnB863hCK3rC/8XkewcwdtKhZwj6iWBjog/M?=
 =?iso-8859-1?Q?Q1GR+9WI8Yd8OsKvJV++fjLujokXI36naosLA/MXvnE0as3td85cL5bI79?=
 =?iso-8859-1?Q?87hFHH+xLDfPXNpgMRa3dZEnDuCQjoTZo0xQy5euz81JmbBSR7oVe/lQ/3?=
 =?iso-8859-1?Q?p+UKogLoPxW7hLrV84dDkanszRtJY/jDY13ZiVNY7twvqOj0+u3vkuqgZ1?=
 =?iso-8859-1?Q?JG/rcb4SHZdjNdm/BvzUsnVW7Sc6T91HfFeucE1w8eCyeVRYBFJp3IIYSM?=
 =?iso-8859-1?Q?C62fNEeBRmTi8PM0BDy5nJ+oEyhM+Rwd4aC58lHSFsNztKoJ3eQJNYLKwI?=
 =?iso-8859-1?Q?Xl0BNIBOIi2mZ+U5diyH63HeHjfA3ldDDNzcQigmpUDzcfoT3mpTNXCC1d?=
 =?iso-8859-1?Q?3Zr3sq7X76EPwrH4ro6yUsxyjjuqNW89FHKIeaM4JTtlgN5s1I4/LDl4li?=
 =?iso-8859-1?Q?hKynLtihhOn7V2rBITaLsMRGye7jpcaZQsVMPw+CNlxjBhCkXhP09ZsDvV?=
 =?iso-8859-1?Q?LJoEBc2w9Rm5/jOyfNbkO0ZLpA0AyVpx576V3aywDH8Fu1+7rjQ5c8Es+z?=
 =?iso-8859-1?Q?926KhsWpGlt+Xsk91jrHZYlorUqonIPPh6lynjyzoABd38fUn7H8UIZ6Rw?=
 =?iso-8859-1?Q?PiHEfZiNFvE4UFSE0cj6TcJG6wnZ7KIit9QslDHI6hYhhzYqLsEmv0kL79?=
 =?iso-8859-1?Q?2aqr9X8JSZJ7btdLfg9IVwri1utlLFgbM3vpptvfFDgoZZERWNjxggpt1w?=
 =?iso-8859-1?Q?Reg0gn3NvRdUIpwMe70t2I/WP53OyImzAoafK2PAFu8Q6yIVkc9i3W5DCn?=
 =?iso-8859-1?Q?TSPerb5t+8C1uDhggFPeTb2QwTBZ8szs+aAUkfkZqA0fReVGU8mV6SrBgM?=
 =?iso-8859-1?Q?jnsgJFZ2qqm4bVSPGM93Jbv9gMH+sCD/wnMm6cc2CAMVsO8PweJ/8=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: c-ware.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR05MB6807.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d85a5324-a791-44f0-0f2b-08d95598ead1
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2021 09:35:51.1500
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9d387546-1437-4b89-846c-691d64a7e74d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: otN69FIeTP/DI/IJbrid+cY7aHQ7I3LRWJRVDK2YkJBGPw1ud+4WA1kxMqRrkFcrDlSKzEN/GuwwaNJN70cGpfE8mi4Wm5/y3qppV1qqsl0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB6327
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM7PR05MB68071F9410BE1219864FA253A2EF9AM7PR05MB6807eurp_"

--_000_AM7PR05MB68071F9410BE1219864FA253A2EF9AM7PR05MB6807eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

so I invested quite some time to using the NetworkManager to configure the =
network settings.
I'm using a go library: github.com/Wifx/gonetworkmanager for this.
My network configurations now end up in a directory /etc/NetworkManager/sys=
tem-connections (I can see files with the name "{connection-id}.nmconnectio=
n"
However the changes aren't applied. If I run:

     systemctl restart systemd-networkd

The network settings don't change (Both network devices were set to DHCP). =
(By the way ... where can I see the default configuration?)

However if I reboot the box, I can see my changes applied ... until I run t=
he "systemctl restart systemd-networkd" again, because then it switches bac=
k to the dhcp settings.
Any tips on how I can apply my changes without rebooting?

Chris


-----Urspr=FCngliche Nachricht-----
Von: Nicolas Jeker <n.jeker@delisys.ch>
Gesendet: Freitag, 30. Juli 2021 10:06
An: Christofer Dutz <christofer.dutz@c-ware.de>; yocto@lists.yoctoproject.o=
rg
Betreff: Re: [yocto] (Go) Library for configuring Yocto based boxes?

On Fri, 2021-07-30 at 07:43 +0000, Christofer Dutz wrote:
> Hi all,
>
> I'm very new to the Yocto world.
>
> We are currently working on migrating away from OpenWRT based edge
> devices towards ones that we now have Yocto builds for.
>
> All seems to be working nicely on the yocto side.
>
> Our application uses a baseline configuration in order to connect to
> our cloud service and there it fetches it's configuration (We've got a
> cellular fallback if connectivity doesn't work at all).
>
> With OpenWRT there was a tool called UCI which even had a Go wrapper
> which we used to apply the configuration to the box (set IP addresses,
> connect to WiFi neworks, configure the serial ports etc.)
>
> Is there some equivalent in the Yocto world?
>

The OpenWRT wiki has a section on porting UCI to different linux distributi=
ons [1], but you can probably skip that completely. Searching for UCI in th=
e recipe index [2] yields a result from the meta-openwrt [3] layer. I would=
 start with adding that layer and using the UCI recipe from there.

[1]: https://openwrt.org/docs/techref/uci#usage_outside_of_openwrt
[2]:
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=3Duci
[3]: https://github.com/kraj/meta-openwrt

> I would like to avoid generating the file content in the /etc
> directory by hand and firing "restart" commands to the corresponding
> services, if there isn't a better way.
>
> Help greatly appreciated :-)
>
> Chris
>

--_000_AM7PR05MB68071F9410BE1219864FA253A2EF9AM7PR05MB6807eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.E-MailFormatvorlage19
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi all,<br>
<br>
so I invested quite some time to using the NetworkManager to configure the =
network settings.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I&#8217;m using a go =
library: github.com/Wifx/gonetworkmanager for this.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">My network configurat=
ions now end up in a directory /etc/NetworkManager/system-connections (I ca=
n see files with the name &quot;{connection-id}.nmconnection&quot;<br>
However the changes aren't applied. If I run:<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp; systemctl restart systemd-networkd<br>
<br>
The network settings don't change (Both network devices were set to DHCP). =
(By the way &#8230; where can I see the default configuration?)<br>
<br>
However if I reboot the box, I can see my changes applied ... until I run t=
he &quot;systemctl restart systemd-networkd&quot; again, because then it sw=
itches back to the dhcp settings.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Any tips on how I can=
 apply my changes without rebooting?<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Chris<br>
<br>
<br>
-----Urspr=FCngliche Nachricht-----<br>
Von: Nicolas Jeker &lt;n.jeker@delisys.ch&gt; <br>
Gesendet: Freitag, 30. Juli 2021 10:06<br>
An: Christofer Dutz &lt;christofer.dutz@c-ware.de&gt;; yocto@lists.yoctopro=
ject.org<br>
Betreff: Re: [yocto] (Go) Library for configuring Yocto based boxes?<br>
<br>
On Fri, 2021-07-30 at 07:43 +0000, Christofer Dutz wrote:<br>
&gt; Hi all,<br>
&gt; &nbsp;<br>
&gt; I&#8217;m very new to the Yocto world.<br>
&gt; &nbsp;<br>
&gt; We are currently working on migrating away from OpenWRT based edge <br=
>
&gt; devices towards ones that we now have Yocto builds for.<br>
&gt; &nbsp;<br>
&gt; All seems to be working nicely on the yocto side.<br>
&gt; &nbsp;<br>
&gt; Our application uses a baseline configuration in order to connect to <=
br>
&gt; our cloud service and there it fetches it&#8217;s configuration (We&#8=
217;ve got a <br>
&gt; cellular fallback if connectivity doesn&#8217;t work at all).<br>
&gt; &nbsp;<br>
&gt; With OpenWRT there was a tool called UCI which even had a Go wrapper <=
br>
&gt; which we used to apply the configuration to the box (set IP addresses,=
 <br>
&gt; connect to WiFi neworks, configure the serial ports etc.)<br>
&gt; &nbsp;<br>
&gt; Is there some equivalent in the Yocto world?<br>
&gt; &nbsp;<br>
<br>
The OpenWRT wiki has a section on porting UCI to different linux distributi=
ons [1], but you can probably skip that completely. Searching for UCI in th=
e recipe index [2] yields a result from the meta-openwrt [3] layer. I would=
 start with adding that layer and
 using the UCI recipe from there.<br>
<br>
[1]: <a href=3D"https://openwrt.org/docs/techref/uci#usage_outside_of_openw=
rt" target=3D"_BLANK">
https://openwrt.org/docs/techref/uci#usage_outside_of_openwrt</a><br>
[2]:<br>
<a href=3D"https://layers.openembedded.org/layerindex/branch/master/recipes=
/?q=3Duci" target=3D"_BLANK">https://layers.openembedded.org/layerindex/bra=
nch/master/recipes/?q=3Duci</a><br>
[3]: <a href=3D"https://github.com/kraj/meta-openwrt" target=3D"_BLANK">htt=
ps://github.com/kraj/meta-openwrt</a><br>
<br>
&gt; I would like to avoid generating the file content in the /etc <br>
&gt; directory by hand and firing &#8222;restart&#8220; commands to the cor=
responding <br>
&gt; services, if there isn&#8217;t a better way.<br>
&gt; &nbsp;<br>
&gt; Help greatly appreciated :-)<br>
&gt; &nbsp;<br>
&gt; Chris<br>
&gt; <o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_AM7PR05MB68071F9410BE1219864FA253A2EF9AM7PR05MB6807eurp_--
