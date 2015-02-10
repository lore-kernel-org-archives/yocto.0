Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 166CBE008CF; Tue, 10 Feb 2015 10:14:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F13E005A9;
	Tue, 10 Feb 2015 10:13:57 -0800 (PST)
Received: by mail-yk0-f174.google.com with SMTP id 9so9716772ykp.5;
	Tue, 10 Feb 2015 10:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=D/YNmbcaiLsQUb/AzmYSXzFLd8YLm5XA4L0LpXxMJWU=;
	b=sj5ntT9juHXB7eIfM47EXJbY9j95FKtDFasnKo/dx3CL3J7fudEIUD+UnRi7vtabm6
	39VRs1fLTs6YT+7ZtsYvlOpoH1lv1f0SpjwD/wMGNPQBjWRIrX3a8Bo3z57SpyQ5Lxsh
	zBk/xrC2xTthXpeMFQV3VzbzioHW35VGq2j5L8fAzaTTjR/nN8rVVq6laXFuGORjWqcm
	Y6DGV7cnzvhxUCp/9AW6PNVSrSqu9BsZnAuAm2L4uDONuy3LozWqnB/KJSc9p97XzLbT
	hoKK6HZOTUN5L1tqWIzsEGTaI6hhatsu6KXatE6hM8udHN1P69bzXOdwCIU3s0JqrVdR
	n9fA==
X-Received: by 10.170.172.5 with SMTP id o5mr10692661ykd.117.1423592036846;
	Tue, 10 Feb 2015 10:13:56 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.170.205.88 with HTTP; Tue, 10 Feb 2015 10:13:36 -0800 (PST)
In-Reply-To: <54DA3FBD.2000503@mlbassoc.com>
References: <54DA3FBD.2000503@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 10 Feb 2015 11:13:36 -0700
X-Google-Sender-Auth: wzR5SQkysLkg7fz97749gFrHmxw
Message-ID: <CABcZAN=2uiE8=fmTJOxvq3zsbaL5W9BwS+r7zxN2bMtChQL7vA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] tmp/work-shared and sstate
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
X-List-Received-Date: Tue, 10 Feb 2015 18:14:08 -0000
Content-Type: multipart/alternative; boundary=001a113b9e8ca95580050ebfd9a9

--001a113b9e8ca95580050ebfd9a9
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 10, 2015 at 10:28 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> If I run a build where the kernel package is brought in via
> sstate, tmp/work-shared (in particular the kernel-source tree)
> is not populated.  This will break at least these recipes:
>   meta-fsl-arm/recipes-multimedia/gstreamer/gst-fsl-plugin_4.0.2.bb
>   meta-fsl-arm/recipes-multimedia/alsa/fsl-alsa-plugins_1.0.25.bb
>
> These programs reference the kernel includes directly for some
> ARM/i.MX specific headers (e.g. <linux/mxcfb.h>).  These headers
> are not part of the mainline kernel which is used to create the
> kernel headers that populates tmp/sysroots, so the build fails.
> Note: I'm not sure of the mechanism that lets these programs
> peek into the kernel build (I looked at them but nothing jumped
> out), but they do build find if the kernel is actually built
> and not just brought in by sstate.
>
> Is this an error & if so, which recipe is at fault?  The FSL
> recipes, or the new kernel build/classes?
>

Per commit 46cdaf1c7bc597735d926af6a46f9483f7e57ce5
(oe-core 6a1ff0e7eacef595738f2fed086986fd622ec32a), you need to add this if
you depend on the sources:

    do_configure[depends] += "virtual/kernel:do_shared_workdir"
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113b9e8ca95580050ebfd9a9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Feb 10, 2015 at 10:28 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div id=3D":4j6" class=3D"" style=3D"overf=
low:hidden">If I run a build where the kernel package is brought in via<br>
sstate, tmp/work-shared (in particular the kernel-source tree)<br>
is not populated.=C2=A0 This will break at least these recipes:<br>
=C2=A0 meta-fsl-arm/recipes-<u></u>multimedia/gstreamer/<a href=3D"http://g=
st-fsl-plugin_4.0.2.bb" target=3D"_blank">gst-fsl-<u></u>plugin_4.0.2.bb</a=
><br>
=C2=A0 meta-fsl-arm/recipes-<u></u>multimedia/alsa/<a href=3D"http://fsl-al=
sa-plugins_1.0.25.bb" target=3D"_blank">fsl-alsa-<u></u>plugins_1.0.25.bb</=
a><br>
<br>
These programs reference the kernel includes directly for some<br>
ARM/i.MX specific headers (e.g. &lt;linux/mxcfb.h&gt;).=C2=A0 These headers=
<br>
are not part of the mainline kernel which is used to create the<br>
kernel headers that populates tmp/sysroots, so the build fails.<br>
Note: I&#39;m not sure of the mechanism that lets these programs<br>
peek into the kernel build (I looked at them but nothing jumped<br>
out), but they do build find if the kernel is actually built<br>
and not just brought in by sstate.<br>
<br>
Is this an error &amp; if so, which recipe is at fault?=C2=A0 The FSL<br>
recipes, or the new kernel build/classes?</div></blockquote></div><br>Per c=
ommit=C2=A046cdaf1c7bc597735d926af6a46f9483f7e57ce5 (oe-core=C2=A06a1ff0e7e=
acef595738f2fed086986fd622ec32a), you need to add this if you depend on the=
 sources:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">=C2=A0 =C2=A0 do_configure[depends] +=3D &quot;virtual/kernel:do_shared=
_workdir&quot;<br>-- <br><div class=3D"gmail_signature">Christopher Larson<=
br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZauru=
s<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div>
</div></div>

--001a113b9e8ca95580050ebfd9a9--
