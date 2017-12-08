Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EF39E00D87; Fri,  8 Dec 2017 02:47:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FF2FE00D6E
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 02:47:33 -0800 (PST)
Received: by mail-it0-f50.google.com with SMTP id f190so3866618ita.5
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 02:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yFTuBq09B1dJFu6V1CRnj7xD+3y8vq7vmsJDWYxtAzs=;
	b=l7vuX3NKJqUPJAJ5FopriN1xUE2Hossc15FCVbo17q5Sk+mc3xEsJdnilYpLx+wDEv
	DPD1jWJztEfswYv+YWnlW51dJcr+XqtNHfFZmZlssOeIRy1QQCZrH+Pc4qR/iGxP2RS9
	EtMDYRNDm+8WzRLbmEXVsMmBuNcB9e/IJTznxp2nCKrtS2WJZq+v918YIAf6eGdam8k+
	25h9HCqrBfjPtEtjMBsDUs94xJ7VIOFt7kPPolCz5PqHNtUtOWNuNz924uQP+/XkezdE
	QgJhl3S/ram37hjGLt2oHWIjeqRNqPLsNTGXVVyHgFMApFaPfFyDHR1+xg8hYnt4KZNz
	u9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yFTuBq09B1dJFu6V1CRnj7xD+3y8vq7vmsJDWYxtAzs=;
	b=f/KdgjEDd4Lh22qeZ3upd4M8W3/SmZ+8CH7Mpoit5r7YXD7Mlbi3bYsc5Su1ay/04z
	5ZeiSxCgsBe90YHznSdl7jx84uniyxzx0CMxzFNlTSzr0qDJ7ny6cHlWxS3YB47NGidB
	Iy4hQUiMjexmFUHh89ptLsi/vmrBfMZ+dvwIBmynEPyjnhLbqvRvKJL0aZUdBgUxH9Ve
	uyrbShTxdob4RGwiboyud6UdS98C6v/2UW/K+uSPzQwNDNcXOvNh+rmG/2lBoxip6pv3
	fX3+xH9LaCSyWLN5uHgtTU1GAUJld97U55vvZ8cpbdzkef8vhi2UqRqiw5iZaBAlxij+
	YFTA==
X-Gm-Message-State: AJaThX5Xjiph0H9UbJCrsvLGIYk4JNYbAN+g/H+1wRf0apwFa0rFBvat
	o/4HwYpxGAqm8gB1LpU2WS/KacyvtDZZbwZB53NCHg==
X-Google-Smtp-Source: AGs4zMY1bDwjtDOz/68Yhm74jVNxZGOul/fyQ3BOroxsDA0rTFdMFU/G8oTs9ooWwn6unhU2UfcR/3OTUegQRyqdJoM=
X-Received: by 10.107.32.18 with SMTP id g18mr41502392iog.227.1512730053272;
	Fri, 08 Dec 2017 02:47:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 02:47:12 -0800 (PST)
In-Reply-To: <CAPVQe-AHxR+r2W73gv7LHpwsc4ebsJ9P5zZE0CJXKHiAw2rF8w@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
	<CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
	<CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
	<CAJTo0LYBPD6BpAVZgCNi-OBtWKgtKnjKszrq_+VK534ZvwicMw@mail.gmail.com>
	<CAPVQe-AHxR+r2W73gv7LHpwsc4ebsJ9P5zZE0CJXKHiAw2rF8w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 10:47:12 +0000
Message-ID: <CAJTo0LaBu-gyhFnV0BOaUqpsENkkuU_u-UKkxQUyy4z34MHtNA@mail.gmail.com>
To: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty Branch: Error in building core-image-sato | matchbox-panel recipe
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
X-List-Received-Date: Fri, 08 Dec 2017 10:47:40 -0000
Content-Type: multipart/alternative; boundary="001a1141b498777f71055fd1e936"

--001a1141b498777f71055fd1e936
Content-Type: text/plain; charset="UTF-8"

