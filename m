Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8103E0070F; Tue,  1 Nov 2016 16:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.173 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC34E00509
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 16:22:47 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id n6so68824756qtd.1
	for <yocto@yoctoproject.org>; Tue, 01 Nov 2016 16:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9lBj+fXUlYI3ShjCJ1Pt28qTOcgJGTMFzLYw7a/KtuQ=;
	b=Wa9WNDm+iRRj+DhbMDOFMkwDupvClEkzDLLfNTcsAM410slqJho7pQIiEmxpPWBWOl
	AUMMmzjvwZvcM+xVk3rjO/7Kg3WWHZQRuFMtw55cyvA+9R2UH3Ex4+H04UZVGFDUfkcQ
	SkHe6cXpAZxJEOCJOVuF8jgTncarpR3HRppnrYnpi2fU8FE9RPDHRVZEo4nA8i48YCsm
	dusKYCQpNu+2cXBNmrP9/w0Bv4Nxp58LrmuubOtxnIpFK8xK4IvmeOSU7FQS3jEzvaiQ
	FqpHlcg+mYZ1wLnYtAmFEGDK5axJliO99aaGBvK+T0F4dAz62f3zFAKw9fMSWyDSiUAF
	Zk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9lBj+fXUlYI3ShjCJ1Pt28qTOcgJGTMFzLYw7a/KtuQ=;
	b=OqwFOIslVIeIqflkxIwIXu1KQl7CyrzILMXchNCwYzKZyPoncyQNcyVFQUnGIwkXBV
	1EXQk2DirpPOhh9RtFtKOBi6yyYsZ8gixN4YHAv83vUU+VJQofEo+r1KNsDLNoaNpR6d
	ZCOzQJYJcSZJt6kaXeqaqlB4FojLx0QIQfVkkCsOT1bPIt7saJe5k8COjXpIA+h0lTH3
	8ek7q7nVYy6QXLMo6qec948+aAQTDLG8zHHA2FU46yIcy10FCpD3BX29lKNAAcSxBjr9
	8MQjsNpLh5SOhpDRes79Jgr1PjIoSg3zcqtYd+0f0b8PZW7iHN4nm6Mw2D+y9SLInXiY
	AooQ==
X-Gm-Message-State: ABUngvc/L7hcj3uY0891bO+2cYzL25KZhqPFVvEMfhN2NI5fdLocjNqe+SjVfMhko6RC12cmzsKEYqaOF7ogeKZN
X-Received: by 10.200.35.117 with SMTP id b50mr642885qtb.38.1478042566501;
	Tue, 01 Nov 2016 16:22:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Tue, 1 Nov 2016 16:22:26 -0700 (PDT)
In-Reply-To: <CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
	<CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 1 Nov 2016 23:22:26 +0000
Message-ID: <CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 23:22:48 -0000
Content-Type: multipart/alternative; boundary=001a113f41fc23b9670540459a99

--001a113f41fc23b9670540459a99
Content-Type: text/plain; charset=UTF-8

On 1 November 2016 at 22:20, Daniel. <danielhilst@gmail.com> wrote:

> Just as a note, I've been using archlinux for about a year and have never
> faced "distro related problems", except when the gcc6 comes out. Anyway I'm
> using daisy in my work. I think that making old releases supported by X
> distro doesn't make any sense...
>

The supported list of distros is just the list of distros that are known to
work, and if something breaks then we'll notice and fix it.  If you want to
use arch and face the periodic problems such as new toolchain meaning you
can't build gcc-cross, then go for it.

Ross

--001a113f41fc23b9670540459a99
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 November 2016 at 22:20, Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div>Just as a note, I&#39;ve=
 been using archlinux for about a year and have never faced &quot;distro re=
lated problems&quot;, except when the gcc6 comes out. Anyway I&#39;m using =
daisy in my work. I think that making old releases supported by X distro do=
esn&#39;t make any sense...<br></div></blockquote></div><br></div><div clas=
s=3D"gmail_extra">The supported list of distros is just the list of distros=
 that are known to work, and if something breaks then we&#39;ll notice and =
fix it.=C2=A0 If you want to use arch and face the periodic problems such a=
s new toolchain meaning you can&#39;t build gcc-cross, then go for it.=C2=
=A0</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a113f41fc23b9670540459a99--
