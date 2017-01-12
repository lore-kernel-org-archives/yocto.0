Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF83E003C1; Thu, 12 Jan 2017 10:03:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.172 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f172.google.com (mail-qt0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDF98E0033D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:03:37 -0800 (PST)
Received: by mail-qt0-f172.google.com with SMTP id l7so25553339qtd.1
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 10:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lyWC/cUV4ljOjMoCUod9GVqoL2TcS7SjbPnvKMg+hFU=;
	b=08gyFcsOWAffjCl5Z8As2DMB3wfV4SSbnKJ7AdNkueY6TSWDqEORz5XRZ4/4Ojy0yQ
	q364qs39crqiERI1ZB8AH6RimG/V2URCyBCSMnivrIkWrRWPPZk+sH605AXYnqFOZcTr
	m+Jj8sc7Mk/ybSUB9/sjq2Z749ez6zWgsjBedrIpFtCyc+XMAhe2YU+upBXTozZ5Mq1y
	DkddeKIuu9Jyr6lFVN69mS0LAOd9f8qICl9JNCXsR7kIPf+1ElD6TSZc19K0/q1m+55Y
	5IF2KY+E+tYJUbnzFKnXdPFB2ulQQ37mm377cNc9KUnxl9vjKb7bPiMR7w4b0t5sgfZc
	OtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lyWC/cUV4ljOjMoCUod9GVqoL2TcS7SjbPnvKMg+hFU=;
	b=m+73x0QCbsYQ+ZUD7qk1PuMWDaIY4gblLg28wuPQ1YhXDJTYLTUcrGZkh6qZTh8FT/
	/uLWjAD0Dzw/tlHIl5R4M3xj9XY2+44mI/vPpXVqBY/FjaZayXARR/BZ4Me3/6mb+mS0
	S23gCo8NTwd4T7qX9A5DtrV2KwloB7uxm7II0xrysQkk3fpntVBM3aVbTHS79gAUUF0Q
	ZI5PheaIY8usJHfKnZFQOXEcmTrd8oe5aC5yNNqQLjVrDuhcz/8YZJN01m3VQ3NviN/4
	NPHgY1CAmXK/Rwrc2Rri+q1gms3I8jrN+8gH8DvII4gMqYojouHQl4a+TQSMeafoohN9
	Ofxg==
X-Gm-Message-State: AIkVDXJ5YtPyc7ruL3ymNYQr97Jg9TfF3QenSY2tyoET/Q14hHvWJyV1nVp7oFeZdLMUdX33K9Gu4KVtiyWbBHtU
X-Received: by 10.237.54.1 with SMTP id e1mr13385636qtb.68.1484244217039; Thu,
	12 Jan 2017 10:03:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.99 with HTTP; Thu, 12 Jan 2017 10:03:16 -0800 (PST)
In-Reply-To: <CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAD4b0_KFHF9o29giYkdJXA+RvwmTnHJ=V9ubY2Zz2s7Wwt7KoA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jan 2017 18:03:16 +0000
Message-ID: <CAJTo0LYo-ybZpAcb0Qcfe+t_WL-rghb_vVrP9a-8Y41zh=Xn4w@mail.gmail.com>
To: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Thu, 12 Jan 2017 18:03:42 -0000
Content-Type: multipart/alternative; boundary=001a1142dcf0512b910545e98976

--001a1142dcf0512b910545e98976
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 12 January 2017 at 17:55, Maciej Borz=C4=99cki <maciej.borzecki@rndity.c=
om>
wrote:

> IIRC docker on mac relies on docker-machine, which in turn spins up a
> virtualbox VM.
>

That's the old Docker (Docker Toolbox), the new Docker (Docker for Mac)
uses the built-in hypervisor so basically works exactly like Docker on
Linux.

Ross

--001a1142dcf0512b910545e98976
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 January 2017 at 17:55, Maciej Borz=C4=99cki <span dir=3D"ltr">&lt;<a =
href=3D"mailto:maciej.borzecki@rndity.com" target=3D"_blank">maciej.borzeck=
i@rndity.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div i=
d=3D":24w" class=3D"a3s aXjCH m15993d28e766d802">IIRC docker on mac relies =
on docker-machine, which in turn spins up a<br>
virtualbox VM.</div></blockquote></div><br>That&#39;s the old Docker (Docke=
r Toolbox), the new Docker (Docker for Mac) uses the built-in hypervisor so=
 basically works exactly like Docker on Linux.</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142dcf0512b910545e98976--
