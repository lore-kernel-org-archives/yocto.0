Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D067BE0082A; Sat,  4 Feb 2017 05:38:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.177 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C99E007C2
	for <yocto@yoctoproject.org>; Sat,  4 Feb 2017 05:38:24 -0800 (PST)
Received: by mail-qk0-f177.google.com with SMTP id u25so16836505qki.2
	for <yocto@yoctoproject.org>; Sat, 04 Feb 2017 05:38:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8z561v6KtoBe++xo7cn3FuA269lSohxSHZhYkJ4yAtA=;
	b=avmU24VsMGZqkhmXV8fo/AJcxMzqZSd2VqYK+981cZg4msOY2lydpA4TGBadTqvFSW
	UW0m/LDMdaCQv8QAVwTFJs4liL3zFPw05sK23MGFpV6IwXIMh0Lf6TdEc0qL40AuDSMd
	g0718FNd9fk83zUkvNNa6rVpKLI1wfee8gdfmhfA5ziB4ANwmygruXJzX0qy37vCqv4k
	i87Ey7WEBBF8QLhBvaUaYaykgB3mzUQiquC3mqmO1Vexbmuy9+KE8ZyPkTnfLpLTa0FJ
	YPc8meVX/ZnFMpKDCq+l5WZr96I6GO35y0q4fHVsX5lm0eoaTMrAfXmR/0JZbPHyXfo6
	F63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8z561v6KtoBe++xo7cn3FuA269lSohxSHZhYkJ4yAtA=;
	b=hXd9d/riKzXfMk9ze8VWsWthlKTFz0wFgacxf6Bc5ANXnCCFSqRyeZSzE1COby0Vpw
	6OM2q3sJ2M0wnQl55orBbxfekumNNnJNdvZ/H0evWFmSwrCxQiychFphkDWlP6XuWuS9
	DWVBhi7rryWFKrVrbsJO566N2LbvfZtljvRUDV10w+VvgEItoF2RNhOZr0cFFAjJmkOf
	E7jUBs68ldw3UYdn5G3hLU7acG1KMsde+dIh2JDjT7YpmQs6t4hAMivZ8lDccPNKWHUN
	WLmyeZcLNUA0CRRLZ8G2qLeU1Z03vIDh+C7IAMDkrYjLPgQP5UkXuWV++hUZwRk0qwPQ
	wZMA==
X-Gm-Message-State: AMke39lbSY5saD+PvHIUAXdNbn4GazeG9k9+0TegRIgy9LngHTEqeeMZhs0QNlMhqetPPNiTK0zLNUJLQyiOnsjZ
X-Received: by 10.55.183.133 with SMTP id h127mr1995079qkf.121.1486215503578; 
	Sat, 04 Feb 2017 05:38:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Sat, 4 Feb 2017 05:38:03 -0800 (PST)
In-Reply-To: <DM5PR0101MB295352845062BDD3E939EA0EB64E0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB295332119B0A4D1653E73F98B64F0@DM5PR0101MB2953.prod.exchangelabs.com>
	<CAJTo0LZyg6+pD7DKUb9c42=m_G5ngWyoqmxafLvSZP5Xn-JkJA@mail.gmail.com>
	<DM5PR0101MB295352845062BDD3E939EA0EB64E0@DM5PR0101MB2953.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 4 Feb 2017 13:38:03 +0000
Message-ID: <CAJTo0Lb=EFR7cPN17qfRH5H-1vwAiBT154GsALNFGA=9FFZ2gg@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: genericx86 vs qemux86
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
X-List-Received-Date: Sat, 04 Feb 2017 13:38:26 -0000
Content-Type: multipart/alternative; boundary=94eb2c0600562699980547b483c7

--94eb2c0600562699980547b483c7
Content-Type: text/plain; charset=UTF-8

On 4 February 2017 at 03:59, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:

> So, if virtualization platform provides what intel-core* builds expects,
> then I will see a better performance with them, rather thatn qemu* builds.
> Or qemu* builds provide particular features that suites well with VM,
> other thna its 'safe' behavior?
>

The qemu machines enable all the 'virtio' drivers that for example instead
of talking to a pretend model of a real ethernet board, talk directly to
the container.  This makes them much faster.

The meta-intel machines enable various drivers and compiler options that
are specific to or tailored for real modern x86 hardware, so will perform
better than a lowest common denominator kernel build.

Ross

--94eb2c0600562699980547b483c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 February 2017 at 03:59, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xevo.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>So, if virtualizat=
ion platform provides what intel-core* builds expects, then I will see a be=
tter performance with them, rather thatn qemu* builds.</div>
<div>Or qemu* builds provide particular features that suites well with VM, =
other thna its &#39;safe&#39; behavior?</div>
<div></div></blockquote></div><br>The qemu machines enable all the &#39;vir=
tio&#39; drivers that for example instead of talking to a pretend model of =
a real ethernet board, talk directly to the container.=C2=A0 This makes the=
m much faster.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">The meta-intel machines enable various drivers and compiler option=
s that are specific to or tailored for real modern x86 hardware, so will pe=
rform better than a lowest common denominator kernel build.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0600562699980547b483c7--
