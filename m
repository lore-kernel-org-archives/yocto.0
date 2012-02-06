Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m020-f176.google.com (mail-lpp01m020-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D95B1E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 22:30:04 -0800 (PST)
Received: by lboi15 with SMTP id i15so1295887lbo.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 22:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=eMrmwJ4nUd5e8GPuk9UepRNxqnpf609NMarfjHwTjac=;
	b=O3qDWMxjsxBWxBstTeUo5nds6FdgVu/VxNn6CB2MLK2seZeECJ/+ev+2WAL740T52D
	fb3ityRchUR+ZGucHkvMACiymiaAZFXGvFPeTku3/XHMrNsWL9x/8UQgWuAXVdXXQxL9
	ZlY/NOp7o68VJju8X19pbBwkm2ZuwkiweCRj8=
Received: by 10.112.101.34 with SMTP id fd2mr4355834lbb.16.1328509803267; Sun,
	05 Feb 2012 22:30:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sun, 5 Feb 2012 22:29:33 -0800 (PST)
In-Reply-To: <000701cce483$ffbda890$ff38f9b0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
	<CAMKF1srLO9pd57iUBRTRb5i54gPk-mRu04nAue9XYUnTRrGWYQ@mail.gmail.com>
	<000701cce483$ffbda890$ff38f9b0$@sjjmicro.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 5 Feb 2012 22:29:33 -0800
Message-ID: <CAMKF1sqvj6tTPLaasNR9RphshHhM2FGS1gS83LekeJR=UVo7Cw@mail.gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Mon, 06 Feb 2012 06:30:05 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 5, 2012 at 8:01 PM, Sean Liming <sean_liming@sjjmicro.com> wrote:
> @ autif- thank you for the tar file. Placed it in the downloads folder and the error doesn't appear.
>
>
> I added the two lines to the local.conf folder
>
> INHERIT += "own-mirrors"
> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>
> I am not sure how to resolve the lib-xml-parser for intltool issue based on the post.
>

checking for perl... /usr/bin/perl
checking for perl >= 5.8.1... 5.12.4
checking for XML::Parser... configure: error: XML::Parser perl module
is required for intltool
ERROR: oe_runconf failed

it should not be getting perl from your build but from the native
sysroot. is perl-native staged ?
>
> Regards,
>
> Sean Liming
> Owner
> SJJ Embedded Micro Solutions, LLC.
> Tel: 714-970-7523 / Cell: 858-774-3176
>
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Sunday, February 05, 2012 4:00 PM
> To: Sean Liming
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Error
>
> On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com> wrote:
>> Did I miss configure something? Wrong python version?
>>
>> There was a post about the dash vs. bash shell. I am not sure what
>> shell is supposed to be using:
>
> you could add something like below to your local.conf
>
> INHERIT += "own-mirrors"
> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>
> that should help a bit
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

