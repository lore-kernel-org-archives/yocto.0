Return-Path: <stephen.arnold42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51151E00B51; Wed, 31 May 2017 22:33:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stephen.arnold42[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1DAAE00ADD
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 22:33:14 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id h4so41452651oib.3
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 22:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=s7ir3HHTXiEz2EbxTr4kgS9WXA7sEpTWk2C1E+vvIIg=;
	b=UvwPJ51pl8Hz7oHcG9Qu/d/G9ljap1OIYZxDXmqRqrgzw9vd+YfyE/Nuhr0JwGqtCR
	us9qZtWz1yL79u9DyiNcPHaeqGOFRTE0jhudUYTw6ni6GFnyUh658dg5YwiAUqxUmyNF
	qU99eZgFErJnfUpjDXfZIReqc9/SVneLHrSYMUVWxRPCKx270jDgygGQ5BVC9+igVD60
	4WyktiIkYEri07T4J1IaV/OGIEzHAOn2vRWKjn2szruS+mywMgkssy/xcM9uLVFhl7HF
	Rce65dLIzab1tHMz+JZkl1sv22RdqgWMVtbXN6JRGMkxrpiDMg8PmAokf4aGEGkWIFNO
	uEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=s7ir3HHTXiEz2EbxTr4kgS9WXA7sEpTWk2C1E+vvIIg=;
	b=AcOZjGQKZ5k5xV801+TNpUU6nPqNoNO5e6GhRaoOipD/zZ3P8qXeXmA5PvH5WCqlHW
	rnYMF+FmH7nxmbBXaz7XvTA3Zkznx4Xn/pbJcGav5uZa+dMq/xl/VSJCaoKtHipExHHG
	NmbrUZ5Q7BQ7NwzPpGJFb3BXkORJIpoWRD7z1l+sjGf0mSUJiYn56d6hv0i3KUkhK6+C
	FchfeuEXgRXfo3KyNhH382QPzMQ9ItlOYJ3dhQIr3wmx0ogwVSGeDDOg+HEiTEsMM0km
	6pmJV2lDoV25AzmEb7MMQFVuvNcBCBcYQk9Op9FsnvdLqkkmS75dqpm+IRqHxqXk/5D2
	5cpA==
X-Gm-Message-State: AODbwcAFr52szp8UXIDf/nF7gdAMeMrYvpUPcQCi8RWxmJNZ5SEcVtoH
	l/W4sOHi1CkVZCM2ji8tNxeAPJycxg==
X-Received: by 10.157.80.3 with SMTP id a3mr8909177oth.64.1496295194624; Wed,
	31 May 2017 22:33:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.139.106 with HTTP; Wed, 31 May 2017 22:33:14 -0700 (PDT)
In-Reply-To: <CAOLEWZWP6zx6Kp=Pox6LHwtzcjk6BWsCckKEqrofMU3A2RnsFA@mail.gmail.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
	<CALbNGRTyPU74ipKJwuZpVP+btn7vcca-QJQxUNun8JLSQ0yMgA@mail.gmail.com>
	<CAOLEWZU7Jj+gSoh-gdTSDd9fvYC5Kb2VpTKkeDv7h5PccLsTgQ@mail.gmail.com>
	<CAHUNapQnCjZRDtZX4O3T0nHn2YNibX-6+aNQLT3frOQHnAtS0g@mail.gmail.com>
	<CAOLEWZWP6zx6Kp=Pox6LHwtzcjk6BWsCckKEqrofMU3A2RnsFA@mail.gmail.com>
From: Stephen Arnold <stephen.arnold42@gmail.com>
Date: Wed, 31 May 2017 22:33:14 -0700
Message-ID: <CAOLEWZVXCpJ3PQA=xqeu4P7fLfW1qPFPoMjFLCpzLujF0iHjdA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] etnaviv image
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
X-List-Received-Date: Thu, 01 Jun 2017 05:33:17 -0000
Content-Type: multipart/alternative; boundary="f4030435ab4c8e0b330550df5fa2"

--f4030435ab4c8e0b330550df5fa2
Content-Type: text/plain; charset="UTF-8"

Apparently my cma arg was dorking up the gpu initialization; if you get
this error in dmesg, then adjusting the cmdline memory args is probably a
good idea:

$ dmesg | grep etnaviv

command buffer outside valid memory window

I had default cma size in kernel config, different (larger) size on the
command line, so I replaced cma with gpumem.  Kernel seems to like it
better than cma=foo

Steve

On Wed, May 31, 2017 at 4:29 PM, Stephen Arnold <stephen.arnold42@gmail.com>
wrote:

