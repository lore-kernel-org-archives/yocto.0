Return-Path: <amarnath.valluri@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D85AE00C9A; Mon, 25 Apr 2016 00:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 113EBE00C72
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 00:00:23 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2016 00:00:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,531,1455004800"; d="scan'208,217";a="91280890"
Received: from avalluri-gigabyte.fi.intel.com (HELO [10.237.72.170])
	([10.237.72.170])
	by fmsmga004.fm.intel.com with ESMTP; 25 Apr 2016 00:00:21 -0700
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <D3C33C4430ACA6488F343D1125FCCECC380DEE65@irsmsx110.ger.corp.intel.com>
From: Amarnath Valluri <amarnath.valluri@intel.com>
Message-ID: <571DC147.9040001@intel.com>
Date: Mon, 25 Apr 2016 10:03:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <D3C33C4430ACA6488F343D1125FCCECC380DEE65@irsmsx110.ger.corp.intel.com>
Subject: Re: Enable a recipe/package only when other dependent recipe/package is part of image.
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
X-List-Received-Date: Mon, 25 Apr 2016 07:00:28 -0000
Content-Type: multipart/alternative;
	boundary="------------050103060102080406070906"

--------------050103060102080406070906
MIME-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; format="flowed"
Content-Transfer-Encoding: quoted-printable



On Friday 22 April 2016 02:09 PM, Valluri, Amarnath wrote:
>
> Hello,
>
> I have my own layer, that provides configuration packages for core =

> Linux components, for example =91connman-conf=92 for =91connman=92 packag=
e.
>
> I would like to provide a pakcagegroup-config, that should =

> automatically select the configuration packages that are part of image =

> configuration. Say if =91connman=92 is part of image then it should add =

> =91connman-conf=92 to its RDEPENDS_${PN}.
>
> For this I try to use =91oe.packagedata.pkgmap=92, to check if the core =

> component exists as below:
>
> --------------------------------------------------------------------
>
> def check_if_enabled(comp, trueval, d):
>
>    import oe.packagedata
>
>    pkgmap =3D oe.packagedata.pkgmap(d)
>
>    if pkgmap is not None and pkgmap.get(comp) is not None:
>
>       return trueval
>
>    return =93=94
>
> RDEPENDS_${PN} =3D =93 \
>
> ${@check_if_enabled(=93connman=94, =93connman-conf=94, d)} \
>
> =93
>
> -----------------------------------------------------------
>
> This works as expected when the packagedata is available, i.e., image =

> is build at least once first, then my layer is added to BBLAYERS and =

> then rebuild the image.
>
> But this fails when there is no packagedata cache available.
>
> Can someone help me to resolve this properly.
>
> Thanks,
>
> Amarnath
>

---------------------------------------------------------------------
Intel Finland Oy
Registered Address: PL 281, 00181 Helsinki =

Business Identity Code: 0357606 - 4 =

Domiciled in Helsinki =


This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.

--------------050103060102080406070906
MIME-Version: 1.0
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dwindows-1252"
      http-equiv=3D"Content-Type">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On Friday 22 April 2016 02:09 PM,
      Valluri, Amarnath wrote:<br>
    </div>
    <blockquote
cite=3D"mid:D3C33C4430ACA6488F343D1125FCCECC380DEE65@irsmsx110.ger.corp.int=
el.com"
      type=3D"cite">
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 56.7pt 70.85pt 56.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Hello,<o:p></o:p></span=
></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I have my own layer,
            that provides configuration packages for core Linux
            components, for example =91connman-conf=92 for =91connman=92
            package.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">I would like to provide
            a pakcagegroup-config, that should automatically select the
            configuration packages that are part of image configuration.
            Say if =91connman=92 is part of image then it should add
            =91connman-conf=92 to its RDEPENDS_${PN}.=A0 <o:p></o:p></span>=
</p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">For this I try to use
            =91oe.packagedata.pkgmap=92, to check if the core component
            exists as below:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">-----------------------=
---------------------------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">def
            check_if_enabled(comp, trueval, d):<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 import oe.packag=
edata<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0 pkgmap =3D
            oe.packagedata.pkgmap(d)<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 =A0if pkgmap is not=
 None
            and pkgmap.get(comp) is not None:<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0=A0=A0 =A0return =
trueval<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0 =A0return =93=94<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">RDEPENDS_${PN} =3D =93 =
\<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=A0=A0
            ${@check_if_enabled(=93connman=94, =93connman-conf=94, d)} \<o:=
p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">=93<o:p></o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">-----------------------=
------------------------------------<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">This works as expected
            when the packagedata is available, i.e., image is build at
            least once first, then my layer is added to BBLAYERS and
            then rebuild the image.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">But this fails when
            there is no packagedata cache available.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Can someone help me to
            resolve this properly.<o:p></o:p></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>=A0</o:p></span></=
p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US">Amarnath<o:p></o:p></sp=
an></p>
      </div>
    </blockquote>
    <br>
  <p>---------------------------------------------------------------------<=
br>
Intel Finland Oy<br>
Registered Address: PL 281, 00181 Helsinki <br>
Business Identity Code: 0357606 - 4 <br>
Domiciled in Helsinki </p>

<p>This e-mail and any attachments may contain confidential material for<br>
the sole use of the intended recipient(s). Any review or distribution<br>
by others is strictly prohibited. If you are not the intended<br>
recipient, please contact the sender and delete all copies.</p></body>
</html>

--------------050103060102080406070906--
