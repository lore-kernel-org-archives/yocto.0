Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61BE9E00894; Wed, 21 Jan 2015 05:37:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f48.google.com (mail-yh0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54517E0086E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 05:37:39 -0800 (PST)
Received: by mail-yh0-f48.google.com with SMTP id a41so6796719yho.7
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 05:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=7+G3lpbloj71P/908RR6mHblIhZD0qlkIq0TU59hsIA=;
	b=P927Sq2J2yDywy+ilaVL7eU9l3A2IBzstJfwtmYdXUC87s8SkntKloC58X5EHEh49P
	7DI7Ae3JRIvFjHycA+h/db8iWLti6c93D9cPB2YFHnoeYfTmsYOWCpDMItUUn+6sTNlb
	rKQmzFEH4x4ur9ZsvzrZtfxzir3GjoLT4/HZ30W8BnW/YpQ5jfMd0nI2LkYFxUHRWlPI
	q2+Pn9qsvOraKxn/jEEyP/xrCoS26FZR1R7v11Hw/GX6M/MaUNAxoECDF68e5Nsbnk6s
	oads9xzku5NACM+5Kocdh9BOepleYZNgHJNKKOBrA82oa7wGGx3FrwChNTie+NbpGINJ
	4NNA==
MIME-Version: 1.0
X-Received: by 10.236.109.130 with SMTP id s2mr18668467yhg.67.1421847458973;
	Wed, 21 Jan 2015 05:37:38 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.171.132 with HTTP; Wed, 21 Jan 2015 05:37:38 -0800 (PST)
In-Reply-To: <CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
Date: Wed, 21 Jan 2015 11:37:38 -0200
X-Google-Sender-Auth: iqLx300xJRQc6aPvk8htjdiaDqs
Message-ID: <CAP9ODKq85m2Cb_DoVgh9+Wi=zjAJc-MmrGAo58h347zd+UUOgQ@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Raphael Philipe <rapphil@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto <yocto@yoctoproject.org>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Wed, 21 Jan 2015 13:37:52 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 21, 2015 at 11:23 AM, Raphael Philipe <rapphil@gmail.com> wrote:
> I was explained about the difference in a different way.
>
> cross generates binary for the host architecture. But the way this
> binary is generated depends of the target architecture. Native
> generated binaries that do not depend of the target architecture.

Yes; basically:

cross: generates a binary to run in the host system but dependant of
the target (e.g: binutils)
crosssdk: generates a binary to run in SDK host system but dependant
of the target (e.g: binutils)

native: generates a binary to run in the host system and has no direct
dependant information of the target
nativesdk: generates a binary to run in SDK host system and has no
direct dependant information of the target

The cross use is not very common because most of stuff fits in native
or target cases. However some specific utilities ends on this group.

The fw tools inside of U-Boot qualifies for both target and cross use
cases. When used in cross or crosssdk, it can be used to change things
in the generated image (sdcard for example) while in the target case
it can be used in the runtime system.

I hope it is clear now. If someone can add more info here, please do.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

