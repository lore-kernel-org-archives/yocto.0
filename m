Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AA8DE00AF8; Mon,  2 Nov 2015 08:53:53 -0800 (PST)
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
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B55CE006D1
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 08:53:50 -0800 (PST)
Received: by qgad10 with SMTP id d10so120745109qga.3
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 08:53:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel_com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=lq/IV82fpRVNXO/FUiLYLcoohOXQwUI5LdTC7WHM91Q=;
	b=Rwlw4S4bL1DQG+T/YnXSk7P7JvP8Rqpdv0JikCapnY3ywZGwyA0k485Tgeo9jADkap
	rL4UZy5I9+7bMkJ3DH06O4QJ50GLNTXXEtMJj/uZY7iqh010FG435a/yYe0ST2E/IUN7
	5xVf549dvnE/DV6l+pgwAoWC4asGLlUzG1jBEeDWof6MO/YTwBiW4Oy3B5A0aS3JE4V+
	mpBQamtJ0uVKWrjSMl+8q0v9XDZtuDMSmT/kOB5cImRJ3AeZtqBQ5BZd4gn9/VP7Z4im
	0am1YGptR4zHg5S2yXfAqHB0eIaQVDmzbgkSE7oniDFCT5DC9i+PJT4vdp3SdsWCeGWW
	XyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lq/IV82fpRVNXO/FUiLYLcoohOXQwUI5LdTC7WHM91Q=;
	b=UBfUKMxcfCttV6Si/5jQEaTR6pxgcQHYwpnnuZB+H2gXm8oqVUR9s1jSwOF/Ib5e9m
	+gUNvghdba3FsvvNbzRy/JpHijx4hWYVyevMgmH6L1vGBfmfXRrv6tWUYfNcCs3BjDo4
	AN9NN2gKMh40B3qzk/qoq8x35bEYsLQz1msaEWGIfQ9KecRz9mg7bCVK4lA4xelKSIit
	vZylZddHsvIG+fjiiSDx03AynQ42q/YGkr4zy+114+TP8jdGlbI6zQqwYeFPleB0058E
	aY5iaqmsc9l/rk5xmyFZXnFjU5jbdbSnzeB7LDy+R1dgPiLtYa+ujk6/FAhWvHbW/3bR
	K/TA==
X-Gm-Message-State: ALoCoQkSo2TU5VU3LpPmerWLT9GcPzcQI7qWZTACBigeBbUuJnnrRmtfXCX/gby21p4nb6kO5oe/
X-Received: by 10.140.20.98 with SMTP id 89mr30856691qgi.15.1446483230147;
	Mon, 02 Nov 2015 08:53:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Mon, 2 Nov 2015 08:53:30 -0800 (PST)
In-Reply-To: <1208702155.772292.1446482555256.JavaMail.yahoo@mail.yahoo.com>
References: <1208702155.772292.1446482555256.JavaMail.yahoo@mail.yahoo.com>
	<1208702155.772292.1446482555256.JavaMail.yahoo@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Nov 2015 16:53:30 +0000
Message-ID: <CAJTo0LYDci=oG7Mw0Foh-N-6Z+z6s=amiuf8YSUa5RYs=RuuEw@mail.gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: openjpeg on github
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
X-List-Received-Date: Mon, 02 Nov 2015 16:53:53 -0000
Content-Type: multipart/alternative; boundary=001a11c126fc1ba4620523919ff2

--001a11c126fc1ba4620523919ff2
Content-Type: text/plain; charset=UTF-8

On 2 November 2015 at 16:42, Edward Vidal <develone@sbcglobal.net> wrote:

> When a project is using git instead of tar file which branch is used?
> Is best to be using git or tar file with yocto?
>

I prefer tarballs if there is a choice as they're theoretically immutable
and we can checksum them, but many upstreams are only using git and tags so
you have no choice.

Ross

--001a11c126fc1ba4620523919ff2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 November 2015 at 16:42, Edward Vidal <span dir=3D"ltr">&lt;<a href=3D"=
mailto:develone@sbcglobal.net" target=3D"_blank">develone@sbcglobal.net</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><span>When a proj=
ect is using git instead of tar file which branch is used?</span></div><div=
><span>Is best to be using git or tar file with yocto?</span></div><div></d=
iv></blockquote></div><br>I prefer tarballs if there is a choice as they&#3=
9;re theoretically immutable and we can checksum them, but many upstreams a=
re only using git and tags so you have no choice.</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c126fc1ba4620523919ff2--
