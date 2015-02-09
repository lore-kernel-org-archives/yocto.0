Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A834FE00596; Mon,  9 Feb 2015 05:16:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 675A4E002F9
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 05:16:26 -0800 (PST)
Received: by mail-wg0-f49.google.com with SMTP id k14so26604569wgh.8
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 05:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UNXAT1B2h/fy2Hl2WX+7Q1BBD1L0KRmNXh14+AutMqw=;
	b=E46GHxM74X9DXd9mlwHVAnVTILuZ7ptSbwPPhfYHI9OnkJjhnzWFQfOkjFM8MzJe/n
	k49G4xI0W5+38wIAF0ZNGCx8A6K7lnxIC9ntu9huoW4IGbZLFpKEa44Ye5+FSJ7ZwzJC
	7B9zdfkL35i2V6FWP8K5j6xhod0hqXGLduGRmpUxsc6TrEBNYHgF4nce1H03RGLir0Zk
	5+mAolNr6P9m93F3LxuSr4xb+0wOAsjWDE5Y1UAgt25obbAcu54z4ZekRfRW4zU8zfjI
	TCbLBjcAipJ2+xP7bAIyS+wZnhGSZch5ekk9VcwKczuOCiT5YSVOYPcIiqNsKcXa8rca
	pWcA==
MIME-Version: 1.0
X-Received: by 10.194.175.39 with SMTP id bx7mr42725079wjc.22.1423487785812;
	Mon, 09 Feb 2015 05:16:25 -0800 (PST)
Received: by 10.217.8.9 with HTTP; Mon, 9 Feb 2015 05:16:25 -0800 (PST)
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A34C510@AZ-FFEXMB01.global.avaya.com>
Date: Mon, 9 Feb 2015 07:16:25 -0600
Message-ID: <CAK5mtew20WE6O2rAuNNTqMpFU2jydOBoHYVnqzRxODD5EAGvAw@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple packages from single recipe file
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
X-List-Received-Date: Mon, 09 Feb 2015 13:16:30 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 9, 2015 at 4:51 AM, Bipnesh, Abhinav (Abhinav)
<abhinavbipnesh@avaya.com> wrote:
> Hi,
>
>
>
> I was looking further into the document to find a way to define multiple
> packages from a single recipe file. As in current recipe I have written a
> do_install() function for putting files in particular directories. So it
> copies files from ${S} to ${D}.
>
> But some of the documents talk about multiple package something as below
>
>
>
> FILES_${PN} = "\
>
>     ${bindir}/* \
>
>     ${sbindir}/* \
>
>     ${libexecdir}/* \
>
>     ${libdir}/lib*.so.* \
>
>     ${sysconfdir} \
>
>     ${sharedstatedir} \
>
>     ${localstatedir} \
>
>     /bin/* \
>
>     /sbin/* \
>
>     /lib/*.so* \
>
>     ${datadir}/${PN} \
>
>     ${libdir}/${PN}/* \
>
>     ${datadir}/pixmaps \
>
>     ${datadir}/applications \
>
>     ${datadir}/idl \
>
>     ${datadir}/omf \
>
>     ${datadir}/sounds \
>
>     ${libdir}/bonobo/servers"
>
>
>
> FILES_${PN}-dbg = "\
>
>     ${bindir}/.debug \
>
>     ${sbindir}/.debug \
>
>     ${libexecdir}/.debug \
>
>     ${libdir}/.debug \
>
>     /bin/.debug \
>
>     /sbin/.debug \
>
>     /lib/.debug \
>
>     ${libdir}/${PN}/.debug"
>
>
>
> But I am not getting how the source for such file will be determine as in
> our project files will be present in different directories and need to be
> placed in some predefined paths.
>
>
>
> So how we can achieve the same.
>
>
>
> Thanks,
>
> Abhinav
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


Hi , basically the yocto recepeis work exactly as an spec file:

www.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html

The scenario you mention is possible:

rpm5.org/docs/rpm-guide.html

Hope it helps

Victor Rodriguez

