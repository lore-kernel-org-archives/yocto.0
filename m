Return-Path: <gunasekaran@solitontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71FB1E00D69; Fri,  8 Dec 2017 02:46:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1337E008CE
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 02:46:25 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id 64so2514674wme.3
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 02:46:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solitontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f3p9kub2LzgeaAfzS9AR0fy1XVJnlRRA6Pahmc21yLs=;
	b=pWdKfwd6yEfqndQcV3Jy0BKa4S6HmVvz8xwUIG14NFfzNrJOUhUWOPmr1xq+5LeCab
	qSHjkPm/LuT+YQxvUJet2Db4dKijKq6IpX2QTtbkyBUJvAGrtWN6vRWTx9f0HmWezc6c
	GAc1kQ+1GU9mnY+GdkeKlDoC4thJFslRoI9Q+bOfUTAIpggjdlPOoGarF6tb5bI/xYpy
	keQrJhOs0wgZMm/gZC2Jq+/H1+BYJO5zDrKsdHxr7S4nR9lPa/qpMZOnUrVODxGQu0Ov
	OlWWxqjKuCP+G9u+r30wpZeqQebNpj1nFLyyTkYcnSkK8TtwDbjQp79q+AwVd652bu1E
	T+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f3p9kub2LzgeaAfzS9AR0fy1XVJnlRRA6Pahmc21yLs=;
	b=CGeLqhd2d6wUmlc2jnXOyW/fC1DfDFMLlj+CKiimq1KlIN6vmQGtC+Iuw4rF9WF/+m
	AvkbuPiGtbVdJyvpwxN5Hqp4Jv7emdnYKZ2cr+e7gq1Yh8uP2ODtMHFK2Nh7SdAYBlfp
	QreTnaxGuVOtLpCiFvf+DZGTDyUAGDJAxDB0Qb/g5bPyOhpjTQpdcRzNfwr4BBVUNtfE
	JQDc3s0EWe3grxGIpOJNZhhKLN59qEmXeHJqkHetY+N6K8sfncLvH8teu2//4XK2P8iL
	H9HYyT7FIN9XVUdN9PxFVKkNEFaBQQZkT8fPBQWXCWfzLnJ5mYZ78VZVLFgEX5O2q1uj
	6CrQ==
X-Gm-Message-State: AKGB3mK9WJeYYG6muowTImn63s0pDVXDg5/0/cBT5QQ2ZRnGXp9lqIfb
	n/xiJXfOWjV7vQDyCWgegeULpr1/w7jAbKUSxpjq0g==
X-Google-Smtp-Source: AGs4zMZGWxFwS2l0HcbsbrZxeVucVPYIJqLY9D7mP4SHCarKRbXjQlNZsEpZHuStqQRJY3iAgZ3lxcIGks0KI0MD71c=
X-Received: by 10.28.110.26 with SMTP id j26mr3512324wmc.46.1512729984683;
	Fri, 08 Dec 2017 02:46:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.46.141 with HTTP; Fri, 8 Dec 2017 02:46:24 -0800 (PST)
In-Reply-To: <CAJTo0LYBPD6BpAVZgCNi-OBtWKgtKnjKszrq_+VK534ZvwicMw@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
	<CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
	<CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
	<CAJTo0LYBPD6BpAVZgCNi-OBtWKgtKnjKszrq_+VK534ZvwicMw@mail.gmail.com>
From: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Date: Fri, 8 Dec 2017 16:16:24 +0530
Message-ID: <CAPVQe-AHxR+r2W73gv7LHpwsc4ebsJ9P5zZE0CJXKHiAw2rF8w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 10:46:27 -0000
Content-Type: multipart/alternative; boundary="089e082fbd5c60ea95055fd1e591"

--089e082fbd5c60ea95055fd1e591
Content-Type: text/plain; charset="UTF-8"

I will check that. Shouldn't core-image-sato recipecome with x11 enabled?

Thanks,
Guna

On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross <ross.burton@intel.com> wrote:

