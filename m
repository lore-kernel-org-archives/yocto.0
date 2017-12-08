Return-Path: <gunasekaran@solitontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD03BE00AD7; Fri,  8 Dec 2017 02:40:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02908E008CA
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 02:40:10 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id f206so2471277wmf.5
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 02:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solitontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cDY0IX6oV9qcuAtFy8Fh4l2KXZadCbRzkc4aArofdJM=;
	b=1y+VlFtmjpe+8/8FfLP5MhR2PNyHzA/Ke8ALVyCMVxsMRE8tkJ8y7EgKyGU/AxrtXD
	ZELTfSoKpgdyGT++hSH8tdwqAsXMvt1e1q6VdNNlh6ZzXRwPE5QJeR++3CYCqBwyOa6n
	06278GwOOxEGp4eO3Li8W+I3gr9QO9XuTxAmHICy2KhjjLHpM2E4f287+/D+T5hhkXFN
	q4Be/HHioU0BM+cXxVk9S6tt/VB0XBFDc9IDqHP4DLNCekIc3hAn3ANPE0/6Pkp0/wtv
	RFIpWUXCwrgiABDZJSx78e1/DVNUIXCHpBU2BvS1tQAt9tOuTNUKAk5RgN5VspbTHS2o
	InDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cDY0IX6oV9qcuAtFy8Fh4l2KXZadCbRzkc4aArofdJM=;
	b=Lz0hnCyNaURl0DDu7yeZe550OylgkWJqWUtXZmApNp5kGMVjT+bLqOLLH0JKEi/PyR
	2beBk3oItKfMzGRQmA6Fq6qJVX4f+Io8VsOVrRjhZTfoR+DlbhmsVftVza8GdmZ9RzMN
	Xor6fBBWqeBXiHhC+y+DM01DS9DizI6/4EFgPiwMrqQd8H0UvjuWkvCZMkQk4A5y/4dB
	tSd6xFaG/WdofzfLrru8oyvJG6T8cWyy8XcVZp9L4U7QsZWODswfs/nz4xJdJMZC0jNJ
	rJshiQZXrmC15nd6m062a5Ur2U25RLMmUZtVQzOXeHfFvzgVmj11fcCw2CewN/dgZrwh
	ZeUQ==
X-Gm-Message-State: AKGB3mLNLMTnLOCNjDtWz6jttjXpZAVE/XPujlMvUSmuglCeKjzcymkp
	prRHrVji9YtVziamxI9L126vZogaE379hptKjETNJA==
X-Google-Smtp-Source: AGs4zMaCwOa/tao2+7OYXBeCrQ4ZFqI1C6Ecqf9drq6hAGclZi4fUi+EShZZKEgujrRdeEpTdEYpTnu+pRfLhA87uYw=
X-Received: by 10.28.130.15 with SMTP id e15mr4181823wmd.52.1512729609621;
	Fri, 08 Dec 2017 02:40:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.46.141 with HTTP; Fri, 8 Dec 2017 02:40:09 -0800 (PST)
In-Reply-To: <CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
	<CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
From: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Date: Fri, 8 Dec 2017 16:10:09 +0530
Message-ID: <CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 10:40:11 -0000
Content-Type: multipart/alternative; boundary="001a11444d7c05e6a2055fd1cfdc"

--001a11444d7c05e6a2055fd1cfdc
Content-Type: text/plain; charset="UTF-8"

No. I haven't. If it's disabled by default. Can you tell how to enable in
conf/local.conf file?

Thanks,
Guna

On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross <ross.burton@intel.com> wrote:

