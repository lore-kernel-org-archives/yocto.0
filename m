Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D1FE00AD7; Fri,  8 Dec 2017 02:42:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F954E008CA
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 02:42:04 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id t1so3944587ite.5
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 02:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Gp1k9uDlGBPukp3Nn+Lra7hgmMiodG0Yk0pexW/hzfA=;
	b=tIEUxGdKbNBLbxy28kEaNl2ljZ9CQTZhVS2AxgUjFFz6CzsO8iUgfbic8ecYZwqN0i
	cn26Inn28qeep5Yn9ISWNMqQwzgvY78VAKdlnfQuiJE34pKxCoYjWpbR8Sq1W9OVlaw3
	5icTtSK3c++tF6ioADGtGZe1w3HBIcYtRtyN/fyUQKD6aiK0b7PniERO3euBh5X+Cyav
	Q/Kfxl8ER2DEUkRYcYftYiRb/jsvOijqyQGz03jCbDgwcWtcE8+gjtCGb0veWwDmEHgk
	vYaAvnrYeujjSXuN94FCuwbEnv0it4vD6SOgHEG4674A+syNZ6FozSi/gSbtoBkdAcHZ
	PjCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Gp1k9uDlGBPukp3Nn+Lra7hgmMiodG0Yk0pexW/hzfA=;
	b=dd36IIvLw8fXok+42Aum8ETpUgqH6gfMmcj+Kyq8DKo6XofILuM/dTbq9nABJVRzxw
	5XjUIvcVJrqw7lDsgze9WNeLnjBiE+G/ncDcu+Ox1ZHSv06vklcN7zrsZ8KvWY7I7ZDh
	kjRIFRKDhAczanxZy0My9ZG7f0xHs1BUcTr5KpAlK58wN6GtKoudo3fkoLf1mKkL6uIP
	QUVJQOzjLH17jnNpeCFEIw8OOIii/Ztv7Jqc6DH6+Y8Sy8cbchoYDQhO4LacCqZK9SMg
	Z0pij6d0cIIfNa5d4Fm4A9BMjQh/mXN557aYGAR3gWZSzVeSIM+2yo7MdnEqDJyGElzL
	lHgA==
X-Gm-Message-State: AKGB3mIDhDhsUl3DJOqFnJ4ZqR56dFYA78SobUsp3QPV4FZIfaZdPwUQ
	5CjzTzSOKb2JAR3zXttn+saQNIvKsSH0o9LqDO24Zg==
X-Google-Smtp-Source: AGs4zMYbDOuLYE+V3i97ifU864qPMq9/mNA3KJUMFGANype5ugBD7gvHi9lzJ3j8nATtiCFQ8j6/3Zph0qlpPG5b2pU=
X-Received: by 10.36.120.11 with SMTP id p11mr5113413itc.10.1512729723769;
	Fri, 08 Dec 2017 02:42:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 02:41:43 -0800 (PST)
In-Reply-To: <CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
	<CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
	<CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 10:41:43 +0000
Message-ID: <CAJTo0LYBPD6BpAVZgCNi-OBtWKgtKnjKszrq_+VK534ZvwicMw@mail.gmail.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 10:42:06 -0000
Content-Type: multipart/alternative; boundary="001a114a9b5ed3afdd055fd1d541"

--001a114a9b5ed3afdd055fd1d541
Content-Type: text/plain; charset="UTF-8"

I'm surprised it go that far as libx11 should have refused to build if X
was disabled.  To enable X:

DISTRO_FEATURES_append = " x11"

Ross

On 8 December 2017 at 10:40, Gunasekaran Srinivasan <
gunasekaran@solitontech.com> wrote:

