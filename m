Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B944E016DD
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 02:17:59 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id tp5so6213218ieb.17
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 02:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=5N6D6eBXofOu5ZNviW6Xg6vq+KIbMbAzRHbeuJCdUkk=;
	b=HN+ttOI3JWHCY0Qv/vos4UpvkNg7TJlZYUThCJPTXOf/xW/j8KRbxZA2ATRKnNiJOC
	cwuFrCNxyfJfOZ6AjurvGdB5UNkcBoiEEEiDBmRH24E0eBf6CUOgkAFs8rfRk+8Hfb88
	CGdp6QkUmCcRpTOfCu5v13B2I17JiBJJDXoAKQpZv6qFSqXleppsSbS8uOiscXUiUVG4
	7AZH6qcUdy4vme7Y0DIDBHbjN1x4XF1SD/Py7xxvI4N80c8NFD0nDMvQX3//at1L1PKM
	ccwDzXt+DaD8+lygXmfz9ropSI7nWxG+SatYTGyYIJr+gghIseU252G/1V9TzTVzePA5
	eGAw==
X-Received: by 10.43.178.135 with SMTP id ow7mr1063571icc.43.1382087878882;
	Fri, 18 Oct 2013 02:17:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 18 Oct 2013 02:17:38 -0700 (PDT)
In-Reply-To: <5260BDA6.4020807@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 18 Oct 2013 06:17:38 -0300
Message-ID: <CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Fri, 18 Oct 2013 09:18:03 -0000
Content-Type: multipart/alternative; boundary=001a11c30bec11c07804e900697c

--001a11c30bec11c07804e900697c
Content-Type: text/plain; charset=ISO-8859-1

2013/10/18 Bruce Ashfield <bruce.ashfield@windriver.com>

> I fell behind today .. i had 2300 unread email to start this morning :)
> Is there a way that I can get a copy of your recipes and layers ? If
> I can do a build myself, I can easily debug and fix this .. otherwise,
> we'll
> go back and forth many times debugging.
>
> Cheers,
>
> Bruce
>

I'm using the environment provided by Angstrom from it's github setup
scripts.
If you want to exactly reproduce it you need to:

git clone https://github.com/Angstrom-distribution/setup-scripts.git
cd setup-scripts
git checkout angstrom-v2013.06-yocto1.4
MACHINE=beaglebone ./oebb.sh config beaglebone

Here is the setup and files for meta-mine:

bblayers.conf:

BBLAYERS = \"

...
${TOPDIR}/sources/meta-mine \
"

meta-mine/conf/layer.conf:

# We have a conf and classes directory, append to BBPATH
BBPATH .= ":${LAYERDIR}"
# We have a recipes directory, add to BBFILES
BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
BBFILE_COLLECTIONS += "mine-layer"
BBFILE_PATTERN_mine-layer := "^${LAYERDIR}/"
BBFILE_PRIORITY_mine-layer = "10"
LAYERDEPENDS_mine-layer = "angstrom-layer"

meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
inherit kernel
require recipes-kernel/linux/linux-yocto.inc
COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
SRC_URI += " file://config-addons.cfg "

meta-mine/recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg:

CONFIG_WATCHDOG_NOWAYOUT=y
CONFIG_NTFS_FS=y
CONFIG_NTFS_RW=y



But I think that instead of using the whole Angstrom you can just use poky
and meta-beagleboard/common-bsp on dylan branch.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--001a11c30bec11c07804e900697c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/18 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":10a" style=3D"overflow:hidden">I fell behind t=
oday .. i had 2300 unread email to start this morning :)<br>


Is there a way that I can get a copy of your recipes and layers ? If<br>
I can do a build myself, I can easily debug and fix this .. otherwise, we&#=
39;ll<br>
go back and forth many times debugging.<br>
<br>
Cheers,<br>
<br>
Bruce</div></blockquote></div><br>I&#39;m using the environment provided by=
 Angstrom from it&#39;s github setup scripts.</div><div class=3D"gmail_extr=
a">If you want to exactly reproduce it you need to:</div><div class=3D"gmai=
l_extra">

<blockquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div =
class=3D"gmail_extra" style><div class=3D"gmail_extra">git clone <a href=3D=
"https://github.com/Angstrom-distribution/setup-scripts.git">https://github=
.com/Angstrom-distribution/setup-scripts.git</a></div>