core-image-sato will refuse to build long before matchbox-desktop if x11 is
disabled.

Ross

On 8 December 2017 at 10:46, Gunasekaran Srinivasan <
gunasekaran@solitontech.com> wrote:

> I will check that. Shouldn't core-image-sato recipecome with x11 enabled?
>
> Thanks,
> Guna
>
> On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> I'm surprised it go that far as libx11 should have refused to build if X
>> was disabled.  To enable X:
>>
>> DISTRO_FEATURES_append = " x11"
>>
>> Ross
>>
>> On 8 December 2017 at 10:40, Gunasekaran Srinivasan <
>> gunasekaran@solitontech.com> wrote:
>>
>>> No. I haven't. If it's disabled by default. Can you tell how to enable
>>> in conf/local.conf file?
>>>
>>> Thanks,
>>> Guna
>>>
>>> On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> gdk-x11 is part of the gtk+3 recipe, which is a dependency of
>>>> matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?
>>>>
>>>> Ross
>>>>
>>>> On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
>>>> gunasekaran@solitontech.com> wrote:
>>>>
>>>>> Hi all,
>>>>>
>>>>> I am trying to build core-image-sato image with poky 2.2.2. I am
>>>>> getting following error in matchbox-panel recipe
>>>>>
>>>>> ............................................................
>>>>> ......................................................
>>>>>  checking what language compliance flags to pass to the C compiler...
>>>>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>>>>> | checking for pkg-config... </path/>fsl-community-bsp/matc
>>>>> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>>>>> | checking pkg-config is at least version 0.9.0... yes
>>>>> | checking for MATCHBOX_PANEL... no
>>>>> | configure: error: Package requirements (glib-2.0
>>>>> |                   gmodule-export-2.0
>>>>> |                   x11
>>>>> |                   gdk-x11-3.0
>>>>> |                   gtk+-3.0) were not met:
>>>>> |
>>>>> | No package 'gdk-x11-3.0' found
>>>>> |
>>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>>>> | installed software in a non-standard prefix.
>>>>> |
>>>>> | Alternatively, you may set the environment variables
>>>>> MATCHBOX_PANEL_CFLAGS
>>>>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>>>>> | See the pkg-config man page for more details.
>>>>> | WARNING: exit code 1 from a shell command.
>>>>> | ERROR: Function failed: do_configure (log file is located at
>>>>> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-p
>>>>> oky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_confi
>>>>> gure.27179)
>>>>> ERROR: Task (<path>/fsl-community-bsp/sour
>>>>> ces/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
>>>>> failed with exit code '1'
>>>>> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
>>>>> rerun and 1 failed.
>>>>>
>>>>> Summary: 1 task failed:
>>>>>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matc
>>>>> hbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>>>>>
>>>>> Is there a recipe for gdk-x11 in yocto?
>>>>>
>>>>>
>>>>> Thanks,
>>>>> Guna
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>>
>>>>
>>>
>>
>

--001a1141b498777f71055fd1e936
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">core-image-sato will refuse to build long before matchbox-=
desktop if x11 is disabled.<div><br></div><div>Ross</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 December 2017 at 10:46=
, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a href=3D"mailto:gunasekara=
n@solitontech.com" target=3D"_blank">gunasekaran@solitontech.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I will check=
 that. Shouldn&#39;t core-image-sato recipecome with x11 enabled? <br></div=
><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"m_42885436=
31352256437gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div=
>Guna<br></div></div></div></div></div></div></div></div><div><div class=3D=
"h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">I&#39;m surprised it go that far as libx11 shoul=
d have refused to build if X was disabled.=C2=A0 To enable X:<div><br></div=
><div>DISTRO_FEATURES_append =3D &quot; x11&quot;</div><span class=3D"m_428=
8543631352256437HOEnZb"><font color=3D"#888888"><div><br></div><div>Ross</d=
iv></font></span></div><div class=3D"m_4288543631352256437HOEnZb"><div clas=
s=3D"m_4288543631352256437h5"><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On 8 December 2017 at 10:40, Gunasekaran Srinivasan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com" target=3D"_blan=
k">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">No. I haven&#39;t. If it&#39;s disabled by d=
efault. Can you tell how to enable in conf/local.conf file?<br></div><div c=
lass=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"m_428854363135225=
6437m_-4011521090051217915m_-8177227194819546883gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div d=
ir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></div=
></div></div></div><div><div class=3D"m_4288543631352256437m_-4011521090051=
217915h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a =
dependency of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has yo=
ur BSP disabled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_428854363135225=
6437m_-4011521090051217915m_-8177227194819546883h5">On 8 December 2017 at 0=
3:02, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a href=3D"mailto:gunase=
karan@solitontech.com" target=3D"_blank">gunasekaran@solitontech.com</a>&gt=
;</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div cla=
ss=3D"m_4288543631352256437m_-4011521090051217915m_-8177227194819546883h5">=
<div dir=3D"ltr">Hi all,<br><br>I am trying to build core-image-sato image =
with poky 2.2.2. I am getting following error in matchbox-panel recipe<br><=
br>..............................<wbr>..............................<wbr>..=
............................<wbr>........................<br>=C2=A0checking=
 what language compliance flags to pass to the C compiler...<br>| checking =
for arm-poky-linux-gnueabi-pkg-con<wbr>fig... no<br>| checking for pkg-conf=
ig... &lt;/path/&gt;fsl-community-bsp/matc<wbr>hbox/tmp/sysroots/x86_64-lin=
ux<wbr>/usr/bin/pkg-config<br>| checking pkg-config is at least version 0.9=
.0... yes<br>| checking for MATCHBOX_PANEL... no<br>| configure: error: Pac=
kage requirements (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gmodule-=
export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<br>|=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gtk+-3.0=
) were not met:<br>| <br>| No package &#39;gdk-x11-3.0&#39; found<br>| <br>=
| Consider adjusting the PKG_CONFIG_PATH environment variable if you<br>| i=
nstalled software in a non-standard prefix.<br>| <br>| Alternatively, you m=
ay set the environment variables MATCHBOX_PANEL_CFLAGS<br>| and MATCHBOX_PA=
NEL_LIBS to avoid the need to call pkg-config.<br>| See the pkg-config man =
page for more details.<br>| WARNING: exit code 1 from a shell command.<br>|=
 ERROR: Function failed: do_configure (log file is located at &lt;path&gt;/=
fsl-community-bsp/match<wbr>box/tmp/work/cortexa9hf-neon-p<wbr>oky-linux-gn=
ueabi/matchbox-pan<wbr>el-2/2.11-r0/temp/log.do_confi<wbr>gure.27179)<br>ER=
ROR: Task (&lt;path&gt;/fsl-community-bsp/sour<wbr>ces/poky/meta/recipes-sa=
to/mat<wbr>chbox-panel-2/matchbox-panel-2<wbr>_2.11.bb:do_configure) failed=
 with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2607 tasks of=
 which 0 didn&#39;t need to be rerun and 1 failed.<br><br>Summary: 1 task f=
ailed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/sourc<wbr>es/poky/meta/reci=
pes-sato/matc<wbr>hbox-panel-2/matchbox-panel-2_<wbr>2.11.bb:do_configure<b=
r><div><br></div><div>Is there a recipe for gdk-x11 in yocto?<br></div><div=
><br></div><div><br clear=3D"all"><div><div class=3D"m_4288543631352256437m=
_-4011521090051217915m_-8177227194819546883m_2483852273671373676m_281448024=
9601150692gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></d=
iv></div></div></div>
</div></div>
<br></div></div><span class=3D"m_4288543631352256437m_-4011521090051217915m=
_-8177227194819546883HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--001a1141b498777f71055fd1e936--
