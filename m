Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBC5E01885
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 15:45:01 -0800 (PST)
Received: by mail-ie0-f175.google.com with SMTP id u16so1107836iet.20
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2013 15:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TM+PI+hnX7KhUBsJEimOwMKvRjGfSyyAD3YMX9Lyhh4=;
	b=qHgL/19ORzccvmID99AGrJxfWl1UpeX6292iAwAdvbaPy0qCkm2VZW2g7nTYk0t7lS
	cxgJWBoHjuq+Jha0CoIG6TdW3wRiUDHtVV7EFRbKnQbwrdnTXcJA/wfxtC6fa83Dc3HT
	7py3E1W2KIj1CCuw/IMz4ZENgPL5UJE2mL7HMNyhE3UKHUTHioeHJosOd7R0n/zj0JqL
	/GZq3Iq2N61Js5pUEBL2QH67N7lR+2KcuAkjidfZcXTcipguNxNVsh/cNJLWcX6KPCJe
	aOwjUjxexGE56LTNmnNB4FOAtXCLDBjoqXIuuej+uKi9SZN/nDUh2k4v26qykK6slM1x
	dt3Q==
X-Received: by 10.50.23.103 with SMTP id l7mr4358627igf.3.1383954300353; Fri,
	08 Nov 2013 15:45:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.79.167 with HTTP; Fri, 8 Nov 2013 15:44:30 -0800 (PST)
In-Reply-To: <CAJ7VayjsMagVYRU+rV_-uxaFNw6rY=dv2TtuHSYKh40WBeJXMA@mail.gmail.com>
References: <CAJ7VayjsMagVYRU+rV_-uxaFNw6rY=dv2TtuHSYKh40WBeJXMA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Nov 2013 15:44:30 -0800
Message-ID: <CAMKF1sqy6HUeazSfwROB9ziUALYeHEAG7nA3xaQYkBfQz5jXPg@mail.gmail.com>
To: sonia verma <soniaverma9727@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	llvm-announce@cs.uiuc.edu
Subject: Re: LLVM cross compiler for PowerPc
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
X-List-Received-Date: Fri, 08 Nov 2013 23:45:02 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Nov 8, 2013 at 1:12 AM, sonia verma <soniaverma9727@gmail.com> wrote:
> Hi all,
>
> I have ported Java based Opendaylight Controller on PowerPc board and have
> integrated JAVA on the same Powerpc architecture using meta-java with
> yocto.By default it cam with Zero port support which only works in
> interpreter mode.
>
> java version "1.7.0_25"
> OpenJDK Runtime Environment (IcedTea 2.3.12) (25b30-2.3.12)
> OpenJDK Zero VM (build 23.7-b01, interpreted mode)
>
> When I run Opendaylight.it takes approximately about 10 min for the
> Controller to start properly.
> However when i run it on x-86,it works fine.The Java -version at x-86 is as
> follows..
>
> java -version
> java version "1.7.0_25"
> OpenJDK Runtime Environment (IcedTea 2.3.10) (7u25-2.3.10-1ubuntu0.12.04.2)
> OpenJDK Server VM (build 23.7-b01, mixed mode)
>
> I noticed that the Java mode at x-86 is mixed mode whereas at that of my
> board is interpreted mode and I think this may be the reason for delay in
> starting
> When I enabled Shark support on the board,it resulted in LLVM compiler
> missing with yocto.
> Is there any other alternative to build java with shark on PowerPc.

llvm is part of meta-oe so you need to add meta-oe layer to your mix
and you will have it.

>
> Please help regarding this.
>
>
> Thanks
>
>
> Regards.
> Sonia
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

