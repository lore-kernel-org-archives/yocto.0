Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E85F4E00DC4; Mon,  6 Jun 2016 03:06:56 -0700 (PDT)
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
	*      [209.85.214.43 listed in list.dnswl.org]
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0365E00D95
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 03:06:52 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id z189so38448009itg.0
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 03:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v4H9YFFn5ot8yBh1h6NjOl4J+Lu+o8Voj7IT/3NVYDQ=;
	b=YNZ4Fjj7yRCvAnRJ42WXASbM9tpw2xCyjbY/y3PRwatjM8G4BPFD1QEBeVyth9R4Mz
	jVDa8b7rBtVt8CxB4OFKjYqlITI1Yv4Eso0z7AbPYIB8BIg/yoiDnV4CL2a16/UXmRO/
	99Ryo7vdpZVsbNz0pUtBmu/0dOTNthLguT9cymWLLoWk0Tll9nfSPEKiMbFKZrKIHQ5i
	Busd5jWITXSzIFkdZC1NCKCFKuAMDnxBzFMHNjO6RTnSkdeNvKRwHnQPWIuRKz8YwPY6
	kaB//W3BL6LbWWUZOHjMNZR29RB5mDUh71K3CFiZ/nipAK6OGJSo19hSo41OoQUtjO9x
	k/8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v4H9YFFn5ot8yBh1h6NjOl4J+Lu+o8Voj7IT/3NVYDQ=;
	b=bBMZVEEKkG6afnuxgypQn31xOE3Sf7qHVcCR4ColprUcb2E3Hk8UX7g3OpMf9bGqI5
	0TNzNGIUi/dPxemqBzUSZKrzSVLm47MbKySow66oUyAuUm3CZPNCIwOyQ/AmP4H8wO9e
	ymDL9kOZZVE2hfva0P3or77E0W9OVVH/h1tgenBoDCmXL5jf9QKS7fY9Go/874HNjUBL
	ooW+KDUhg4qYwGDOyLqUBj4OUxANZN6W0YCEdLuCa655j/NXt3qL11NYhw7mf6pVrNk4
	5kHbe+B9DJGYjoOPmaQwPWfZILEDMSF0ze3y//mMLAQYj0IflVYmIAW3vs9gC0zvmmFX
	mnSQ==
X-Gm-Message-State: ALyK8tIqXFmcuVMjjF518HUzG15xS1cigwvS58NvassQfhts80mK2JlPpoaKH/p/jO+X405ge+GNwBQLF+2bIoxG
X-Received: by 10.36.2.71 with SMTP id 68mr15554371itu.38.1465207610948; Mon,
	06 Jun 2016 03:06:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Mon, 6 Jun 2016 03:06:31 -0700 (PDT)
In-Reply-To: <OFFAB40F65.5F400D73-ONC1257FCA.0034806A-C1257FCA.00350F2B@esa-grimma.de>
References: <OFFAB40F65.5F400D73-ONC1257FCA.0034806A-C1257FCA.00350F2B@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Jun 2016 11:06:31 +0100
Message-ID: <CAJTo0LbWRBBLht1m2t+S5Xma8Kaf81Xjoi9ioJrt8QDQD=3ATQ@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to execute a git submodule init/update?
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
X-List-Received-Date: Mon, 06 Jun 2016 10:06:56 -0000
Content-Type: multipart/alternative; boundary=001a1144b1d02c525e0534993b01

--001a1144b1d02c525e0534993b01
Content-Type: text/plain; charset=UTF-8

On 6 June 2016 at 10:39, <S.Jaritz@esa-grimma.de> wrote:

> I have a git source which need some submodules. For that I need to execute
> "git submodule init" and "git submodule update". Any idea how to do it in a
> comon way?
>

Use the gitsm: fetcher, which will do that for you.

Ross

--001a1144b1d02c525e0534993b01
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 June 2016 at 10:39,  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jaritz@=
esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I=
 have a git source which need some
submodules. For that I need to execute &quot;git submodule init&quot; and
&quot;git submodule update&quot;. Any idea how to do it in a comon way?</fo=
nt>
<br></blockquote></div><br>Use the gitsm: fetcher, which will do that for y=
ou.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a1144b1d02c525e0534993b01--
