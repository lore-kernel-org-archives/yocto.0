Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D13EE01430
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 03:42:00 -0700 (PDT)
Received: by lagz14 with SMTP id z14so5887930lag.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 03:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UZxnsT6QowvAQfH/z9Ti0eYTLBfCkDoych6Aw8W8xWQ=;
	b=OXp9EexVJ/h8qdJYLKPW5iN9WBHhe/GjS/HM/eRztimmQWxPI0uszn1yUsTY5jsc2Y
	Qo43i+EwddthxsEHonLULh62XL5jdYzEj12mfzpB8Xlylch4Q/G9QE0AGsYyO3tY6tOO
	BFLBZIkZLaCGjUgnbS2cjcg0mrOFeVLBY8lP9snwTvCtMNdTu8I/6JeB7++Xp54LOFRm
	h+2/QPxVbK7z6V/StS40S/sm7dV0lf4+AiQ347vnWNPZxaVCZwmz1ZeNmBSYC+uK94Mm
	2Vt6cT2FS6ZS9oNSFOYyMPsLHNnqeh2Laxg4+UQVxHI1AGQ1nGasWYu2AAB46PYnSqP9
	vMqg==
MIME-Version: 1.0
Received: by 10.152.111.71 with SMTP id ig7mr21022313lab.28.1343904119937;
	Thu, 02 Aug 2012 03:41:59 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Thu, 2 Aug 2012 03:41:59 -0700 (PDT)
In-Reply-To: <CAEsOVNe=De6ff5hhKvDrO0QEqwL_kHe1A-ukVHdu+3+6bFvMuw@mail.gmail.com>
References: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
	<CAMvUbCyh0LPs-s9ShTG7UexGC_f0s16_6WfFhbhGbNsxpjvRaw@mail.gmail.com>
	<50195FCF.1030004@intel.com>
	<CAEsOVNe=De6ff5hhKvDrO0QEqwL_kHe1A-ukVHdu+3+6bFvMuw@mail.gmail.com>
Date: Thu, 2 Aug 2012 12:41:59 +0200
Message-ID: <CAMvUbCzvay+NDZzRtOgt=fdUsVxQftthauVpd+jQAsiFmXgC5Q@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Purdie,
	Richard" <richard.purdie@intel.com>,
	Scott Garman <scott.a.garman@intel.com>
Subject: Re: [denzil-next BREAKAGE] Silent breakage in denzil-next --- uImage*.dts no longer generated
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
X-List-Received-Date: Thu, 02 Aug 2012 10:42:01 -0000
Content-Type: multipart/alternative; boundary=f46d04088fadae5a2204c6460f1e

--f46d04088fadae5a2204c6460f1e
Content-Type: text/plain; charset=ISO-8859-1

Hello,

On Wed, Aug 1, 2012 at 8:05 PM, McClintock Matthew-B29882 <
B29882@freescale.com> wrote:

> On Wed, Aug 1, 2012 at 11:56 AM, Scott Garman <scott.a.garman@intel.com>
> wrote:
> > On 08/01/2012 07:50 AM, Leon Woestenberg wrote:
> >> Disregard the breakage.  Local user error; my KERNEL_DEVICETREE missed
> >> the "${S}" prefix.
> >>
>

To summarize the change of behaviour of the patch:

1. Previously (before this patch) the "dtc" compiler was run from the ${S}
directory (linux/git) rather than the ${WORKDIR} directory (linux/),
so a missing ${S} in the KERNEL_DEVICETREE did not break it from compiling.

2. OpenEmbedded did not require the ${S} in KERNEL_DEVICETREE, and custom
device layers (people converting from OE Classic to Core or Poky/Yocto) may
still use it.

3. With this patch, not finding the DTS becomes a silent warning, instead
of an error.


> >
> > The question in my mind right now is whether this change is too
> > risky/change-inducing for a point-release.
>
> I think the was made this way for people using different Linux tree's
> (and Linux versions) specifically which lacked specific device trees
> so switching between them causing problems for specific device tree
> definitions so with this we could just list them all. For example
> p1022ds -> (p1022ds_32b and p1022ds_36b). I could be convinced the
> make this an error or at the very least a bb.warn instead of just an
> echo since it does seem problematic.
>
> Any change should go through master -> denzil
>
>
OK, I get the rationale. My proposal is a solution where the build should
fail if KERNEL_DEVICETREE was specified, but no dts was compiled at all (in
the for loop).

Warn if the dts specified was not an exact match.
Error out if no dts was compiled at all (in the for loop).

Regards,

Leon.

--f46d04088fadae5a2204c6460f1e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br><br><div class=3D"gmail_quote">On Wed, Aug 1, 2012 at 8:05 PM, Mc=
Clintock Matthew-B29882 <span dir=3D"ltr">&lt;<a href=3D"mailto:B29882@free=
scale.com" target=3D"_blank">B29882@freescale.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Wed, Aug 1, 2012 at 11:56 AM, Sc=
ott Garman &lt;<a href=3D"mailto:scott.a.garman@intel.com">scott.a.garman@i=
ntel.com</a>&gt; wrote:<br>
&gt; On 08/01/2012 07:50 AM, Leon Woestenberg wrote:<br>
&gt;&gt; Disregard the breakage. =A0Local user error; my KERNEL_DEVICETREE =
missed<br>
&gt;&gt; the &quot;${S}&quot; prefix.<br>
&gt;&gt;<br></div></div></blockquote><div><br>To summarize the change of be=
haviour of the patch:<br><br>1. Previously (before this patch) the &quot;dt=
c&quot; compiler was run from the ${S} directory (linux/git) rather than th=
e ${WORKDIR} directory (linux/),<br>
so a missing ${S} in the KERNEL_DEVICETREE did not break it from compiling.=
<br><br>2. OpenEmbedded did not require the ${S} in KERNEL_DEVICETREE, and =
custom device layers (people converting from OE Classic to Core or Poky/Yoc=
to) may still use it.<br>
<br>3. With this patch, not finding the DTS becomes a silent warning, inste=
ad of an error.<br><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0pt 0pt 0pt 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<div class=3D"HOEnZb"><div class=3D"h5">
<br>
&gt;<br>
&gt; The question in my mind right now is whether this change is too<br>
&gt; risky/change-inducing for a point-release.<br>
<br>
</div></div>I think the was made this way for people using different Linux =
tree&#39;s<br>
(and Linux versions) specifically which lacked specific device trees<br>
so switching between them causing problems for specific device tree<br>
definitions so with this we could just list them all. For example<br>
p1022ds -&gt; (p1022ds_32b and p1022ds_36b). I could be convinced the<br>
make this an error or at the very least a bb.warn instead of just an<br>
echo since it does seem problematic.<br>
<br>
Any change should go through master -&gt; denzil<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
</font></span></blockquote><br>OK, I get the rationale. My proposal is a so=
lution where the build should fail if KERNEL_DEVICETREE was specified, but =
no dts was compiled at all (in the for loop).<br><br>Warn if the dts specif=
ied was not an exact match.<br>
Error out if no dts was compiled at all (in the for loop).<br><br>Regards,<=
br><br>Leon.<br></div>

--f46d04088fadae5a2204c6460f1e--
