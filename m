Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.2849.1600359053979330023
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 09:10:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B54BC38C1176
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 09:10:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 08HGABGs004655
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 17 Sep 2020 09:10:21 -0700
Received: from [172.25.44.2] (172.25.44.2) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Thu, 17 Sep
 2020 09:10:00 -0700
Subject: Re: [yocto-builds] relocate_sdk.py is failing when installing yocto3.1.2 SDK
To: Ansurivijay Ramana <ansurivijay.r@hcl.com>,
        Yocto discussion list
	<yocto@yoctoproject.org>
References: <TYAPR04MB236735778EF825C895595418F13E0@TYAPR04MB2367.apcprd04.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <1fcf121b-4486-76cb-b6b5-a75f04701018@windriver.com>
Date: Thu, 17 Sep 2020 12:09:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <TYAPR04MB236735778EF825C895595418F13E0@TYAPR04MB2367.apcprd04.prod.outlook.com>
X-Originating-IP: [172.25.44.2]
Content-Type: multipart/alternative;
	boundary="------------1D499058D14C852D98117CEA"
Content-Language: en-CA

--------------1D499058D14C852D98117CEA
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Vijay,

I have redirected this thread to the main yocto list.
The yocto-builds list is for automated build outputs
rather than discussions.


What distro are you using?
What version of python3 is provided by that distro?
On Ubu-20.04, fyi:
$ grep python3 /.../oe-core.git/scripts/relocate_sdk.py
#!/usr/bin/env python3
$ python3 --version
Python 3.8.2

../Randy

On 2020-09-17 9:49 a.m., Ansurivijay Ramana wrote:
>
> Classification: *HCL Internal*
>
> Hi ,
>
> I have added my layer and builded the SDK in yocto 3.1.2 but=20
> relocate_sdk.py is failing when installing.
>
> Please help me in fixing this.
>
> ./poky-glibc-x86_64-core-image-sato-sdk-core2-32-qemux86-toolchain-3.1.2=
.sh
>
> Poky (Yocto Project Reference Distro) SDK installer version 3.1.2
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Enter target directory for SDK (default: /opt/poky/3.1.2):=20
> /home/vijay/build/test3
>
> You are about to install the SDK to "/home/vijay/build/test3". Proceed=
=20
> [Y/n]? Y
>
> Extracting=20
> SDK.....................................................................=
...........................................................................=
...........................................................................=
..............................................done
>
> Setting it up...Traceback (most recent call last):
>
> =A0 File "/home/vijay/build/test3/relocate_sdk.py", line 244, in <module=
>
>
> =A0=A0=A0 change_dl_sysdirs(e)
>
> =A0 File "/home/vijay/build/test3/relocate_sdk.py", line 118, in=20
> change_dl_sysdirs
>
> =A0=A0=A0 sh_offset, sh_size =3D struct.unpack("<24xQQ24x", sh_hdr)
>
> struct.error: unpack requires a string argument of length 64
>
> SDK could not be set up. Relocate script failed. Abort!
>
> Thanks & Regards,
>
> Vijay
>
> ::DISCLAIMER::
> ------------------------------------------------------------------------
> The contents of this e-mail and any attachment(s) are confidential and=
=20
> intended for the named recipient(s) only. E-mail transmission is not=20
> guaranteed to be secure or error-free as information could be=20
> intercepted, corrupted, lost, destroyed, arrive late or incomplete, or=
=20
> may contain viruses in transmission. The e mail and its contents (with=
=20
> or without referred errors) shall therefore not attach any liability=20
> on the originator or HCL or its affiliates. Views or opinions, if any,=
=20
> presented in this email are solely those of the author and may not=20
> necessarily reflect the views or opinions of HCL or its affiliates.=20
> Any form of reproduction, dissemination, copying, disclosure,=20
> modification, distribution and / or publication of this message=20
> without the prior written consent of authorized representative of HCL=20
> is strictly prohibited. If you have received this email in error=20
> please delete it and notify the sender immediately. Before opening any=
=20
> email and/or attachments, please check them for viruses and other defect=
s.
> ------------------------------------------------------------------------
>
>=20
>

--=20
# Randy MacLeod
# Wind River Linux


