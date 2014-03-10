Return-Path: <sheerapthinath@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB2AE00AE0
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 07:24:06 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id jw12so7284999veb.27
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 07:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=E2IUt6vF/B0n6NCh8tvQu5bjPZUyiG0e2uoYohx9jOM=;
	b=pxmlpTm0BFLGN4WVtIIMSD+sJD0909Ga53Mkh9+4fLc1dbO36MjdthbMOvX7z4f4GO
	F2jvm4tGZNJwo8SdFR1MuFZXl202qkya1+kBPyOnDhkfVJmksQ/N96suFoGNGzQ0/x/r
	EJigw55+gkb9UJM6zv96h0Ug/3KMz10eeNNnWmMlcZRat2DXtMxQHJ9fhBivqKkNFx1e
	47I71Lxz2PIFibrhx9YUfgDD8mdTqNcp2xTrxU4+cMjClntBVvKiwapdmn5ComrYNJKT
	D9TMlOKZJeEWOWqFuPkKzmgXoXDyhXy7+jr/7fofHPmfEty/UGkb9YNIf8R40MML6TTV
	8NRA==
MIME-Version: 1.0
X-Received: by 10.58.201.5 with SMTP id jw5mr22176927vec.6.1394461445452; Mon,
	10 Mar 2014 07:24:05 -0700 (PDT)
Received: by 10.58.29.169 with HTTP; Mon, 10 Mar 2014 07:24:05 -0700 (PDT)
In-Reply-To: <CAJuQfSgs-VXaAsEWnhshs9CGK2tBz0gOkH6tZtFZ13Q700hU=Q@mail.gmail.com>
References: <CAJuQfSgvi8bDwg3kbUa7UyP3=dPiT-YYcjFZGDVCer+NiURGCg@mail.gmail.com>
	<CAJuQfSgs-VXaAsEWnhshs9CGK2tBz0gOkH6tZtFZ13Q700hU=Q@mail.gmail.com>
Date: Mon, 10 Mar 2014 19:54:05 +0530
Message-ID: <CAJuQfSjDGTjh7RxRrmv4s-2Rf3R7o6AbinbC5iEyAZjk5hjTsw@mail.gmail.com>
From: sheerapthinath <sheerapthinath@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Autotools not configuring
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
X-List-Received-Date: Mon, 10 Mar 2014 14:24:08 -0000
Content-Type: text/plain; charset=ISO-8859-1

Can anyone please tell whats wrong with the recipe and why am getting
this error?

On Sat, Mar 8, 2014 at 7:31 PM, sheerapthinath <sheerapthinath@gmail.com> wrote:
> On Sat, Mar 8, 2014 at 7:26 PM, sheerapthinath <sheerapthinath@gmail.com> wrote:
>> Hi,
>>
>> I am new to yocto and trying to build a package for raspberry pi.
>> I am using the BSP layer from https://github.com/djwillis/meta-raspberrypi.
>>
>> Am able to build the image using BSP without any problem. But when I
>> added a new layer to add packages, am getting error.
>>
>> I tried testing with the hello world auto tooled package. When trying
>> to execute that bb, am getting the error as follows,
>>
>> make: *** No rule to make target `install'.  Stop.
>> | ERROR: oe_runmake failed
>>
>>
>>
>> --
>> Regards,
>> Sheerapthinath OS
>
> My bb file is as follows,
> DESCRIPTION = "Dummy"
> SECTION = "package"
> LICENSE = "CLOSED"
> PR = "r0"
> SRC_URI = "file://hello/"
> inherit autotools gettext
>
> After executing this bb file, i took a look at the logs of configure.
> It says nothing to configure. This hello world is the dummy auto
> tooled packed downloaded from yocto site.
> Please help me with what's wrong with this process am following?
>
>
> --
> Regards,
> Sheerapthinath OS



-- 
Regards,
Sheerapthinath OS

