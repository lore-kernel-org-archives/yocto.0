Return-Path: <panyu2000@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEAD6E0032E
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 18:43:20 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so10253671pbb.35
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 18:43:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Yv0ITCdf2rgD7H/DnzY8GN0bFTU9F7tpjnPU1xCysmo=;
	b=0mrJ9dG3NKy3ITq7SWbYyC64vuskfn2Ux1H/cipxhk0g1tXQ8JTPyWh02nf+xHYe3J
	v+g1ThPMX9eV8U6ZizS1qmizJ0bqFCCx6XZu7fdeIlFjTrrSQqd0qqy2AwuIUFp18IEJ
	WZXRwIkI+xPhI0ry73jGPmqW1Og8l4kW9hncNhoGeP/4UL5ccMMBL58J/PwF7JnQms9x
	l7XlyLV+tvQQx6E7iEUVGc0rEPWNs72GKulRx95AAnlAJCX9RRm7wxouun+moPOdya0P
	rw4AVaGv7xwsOgX+0mQ0/lMgaXoGyH0PfSANkm/m2kxM/rWnSDt+AdWi/bO+aIrCJPAa
	VS/A==
MIME-Version: 1.0
Received: by 10.66.79.168 with SMTP id k8mr57837448pax.12.1354157000498; Wed,
	28 Nov 2012 18:43:20 -0800 (PST)
Received: by 10.66.192.65 with HTTP; Wed, 28 Nov 2012 18:43:20 -0800 (PST)
In-Reply-To: <50B650AF.6040809@windriver.com>
References: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
	<50B4DB1F.2070904@windriver.com>
	<CAPeyoXY=72u_CiQhMv2FRmiOSQ-DLbRQUrRSg=NiUufzEZAjAw@mail.gmail.com>
	<50B650AF.6040809@windriver.com>
Date: Thu, 29 Nov 2012 10:43:20 +0800
Message-ID: <CAPeyoXZzZc5yzh6e-QQnCzMBrYe8G5gPm=W5kyV-7xgm+5kDig@mail.gmail.com>
From: Yu Pan <panyu2000@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preempt-rt kernel build for beagleboard
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Nov 2012 02:43:20 -0000
Content-Type: multipart/alternative; boundary=f46d042a0d55fc1ccf04cf993e19

--f46d042a0d55fc1ccf04cf993e19
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 29, 2012 at 1:58 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

Mystery solved. The fragment is picked up properly in the build and
> everything is operating as expected.
>
> We had an old commit (that is still required for some configurations)
> that disabled preemption for the beagleboard due to SD card boot
> issues.
>
> That being said, the entire point of trying out preempt-rt is for the
> extra preemption, and without it, why bother. So I moved the preempt
> disable to the standard kernel only in this commit:
>
> http://git.yoctoproject.org/**cgit/cgit.cgi/yocto-kernel-**
> cache/commit/?id=**551c7ad8c46d371c6b135357ed2d38**8d45af13d8<http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-cache/commit/?id=551c7ad8c46d371c6b135357ed2d388d45af13d8>
>
> Once I update the SRCREVs for the meta branch of the linux-yocto-3.4
> tree, you'll get the expected preempt settings out of the box:
>
> > grep PREEMPT linux-beagleboard-preempt-rt-**build/.config
> CONFIG_TINY_PREEMPT_RCU=y
> CONFIG_PREEMPT_RCU=y
> CONFIG_PREEMPT=y
> CONFIG_PREEMPT_RT_BASE=y
> # CONFIG_PREEMPT_NONE is not set
>
> # CONFIG_PREEMPT_VOLUNTARY is not set
> # CONFIG_PREEMPT__LL is not set
> # CONFIG_PREEMPT_RTB is not set
> CONFIG_PREEMPT_RT_FULL=y
> CONFIG_PREEMPT_COUNT=y
> CONFIG_DEBUG_PREEMPT=y
> # CONFIG_PREEMPT_TRACER is not set


Thanks a lot for helping Bruce.

I'm trying to do the modifications to the scc here in the meta branch using
 a local bare clone of the linux-yocto-3.4 repository. Still trying to
figure out the bitbake patching failures after modifying the SRCREV_meta
value to point to my recent most meta commission. Will let you know.

Cheers
Pan Yu

--f46d042a0d55fc1ccf04cf993e19
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 29, 2012 at 1:58 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield=
@windriver.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">
Mystery solved. The fragment is picked up properly in the build and<br>
everything is operating as expected.<br>
<br>
We had an old commit (that is still required for some configurations)<br>
that disabled preemption for the beagleboard due to SD card boot<br>
issues.<br>
<br>
That being said, the entire point of trying out preempt-rt is for the<br>
extra preemption, and without it, why bother. So I moved the preempt<br>
disable to the standard kernel only in this commit:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-cache/com=
mit/?id=3D551c7ad8c46d371c6b135357ed2d388d45af13d8" target=3D"_blank">http:=
//git.yoctoproject.org/<u></u>cgit/cgit.cgi/yocto-kernel-<u></u>cache/commi=
t/?id=3D<u></u>551c7ad8c46d371c6b135357ed2d38<u></u>8d45af13d8</a><br>

<br>
Once I update the SRCREVs for the meta branch of the linux-yocto-3.4<br>
tree, you&#39;ll get the expected preempt settings out of the box:<br>
<br>
&gt; grep PREEMPT linux-beagleboard-preempt-rt-<u></u>build/.config<br>
CONFIG_TINY_PREEMPT_RCU=3Dy<br>
CONFIG_PREEMPT_RCU=3Dy<br>
CONFIG_PREEMPT=3Dy<br>
CONFIG_PREEMPT_RT_BASE=3Dy<br>
# CONFIG_PREEMPT_NONE is not set<div class=3D"im"><br>
# CONFIG_PREEMPT_VOLUNTARY is not set<br>
# CONFIG_PREEMPT__LL is not set<br>
# CONFIG_PREEMPT_RTB is not set<br></div>
CONFIG_PREEMPT_RT_FULL=3Dy<br>
CONFIG_PREEMPT_COUNT=3Dy<br>
CONFIG_DEBUG_PREEMPT=3Dy<br>
# CONFIG_PREEMPT_TRACER is not set</blockquote><div><br></div><div>Thanks a=
 lot for helping Bruce.=A0</div><div><br></div><div>I&#39;m trying to do th=
e modifications to the scc here in the meta branch using =A0a local bare cl=
one of the linux-yocto-3.4 repository. Still trying to figure out the bitba=
ke patching failures after=A0modifying the SRCREV_meta value to point to my=
 recent most meta commission. Will let you know.</div>
<div><br></div><div>Cheers</div><div>Pan Yu</div></div></div>

--f46d042a0d55fc1ccf04cf993e19--
