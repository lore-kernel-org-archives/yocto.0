Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4B40E0076F; Tue, 10 Mar 2015 03:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47E56E00750
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 03:48:43 -0700 (PDT)
Received: by qgaj5 with SMTP id j5so582470qga.12
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 03:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=3reWUC2wvsxH+Mb6ywYDWeMZOUlPxf/14r9nf3c0Zw0=;
	b=ar2YG+zRAFwlWgaKvkjvIoOLr4/aa3bMpqiTH6vdKuktj++JA0WUaGhE1szQs67uwT
	Zj32OstKr2Rj7k44GmJUbKpPylx01JqW/2Dmag+CJmkA/cdEjHZk3wEkmkdpNzFa6ixv
	3RLQJ02q7bgbQbR/lZw688lUCAhAa1NVfpFBZv/Pk4XwaHpc37NCvsuhsiSXVkhvQHu5
	YFRHCGNJS2Yv+2xZScUmTtfgWuE0DmzLiVkNGMAXc8fXCYlGPKbPXSd/msH+7etMFu2z
	YN+JRuZ2IdKpI+TA2qUSfFSCz8lQJpi8cUVLHDnaylEM99w3z9uu721rLY3ZazljyIkk
	fnMQ==
X-Gm-Message-State: ALoCoQnLz0SIz1OJE8lQFRKyAo1xHldmhcV/1v0NlX2SBdcu8mHmh2BMfJx01mQWWWBO0c6h759B
X-Received: by 10.55.24.160 with SMTP id 32mr46327205qky.23.1425984522823;
	Tue, 10 Mar 2015 03:48:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Tue, 10 Mar 2015 03:48:22 -0700 (PDT)
In-Reply-To: <2B8B4B6BB45F5242AFEC714E022A4B4A276D2A5F@IRSMSX101.ger.corp.intel.com>
References: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
	<2B8B4B6BB45F5242AFEC714E022A4B4A276D2A5F@IRSMSX101.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Mar 2015 10:48:22 +0000
Message-ID: <CAJTo0Lbj1cCRGZQYMwaB-uzO=gVthbK8LPYNho9g3RjEN=cM7g@mail.gmail.com>
To: "Constantin, Costin C" <costin.c.constantin@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intel BSP for Rangeley
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
X-List-Received-Date: Tue, 10 Mar 2015 10:48:45 -0000
Content-Type: multipart/alternative; boundary=001a11441462f03eff0510ece4e5

--001a11441462f03eff0510ece4e5
Content-Type: text/plain; charset=UTF-8

On 10 March 2015 at 08:15, Constantin, Costin C <
costin.c.constantin@intel.com> wrote:

> A good starting point would be the genericX86 or genericX86_64. We use
> these BSP images to test on an Atom PC.


genericx86 is fine but better BSPs are intel-core2-32 and intel-corei7-64,
in meta-intel.

Ross

--001a11441462f03eff0510ece4e5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 March 2015 at 08:15, Constantin, Costin C <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:costin.c.constantin@intel.com" target=3D"_blank">costin.c.cons=
tantin@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">A =
good starting point would be the genericX86 or genericX86_64. We use these =
BSP images to test on an Atom PC.</blockquote></div><br>genericx86 is fine =
but better BSPs are intel-core2-32 and intel-corei7-64, in meta-intel.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--001a11441462f03eff0510ece4e5--
