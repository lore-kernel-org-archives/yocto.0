Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD99FE0176E
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 04:44:01 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id u16so6013623iet.4
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 04:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+Dhqn2RAlG48pBmB+hs4TgDZHz+FrN4l4R0nFKhWHao=;
	b=PB3U1B4kx1Gp5X4+ue+myfqUg6L9a6rY/0CYeR0BiGIjBIN6YOGSmxqqRPjRL0MiQn
	G7voSap9iyoPD2KhRRPJibK81T8ybkmmrAMb4Ptyzwxy27nUW7+KB6gFoD9hLaSJbJXc
	Dkug9mwJcuJg8/1A8+6kSJq9Uh1b4kU2C6v1w2hB3jv2SwxLGac/FUt1QkoOW//mO2t8
	w1WrXSfK1jcKWDriReMz2fAPd/VntQIgFmr/wrYg7XIEBB+Duta3fD0R88XnS4RpF5Sm
	0luk4umglgtwGQ+7AgxS5f8xi+tlLk2mhgRIMP/RyhmzWfof9KlxpKPtlE4Ge/moEQ/T
	ZXLw==
X-Received: by 10.42.149.130 with SMTP id w2mr560014icv.64.1382701440708; Fri,
	25 Oct 2013 04:44:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Fri, 25 Oct 2013 04:43:40 -0700 (PDT)
In-Reply-To: <52686723.4080305@windriver.com>
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
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 25 Oct 2013 09:43:40 -0200
Message-ID: <CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 25 Oct 2013 11:44:02 -0000
Content-Type: multipart/alternative; boundary=90e6ba1efbf034523104e98f445c

--90e6ba1efbf034523104e98f445c
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

Regarding the defconfig not used, I've found this thread on Angstrom devel
ML:
http://www.mail-archive.com/angstrom-distro-devel@linuxtogo.org/msg06721.html

I've replaced "FILESEXTRAPATHS_prepend" with "FILESPATH_prepend" and
removed the custom "do_configure_prepend" function and bitbake is now using
my defconfig.
So, it seems that there is an issue with FILESEXTRAPATHS variable.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


2013/10/23 Bruce Ashfield <bruce.ashfield@windriver.com>

