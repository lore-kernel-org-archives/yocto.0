Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 47C45E014FE
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 19:58:20 -0800 (PST)
Received: by mail-pb0-f41.google.com with SMTP id um15so5438910pbc.28
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 19:58:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=noKEPXXWTgFnMsi2+gt90X0S//1vF7NpOhhBCe7U3qE=;
	b=QW6ZyYRP20zfkCtUIHCSu2fR4FDPxAlP6MABNy4SZEFGLP126iecxL6LXsarkfMNTQ
	zG9pxzJFmh5g6XfKOd2Vgfexk2yOlLVN1T+Efzzlgr151df/7GCcxPkK2ZiO3hwU/mQ5
	o3vv7RIKYSTzTMXvNDRUDYzR8eVuZJblORl9Zg45QmbB4eDl8gArPVkcCbGytbzDjNj5
	V+6IhXa44hTpmlG6oFJUnQ1Xr+m6j52kLeiDK3U3Ktm0c3s649jN7lkm3iScMvBn0bpQ
	oEMu/z8UxSjH1eQmz5aW5vQFrCk2ABGpPnchtoV5MPaHETAroeO6hA3rCSpk/NHi6hbv
	WAHQ==
X-Received: by 10.68.229.104 with SMTP id sp8mr43086585pbc.68.1362542299775;
	Tue, 05 Mar 2013 19:58:19 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id ab1sm29397729pbd.37.2013.03.05.19.58.16
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Mar 2013 19:58:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
Date: Wed, 6 Mar 2013 07:58:11 +0400
Message-Id: <D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Wed, 06 Mar 2013 03:58:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi Khem,

On Mar 6, 2013, at 6:58 AM, Khem Raj <raj.khem@gmail.com> wrote:

> I dont have a public repo for gcc its too big to host. You can just do
> a normal patch
> process on gcc in work-shared using quilt That should work

I've already started doing this. If I get the compiler support for 
MicroBlaze built and tested, I'll send across the patches for
inclusion.

The Xilinx Series -7 FPGAs without an ARM core will require
a MicroBlaze processor (Artix-7, Kintex-7 and Virtex-7).

The Xilinx mb-gcc toolchain was built using crosstool-ng, but
I'd like to build it using Yocto.

Best regards,

Elvis Dowson

