Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88768E00C44; Mon, 11 Sep 2017 01:21:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB23FE00C01
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:21:51 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id r131so5997011itc.1
	for <yocto@yoctoproject.org>; Mon, 11 Sep 2017 01:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qr9j9GDSJm1sq2CKmXDGrHCV18XJ9aKlBF8QxYDwgNU=;
	b=DbPRfSw2jNBoONhGfI/c9iBcsGvLhaVAuf9JVlSq7z54T4gd7T6pllXlp45dFRiIvT
	pLGr+HzwAOrIZz9K+1UojpnL1SQNhYEpxMEHcD8MM3jLkrOIj1ZX3Mlpk9A/wY8djaCY
	e6DBJGtNq6coT8om+bsd3VsC2guRSL5etw4+GNj3Y6SWkW2iKbw6JuOoGl3COthgcza5
	G5goDz0BlaDzHHXSIRaucpfpeIHcYuiG2zz1M1PhWVye+O+MNyHjkDSyRFYvwvYpV4Qt
	NVQ6xp+ZdCwZ+UZQyhSApCLXdPHl6yYgt4SRfin+/j50bzuMPd6eGHqITU1aXgFfd/me
	IZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qr9j9GDSJm1sq2CKmXDGrHCV18XJ9aKlBF8QxYDwgNU=;
	b=AraCLDDqcgwkiXl6y5XeoXlC3SUe5bIsNHwH0YXwYGLcze9CHK4cDFKcLKetwcFR1L
	jlftt302WjdH1ORZgQXl+X6WJoikxt/Cy0pMX1wP7/TdMQSw3rDSG6wpg6Euj+L32+Zm
	Tl5FE/vE1ftBdfRqwHCWfX+Mm20zeN0JE4SU5lZ4crAOzoCbGMZ7stP/LLyseTZ1yxX1
	2Ebzddx6oo62X8IL4XDDClcs7iuaaYqcvG0n8A53gLt2YlsABDWegb045ZRHPxK/5oYr
	RCSWjQU/5iAMWFZjM/XrqiJFZPoHfJCuLkXkkj32sZo0CEOUrqT16XPdhuB7E+buQiyE
	4IZA==
X-Gm-Message-State: AHPjjUiOioQ902mA46p5cXDJsKz7uKAoEL24VrN6W+Of+4FwHbjj1vVS
	KzekFYhncQP/H97rmHvYmnv7EBeeX4t9
X-Google-Smtp-Source: AOwi7QDmqTOnfPPazg65Aqdk6cLafizEWxe58VpxP+UopyU6/swvOLA/F1PXSZwxSt27kzOxmxbtphsK634D9PwMC90=
X-Received: by 10.36.237.204 with SMTP id r195mr12204403ith.48.1505118110815; 
	Mon, 11 Sep 2017 01:21:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Mon, 11 Sep 2017 01:21:30 -0700 (PDT)
In-Reply-To: <6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
References: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
	<b59f7241-632a-0801-1dce-ade844162f23@dynamicdevices.co.uk>
	<6353963F-63D3-413E-B685-72A56004CBA9@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 11 Sep 2017 09:21:30 +0100
Message-ID: <CAJTo0LbEg7M0FfhJ7bFzr+B3DSprTXVD=jp6oMkiyKP8+wARzg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Suitable machine for yocto
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
X-List-Received-Date: Mon, 11 Sep 2017 08:21:52 -0000
Content-Type: multipart/alternative; boundary="94eb2c042c16572d6d0558e59ebb"

--94eb2c042c16572d6d0558e59ebb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 10 September 2017 at 12:00, Chris Tapp <opensource@keylevel.com> wrote:

> I have a similar spec, except I use an SSD for the build area and only
> 16GB RAM (I don=E2=80=99t see more than about 12GB used during a build) -=
 a build
> from scratch (excluding download time) takes just under an hour.
>

The thing to remember with SSDs is that builds can write *a lot* of data
and this can destroy SSDs faster than you'd like.

Personally I find lots of RAM more cost effective.  If you've got a
moderate amount then a slow commit time in fstab lets the kernel batch
writes wisely.  If you've got plenty of RAM (my machine has 64GB) then a
good sized tmpfs (32GB here) mounted at TMPDIR (the local.conf setting, not
/tmp) in with rm_work means you literally have no I/O latency.  To persist
files either copy them out or for example set DEPLOY_DIR to a real disk.

Ross

--94eb2c042c16572d6d0558e59ebb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 10 September 2017 at 12:00, Chris Tapp <span dir=3D"ltr=
">&lt;<a href=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensour=
ce@keylevel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">I have a similar spec, e=
xcept I use an SSD for the build area and only 16GB RAM (I don=E2=80=99t se=
e more than about 12GB used during a build) - a build from scratch (excludi=
ng download time) takes just under an hour.<br></blockquote><div><br></div>=
<div>The thing to remember with SSDs is that builds can write *a lot* of da=
ta and this can destroy SSDs faster than you&#39;d like.</div><div><br></di=
v><div>Personally I find lots of RAM more cost effective.=C2=A0 If you&#39;=
ve got a moderate amount then a slow commit time in fstab lets the kernel b=
atch writes wisely.=C2=A0 If you&#39;ve got plenty of RAM (my machine has 6=
4GB) then a good sized tmpfs (32GB here) mounted at TMPDIR (the local.conf =
setting, not /tmp) in with rm_work means you literally have no I/O latency.=
=C2=A0 To persist files either copy them out or for example set DEPLOY_DIR =
to a real disk.</div><div><br></div><div>Ross</div></div></div></div>

--94eb2c042c16572d6d0558e59ebb--