> gdk-x11 is part of the gtk+3 recipe, which is a dependency of
> matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?
>
> Ross
>
> On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
> gunasekaran@solitontech.com> wrote:
>
>> Hi all,
>>
>> I am trying to build core-image-sato image with poky 2.2.2. I am getting
>> following error in matchbox-panel recipe
>>
>> ............................................................
>> ......................................................
>>  checking what language compliance flags to pass to the C compiler...
>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>> | checking for pkg-config... </path/>fsl-community-bsp/matc
>> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>> | checking pkg-config is at least version 0.9.0... yes
>> | checking for MATCHBOX_PANEL... no
>> | configure: error: Package requirements (glib-2.0
>> |                   gmodule-export-2.0
>> |                   x11
>> |                   gdk-x11-3.0
>> |                   gtk+-3.0) were not met:
>> |
>> | No package 'gdk-x11-3.0' found
>> |
>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>> | installed software in a non-standard prefix.
>> |
>> | Alternatively, you may set the environment variables
>> MATCHBOX_PANEL_CFLAGS
>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>> | See the pkg-config man page for more details.
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_configure (log file is located at
>> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-p
>> oky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.27179)
>> ERROR: Task (<path>/fsl-community-bsp/sources/poky/meta/recipes-sato/mat
>> chbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit
>> code '1'
>> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matc
>> hbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>>
>> Is there a recipe for gdk-x11 in yocto?
>>
>>
>> Thanks,
>> Guna
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--001a11444d7c05e6a2055fd1cfdc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No. I haven&#39;t. If it&#39;s disabled by default. Can yo=
u tell how to enable in conf/local.conf file?<br></div><div class=3D"gmail_=
extra"><br clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></div><=
/div></div></div>
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a =
dependency of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has yo=
ur BSP disabled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">On 8 December=
 2017 at 03:02, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gunasekaran@solitontech.com" target=3D"_blank">gunasekaran@solitontech.=
com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v><div class=3D"h5"><div dir=3D"ltr">Hi all,<br><br>I am trying to build co=
re-image-sato image with poky 2.2.2. I am getting following error in matchb=
ox-panel recipe<br><br>..............................<wbr>.................=
.............<wbr>..............................<wbr>......................=
..<br>=C2=A0checking what language compliance flags to pass to the C compil=
er...<br>| checking for arm-poky-linux-gnueabi-pkg-con<wbr>fig... no<br>| c=
hecking for pkg-config... &lt;/path/&gt;fsl-community-bsp/matc<wbr>hbox/tmp=
/sysroots/x86_64-linux<wbr>/usr/bin/pkg-config<br>| checking pkg-config is =
at least version 0.9.0... yes<br>| checking for MATCHBOX_PANEL... no<br>| c=
onfigure: error: Package requirements (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 gmodule-export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<b=
r>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 gtk+-3.0) were not met:<br>| <br>| No package &#39;gdk-x11-3.0=
&#39; found<br>| <br>| Consider adjusting the PKG_CONFIG_PATH environment v=
ariable if you<br>| installed software in a non-standard prefix.<br>| <br>|=
 Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS=
<br>| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.<br>| Se=
e the pkg-config man page for more details.<br>| WARNING: exit code 1 from =
a shell command.<br>| ERROR: Function failed: do_configure (log file is loc=
ated at &lt;path&gt;/fsl-community-bsp/match<wbr>box/tmp/work/cortexa9hf-ne=
on-p<wbr>oky-linux-gnueabi/matchbox-pan<wbr>el-2/2.11-r0/temp/log.do_confi<=
wbr>gure.27179)<br>ERROR: Task (&lt;path&gt;/fsl-community-bsp/sour<wbr>ces=
/poky/meta/recipes-sato/mat<wbr>chbox-panel-2/matchbox-panel-<wbr>2_2.11.bb=
:do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: At=
tempted 2607 tasks of which 0 didn&#39;t need to be rerun and 1 failed.<br>=
<br>Summary: 1 task failed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/sourc<=
wbr>es/poky/meta/recipes-sato/matc<wbr>hbox-panel-2/matchbox-panel-2_<wbr>2=
.11.bb:do_configure<br><div><br></div><div>Is there a recipe for gdk-x11 in=
 yocto?<br></div><div><br></div><div><br clear=3D"all"><div><div class=3D"m=
_2483852273671373676m_2814480249601150692gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna=
<br></div></div></div></div></div></div></div></div>
</div></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--001a11444d7c05e6a2055fd1cfdc--