> On 13-10-22 12:23 PM, Mike Lewis wrote:
>
>> Hi Bruce,
>>
>> I'm trying to accomplish the nearly the same thing (i.e. adding config
>> fragment) and I'm having the same issue at the do_patch step. Were you
>> able to reproduce this on your end?
>>
>
> Mike,
>
> Is you config/layer somewhere than I can have a look at it ? I was trying
> some builds here, and my tests are working. But I'd like to try it
> with your config as well.
>
> Bruce
>
>
>
>> Thanks,
>> Mike
>>
>> On 10/18/2013 01:17 PM, Bruce Ashfield wrote:
>>
>>> On 13-10-18 05:17 AM, Diego Sueiro wrote:
>>>
>>>>
>>>> 2013/10/18 Bruce Ashfield <bruce.ashfield@windriver.com
>>>> <mailto:bruce.ashfield@**windriver.com <bruce.ashfield@windriver.com>>>
>>>>
>>>>     I fell behind today .. i had 2300 unread email to start this
>>>> morning :)
>>>>     Is there a way that I can get a copy of your recipes and layers ? If
>>>>     I can do a build myself, I can easily debug and fix this ..
>>>>     otherwise, we'll
>>>>     go back and forth many times debugging.
>>>>
>>>>     Cheers,
>>>>
>>>>     Bruce
>>>>
>>>>
>>>> I'm using the environment provided by Angstrom from it's github setup
>>>> scripts.
>>>> If you want to exactly reproduce it you need to:
>>>>
>>>>     git clone https://github.com/Angstrom-**
>>>> distribution/setup-scripts.git<https://github.com/Angstrom-distribution/setup-scripts.git>
>>>>     cd setup-scripts
>>>>     git checkout angstrom-v2013.06-yocto1.4
>>>>     MACHINE=beaglebone ./oebb.sh config beaglebone
>>>>
>>>> Here is the setup and files for meta-mine:
>>>>
>>>> bblayers.conf:
>>>>
>>>>     BBLAYERS = \"
>>>>
>>>>         ...
>>>>         ${TOPDIR}/sources/meta-mine \
>>>>         "
>>>>
>>>> meta-mine/conf/layer.conf:
>>>>
>>>>     # We have a conf and classes directory, append to BBPATH
>>>>     BBPATH .= ":${LAYERDIR}"
>>>>     # We have a recipes directory, add to BBFILES
>>>>     BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>>>>     ${LAYERDIR}/recipes*/*/*.**bbappend"
>>>>     BBFILE_COLLECTIONS += "mine-layer"
>>>>     BBFILE_PATTERN_mine-layer := "^${LAYERDIR}/"
>>>>     BBFILE_PRIORITY_mine-layer = "10"
>>>>     LAYERDEPENDS_mine-layer = "angstrom-layer"
>>>>
>>>> meta-mine/recipes-kernel/**linux/linux-mainline_3.8.**bbappend:
>>>>
>>>>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>>>>     inherit kernel
>>>>     require recipes-kernel/linux/linux-**yocto.inc
>>>>     COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>>>>     SRC_URI += " file://config-addons.cfg "
>>>>
>>>> meta-mine/recipes-kernel/**linux/linux-mainline-3.8/**
>>>> config-addons.cfg:
>>>>
>>>>     CONFIG_WATCHDOG_NOWAYOUT=y
>>>>     CONFIG_NTFS_FS=y
>>>>     CONFIG_NTFS_RW=y
>>>>
>>>>
>>>>
>>>> But I think that instead of using the whole Angstrom you can just use
>>>> poky and meta-beagleboard/common-bsp on dylan branch.
>>>>
>>>
>>> Great. I'll launch some test builds and see what breaks (or works) :)
>>>
>>> Bruce
>>>
>>>
>>>>
>>>> Regards,
>>>>
>>>> --
>>>> *dS
>>>> Diego Sueiro
>>>>
>>>> /*long live rock 'n roll*/
>>>>
>>>
>>> ______________________________**_________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>>
>>
>>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--90e6ba1efbf034523104e98f445c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bruce,<div><br></div><div style>Regarding the defconfig no=
t used, I&#39;ve found this thread on Angstrom devel ML:</div><div style><a=
 href=3D"http://www.mail-archive.com/angstrom-distro-devel@linuxtogo.org/ms=
g06721.html">http://www.mail-archive.com/angstrom-distro-devel@linuxtogo.or=
g/msg06721.html</a><br>

</div><div style><br></div><div style>I&#39;ve replaced &quot;FILESEXTRAPAT=
HS_prepend&quot; with &quot;FILESPATH_prepend&quot; and removed the custom =
&quot;do_configure_prepend&quot; function and bitbake is now using my defco=
nfig.</div>

<div style>So, it seems that there is an issue with FILESEXTRAPATHS variabl=
e.</div><div class=3D"gmail_extra"><br clear=3D"all"><div><div dir=3D"ltr">=
<div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long l=
ive rock &#39;n roll*/</div>

</div>
<br><br><div class=3D"gmail_quote">2013/10/23 Bruce Ashfield <span dir=3D"l=
tr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">b=
ruce.ashfield@windriver.com</a>&gt;</span><br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-co=
lor:rgb(204,204,204);border-left-style:solid;padding-left:1ex">

