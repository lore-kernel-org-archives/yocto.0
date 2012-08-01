Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4C5AE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 07:50:55 -0700 (PDT)
Received: by lagz14 with SMTP id z14so5310853lag.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 07:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Q6pFEvaiDagNC8AypM2hwpr9cTpCCUmiYKKqJTsD3VU=;
	b=vN1GEP0xjkASF0Fbiz85quw0ouVhmzbghCvThrwxjX1acL2UNf0Mv0roe49v/LU+sD
	JSoDhYNR0Elbp0dPuAi/8B7JS4+LSLKBVRm7MhsbqpDHzhcmgcm93Qssqa9gGHoPJtVU
	pKc+P8RS1DJzd5Xq5O6kmdZSCg2wlYaSSdhoprRJGGcstLafHTgrGoOY/lMbJ9x7Kc5L
	kujiz1tE1wyOVzFPr62IqGNJAsa61CkMuirzDruKZzcfRaPGJvg/Ph6oZw+9IYh+zQXf
	Ju7A6e2kIULKJYiqaPtxZ7JXh2r4OzDgRrE6dQrZ8GxQ8UCnQ6ZtN7eogixMgSmY0l3X
	ev2Q==
MIME-Version: 1.0
Received: by 10.112.27.226 with SMTP id w2mr8328447lbg.57.1343832654576; Wed,
	01 Aug 2012 07:50:54 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Wed, 1 Aug 2012 07:50:54 -0700 (PDT)
In-Reply-To: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
References: <CAMvUbCwjZ8gRmGEJ4LkHAiKEmMZSWSZGVrg-jwxPRW8r=ePn7w@mail.gmail.com>
Date: Wed, 1 Aug 2012 16:50:54 +0200
Message-ID: <CAMvUbCyh0LPs-s9ShTG7UexGC_f0s16_6WfFhbhGbNsxpjvRaw@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>,
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
X-List-Received-Date: Wed, 01 Aug 2012 14:50:56 -0000
Content-Type: multipart/alternative; boundary=bcaec554de62037aed04c6356cd6

--bcaec554de62037aed04c6356cd6
Content-Type: text/plain; charset=ISO-8859-1

Hello Scott, all,

On Wed, Aug 1, 2012 at 4:31 PM, Leon Woestenberg <
sidebranch.openembedded@gmail.com> wrote:

> Hello Scott,
>
> I tested your denzil-next branch but found breakage that will not fail the
> (auto) build.
>
> I'm hitting the "Warning: ${DTS_FILE} is not available!" case.
>
> Disregard the breakage.  Local user error; my KERNEL_DEVICETREE missed the
"${S}" prefix.

However, that being said, should we silently fail with a warning of the
specified device tree (DTS) is missing?  This is clearly a change of
behaviour that makes the build prone to user errors, as I just demonstrated.

I rather have the build fail.

Regards,

Leon.

--bcaec554de62037aed04c6356cd6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Scott, all,<br><br><div class=3D"gmail_quote">On Wed, Aug 1, 2012 at =
4:31 PM, Leon Woestenberg <span dir=3D"ltr">&lt;<a href=3D"mailto:sidebranc=
h.openembedded@gmail.com" target=3D"_blank">sidebranch.openembedded@gmail.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hello Scott,<br><br>I tested your denzil-nex=
t branch but found breakage that will not fail the (auto) build.<br><br>I&#=
39;m hitting the  &quot;Warning: ${DTS_FILE} is not available!&quot; case.<=
br>
<br></blockquote></div>Disregard the breakage.=A0 Local user error; my KERN=
EL_DEVICETREE missed the &quot;${S}&quot; prefix.<br><br>However, that bein=
g said, should we silently fail with a warning of the specified device tree=
 (DTS) is missing?=A0 This is clearly a change of behaviour that makes the =
build prone to user errors, as I just demonstrated.<br>
<br>I rather have the build fail.<br><br>Regards,<br><br>Leon.<br>

--bcaec554de62037aed04c6356cd6--