> I'm surprised it go that far as libx11 should have refused to build if X
> was disabled.  To enable X:
>
> DISTRO_FEATURES_append = " x11"
>
> Ross
>
> On 8 December 2017 at 10:40, Gunasekaran Srinivasan <
> gunasekaran@solitontech.com> wrote:
>
>> No. I haven't. If it's disabled by default. Can you tell how to enable in
>> conf/local.conf file?
>>
>> Thanks,
>> Guna
>>
>> On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> gdk-x11 is part of the gtk+3 recipe, which is a dependency of
>>> matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?
>>>
>>> Ross
>>>
>>> On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
>>> gunasekaran@solitontech.com> wrote:
>>>
>>>> Hi all,
>>>>
>>>> I am trying to build core-image-sato image with poky 2.2.2. I am
>>>> getting following error in matchbox-panel recipe
>>>>
>>>> ............................................................
>>>> ......................................................
>>>>  checking what language compliance flags to pass to the C compiler...
>>>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>>>> | checking for pkg-config... </path/>fsl-community-bsp/matc
>>>> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>>>> | checking pkg-config is at least version 0.9.0... yes
>>>> | checking for MATCHBOX_PANEL... no
>>>> | configure: error: Package requirements (glib-2.0
>>>> |                   gmodule-export-2.0
>>>> |                   x11
>>>> |                   gdk-x11-3.0
>>>> |                   gtk+-3.0) were not met:
>>>> |
>>>> | No package 'gdk-x11-3.0' found
>>>> |
>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>>> | installed software in a non-standard prefix.
>>>> |
>>>> | Alternatively, you may set the environment variables
>>>> MATCHBOX_PANEL_CFLAGS
>>>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>>>> | See the pkg-config man page for more details.
>>>> | WARNING: exit code 1 from a shell command.
>>>> | ERROR: Function failed: do_configure (log file is located at
>>>> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-p
>>>> oky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.27179)
>>>> ERROR: Task (<path>/fsl-community-bsp/sour
>>>> ces/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
>>>> failed with exit code '1'
>>>> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
>>>> rerun and 1 failed.
>>>>
>>>> Summary: 1 task failed:
>>>>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matc
>>>> hbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>>>>
>>>> Is there a recipe for gdk-x11 in yocto?
>>>>
>>>>
>>>> Thanks,
>>>> Guna
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>
>>
>

--089e082fbd5c60ea95055fd1e591
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I will check that. Shouldn&#39;t core-image-sato recipecom=
e with x11 enabled? <br></div><div class=3D"gmail_extra"><br clear=3D"all">=
<div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></=
div><div>Guna<br></div></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">I&#39;m surprised it go that far as libx11 shoul=
d have refused to build if X was disabled.=C2=A0 To enable X:<div><br></div=
><div>DISTRO_FEATURES_append =3D &quot; x11&quot;</div><span class=3D"HOEnZ=
b"><font color=3D"#888888"><div><br></div><div>Ross</div></font></span></di=
v><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On 8 December 2017 at 10:40, Gunasekaran Srinivasa=
n <span dir=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com" targ=
et=3D"_blank">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr">No. I haven&#39;t. If it&#39;s disa=
bled by default. Can you tell how to enable in conf/local.conf file?<br></d=
iv><div class=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"m_-40115=
21090051217915m_-8177227194819546883gmail_signature" data-smartmail=3D"gmai=
l_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div>Thanks,<br></div><div>Guna<br></div></div></div></div></div></div></div=
></div><div><div class=3D"m_-4011521090051217915h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a =
dependency of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has yo=
ur BSP disabled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_-40115210900512=
17915m_-8177227194819546883h5">On 8 December 2017 at 03:02, Gunasekaran Sri=
nivasan <span dir=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com=
" target=3D"_blank">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br></=
div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_-401152109005=
1217915m_-8177227194819546883h5"><div dir=3D"ltr">Hi all,<br><br>I am tryin=
g to build core-image-sato image with poky 2.2.2. I am getting following er=
ror in matchbox-panel recipe<br><br>..............................<wbr>....=
..........................<wbr>..............................<wbr>.........=
...............<br>=C2=A0checking what language compliance flags to pass to=
 the C compiler...<br>| checking for arm-poky-linux-gnueabi-pkg-con<wbr>fig=
... no<br>| checking for pkg-config... &lt;/path/&gt;fsl-community-bsp/matc=
<wbr>hbox/tmp/sysroots/x86_64-linux<wbr>/usr/bin/pkg-config<br>| checking p=
kg-config is at least version 0.9.0... yes<br>| checking for MATCHBOX_PANEL=
... no<br>| configure: error: Package requirements (glib-2.0<br>|=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 gmodule-export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 x11<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 gtk+-3.0) were not met:<br>| <br>| No package &#39=
;gdk-x11-3.0&#39; found<br>| <br>| Consider adjusting the PKG_CONFIG_PATH e=
nvironment variable if you<br>| installed software in a non-standard prefix=
.<br>| <br>| Alternatively, you may set the environment variables MATCHBOX_=
PANEL_CFLAGS<br>| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-con=
fig.<br>| See the pkg-config man page for more details.<br>| WARNING: exit =
code 1 from a shell command.<br>| ERROR: Function failed: do_configure (log=
 file is located at &lt;path&gt;/fsl-community-bsp/match<wbr>box/tmp/work/c=
ortexa9hf-neon-p<wbr>oky-linux-gnueabi/matchbox-pan<wbr>el-2/2.11-r0/temp/l=
og.do_confi<wbr>gure.27179)<br>ERROR: Task (&lt;path&gt;/fsl-community-bsp/=
sour<wbr>ces/poky/meta/recipes-sato/mat<wbr>chbox-panel-2/matchbox-panel-2<=
wbr>_2.11.bb:do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks=
 Summary: Attempted 2607 tasks of which 0 didn&#39;t need to be rerun and 1=
 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 &lt;path&gt;/fsl-communit=
y-bsp/sourc<wbr>es/poky/meta/recipes-sato/matc<wbr>hbox-panel-2/matchbox-pa=
nel-2_<wbr>2.11.bb:do_configure<br><div><br></div><div>Is there a recipe fo=
r gdk-x11 in yocto?<br></div><div><br></div><div><br clear=3D"all"><div><di=
v class=3D"m_-4011521090051217915m_-8177227194819546883m_248385227367137367=
6m_2814480249601150692gmail_signature"><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></d=
iv></div></div></div></div></div>
</div></div>
<br></div></div><span class=3D"m_-4011521090051217915m_-8177227194819546883=
HOEnZb"><font color=3D"#888888">--<br>
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
</div></div></blockquote></div><br></div>

--089e082fbd5c60ea95055fd1e591--
