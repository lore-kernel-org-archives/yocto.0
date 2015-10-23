Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0346CE00B30; Fri, 23 Oct 2015 13:09:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51BEFE00B23
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 13:09:31 -0700 (PDT)
Received: by qgeo38 with SMTP id o38so76132739qge.0
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 13:09:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gPYV27zwpEMgv3ZcsZ0Qs4uU55w/Vx/gzCHq2OMyhGw=;
	b=GxZJDw+DLigDZZMaEfmwN+z/6c1jSPH9Mp/L9EjIdyTh8rcbW7XrmMSdm8CnQYb3q7
	Jy+PlLaeOckxURBXF+G8slca22r0+PlRtF12OOaQhdo+yjvA4TdLK3ibcigflV1atKWa
	nZvzb1uoXAUCOOxg1rRf48/TiUf4yuTCGURPtsi08dhYmlbtqWB/n3j6u6J1K+1q+BzT
	fRiLDfbnZvywMTS8GnSWJ9X5PODFfnAGoRZ0x87BVyky+lGwwvIvo8l+d6LCCPeHS35/
	q2uknd0BXb93GC0cYD3M8QRlC1D3xC7h57LupweoLHsPQGlAxZYdK/17s7HwFxEZruUY
	Jcnw==
X-Gm-Message-State: ALoCoQn64a7q0aAhVnMgEPb0Vz4WG2NDhoH9A2zP4RT6nSdEJMfcBdJH2NeN75jtmx1Uvx1kjET/
X-Received: by 10.140.32.119 with SMTP id g110mr27480155qgg.15.1445630971071; 
	Fri, 23 Oct 2015 13:09:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.82 with HTTP; Fri, 23 Oct 2015 13:09:11 -0700 (PDT)
In-Reply-To: <C748A84D-1FB6-46DA-BAD1-6FE6E0A82E76@gmail.com>
References: <C748A84D-1FB6-46DA-BAD1-6FE6E0A82E76@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 23 Oct 2015 21:09:11 +0100
Message-ID: <CAJTo0Lbd2953ZSVzC2KwqELaetpW3Y62EYuJZd8-f5UotbHz-w@mail.gmail.com>
To: durotimi1234@gmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External Build
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
X-List-Received-Date: Fri, 23 Oct 2015 20:09:35 -0000
Content-Type: multipart/alternative; boundary=001a1139bc1881e6d10522cb3060

--001a1139bc1881e6d10522cb3060
Content-Type: text/plain; charset=UTF-8

On 23 October 2015 at 19:00, <durotimi1234@gmail.com> wrote:

> install the build directory on an external harddrive. Every time I run
> through the steps I run into an error, no matter what I do.
>

What steps did you make to do the build on the external drive, and what was
the error?  Simply setting TMPDIR in local.conf is sufficient for this.

Ross

--001a1139bc1881e6d10522cb3060
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 October 2015 at 19:00,  <span dir=3D"ltr">&lt;<a href=3D"mailto:durot=
imi1234@gmail.com" target=3D"_blank">durotimi1234@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><span style=3D"background-color:rg=
ba(255,255,255,0)">install the build directory on an external harddrive. Ev=
ery time I run through the steps I run into an error, no matter what I do.<=
br></span></blockquote></div><br>What steps did you make to do the build on=
 the external drive, and what was the error?=C2=A0 Simply setting TMPDIR in=
 local.conf is sufficient for this.</div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">Ross</div></div>

--001a1139bc1881e6d10522cb3060--
