Return-Path: <gunasekaran@solitontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3729EE00D6F; Fri,  8 Dec 2017 06:11:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F207BE00D69
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 06:11:44 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id b76so3436132wmg.1
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 06:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=solitontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=haIny/P249SJ+aX+QnKJJ0BhPOUu87lJH1LPd4qmOwM=;
	b=rg6csmfoCYe661eUzGUsaqIPNNvmB+MSzJrt7TMSsUrcAqVVNAwh71UZDtlsoG5zKc
	hJMFgSQdr3RbqMNtV+2oBeguQjqNBMdcnTHhjhh7qMC7yjytm7tg0YROKINwhEKR76UL
	nHV7rd5uRia43ysyWD8BpTDIOkW6a78yVSdWOQcRx8GAlXUa9hn1o2YdT2urxRwEbecg
	nacwdUfbRzA2OXF/dlQNX7pTXKDag7w+gtc2Aoi/MBy6ri7K2Rijddq7bB6MPIN55nhD
	+4RCnRKQmXT8AZYSkXtQiShaHT2grZSN07mG4FSvxJk40CYHd/xSFR7Bx33yq+kfe7zc
	0UOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=haIny/P249SJ+aX+QnKJJ0BhPOUu87lJH1LPd4qmOwM=;
	b=trpWVKD+p9bw28kkw5ACdGyGBf7/x1dXpbAt5XZo6bbhfgABXtqk0IsuYq0gjgqdnm
	NmTMyiyjWEWP5VMo2CqTw/QO9Zpig+bVyByAlZHAobeHWMKmcxYnylCUisx/7cjPVmTg
	qYN9LmBe6d8WJE+0Q6CDEROW+aTGVHiuc+V5euzCIM6sp5ninT0RIxk0x0qiw9Uk57N5
	bvApRTzaZQkLuYNgug3U082MyhVyqHSPfkc4m137cwEM+W5y1eYxWlEAWkFha/TFJpme
	GqvIAhGh6Hj4yDAIt1ouW8uk49yrfLnLolGWHDvnCs3j3pD66GOoFxrt7KJoDZlvdtqq
	jGAw==
X-Gm-Message-State: AKGB3mLBUXCECGCkCfuvJ6ei7skDwv9gtiYI9EkCn2618ishLxfZ7jRf
	TzEpGpzm2E5YoELqexRtCHwyHFtIG15hod2Jj739wA==
X-Google-Smtp-Source: AGs4zMaLTADU3oQBlTaU00q5avnJss+TwdFXTX2mszKa7M/c1U0D52GjFk2f6EXsveYqeF7aOoM6co42YH5DY7K5QSM=
X-Received: by 10.28.139.144 with SMTP id n138mr4257448wmd.78.1512742303501;
	Fri, 08 Dec 2017 06:11:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.46.141 with HTTP; Fri, 8 Dec 2017 06:11:42 -0800 (PST)
In-Reply-To: <CAPVQe-BD_JHRzGrrU6P0dfPRg1HYwb06bBmrFmqXGAbFtHafpw@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
	<CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
	<CAPVQe-At0wDgW-NtH2KRfd91SJWTqy7Ghw3DGMPOE7W5G5Amew@mail.gmail.com>
	<CAJTo0LYBPD6BpAVZgCNi-OBtWKgtKnjKszrq_+VK534ZvwicMw@mail.gmail.com>
	<CAPVQe-AHxR+r2W73gv7LHpwsc4ebsJ9P5zZE0CJXKHiAw2rF8w@mail.gmail.com>
	<CAJTo0LaBu-gyhFnV0BOaUqpsENkkuU_u-UKkxQUyy4z34MHtNA@mail.gmail.com>
	<CAPVQe-BD_JHRzGrrU6P0dfPRg1HYwb06bBmrFmqXGAbFtHafpw@mail.gmail.com>
From: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Date: Fri, 8 Dec 2017 19:41:42 +0530
Message-ID: <CAPVQe-BYQ2LWeaA-gg5f2kC=-R1bjbj-NCL00uYoA6wNfqeysg@mail.gmail.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 14:11:47 -0000
Content-Type: multipart/alternative; boundary="001a11443d4ca32676055fd4c30b"

--001a11443d4ca32676055fd4c30b
Content-Type: text/plain; charset="UTF-8"

Ross,

Fresh build also didn't solve the issue. Is there anything I could try?

Thanks,
Guna

On Fri, Dec 8, 2017 at 4:20 PM, Gunasekaran Srinivasan <
gunasekaran@solitontech.com> wrote:

