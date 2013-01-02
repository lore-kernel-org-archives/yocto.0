Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3806BE00498
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 18:51:12 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id r6so13648829vbi.8
	for <yocto@yoctoproject.org>; Tue, 01 Jan 2013 18:51:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=/ZEA3KNh8aHz7MRoj3pvHGPrcnJyfxVq1C3EmbxpvVA=;
	b=CLmcbVTFmazr50mh1c0qpQaRwZSp2k89GMIZHVK1IaNRzu9khGDd0zTIcocBYxnToX
	h99AnwqT7wJEd4QGNu5MR5RZsOOjJd5QnXyFCk5qheNgik7291WMdsj5LpoHFHI7a5tp
	TOTmWFzSsy5uBId725pMncRB6aMP3Kv8QmTN9fB5+Wxin893D7k66HALbNxsiioP05bg
	RmQX9sVRfmL5lipFVBit2zH6Ykc3r25sBOpPdo+yoAvYUvIt0Kwfkzh3OhZfha0icBj4
	V/cf8D4becGClFDRseW4kjM+5x0P+sR9SaNu1tGL0XDx8iYdU7uQm0bwkhYc33ACkCLY
	S2Tg==
Received: by 10.58.74.196 with SMTP id w4mr70820067vev.7.1357095071367; Tue,
	01 Jan 2013 18:51:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Tue, 1 Jan 2013 18:50:51 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <50E31E11.2090708@comcast.net>
References: <50E31E11.2090708@comcast.net>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 2 Jan 2013 04:50:51 +0200
Message-ID: <CAK18fxGENyi53KHpjUBA8t+387hmvKfaHLjURVo4A-NtnhkYmw@mail.gmail.com>
To: ed nelson <enelson1000@comcast.net>
X-Gm-Message-State: ALoCoQlB9uGfAmaTFiOdceK0f52FwiE7VPH2U6gSblIXqDeSPNAJvl8RAqiDE7qPaPoX0Jw6YFr7
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Wed, 02 Jan 2013 02:51:12 -0000
Content-Type: multipart/alternative; boundary=047d7b86edf6a7c1a604d2455111

--047d7b86edf6a7c1a604d2455111
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 1, 2013 at 7:34 PM, ed nelson <enelson1000@comcast.net> wrote:

> I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else
> having this problem?
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "raspberrypi"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "armv6 vfp"
> TARGET_FPU        = "vfp"
> meta
> meta-yocto
> meta-yocto-bsp    = "danny:**bf909b267498dbab4d7695c26b0dce**903ac8b6b0"
> meta-raspberrypi  = "master:**305c5259e24eaa9fb285ca983dc4f9**454743fa0c"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: Failed to fetch URL git://github.com/raspberrypi/**
> linux.git;protocol=git;branch=**rpi-3.2.27<http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27>,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> Cloning into bare repository '/home/ed/oe/poky-danny/**
> rasperryPiBuild/downloads/**git2/github.com.raspberrypi.**linux.git'...
>
> fatal: read error: Connection reset by peer
> fatal: early EOF
> fatal: index-pack failed
>
> ERROR: Function failed: Fetcher failure for URL: 'git://
> github.com/raspberrypi/**linux.git;protocol=git;branch=**rpi-3.2.27<http://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27>'.
> Unable to fetch URL from any source.
>
>
So this error hits again.

It's something related  to github. I've seen this on other repos and solved
it with a ticket to github - strangely I can't reproduce your issue now on
my host. As i recall the clone would fail if "--quiet" was used. Can you
confirm? Are you able to clone that repo manually? WIth "--quiet" too?

Andrei

--047d7b86edf6a7c1a604d2455111
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Tue, Jan 1, 2013 at 7:34 PM, ed nelson <span dir=3D"ltr=
">&lt;<a href=3D"mailto:enelson1000@comcast.net" target=3D"_blank">enelson1=
000@comcast.net</a>&gt;</span> wrote:<br><div dir=3D"ltr"><div class=3D"gma=
il_extra">

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex">I am getting a do_fetch failure=
 on raspberrypi kernel. =A0Is anyone else having this problem?<br>


<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;danny:<u></u>bf909b267498dbab4d7695c26b0dce=
<u></u>903ac8b6b0&quot;<br>
meta-raspberrypi =A0=3D &quot;master:<u></u>305c5259e24eaa9fb285ca983dc4f9<=
u></u>454743fa0c&quot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
WARNING: Failed to fetch URL git://<a href=3D"http://github.com/raspberrypi=
/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27" target=3D"_blank">github.com=
/raspberrypi/<u></u>linux.git;protocol=3Dgit;branch=3D<u></u>rpi-3.2.27</a>=
, attempting MIRRORS if available<br>


ERROR: Fetcher failure: Fetch command failed with exit code 128, output:<br=
>
Cloning into bare repository &#39;/home/ed/oe/poky-danny/<u></u>rasperryPiB=
uild/downloads/<u></u>git2/github.com.raspberrypi.<u></u>linux.git&#39;...<=
br>
<br>
fatal: read error: Connection reset by peer<br>
fatal: early EOF<br>
fatal: index-pack failed<br>
<br>
ERROR: Function failed: Fetcher failure for URL: &#39;git://<a href=3D"http=
://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27" tar=
get=3D"_blank">github.com/raspberrypi/<u></u>linux.git;protocol=3Dgit;branc=
h=3D<u></u>rpi-3.2.27</a>&#39;. Unable to fetch URL from any source.<br>


<br></blockquote><div>=A0</div><div style>So this error hits again.=A0</div=
><div style><br></div><div style>It&#39;s something related =A0to github. I=
&#39;ve seen this on other repos and solved it with a ticket to github - st=
rangely I can&#39;t=A0reproduce=A0your issue now on my host. As i recall th=
e clone would fail if &quot;--quiet&quot; was used. Can you confirm? Are yo=
u able to clone that repo manually? WIth &quot;--quiet&quot; too?</div>

<div style><br></div><div style>Andrei</div></div></div></div></div>

--047d7b86edf6a7c1a604d2455111--