<div class=3D"gmail_extra">cd setup-scripts</div><div class=3D"gmail_extra"=
>git checkout angstrom-v2013.06-yocto1.4</div><div class=3D"gmail_extra">MA=
CHINE=3Dbeaglebone ./oebb.sh config beaglebone</div><div><br></div></div></=
blockquote>

Here is the setup and files for meta-mine:</div><div class=3D"gmail_extra" =
style><br></div>bblayers.conf:<br><blockquote style=3D"margin:0px 0px 0px 4=
0px;border:none;padding:0px"><div class=3D"gmail_extra" style>BBLAYERS =3D =
\&quot;<br>

</div></blockquote><blockquote style=3D"margin:0px 0px 0px 40px;border:none=
;padding:0px"><div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0p=
x 0px 40px;border:none;padding:0px"><div class=3D"gmail_extra" style>...</d=
iv>
<div class=3D"gmail_extra" style>
${TOPDIR}/sources/meta-mine \<br></div><div class=3D"gmail_extra" style>&qu=
ot;</div></blockquote></div></blockquote><div class=3D"gmail_extra">meta-mi=
ne/conf/layer.conf:</div><div class=3D"gmail_extra"><blockquote style=3D"ma=
rgin:0px 0px 0px 40px;border:none;padding:0px">

<div class=3D"gmail_extra" style><div class=3D"gmail_extra"># We have a con=
f and classes directory, append to BBPATH</div><div class=3D"gmail_extra">B=
BPATH .=3D &quot;:${LAYERDIR}&quot;</div><div class=3D"gmail_extra"># We ha=
ve a recipes directory, add to BBFILES<br>

</div><div class=3D"gmail_extra">BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/=
*.bb ${LAYERDIR}/recipes*/*/*.bbappend&quot;</div><div class=3D"gmail_extra=
">BBFILE_COLLECTIONS +=3D &quot;mine-layer&quot;<br></div><div class=3D"gma=
il_extra">

BBFILE_PATTERN_mine-layer :=3D &quot;^${LAYERDIR}/&quot;</div><div class=3D=
"gmail_extra">BBFILE_PRIORITY_mine-layer =3D &quot;10&quot;</div><div class=
=3D"gmail_extra">LAYERDEPENDS_mine-layer =3D &quot;angstrom-layer&quot;<br>=
</div>

<div><br></div></div></blockquote>meta-mine/recipes-kernel/linux/linux-main=
line_3.8.bbappend:</div><div class=3D"gmail_extra"><blockquote style=3D"mar=
gin:0px 0px 0px 40px;border:none;padding:0px"><div class=3D"gmail_extra" st=
yle>

<div class=3D"gmail_extra">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${=
PN}-3.8:&quot;</div><div class=3D"gmail_extra"><div class=3D"gmail_extra">i=
nherit kernel</div><div class=3D"gmail_extra">require recipes-kernel/linux/=
linux-yocto.inc</div>

<div class=3D"gmail_extra">COMPATIBLE_MACHINE_beaglebone =3D &quot;(beagleb=
one)&quot;<br></div></div><div class=3D"gmail_extra">SRC_URI +=3D &quot; fi=
le://config-addons.cfg=A0&quot;</div><div class=3D"gmail_extra"><br></div><=
/div></blockquote>

<div class=3D"gmail_extra">meta-mine/recipes-kernel/linux/linux-mainline-3.=
8/config-addons.cfg:<br></div></div><blockquote style=3D"margin:0px 0px 0px=
 40px;border:none;padding:0px"><div class=3D"gmail_extra"><div class=3D"gma=
il_extra" style>

<div class=3D"gmail_extra">CONFIG_WATCHDOG_NOWAYOUT=3Dy</div><div class=3D"=
gmail_extra">CONFIG_NTFS_FS=3Dy</div><div class=3D"gmail_extra">CONFIG_NTFS=
_RW=3Dy</div></div></div></blockquote><div class=3D"gmail_extra"><div class=
=3D"gmail_extra">

<br></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra" s=
tyle>But I think that instead of using the whole Angstrom you can just use =
poky and meta-beagleboard/common-bsp on dylan branch.</div><div class=3D"gm=
ail_extra">

<br></div><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><=
br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br=
></div></div>
</div></div>

--001a11c30bec11c07804e900697c--
