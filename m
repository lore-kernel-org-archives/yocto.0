Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE76E00746
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 18:30:48 -0700 (PDT)
Received: by eekb45 with SMTP id b45so1872985eek.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 18:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=e8s3VxXvyknX1aAcgUO0TgP+CLf89BonoWTHFzzxHr4=;
	b=AMCX4LSOHlVNgouK/PUDNs5xHUAlmRe0KYAjmxkyNandLnYAAqE8ya+cCoxrmuAgKT
	YR0iaVJPyqek2yGJXVSQIG4lfmnYy58Qy7l73STCFsKHFs3Mcf4lwARAxmxKiMJ60B1P
	XTXz457OYA8PQ3M4GXF7ek/ihVfIuI6D3ua5OrvLjaUaWRqDRz0lCWpS1ZbsupWSCeKf
	UCILOfW6fFQVAhT7su8UrPFAq7IWb7pY/e5lwmjbp6lztc/A6blKoABssoml8+18NPJT
	I//YJrXHezGuFjSm9RIFsmG44RkleoQHavZk7Fy+pX1hSM9e96s78gRnHjr4oXdO2YKn
	xErA==
Received: by 10.14.97.16 with SMTP id s16mr2571486eef.117.1340674247284; Mon,
	25 Jun 2012 18:30:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 18:30:17 -0700 (PDT)
In-Reply-To: <4FE8E830.4040303@linux.intel.com>
References: <4FE8E830.4040303@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 18:30:17 -0700
Message-ID: <CAMKF1sp3Kj-Zs1p4w-_71PEmzVHGHHcOk9m0DBSabt8z=bet8A@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Required packages for Hob
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 26 Jun 2012 01:30:48 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 25, 2012 at 3:37 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> Hi Scott,
>
> Khem found he was missing some packages necessary to run Hob. Blurb from
> IRC:
>
> <khem> what is prerequisites for hob
> <khem> is it documented some where ?
> <khem> I am looking for kubuntu
> ...
> <khem> sudo apt-get install python-gobject-2-dev python-gtk2-dev
> <khem> may be it should be mentioned in some FAQ
> <dvhart> khem, it most definitely should
>
> Scott, do we have an appropriate faq for this? If not, perhaps the
> quick-start-guide should include them (it does not currently). The
> packages Khem lists are for Ubuntu.
>
> Khem, which version of Ubuntu?

this was kubuntu 12.04 LTS actually and it also needed xterm to be
intalled in addition to above two.

>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>