--------------1D499058D14C852D98117CEA
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3Dwindows-1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">Hi Vijay,</div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">I have redirected this thread to the
      main yocto list.</div>
    <div class=3D"moz-cite-prefix">The yocto-builds list is for automated
      build outputs</div>
    <div class=3D"moz-cite-prefix">rather than discussions. <br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">What distro are you using? <br>
    </div>
    <div class=3D"moz-cite-prefix">What version of python3 is provided by
      that distro?</div>
    <div class=3D"moz-cite-prefix">On Ubu-20.04, fyi:</div>
    <div class=3D"moz-cite-prefix">$ grep python3
      /.../oe-core.git/scripts/relocate_sdk.py<br>
      #!/usr/bin/env python3<br>
    </div>
    <div class=3D"moz-cite-prefix">$ python3 --version<br>
      Python 3.8.2<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">../Randy<br>
    </div>
    <div class=3D"moz-cite-prefix"><br>
    </div>
    <div class=3D"moz-cite-prefix">On 2020-09-17 9:49 a.m., Ansurivijay
      Ramana wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:TYAPR04MB236735778EF825C895595418F13E0@TYAPR04MB2367.apcprd04.=
prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3Dwindows-1252">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Classificati=
on:
          <b><span style=3D"color:#08298A">HCL Internal</span></b><o:p></o=
:p></p>
        <p class=3D"MsoNormal">Hi ,<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">I have added my layer and builded the SDK
          in yocto 3.1.2 but relocate_sdk.py is failing when installing.<o=
:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Please help me in fixing this.<o:p></o:p></=
p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">./poky-glibc-x86_64-core-image-sato-sdk-cor=
e2-32-qemux86-toolchain-3.1.2.sh<o:p></o:p></p>
        <p class=3D"MsoNormal">Poky (Yocto Project Reference Distro) SDK
          installer version 3.1.2<o:p></o:p></p>
        <p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<o:p></o:p></p>
        <p class=3D"MsoNormal">Enter target directory for SDK (default:
          /opt/poky/3.1.2): /home/vijay/build/test3<o:p></o:p></p>
        <p class=3D"MsoNormal">You are about to install the SDK to
          "/home/vijay/build/test3". Proceed [Y/n]? Y<o:p></o:p></p>
        <p class=3D"MsoNormal">Extracting
SDK.......................................................................=
...........................................................................=
...........................................................................=
............................................done<o:p></o:p></p>
        <p class=3D"MsoNormal">Setting it up...Traceback (most recent call
          last):<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0 File
          "/home/vijay/build/test3/relocate_sdk.py", line 244, in
          &lt;module&gt;<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 change_dl_sysdirs(e)<o:p></o:p></=
p>
        <p class=3D"MsoNormal">=A0 File
          "/home/vijay/build/test3/relocate_sdk.py", line 118, in
          change_dl_sysdirs<o:p></o:p></p>
        <p class=3D"MsoNormal">=A0=A0=A0 sh_offset, sh_size =3D
          struct.unpack("&lt;24xQQ24x", sh_hdr)<o:p></o:p></p>
        <p class=3D"MsoNormal">struct.error: unpack requires a string
          argument of length 64<o:p></o:p></p>
        <p class=3D"MsoNormal">SDK could not be set up. Relocate script
          failed. Abort!<o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>=A0</o:p></p>
        <p class=3D"MsoNormal">Thanks &amp; Regards,<o:p></o:p></p>
        <p class=3D"MsoNormal">Vijay<o:p></o:p></p>
      </div>
      <font size=3D"1" face=3D"Arial" color=3D"Gray">::DISCLAIMER::<br>
        <hr>
        The contents of this e-mail and any attachment(s) are
        confidential and intended for the named recipient(s) only.
        E-mail transmission is not guaranteed to be secure or error-free
        as information could be intercepted, corrupted, lost, destroyed,
        arrive late or incomplete, or may contain viruses in
        transmission. The e mail and its contents (with or without
        referred errors) shall therefore not attach any liability on the
        originator or HCL or its affiliates. Views or opinions, if any,
        presented in this email are solely those of the author and may
        not necessarily reflect the views or opinions of HCL or its
        affiliates. Any form of reproduction, dissemination, copying,
        disclosure, modification, distribution and / or publication of
        this message without the prior written consent of authorized
        representative of HCL is strictly prohibited. If you have
        received this email in error please delete it and notify the
        sender immediately. Before opening any email and/or attachments,
        please check them for viruses and other defects.<br>
        <hr>
      </font>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------1D499058D14C852D98117CEA--