> Ross,
>
> Oh!
> I tried adding DISTRO_FEATURE, still the same issue. I will clean the
> build and run once I again.
>
> Thanks,
> Guna
>
> On Fri, Dec 8, 2017 at 4:17 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> core-image-sato will refuse to build long before matchbox-desktop if x11
>> is disabled.
>>
>> Ross
>>
>> On 8 December 2017 at 10:46, Gunasekaran Srinivasan <
>> gunasekaran@solitontech.com> wrote:
>>
>>> I will check that. Shouldn't core-image-sato recipecome with x11
>>> enabled?
>>>
>>> Thanks,
>>> Guna
>>>
>>> On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross <ross.burton@intel.com>
>>> wrote:
>>>
>>>> I'm surprised it go that far as libx11 should have refused to build if
>>>> X was disabled.  To enable X:
>>>>
>>>> DISTRO_FEATURES_append = " x11"
>>>>
>>>> Ross
>>>>
>>>> On 8 December 2017 at 10:40, Gunasekaran Srinivasan <
>>>> gunasekaran@solitontech.com> wrote:
>>>>
>>>>> No. I haven't. If it's disabled by default. Can you tell how to enable
>>>>> in conf/local.conf file?
>>>>>
>>>>> Thanks,
>>>>> Guna
>>>>>
>>>>> On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross <ross.burton@intel.com>
>>>>> wrote:
>>>>>
>>>>>> gdk-x11 is part of the gtk+3 recipe, which is a dependency of
>>>>>> matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?
>>>>>>
>>>>>> Ross
>>>>>>
>>>>>> On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
>>>>>> gunasekaran@solitontech.com> wrote:
>>>>>>
>>>>>>> Hi all,
>>>>>>>
>>>>>>> I am trying to build core-image-sato image with poky 2.2.2. I am
>>>>>>> getting following error in matchbox-panel recipe
>>>>>>>
>>>>>>> ............................................................
>>>>>>> ......................................................
>>>>>>>  checking what language compliance flags to pass to the C compiler...
>>>>>>> | checking for arm-poky-linux-gnueabi-pkg-config... no
>>>>>>> | checking for pkg-config... </path/>fsl-community-bsp/matc
>>>>>>> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
>>>>>>> | checking pkg-config is at least version 0.9.0... yes
>>>>>>> | checking for MATCHBOX_PANEL... no
>>>>>>> | configure: error: Package requirements (glib-2.0
>>>>>>> |                   gmodule-export-2.0
>>>>>>> |                   x11
>>>>>>> |                   gdk-x11-3.0
>>>>>>> |                   gtk+-3.0) were not met:
>>>>>>> |
>>>>>>> | No package 'gdk-x11-3.0' found
>>>>>>> |
>>>>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>>>>>> | installed software in a non-standard prefix.
>>>>>>> |
>>>>>>> | Alternatively, you may set the environment variables
>>>>>>> MATCHBOX_PANEL_CFLAGS
>>>>>>> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>>>>>>> | See the pkg-config man page for more details.
>>>>>>> | WARNING: exit code 1 from a shell command.
>>>>>>> | ERROR: Function failed: do_configure (log file is located at
>>>>>>> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-p
>>>>>>> oky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_confi
>>>>>>> gure.27179)
>>>>>>> ERROR: Task (<path>/fsl-community-bsp/sour
>>>>>>> ces/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2
>>>>>>> _2.11.bb:do_configure) failed with exit code '1'
>>>>>>> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to
>>>>>>> be rerun and 1 failed.
>>>>>>>
>>>>>>> Summary: 1 task failed:
>>>>>>>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/matc
>>>>>>> hbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>>>>>>>
>>>>>>> Is there a recipe for gdk-x11 in yocto?
>>>>>>>
>>>>>>>
>>>>>>> Thanks,
>>>>>>> Guna
>>>>>>>
>>>>>>> --
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
>

--001a11443d4ca32676055fd4c30b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ross,<br><br></div>Fresh build also didn&#39;t solve =
the issue. Is there anything I could try?<br></div><div class=3D"gmail_extr=
a"><br clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"lt=
r"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></div></div><=
/div></div>
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 4:20 PM, Gunasekaran =
Srinivasan <span dir=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.=
com" target=3D"_blank">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Ross,<br><br></div>Oh=
!<br>I tried adding DISTRO_FEATURE, still the same issue. I will clean the =
build and run once I again.<br></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div class=3D"m_-4132924733496781164gmail_signature" data-sma=
rtmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></div></div></div></d=
iv></div></div></div><div><div class=3D"h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 4:17 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">core-image-sato will refuse to build long before=
 matchbox-desktop if x11 is disabled.<span class=3D"m_-4132924733496781164H=
OEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font></span>=
</div><div class=3D"m_-4132924733496781164HOEnZb"><div class=3D"m_-41329247=
33496781164h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 8 December 2017 at 10:46, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a =
href=3D"mailto:gunasekaran@solitontech.com" target=3D"_blank">gunasekaran@s=
olitontech.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr">I will check that. Shouldn&#39;t core-image-sato recipecome wi=
th x11 enabled? <br></div><div class=3D"gmail_extra"><br clear=3D"all"><div=
><div class=3D"m_-4132924733496781164m_1971908461059567811m_428854363135225=
6437gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<b=
r></div></div></div></div></div></div></div></div><div><div class=3D"m_-413=
2924733496781164m_1971908461059567811h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 4:11 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">I&#39;m surprised it go that far as libx11 shoul=
d have refused to build if X was disabled.=C2=A0 To enable X:<div><br></div=
><div>DISTRO_FEATURES_append =3D &quot; x11&quot;</div><span class=3D"m_-41=
32924733496781164m_1971908461059567811m_4288543631352256437HOEnZb"><font co=
lor=3D"#888888"><div><br></div><div>Ross</div></font></span></div><div clas=
s=3D"m_-4132924733496781164m_1971908461059567811m_4288543631352256437HOEnZb=
"><div class=3D"m_-4132924733496781164m_1971908461059567811m_42885436313522=
56437h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 Dec=
ember 2017 at 10:40, Gunasekaran Srinivasan <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gunasekaran@solitontech.com" target=3D"_blank">gunasekaran@solit=
ontech.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">No. I haven&#39;t. If it&#39;s disabled by default. Can you tell h=
ow to enable in conf/local.conf file?<br></div><div class=3D"gmail_extra"><=
br clear=3D"all"><div><div class=3D"m_-4132924733496781164m_197190846105956=
7811m_4288543631352256437m_-4011521090051217915m_-8177227194819546883gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div di=
r=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></=
div></div></div></div></div></div></div><div><div class=3D"m_-4132924733496=
781164m_1971908461059567811m_4288543631352256437m_-4011521090051217915h5">
<br><div class=3D"gmail_quote">On Fri, Dec 8, 2017 at 3:54 PM, Burton, Ross=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_=
blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a =
dependency of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has yo=
ur BSP disabled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote"><div><div class=3D"m_-41329247334967=
81164m_1971908461059567811m_4288543631352256437m_-4011521090051217915m_-817=
7227194819546883h5">On 8 December 2017 at 03:02, Gunasekaran Srinivasan <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com" target=3D=
"_blank">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br></div></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div><div class=3D"m_-4132924733496781164m_19=
71908461059567811m_4288543631352256437m_-4011521090051217915m_-817722719481=
9546883h5"><div dir=3D"ltr">Hi all,<br><br>I am trying to build core-image-=
sato image with poky 2.2.2. I am getting following error in matchbox-panel =
recipe<br><br>..............................<wbr>..........................=
....<wbr>..............................<wbr>........................<br>=C2=
=A0checking what language compliance flags to pass to the C compiler...<br>=
| checking for arm-poky-linux-gnueabi-pkg-con<wbr>fig... no<br>| checking f=
or pkg-config... &lt;/path/&gt;fsl-community-bsp/matc<wbr>hbox/tmp/sysroots=
/x86_64-linux<wbr>/usr/bin/pkg-config<br>| checking pkg-config is at least =
version 0.9.0... yes<br>| checking for MATCHBOX_PANEL... no<br>| configure:=
 error: Package requirements (glib-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 gmodule-export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x11<br>|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 gtk+-3.0) were not met:<br>| <br>| No package &#39;gdk-x11-3.0&#39; fou=
nd<br>| <br>| Consider adjusting the PKG_CONFIG_PATH environment variable i=
f you<br>| installed software in a non-standard prefix.<br>| <br>| Alternat=
ively, you may set the environment variables MATCHBOX_PANEL_CFLAGS<br>| and=
 MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.<br>| See the pkg=
-config man page for more details.<br>| WARNING: exit code 1 from a shell c=
ommand.<br>| ERROR: Function failed: do_configure (log file is located at &=
lt;path&gt;/fsl-community-bsp/match<wbr>box/tmp/work/cortexa9hf-neon-p<wbr>=
oky-linux-gnueabi/matchbox-pan<wbr>el-2/2.11-r0/temp/log.do_confi<wbr>gure.=
27179)<br>ERROR: Task (&lt;path&gt;/fsl-community-bsp/sour<wbr>ces/poky/met=
a/recipes-sato/mat<wbr>chbox-panel-2/matchbox-panel-2<wbr>_2.11.bb:do_confi=
gure) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 2=
607 tasks of which 0 didn&#39;t need to be rerun and 1 failed.<br><br>Summa=
ry: 1 task failed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/sourc<wbr>es/po=
ky/meta/recipes-sato/matc<wbr>hbox-panel-2/matchbox-panel-2_<wbr>2.11.bb:do=
_configure<br><div><br></div><div>Is there a recipe for gdk-x11 in yocto?<b=
r></div><div><br></div><div><br clear=3D"all"><div><div class=3D"m_-4132924=
733496781164m_1971908461059567811m_4288543631352256437m_-401152109005121791=
5m_-8177227194819546883m_2483852273671373676m_2814480249601150692gmail_sign=
ature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Th=
anks,<br></div><div>Guna<br></div></div></div></div></div></div></div></div=
>
</div></div>
<br></div></div><span class=3D"m_-4132924733496781164m_1971908461059567811m=
_4288543631352256437m_-4011521090051217915m_-8177227194819546883HOEnZb"><fo=
nt color=3D"#888888">--<br>
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
</div></div></blockquote></div><br></div></div></div>
</blockquote></div><br></div>

--001a11443d4ca32676055fd4c30b--