> Hmm, I built the same commits from your recipes, and I'm still getting the
> glx error in my logs :/
>
> Other than that, things seem to work okay...
>
> Steve
>
> On Sat, May 27, 2017 at 9:20 PM, Trevor Woerner <twoerner@gmail.com>
> wrote:
>
>> Hey Stephen,
>>
>> On Fri, May 26, 2017 at 7:23 PM, Stephen Arnold
>> <stephen.arnold42@gmail.com> wrote:
>> > @Trevor what's your config/setup?  Did you wind up using the
>> > "use-mainline-bsp" thing?
>>
>> Yes.
>>
>> As I mentioned, I was working with a wandboard, on master, therefore
>> my layers are:
>> - openembedded-core
>> - meta-freescale-3rdparty
>> - meta-freescale
>>
>> If I was working on some other board that didn't require
>> meta-freescale-3rdparty I wouldn't have needed that layer.
>> Additionally, I had started by using meta-etnaviv as well. That layer
>> hasn't seen any commits in roughly 10 months. Back then my guess is
>> that "upstream" didn't include very many of the bits required to get
>> this to work, therefore meta-etnaviv had to include recipes/bbappends
>> for mesa, libdrm, xorg-xserver, etc... in addition to the etnaviv drm
>> pieces themselves.
>>
>> I created my own clone of meta-etnaviv
>> [https://github.com/twoerner/meta-etnaviv] and pushed all my
>> commits/updates there with the intention of, eventually, sending a
>> pull request to its author. But by the time I was done removing all
>> the things that are no longer needed (i.e. all the bbappends, since
>> upstream mesa, libdrm, etc... all include the necessary bits) and
>> updating the remaining stuff, I was left with very little. So little,
>> in fact, that I decided to simply fold what was left back into
>> meta-freescale itself, conditional on the "use-mainline-bsp"
>> MACHINEOVERRIDES, and sent those patches to the meta-fsl mailing list.
>>
>> If the maintainers of meta-freescale accept the assumption that
>> use-mainline-bsp could be the flag that indicates interest between the
>> binary vivante drivers and etnaviv, then I hope they like the patches
>> and accept them into meta-freescale itself. Otherwise I could just
>> send that pull request to meta-etanviv's author (or re-work the
>> patches with whatever feedback I get). In any case, for wandboard
>> use-mainline-bsp is needed since the default kernel for wandboard is
>> linux-wandboard which is still stuck at 4.1.15 and is too old for this
>> etnaviv stuff. However using use-mainline-bsp with the wandboard is
>> broken, so I had to send some patches for that (u-boot and kernel) as
>> well (hopefully those patches are accepted as well).
>>
>> Due to the fact so much of etnaviv is already upstream, getting
>> etanviv working doesn't take very much. It just took me a while to
>> reach that point, however :-)
>>
>> > I pretty much had to hack up some of the meta-fsl/meta-boundary stuff
>> and
>> > put everything else in local.conf.  It would be a little easier/cleaner
>> if
>> > the former had some ?= in a few places...
>> >
>> > Anyway, I masked the browser stuff so I haven't tested that far yet,
>> but all
>> > you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps
>> with
>> > glxgears.
>>
>> I like to use mesa-demos and (especially) glmark2 as my programs of
>> choice for testing GL stuff.
>>
>> > I added recipes for the x11-armada stuff, which seems to work for
>> > 2D but coughs an error in the xorg log.
>>
>> I'm curious to know which x11-armada stuff you're using. I couldn't
>> get the stuff that came with meta-etnaviv to compile so I looked
>> around and found Russell King's code which seemed more up-to-date, and
>> compiled. Plus my xorg log doesn't have any errors (see attachment).
>>
>> > I probably tested more with oe-core
>> > than poky but both should work.
>>
>> I just tend to stick with oe-core.
>>
>> I'm hoping to make a couple blog posts with my findings.
>>
>
>

