Return-Path: <ashujain9727@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D26BE009A6; Wed, 14 May 2014 09:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashujain9727[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 407 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 09:58:10 PDT
Received: from mail-la0-f52.google.com (unknown [209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD335E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 09:58:09 -0700 (PDT)
Received: by mail-la0-f52.google.com with SMTP id gl10so1658722lab.39
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 09:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0W9Oh8oD78NN4kFg9aPO9ebY0zevCYJ9pZEykEWZ2PE=;
	b=LvPgwx0+Zpkyvu1qLcQrHPOfqsr1Sy19vsgRcfmX4NXeaUkJYvPCg4In/gVWuXtJzF
	cuk45snwX7LFcSASo9SVCgBDoPMG50WLaqGF1NN6MstH5Q3jpilaLVyJvIjAVqEazXN0
	RAT0lEsTkZJx8woC0yaVmY+AUMKoD7TOCSG5Sqh/2z3FyZsa3wayMf/YZF21WxAqIjHm
	DE4u4Sa/9LqZ3/OgQjS/Qz04tBcj2iWQsUfxda0zIWxwdC5PhzAHxMu75sEdZgFre5fL
	Ofj9np5wEYLXHoHOnyV949D42AJ0sPASle0Gu+cPIGD/3dpFPB9JOeSBWPnh7roRT9tR
	d0UQ==
MIME-Version: 1.0
X-Received: by 10.152.3.41 with SMTP id 9mr254429laz.86.1400086281613; Wed, 14
	May 2014 09:51:21 -0700 (PDT)
Received: by 10.114.12.195 with HTTP; Wed, 14 May 2014 09:51:21 -0700 (PDT)
In-Reply-To: <CAMKF1srcUVWsROCbuU8j6h44U3sNXYo0XhBa0YxpDTAFhYP5xA@mail.gmail.com>
References: <CAJ7VaygmmV7zNKMO+uCfY3VzoWEO5Z4kDOAqMfZDeq9o4qQ8ZA@mail.gmail.com>
	<CAMKF1srcUVWsROCbuU8j6h44U3sNXYo0XhBa0YxpDTAFhYP5xA@mail.gmail.com>
Date: Wed, 14 May 2014 22:21:21 +0530
Message-ID: <CA+9-LvuS5KQb3TMWOE2sRnUHCcJBeptxww28yqdxgGWYmAqs7Q@mail.gmail.com>
From: abhishek jain <ashujain9727@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: sonia verma <soniaverma9727@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kvm error
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
X-List-Received-Date: Wed, 14 May 2014 16:58:18 -0000
Content-Type: multipart/alternative; boundary=089e0103efc07875b104f95efd07

--089e0103efc07875b104f95efd07
Content-Type: text/plain; charset=UTF-8

Thanks Khem


On Wed, May 14, 2014 at 10:13 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, May 14, 2014 at 4:06 AM, sonia verma <soniaverma9727@gmail.com>
> wrote:
> > /usr/bin/qemu-system-ppc64 -m 512 -nographic -hda
> > /var/volatile/debian_lenny_powerpc_standard.qcow2
>
> may be debian mailing lists would be more helpful on this, is OE
> involved some how?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0103efc07875b104f95efd07
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Thanks Khem <br></div><div class="gmail_extra"><br><br><div class="gmail_quote">On Wed, May 14, 2014 at 10:13 PM, Khem Raj <span dir="ltr">&lt;<a href="mailto:raj.khem@gmail.com" target="_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class="">On Wed, May 14, 2014 at 4:06 AM, sonia verma &lt;<a href="mailto:soniaverma9727@gmail.com">soniaverma9727@gmail.com</a>&gt; wrote:<br>

&gt; /usr/bin/qemu-system-ppc64 -m 512 -nographic -hda<br>
&gt; /var/volatile/debian_lenny_powerpc_standard.qcow2<br>
<br>
</div>may be debian mailing lists would be more helpful on this, is OE<br>
involved some how?<br>
<span class="HOEnZb"><font color="#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href="https://lists.yoctoproject.org/listinfo/yocto" target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--089e0103efc07875b104f95efd07--
