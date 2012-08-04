Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D64E00718
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 09:31:44 -0700 (PDT)
Received: by eekd41 with SMTP id d41so497996eek.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 09:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CeVJxLGQY+TawxiQMk/fSwFTkNpZhSz0DzK6k9cRx1A=;
	b=kWmrkuro3g+AGdLONWQVzdayYunPTHsd2i+nHvoYle4FPwIWSpMz3XACQWZW5Df7HL
	qBEUGBZEkQMRYEDmPtcVq0cxMkbKFAYj6iHKU1rq2wHd18J/WPutf8afjGi+8mdsuWR2
	Z+lbyZJIydMPaB2rl8mdH7rVfK48foluQjl4UiQpIRPhZdoRouoeCkhmcyxaRSYz5Mlx
	iIw9ywyb23f/f6OAhGENgmnn1c0vzZWmYlxCgj80nXDplvdsAz8p0Qqk/T4+A6p5d3XX
	ESUDfAWZGKIopuDZVs0Ib2Z5/M3ord641fhqYrEm3iTr85gRfIpI7ojdvuSm0MOjdeCj
	/lLg==
Received: by 10.14.175.7 with SMTP id y7mr6504860eel.29.1344097903091; Sat, 04
	Aug 2012 09:31:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Sat, 4 Aug 2012 09:31:12 -0700 (PDT)
In-Reply-To: <299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 4 Aug 2012 09:31:12 -0700
Message-ID: <CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Sat, 04 Aug 2012 16:31:45 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 4, 2012 at 8:12 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> /lib/ld.so.1

does this file exist on target ?