--f4030435ab4c8e0b330550df5fa2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Apparently my cma arg was dorking up t=
he gpu initialization; if you get this error in dmesg, then adjusting the c=
mdline memory args is probably a good idea:<br><br></div>$ dmesg | grep etn=
aviv<br><br>command buffer outside valid memory window<br><br></div>I had d=
efault cma size in kernel config, different (larger) size on the command li=
ne, so I replaced cma with gpumem.=C2=A0 Kernel seems to like it better tha=
n cma=3Dfoo<br></div><br></div>Steve<br></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Wed, May 31, 2017 at 4:29 PM, Stephen Arnol=
d <span dir=3D"ltr">&lt;<a href=3D"mailto:stephen.arnold42@gmail.com" targe=
t=3D"_blank">stephen.arnold42@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div><div>Hmm, I built the same commi=
ts from your recipes, and I&#39;m still getting the glx error in my logs :/=
<br><br></div>Other than that, things seem to work okay...<br><br></div>Ste=
ve<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">On Sat, May 27, 2017 at 9:20 PM, Trevor =
Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerner@gmail.com" target=
=3D"_blank">twoerner@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hey Stephen,<br>
<span><br>
On Fri, May 26, 2017 at 7:23 PM, Stephen Arnold<br>
&lt;<a href=3D"mailto:stephen.arnold42@gmail.com" target=3D"_blank">stephen=
.arnold42@gmail.com</a>&gt; wrote:<br>
&gt; @Trevor what&#39;s your config/setup?=C2=A0 Did you wind up using the<=
br>
&gt; &quot;use-mainline-bsp&quot; thing?<br>
<br>
</span>Yes.<br>
<br>
As I mentioned, I was working with a wandboard, on master, therefore<br>
my layers are:<br>
- openembedded-core<br>
- meta-freescale-3rdparty<br>
- meta-freescale<br>
<br>
If I was working on some other board that didn&#39;t require<br>
meta-freescale-3rdparty I wouldn&#39;t have needed that layer.<br>
Additionally, I had started by using meta-etnaviv as well. That layer<br>
hasn&#39;t seen any commits in roughly 10 months. Back then my guess is<br>
that &quot;upstream&quot; didn&#39;t include very many of the bits required=
 to get<br>
this to work, therefore meta-etnaviv had to include recipes/bbappends<br>
for mesa, libdrm, xorg-xserver, etc... in addition to the etnaviv drm<br>
pieces themselves.<br>
<br>
I created my own clone of meta-etnaviv<br>
[<a href=3D"https://github.com/twoerner/meta-etnaviv" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/twoerner/m<wbr>eta-etnaviv</a>] and push=
ed all my<br>
commits/updates there with the intention of, eventually, sending a<br>
pull request to its author. But by the time I was done removing all<br>
the things that are no longer needed (i.e. all the bbappends, since<br>
upstream mesa, libdrm, etc... all include the necessary bits) and<br>
updating the remaining stuff, I was left with very little. So little,<br>
in fact, that I decided to simply fold what was left back into<br>
meta-freescale itself, conditional on the &quot;use-mainline-bsp&quot;<br>
MACHINEOVERRIDES, and sent those patches to the meta-fsl mailing list.<br>
<br>
If the maintainers of meta-freescale accept the assumption that<br>
use-mainline-bsp could be the flag that indicates interest between the<br>
binary vivante drivers and etnaviv, then I hope they like the patches<br>
and accept them into meta-freescale itself. Otherwise I could just<br>
send that pull request to meta-etanviv&#39;s author (or re-work the<br>
patches with whatever feedback I get). In any case, for wandboard<br>
use-mainline-bsp is needed since the default kernel for wandboard is<br>
linux-wandboard which is still stuck at 4.1.15 and is too old for this<br>
etnaviv stuff. However using use-mainline-bsp with the wandboard is<br>
broken, so I had to send some patches for that (u-boot and kernel) as<br>
well (hopefully those patches are accepted as well).<br>
<br>
Due to the fact so much of etnaviv is already upstream, getting<br>
etanviv working doesn&#39;t take very much. It just took me a while to<br>
reach that point, however :-)<br>
<span><br>
&gt; I pretty much had to hack up some of the meta-fsl/meta-boundary stuff =
and<br>
&gt; put everything else in local.conf.=C2=A0 It would be a little easier/c=
leaner if<br>
&gt; the former had some ?=3D in a few places...<br>
&gt;<br>
&gt; Anyway, I masked the browser stuff so I haven&#39;t tested that far ye=
t, but all<br>
&gt; you really need for 3D under X is new kernel/libdrm/mesa for ~110 fps =
with<br>
&gt; glxgears.<br>
<br>
</span>I like to use mesa-demos and (especially) glmark2 as my programs of<=
br>
choice for testing GL stuff.<br>
<span><br>
&gt; I added recipes for the x11-armada stuff, which seems to work for<br>
&gt; 2D but coughs an error in the xorg log.<br>
<br>
</span>I&#39;m curious to know which x11-armada stuff you&#39;re using. I c=
ouldn&#39;t<br>
get the stuff that came with meta-etnaviv to compile so I looked<br>
around and found Russell King&#39;s code which seemed more up-to-date, and<=
br>
compiled. Plus my xorg log doesn&#39;t have any errors (see attachment).<br=
>
<span><br>
&gt; I probably tested more with oe-core<br>
&gt; than poky but both should work.<br>
<br>
</span>I just tend to stick with oe-core.<br>
<br>
I&#39;m hoping to make a couple blog posts with my findings.<br>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--f4030435ab4c8e0b330550df5fa2--