<div class=3D"im">On <a href=3D"tel:13-10-22%2012" value=3D"+13102212" targ=
et=3D"_blank">13-10-22 12</a>:23 PM, Mike Lewis wrote:<br>
</div><div class=3D"im"><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex">
Hi Bruce,<br>
<br>
I&#39;m trying to accomplish the nearly the same thing (i.e. adding config<=
br>
fragment) and I&#39;m having the same issue at the do_patch step. Were you<=
br>
able to reproduce this on your end?<br>
</blockquote>
<br></div>
Mike,<br>
<br>
Is you config/layer somewhere than I can have a look at it ? I was trying<b=
r>
some builds here, and my tests are working. But I&#39;d like to try it<br>
with your config as well.<span class=3D""><font color=3D"#888888"><br>
<br>
Bruce</font></span><div class=3D""><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
Thanks,<br>
Mike<br>
<br>
On 10/18/2013 01:17 PM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
On <a href=3D"tel:13-10-18%2005" value=3D"+13101805" target=3D"_blank">13-1=
0-18 05</a>:17 AM, Diego Sueiro wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
2013/10/18 Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a><br>
&lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank=
">bruce.ashfield@<u></u>windriver.com</a>&gt;&gt;<br>
<br>
=A0 =A0 I fell behind today .. i had 2300 unread email to start this<br>
morning :)<br>
=A0 =A0 Is there a way that I can get a copy of your recipes and layers ? I=
f<br>
=A0 =A0 I can do a build myself, I can easily debug and fix this ..<br>
=A0 =A0 otherwise, we&#39;ll<br>
=A0 =A0 go back and forth many times debugging.<br>
<br>
=A0 =A0 Cheers,<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br>
I&#39;m using the environment provided by Angstrom from it&#39;s github set=
up<br>
scripts.<br>
If you want to exactly reproduce it you need to:<br>
<br>
=A0 =A0 git clone <a href=3D"https://github.com/Angstrom-distribution/setup=
-scripts.git" target=3D"_blank">https://github.com/Angstrom-<u></u>distribu=
tion/setup-scripts.git</a><br>
=A0 =A0 cd setup-scripts<br>
=A0 =A0 git checkout angstrom-v2013.06-yocto1.4<br>
=A0 =A0 MACHINE=3Dbeaglebone ./oebb.sh config beaglebone<br>
<br>
Here is the setup and files for meta-mine:<br>
<br>
bblayers.conf:<br>
<br>
=A0 =A0 BBLAYERS =3D \&quot;<br>
<br>
=A0 =A0 =A0 =A0 ...<br>
=A0 =A0 =A0 =A0 ${TOPDIR}/sources/meta-mine \<br>
=A0 =A0 =A0 =A0 &quot;<br>
<br>
meta-mine/conf/layer.conf:<br>
<br>
=A0 =A0 # We have a conf and classes directory, append to BBPATH<br>
=A0 =A0 BBPATH .=3D &quot;:${LAYERDIR}&quot;<br>
=A0 =A0 # We have a recipes directory, add to BBFILES<br>
=A0 =A0 BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb<br>
=A0 =A0 ${LAYERDIR}/recipes*/*/*.<u></u>bbappend&quot;<br>
=A0 =A0 BBFILE_COLLECTIONS +=3D &quot;mine-layer&quot;<br>
=A0 =A0 BBFILE_PATTERN_mine-layer :=3D &quot;^${LAYERDIR}/&quot;<br>
=A0 =A0 BBFILE_PRIORITY_mine-layer =3D &quot;10&quot;<br>
=A0 =A0 LAYERDEPENDS_mine-layer =3D &quot;angstrom-layer&quot;<br>
<br>
meta-mine/recipes-kernel/<u></u>linux/linux-mainline_3.8.<u></u>bbappend:<b=
r>
<br>
=A0 =A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}-3.8:&quot;<br>
=A0 =A0 inherit kernel<br>
=A0 =A0 require recipes-kernel/linux/linux-<u></u>yocto.inc<br>
=A0 =A0 COMPATIBLE_MACHINE_beaglebone =3D &quot;(beaglebone)&quot;<br>
=A0 =A0 SRC_URI +=3D &quot; file://config-addons.cfg &quot;<br>
<br>
meta-mine/recipes-kernel/<u></u>linux/linux-mainline-3.8/<u></u>config-addo=
ns.cfg:<br>
<br>
=A0 =A0 CONFIG_WATCHDOG_NOWAYOUT=3Dy<br>
=A0 =A0 CONFIG_NTFS_FS=3Dy<br>
=A0 =A0 CONFIG_NTFS_RW=3Dy<br>
<br>
<br>
<br>
But I think that instead of using the whole Angstrom you can just use<br>
poky and meta-beagleboard/common-bsp on dylan branch.<br>
</blockquote>
<br>
Great. I&#39;ll launch some test builds and see what breaks (or works) :)<b=
r>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
<br>
Regards,<br>
<br>
--<br>
*dS<br>
Diego Sueiro<br>
<br>
/*long live rock &#39;n roll*/<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote>
<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--90e6ba1efbf034523104e98f445c--
