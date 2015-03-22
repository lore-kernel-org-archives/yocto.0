Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A749E0093B; Sun, 22 Mar 2015 05:25:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 213E6E006E3
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 05:25:34 -0700 (PDT)
Received: by wibgn9 with SMTP id gn9so34112765wib.1
	for <yocto@yoctoproject.org>; Sun, 22 Mar 2015 05:25:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UBw+3Y0lkwZjxAvFbMkoxBzouoYcBwCnnO/n9TyqNgM=;
	b=cZH5J8xoW8um5MS78xpDkamvr6k8RxFok1uDCyGNRKQcY2elMh7hIxgzT2DiY9u744
	lQvkLjiPiZ7ImmjjFFDUtgYIm9JVilG8JlHGhv6cJNG4yEEe9KipWA1XLDxWsca/utEp
	o8ifuXW7uxV/nsbcTrUBq6TDbBSeYB6xM+NXw0e6QtC59AzRcPt+N2w7nWOqeuJT8G2B
	wpj4mZCiGC0GCa0CBz7jYIGlsw3FKv1Za3OZoPl6N6Tnbc/exbD9D2K8/Chuj3Juqmsa
	EojXX0ZKnOxE90GcYYOU6EEbTEGgRQSxv+1grl/nn3a8UbsxLv9hbzPo0/S/ba5X6BwJ
	8oBQ==
X-Gm-Message-State: ALoCoQnvit8bFSiVV/CNLngaQSx3BundLRLRiLCfwrK+PZ0YX0mglHyOeMnoRbB0yPR7A4v38ffd
X-Received: by 10.194.75.168 with SMTP id d8mr179225899wjw.87.1427027133527;
	Sun, 22 Mar 2015 05:25:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.224.193 with HTTP; Sun, 22 Mar 2015 05:25:13 -0700 (PDT)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <550EB367.9070508@mlbassoc.com>
References: <550EB367.9070508@mlbassoc.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 22 Mar 2015 13:25:13 +0100
Message-ID: <CAK18fxEStLTUzh7O-YVHyGiqnBK4oVwGRKiO==nMmKiYngH0gQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] RaspberryPi2 - no audio?
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
X-List-Received-Date: Sun, 22 Mar 2015 12:25:39 -0000
Content-Type: multipart/alternative; boundary=047d7bb04bc8617fc30511dfa5a7

--047d7bb04bc8617fc30511dfa5a7
Content-Type: text/plain; charset=UTF-8

Hello,

On Sun, Mar 22, 2015 at 1:19 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> I just built Poky/Yocto for the RaspberryPi2, straight out
> of the box using this configuration:
>
> Build Configuration:
> BB_VERSION        = "1.25.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Fedora-13"
> TARGET_SYS        = "arm-amltd-linux-gnueabi"
> MACHINE           = "raspberrypi2"
> DISTRO            = "amltd"
> DISTRO_VERSION    = "1.7+snapshot-20150321"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard vfpv4
> cortexa7"
> TARGET_FPU        = "vfp-vfpv4-neon"
> meta              = "master:12b6cf0f2212519b14333519746174a5b941f7bf"
> meta-amltd        = "cutting-edge:d9350ea229c04d64111f38e638f372
> a1bac87be0"
> meta-raspberrypi  = "master:b896a7da70dd7a16ba7ffd664f7747cb37e1d142"
>
> All seemed to go OK, but when I try to play audio, there are
> no sound cards found.  Is there some configuration I need?
> Once I get it going, how can I select between the internal
> (phono) audio and HDMI?
>
> Note: I had this working just fine on my RaspberryPi (model B)
>
>
We didn't test audio on Raspberrypi 2. So, probably the best thing to do it
to shoot a redmine bug and maybe help with some patches? Otherwise we will
try to pick it as soon as possible.

Thanks a lot.

-- 
*Andrei Gherzan*

--047d7bb04bc8617fc30511dfa5a7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Sun, Mar 22, 2015 at 1:19 PM, Gary Thomas <span dir=3D"ltr">&l=
t;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I just built Poky/Y=
octo for the RaspberryPi2, straight out<br>
of the box using this configuration:<br>
<br>
Build Configuration:<br>
BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.25.0&quot;<br>
BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;i686-linux&quot;<br>
NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Fedora-13&quot;<br>
TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-amltd-linux-gnueabi&quo=
t;<br>
MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;raspberrypi2&quot=
;<br>
DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;amltd&quot;<br>
DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7+snapshot-20150321&quot;<br>
TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thumb neon callco=
nvention-hard vfpv4 cortexa7&quot;<br>
TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;vfp-vfpv4-neon&quot;<br>
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:<u></=
u>12b6cf0f2212519b14333519746174<u></u>a5b941f7bf&quot;<br>
meta-amltd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;cutting-edge:<u></u>d9350ea=
229c04d64111f38e638f372<u></u>a1bac87be0&quot;<br>
meta-raspberrypi=C2=A0 =3D &quot;master:<u></u>b896a7da70dd7a16ba7ffd664f77=
47<u></u>cb37e1d142&quot;<br>
<br>
All seemed to go OK, but when I try to play audio, there are<br>
no sound cards found.=C2=A0 Is there some configuration I need?<br>
Once I get it going, how can I select between the internal<br>
(phono) audio and HDMI?<br>
<br>
Note: I had this working just fine on my RaspberryPi (model B)<br>
<br></blockquote><div><br></div><div>We didn&#39;t test audio on Raspberryp=
i 2. So, probably the best thing to do it to shoot a redmine bug and maybe =
help with some patches? Otherwise we will try to pick it as soon as possibl=
e.=C2=A0</div><div><br></div><div>Thanks a lot.=C2=A0</div></div><div><br><=
/div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"t=
ext-align:center"></div><div style=3D"text-align:center"><div align=3D"left=
"><b style=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-al=
ign:center">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7bb04bc8617fc30511dfa5a7--
