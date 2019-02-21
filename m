Return-Path: <rsrinivasan@abiomed.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81BEDE00CD6; Thu, 21 Feb 2019 14:35:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [216.205.24.188 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from us-smtp-delivery-188.mimecast.com
	(us-smtp-delivery-188.mimecast.com [216.205.24.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB356E00CAF
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 14:35:13 -0800 (PST)
Received: from mail.abiomed.com (legacy.abiomed.com [4.53.60.36]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-105-rEWnfy6_PjSsHbEtqAFE4w-1; Thu, 21 Feb 2019 17:35:11 -0500
X-MC-Unique: rEWnfy6_PjSsHbEtqAFE4w-1
Received: from USDVREX02.abiomed.com (172.16.1.94) by USDVREX01.abiomed.com
	(172.16.1.91) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Thu, 21 Feb 2019 17:35:11 -0500
Received: from USDVREX02.abiomed.com ([fe80::118e:bc13:d505:a96d]) by
	USDVREX02.abiomed.com ([fe80::118e:bc13:d505:a96d%12]) with mapi id
	15.00.1395.000; Thu, 21 Feb 2019 17:35:11 -0500
From: "Srinivasan, Raja" <rsrinivasan@abiomed.com>
To: Kevin Hao <kexin.hao@windriver.com>
Thread-Topic: <EXT> Re: [yocto] wic utility
Thread-Index: AdSzOeZf75RQXwYoRbKNBWkqU3gNpAAoGk0ABZbC8MA=
Date: Thu, 21 Feb 2019 22:35:11 +0000
Message-ID: <888fe7cc1145463d9f26ec0e638ae610@USDVREX02.abiomed.com>
References: <fc7d34e702ed47bfa017034365edbec7@USDVREX02.abiomed.com>
	<20190124064532.GJ28115@pek-khao-d2>
In-Reply-To: <20190124064532.GJ28115@pek-khao-d2>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.96.27]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <EXT> Re: wic utility
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
X-List-Received-Date: Thu, 21 Feb 2019 22:35:15 -0000
X-Groupsio-MsgNum: 44195
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-=ruTInEz+C4EH2w=-="

--=-=ruTInEz+C4EH2w=-=
Content-Type: multipart/alternative;
	boundary="=-=f+52mMncb0c+3d=-="

--=-=f+52mMncb0c+3d=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Sorry for the delay.

=20

Yes. Simple things worked fine. I wanted to copy  a dir to a partition insi=
de the sdcard image and that was not successful.

=20

I ended up writing a utility to perform the function I needed. It is somewh=
at customized to our image but if anyone needs, I will be happy to share my=
 findings. srini

=20

From: Kevin Hao <kexin.hao@windriver.com>=20
Sent: Thursday, January 24, 2019 1:46 AM
To: Srinivasan, Raja <rsrinivasan@abiomed.com>
Cc: yocto@yoctoproject.org
Subject: <EXT> Re: [yocto] wic utility

=20

On Wed, Jan 23, 2019 at 04:39:07PM +0000, Srinivasan, Raja wrote:=20
> I am using wic 0.2.0 from the rocko build.=20
>=20
> =20
>=20
> wic cp file wifile:part/path=20
>=20
> =20
>=20
> appears to succeed (no errors reported).=20
>=20
> =20
>=20
> But when I perform wic ls I don=E2=80=99t find the file in the target.=20
>=20
> =20
>=20
> Are there any switches the I should be using?=20

It seems that it works fine on the master branch.=20
    $ wic ls tmp/deploy/images/beaglebone-yocto/core-image-sato-beaglebone-=
yocto.wic:2=20
    debugfs 1.43.5 (04-Aug-2017)=20
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 .=20
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 ..=20
         11   40700 (2)      0      0   16384 23-Jan-2019 14:04 lost+found=
=20
         12   40755 (2)      0      0    4096 23-Jan-2019 13:56 lib=20
        456   40755 (2)      0      0    4096 23-Jan-2019 13:43 dev=20
        457   40555 (2)      0      0    4096 23-Jan-2019 13:43 proc=20
        458   40755 (2)      0      0    4096 23-Jan-2019 13:43 media=20
        459   40755 (2)      0      0    4096 23-Jan-2019 14:04 boot=20
        465   40755 (2)      0      0    4096 23-Jan-2019 14:03 mnt=20
        467   40755 (2)      0      0    4096 23-Jan-2019 13:57 usr=20
       9582   40755 (2)      0      0    4096 23-Jan-2019 13:56 var=20
       9639   40555 (2)      0      0    4096 23-Jan-2019 13:43 sys=20
       9640   40755 (2)      0      0    4096 23-Jan-2019 14:04 etc=20
      10373   40755 (2)      0      0    4096 23-Jan-2019 14:03 sbin=20
      10437   40755 (2)      0      0    4096 23-Jan-2019 13:43 run=20
      10438   41777 (2)      0      0    4096 23-Jan-2019 13:43 tmp=20
      10439   40755 (2)      0      0    4096 23-Jan-2019 14:03 home=20
      10441   40755 (2)      0      0    4096 23-Jan-2019 14:03 bin=20
    $ wic cp a.txt tmp/deploy/images/beaglebone-yocto/core-image-sato-beagl=
ebone-yocto.wic:2=20
    $ wic ls tmp/deploy/images/beaglebone-yocto/core-image-sato-beaglebone-=
yocto.wic:2=20
    debugfs 1.43.5 (04-Aug-2017)=20
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 .=20
          2   40755 (2)      0      0    4096 23-Jan-2019 14:04 ..=20
         11   40700 (2)      0      0   16384 23-Jan-2019 14:04 lost+found=
=20
         12   40755 (2)      0      0    4096 23-Jan-2019 13:56 lib=20
        456   40755 (2)      0      0    4096 23-Jan-2019 13:43 dev=20
        457   40555 (2)      0      0    4096 23-Jan-2019 13:43 proc=20
        458   40755 (2)      0      0    4096 23-Jan-2019 13:43 media=20
        459   40755 (2)      0      0    4096 23-Jan-2019 14:04 boot=20
        465   40755 (2)      0      0    4096 23-Jan-2019 14:03 mnt=20
        467   40755 (2)      0      0    4096 23-Jan-2019 13:57 usr=20
       9582   40755 (2)      0      0    4096 23-Jan-2019 13:56 var=20
       9639   40555 (2)      0      0    4096 23-Jan-2019 13:43 sys=20
       9640   40755 (2)      0      0    4096 23-Jan-2019 14:04 etc=20
      10373   40755 (2)      0      0    4096 23-Jan-2019 14:03 sbin=20
      10437   40755 (2)      0      0    4096 23-Jan-2019 13:43 run=20
      10438   41777 (2)      0      0    4096 23-Jan-2019 13:43 tmp=20
      10439   40755 (2)      0      0    4096 23-Jan-2019 14:03 home=20
      10441   40755 (2)      0      0    4096 23-Jan-2019 14:03 bin=20
      10514  100644 (1)      0      0       4 24-Jan-2019 14:23 a.txt=20

There should be no change for the Disk.copy() function between rocko and ma=
ster=20
branch. Anyway could you have a try on the latest master branch?=20

Thanks,=20
Kevin=20

>=20
> =20
>=20
> Thanks for any pointers, srini=20
>=20
>=20
> =E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=20
>=20
> CONFIDENTIALITY NOTICE: This email message and any attachments are confid=
ential=20
> and may be privileged and are meant to be read by the intended recipient =
only.=20
> If you are not the intended recipient, please notify sender immediately a=
nd=20
> destroy all copies of this message and any attachments without reading or=
=20
> disclosing their contents. Thank you=20
>=20
>=20
>=20

> --=20
> _______________________________________________=20
> yocto mailing list=20
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> =20
> https://lists.yoctoproject.org/listinfo/yocto=20

=20

--=-=f+52mMncb0c+3d=-=
Content-Type: text/html;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta na=
me=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI Symbol";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US link=3Dblue vlink=3Dpurple><div class=
=3DWordSection1><p class=3DMsoNormal>Sorry for the delay.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Yes. Simple thi=
ngs worked fine. I wanted to copy=C2=A0 a dir to a partition inside the sdc=
ard image and that was not successful.<o:p></o:p></p><p class=3DMsoNormal><=
o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I ended up writing a utility to pe=
rform the function I needed. It is somewhat customized to our image but if =
anyone needs, I will be happy to share my findings. srini<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div style=3D'border:none;borde=
r-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in 0in 0in'><p class=3DMsoNormal><=
b>From:</b> Kevin Hao &lt;kexin.hao@windriver.com&gt; <br><b>Sent:</b> Thur=
sday, January 24, 2019 1:46 AM<br><b>To:</b> Srinivasan, Raja &lt;rsrinivas=
an@abiomed.com&gt;<br><b>Cc:</b> yocto@yoctoproject.org<br><b>Subject:</b> =
&lt;EXT&gt; Re: [yocto] wic utility<o:p></o:p></p></div></div><p class=3DMs=
oNormal><o:p>&nbsp;</o:p></p><p>On Wed, Jan 23, 2019 at 04:39:07PM +0000, S=
rinivasan, Raja wrote: <br>&gt; I am using wic 0.2.0 from the rocko build. =
<br>&gt; <br>&gt;&nbsp; <br>&gt; <br>&gt; wic cp file wifile:part/path <br>=
&gt; <br>&gt;&nbsp; <br>&gt; <br>&gt; appears to succeed (no errors reporte=
d). <br>&gt; <br>&gt;&nbsp; <br>&gt; <br>&gt; But when I perform wic ls I d=
on=E2=80=99t find the file in the target. <br>&gt; <br>&gt;&nbsp; <br>&gt; =
<br>&gt; Are there any switches the I should be using? <o:p></o:p></p><p>It=
 seems that it works fine on the master branch. <br>&nbsp;&nbsp;&nbsp; $ wi=
c ls tmp/deploy/images/beaglebone-yocto/core-image-sato-beaglebone-yocto.wi=
c:2 <br>&nbsp;&nbsp;&nbsp; debugfs 1.43.5 (04-Aug-2017) <br>&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096=
 23-Jan-2019 14:04 . <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 2&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:04 .. <br>&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11&nbsp;&nbsp; 40700 (2)&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp; 16384 23-=
Jan-2019 14:04 lost+found <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; 12&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:56 lib <br>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 456&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23=
-Jan-2019 13:43 dev <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 457&nbsp=
;&nbsp; 40555 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:43 proc <br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; 458&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 =
13:43 media <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 459&nbsp;&nbsp; =
40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&n=
bsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:04 boot <br>&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; 465&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 mn=
t <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 467&nbsp;&nbsp; 40755 (2)&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;=
&nbsp; 4096 23-Jan-2019 13:57 usr <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
9582&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:56 var <br>&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 9639&nbsp;&nbsp; 40555 (2)&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-20=
19 13:43 sys <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9640&nbsp;&nbsp; 4075=
5 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;=
&nbsp;&nbsp; 4096 23-Jan-2019 14:04 etc <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
10373&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 sbin <br>&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; 10437&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 =
13:43 run <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10438&nbsp;&nbsp; 41777 (2)&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&n=
bsp; 4096 23-Jan-2019 13:43 tmp <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10439&nb=
sp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 home <br>&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 10441&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 bi=
n <br>&nbsp;&nbsp;&nbsp; $ wic cp a.txt tmp/deploy/images/beaglebone-yocto/=
core-image-sato-beaglebone-yocto.wic:2 <br>&nbsp;&nbsp;&nbsp; $ wic ls tmp/=
deploy/images/beaglebone-yocto/core-image-sato-beaglebone-yocto.wic:2 <br>&=
nbsp;&nbsp;&nbsp; debugfs 1.43.5 (04-Aug-2017) <br>&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2=
019 14:04 . <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nb=
sp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:04 .. <br>&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11&nbsp;&nbsp; 40700 (2)&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp; 16384 23-Jan-2019 =
14:04 lost+found <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12&nb=
sp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:56 lib <br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; 456&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019=
 13:43 dev <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 457&nbsp;&nbsp; 4=
0555 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nb=
sp;&nbsp;&nbsp; 4096 23-Jan-2019 13:43 proc <br>&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; 458&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:43 med=
ia <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 459&nbsp;&nbsp; 40755 (2)=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp=
;&nbsp; 4096 23-Jan-2019 14:04 boot <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; 465&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 mnt <br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 467&nbsp;&nbsp; 40755 (2)&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 40=
96 23-Jan-2019 13:57 usr <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9582&nbsp=
;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:56 var <br>&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; 9639&nbsp;&nbsp; 40555 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:43 =
sys <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9640&nbsp;&nbsp; 40755 (2)&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nb=
sp; 4096 23-Jan-2019 14:04 etc <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10373&nbs=
p;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 sbin <br>&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; 10437&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 13:43 run=
 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10438&nbsp;&nbsp; 41777 (2)&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096=
 23-Jan-2019 13:43 tmp <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10439&nbsp;&nbsp;=
 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&=
nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 home <br>&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 10441&nbsp;&nbsp; 40755 (2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp; 4096 23-Jan-2019 14:03 bin <br>&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; 10514&nbsp; 100644 (1)&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 4 24-Jan-2019 14:23 a.txt <o:p></o:p></p><p>There should be no change for =
the Disk.copy() function between rocko and master <br>branch. Anyway could =
you have a try on the latest master branch? <o:p></o:p></p><p>Thanks, <br>K=
evin <o:p></o:p></p><p>&gt; <br>&gt;&nbsp; <br>&gt; <br>&gt; Thanks for any=
 pointers, srini <br>&gt; <br>&gt; <br>&gt; <span style=3D'font-family:"Seg=
oe UI Symbol",sans-serif'>=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81</span> <br>=
&gt; <br>&gt; CONFIDENTIALITY NOTICE: This email message and any attachment=
s are confidential <br>&gt; and may be privileged and are meant to be read =
by the intended recipient only. <br>&gt; If you are not the intended recipi=
ent, please notify sender immediately and <br>&gt; destroy all copies of th=
is message and any attachments without reading or <br>&gt; disclosing their=
 contents. Thank you <br>&gt; <br>&gt; <br>&gt; <o:p></o:p></p><p>&gt; -- <=
br>&gt; _______________________________________________ <br>&gt; yocto mail=
ing list <br>&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a> <br>&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yoc=
to">https://lists.yoctoproject.org/listinfo/yocto</a> <o:p></o:p></p><p cla=
ss=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

--=-=f+52mMncb0c+3d=-=--

--=-=ruTInEz+C4EH2w=-=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEopqyUnnfjkL5od8mqKR2af0o02cFAlxvJ5gACgkQqKR2af0o
02feGgf/XavEnTB2ni2LLJ+o5Yiba2q4/9c8OTvdko0qcQeMCUzMJGrwIN6UwOYG
EV4QixqBqdDNNxobxldUU0HQoXgNhU+cCBH0AwWnWIf3OIhwKmomYwdA6vZQWxIX
pHzlpH4ct0N8oYi5yhP5lMomDxYTqgK7GXUvyghzFgX7I7OTCjSsRkEEBGoNG1eD
pBbZ0pL/AASsd8o3umXdjnjsOqBGHFC7dGhpqRdFAfRZLmMCBvUN82rT8SC3/Hkr
G4+G7Bt+j7ee/OBDAdewcVsc0/6eV7eIcHJh5kTrkTuCK1hNpdAdbzVVT45sMURK
2vR0bB8aSDM9oEuf0Ju9puTD/grUCQ==
=JcSY
-----END PGP SIGNATURE-----


--=-=ruTInEz+C4EH2w=-=--
