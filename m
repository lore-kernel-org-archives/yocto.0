Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58359E00DA5; Wed, 13 Jul 2016 06:24:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEE85E00D7B
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:23:59 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id f6so20173662ith.1
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 06:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=POU9wKUm3950x4Laoxzz/prIT/HZfUi7A+tE+D3OQEw=;
	b=H3+P0OpoaRkZsx4MgQhVkj8OriKrJzcX4W/oJ3O6UnZFvW31ICJXArN/4hz7R1iLaC
	6JUKoxFbpgDSD5tkdQJRFlCiQS2Ut0RvltpInUhljAn28055aKEfe0qD8Ua3hZuTYCZ/
	beuMskWgxvD0jec3DGfNIJK2hy5rD+SAZp36o50RS6b2vBW77PP96VF9u11GIS5Ov4EY
	i0P/xW37+P5TscnwPOY0YYhe23cnfvR1Psrp71N4Z+HGUSryQFtgTDWHhlMQMNv2oMuF
	eVVNGdWiN7J0fvFdy6cclcK8OnI93cvoePmBsC0e7w+E5MdtahvPKGxzhRzIiRGqcPee
	7NBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=POU9wKUm3950x4Laoxzz/prIT/HZfUi7A+tE+D3OQEw=;
	b=I73d6Gcrx7WLqRqp89Q2FbhOCHbyMHDzyKceoHGFmbjnFK41RPJ6jQPYCR71wlA2IO
	qQYR09ygi2c63u3TVG0BFxoGHT3NzcZjTvCihx+SDwHSu0RkqvlS3m2XRR+efKsB1EuV
	tV3U6LLi/OBp1BYfjcXDGGj5WRz6n0kJahfC82sqONNm8hlEfqMUzcnVveU5RR6w+O5L
	kqFcwZewhJnTBQeckKYbMQJov4IwCk13RUs4DC2jcfMo5EZzK2FrRFZr0gitW0YQbHua
	hAwrtdta7vVywq+qvsSm/UR5pXaEq0DQ0DVQN1Gkkc8Qw9cxj79kk8WjbgGdur47lR+W
	DllA==
X-Gm-Message-State: ALyK8tK6SMrnq2Wu0qw2f2RiUJbEJ+Rz04JtwD3J+0T9rm2d+STdctdswu8Gl918Yvwg4yGqd9/iqnGPUQ9DBRU5
X-Received: by 10.36.131.194 with SMTP id d185mr17715521ite.38.1468416238696; 
	Wed, 13 Jul 2016 06:23:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Wed, 13 Jul 2016 06:23:39 -0700 (PDT)
In-Reply-To: <cover.1468415080.git.jussi.kukkonen@intel.com>
References: <cover.1468415080.git.jussi.kukkonen@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Jul 2016 14:23:39 +0100
Message-ID: <CAJTo0LZXO3xn5_i4VFJFq8Z=VOja_GaKubuMwo8KSRTUtkWPgQ@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-panel-2][PATCH 0/4] Port to ScalingImage2
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
X-List-Received-Date: Wed, 13 Jul 2016 13:24:01 -0000
Content-Type: multipart/alternative; boundary=94eb2c0496524a50db0537844c86

--94eb2c0496524a50db0537844c86
Content-Type: text/plain; charset=UTF-8

Looks good!

On 13 July 2016 at 14:12, Jussi Kukkonen <jussi.kukkonen@intel.com> wrote:

> Port all remaining applets to ScalingImage2.
> Also fix a bug in ScalingImage2.
>
> The following changes since commit
> 145a8075c66952dad9ab5f36d944c78c1ae3f4ab:
>
>   Release 2.10, update contact info (2016-06-02 15:08:14 +0300)
>
> are available in the git repository at:
>
>   git://github.com/jku/matchbox-panel-2 scaling-image
>   https://github.com/jku/matchbox-panel-2/tree/scaling-image
>
> Jussi Kukkonen (4):
>   mb-panel: Remove leftover call from old ScalingImage
>   battery: Port to ScalingImage2
>   startup: Port to ScalingImage2
>   launcher: Port to ScalingImage2
>
>  applets/battery/battery-acpi.c           |  1 +
>  applets/battery/battery.c                | 10 ++++++----
>  applets/battery/battery.h                |  2 --
>  applets/launcher/launcher.c              |  8 ++++----
>  applets/startup/startup.c                | 12 +++++-------
>  matchbox-panel/mb-panel-scaling-image2.c |  1 -
>  6 files changed, 16 insertions(+), 18 deletions(-)
>
> --
> 2.8.1
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0496524a50db0537844c86
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Looks good!</div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 13 July 2016 at 14:12, Jussi Kukkonen <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.ku=
kkonen@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Po=
rt all remaining applets to ScalingImage2.<br>
Also fix a bug in ScalingImage2.<br>
<br>
The following changes since commit 145a8075c66952dad9ab5f36d944c78c1ae3f4ab=
:<br>
<br>
=C2=A0 Release 2.10, update contact info (2016-06-02 15:08:14 +0300)<br>
<br>
are available in the git repository at:<br>
<br>
=C2=A0 git://<a href=3D"http://github.com/jku/matchbox-panel-2" rel=3D"nore=
ferrer" target=3D"_blank">github.com/jku/matchbox-panel-2</a> scaling-image=
<br>
=C2=A0 <a href=3D"https://github.com/jku/matchbox-panel-2/tree/scaling-imag=
e" rel=3D"noreferrer" target=3D"_blank">https://github.com/jku/matchbox-pan=
el-2/tree/scaling-image</a><br>
<br>
Jussi Kukkonen (4):<br>
=C2=A0 mb-panel: Remove leftover call from old ScalingImage<br>
=C2=A0 battery: Port to ScalingImage2<br>
=C2=A0 startup: Port to ScalingImage2<br>
=C2=A0 launcher: Port to ScalingImage2<br>
<br>
=C2=A0applets/battery/battery-acpi.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 1 +<br>
=C2=A0applets/battery/battery.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 10 ++++++----<br>
=C2=A0applets/battery/battery.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 2 --<br>
=C2=A0applets/launcher/launcher.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 8 ++++----<br>
=C2=A0applets/startup/startup.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 12 +++++-------<br>
=C2=A0matchbox-panel/mb-panel-scaling-image2.c |=C2=A0 1 -<br>
=C2=A06 files changed, 16 insertions(+), 18 deletions(-)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
2.8.1<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--94eb2c0496524a50db0537844c86--