> No. I haven't. If it's disabled by default. Can you tell how to enable in
> conf/local.conf file?
>
> Thanks,
> Guna
>
> On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> gdk-x11 is part of the gtk+3 recipe, which is a dependency of
>> matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?
>>
>> Ross
>>
>> On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
>> gunasekaran@solitontech.com> wrote:
>>
>>> Hi all,
>>>
>>> I am trying to build core-image-sato image with poky 2.2.2. I am getting
>>> following error in matchbox-panel recipe
>>>
>>> ............................................................
>>> ......................................................
>>>  checking what language compliance flags to pass to the C compiler...
>>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>>> | checking for pkg-config... </path/>fsl-community-bsp/matc
>>> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>>> | checking pkg-config is at least version 0.9.0... yes
>>> | checking for MATCHBOX_PANEL... no
>>> | configure: error: Package requirements (glib-2.0
>>> |                   gmodule-export-2.0
>>> |                   x11
>>> |                   gdk-x11-3.0
>>> |                   gtk+-3.0) were not met:
>>> |
>>> | No package 'gdk-x11-3.0' found
>>> |
>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>> | installed software in a non-standard prefix.
>>> |
>>> | Alternatively, you may set the environment variables
>>> MATCHBOX_PANEL_CFLAGS
>>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>>> | See the pkg-config man page for more details.
>>> | WARNING: exit code 1 from a shell command.
>>> | ERROR: Function failed: do_configure (log file is located at
>>> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-p
>>> oky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.27179)
>>> ERROR: Task (<path>/fsl-community-bsp/sources/poky/meta/recipes-sato/mat
>>> chbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit
>>> code '1'
>>> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
>>> rerun and 1 failed.
>>>
>>> Summary: 1 task failed:
>>>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matc
>>> hbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>>>
>>> Is there a recipe for gdk-x11 in yocto?
>>>
>>>
>>> Thanks,
>>> Guna
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a114a9b5ed3afdd055fd1d541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m surprised it go that far as libx11 should have ref=
used to build if X was disabled.=C2=A0 To enable X:<div><br></div><div>DIST=
RO_FEATURES_append =3D &quot; x11&quot;</div><div><br></div><div>Ross</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 Decemb=
er 2017 at 10:40, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:gunasekaran@solitontech.com" target=3D"_blank">gunasekaran@solitontec=
h.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"l=
tr">No. I haven&#39;t. If it&#39;s disabled by default. Can you tell how to=
 enable in conf/local.conf file?<br></div><div class=3D"gmail_extra"><br cl=
ear=3D"all"><div><div class=3D"m_-8177227194819546883gmail_signature" data-=
smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div>=
</div></div></div></div><div><div class=3D"h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a =
dependency of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has yo=
ur BSP disabled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_-81772271948195=
46883h5">On 8 December 2017 at 03:02, Gunasekaran Srinivasan <span dir=3D"l=
tr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com" target=3D"_blank">gu=
nasekaran@solitontech.com</a>&gt;</span> wrote:<br></div></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div><div class=3D"m_-8177227194819546883h5"><div dir=3D=
"ltr">Hi all,<br><br>I am trying to build core-image-sato image with poky 2=
.2.2. I am getting following error in matchbox-panel recipe<br><br>........=
......................<wbr>..............................<wbr>.............=
.................<wbr>........................<br>=C2=A0checking what langu=
age compliance flags to pass to the C compiler...<br>| checking for arm-pok=
y-linux-gnueabi-pkg-con<wbr>fig... no<br>| checking for pkg-config... &lt;/=
path/&gt;fsl-community-bsp/matc<wbr>hbox/tmp/sysroots/x86_64-linux<wbr>/usr=
/bin/pkg-config<br>| checking pkg-config is at least version 0.9.0... yes<b=
r>| checking for MATCHBOX_PANEL... no<br>| configure: error: Package requir=
ements (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gmodule-export-2.0<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gtk+-3.0) were not m=
et:<br>| <br>| No package &#39;gdk-x11-3.0&#39; found<br>| <br>| Consider a=
djusting the PKG_CONFIG_PATH environment variable if you<br>| installed sof=
tware in a non-standard prefix.<br>| <br>| Alternatively, you may set the e=
nvironment variables MATCHBOX_PANEL_CFLAGS<br>| and MATCHBOX_PANEL_LIBS to =
avoid the need to call pkg-config.<br>| See the pkg-config man page for mor=
e details.<br>| WARNING: exit code 1 from a shell command.<br>| ERROR: Func=
tion failed: do_configure (log file is located at &lt;path&gt;/fsl-communit=
y-bsp/match<wbr>box/tmp/work/cortexa9hf-neon-p<wbr>oky-linux-gnueabi/matchb=
ox-pan<wbr>el-2/2.11-r0/temp/log.do_confi<wbr>gure.27179)<br>ERROR: Task (&=
lt;path&gt;/fsl-community-bsp/sour<wbr>ces/poky/meta/recipes-sato/mat<wbr>c=
hbox-panel-2/matchbox-panel-2<wbr>_2.11.bb:do_configure) failed with exit c=
ode &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2607 tasks of which 0 did=
n&#39;t need to be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=
=C2=A0 &lt;path&gt;/fsl-community-bsp/sourc<wbr>es/poky/meta/recipes-sato/m=
atc<wbr>hbox-panel-2/matchbox-panel-2_<wbr>2.11.bb:do_configure<br><div><br=
></div><div>Is there a recipe for gdk-x11 in yocto?<br></div><div><br></div=
><div><br clear=3D"all"><div><div class=3D"m_-8177227194819546883m_24838522=
73671373676m_2814480249601150692gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div=
></div></div></div></div></div></div></div>
</div></div>
<br></div></div><span class=3D"m_-8177227194819546883HOEnZb"><font color=3D=
"#888888">--<br>
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

--001a114a9b5ed3afdd055fd1d541--
