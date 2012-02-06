Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63784E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 09:31:14 -0800 (PST)
Received: by pbcc11 with SMTP id c11so6523874pbc.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 09:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=x3DIeC8LhIHaXrm6Q+9ew+fL79X2yT2WVSf6Ig8jWUk=;
	b=l+H0mDa0kySVzMbQsyttcBMoI0l2Yqzerm2iBLPFHJojkiyR2cW/xC/NA64wnUHViQ
	4hQuyElAqYqATsU3dzEllTWJxpqo+Yo4PEd/nng2m3dlwkhYdomcqeIVI+o0yfdrAVOr
	HkFsEhSy5AgA+DHDsmrazMwkJh+ZdXHSelpAU=
MIME-Version: 1.0
Received: by 10.68.75.11 with SMTP id y11mr49045471pbv.51.1328549474168; Mon,
	06 Feb 2012 09:31:14 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Mon, 6 Feb 2012 09:31:14 -0800 (PST)
In-Reply-To: <001901cce4ee$8e71bdf0$ab5539d0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
	<CAMKF1srLO9pd57iUBRTRb5i54gPk-mRu04nAue9XYUnTRrGWYQ@mail.gmail.com>
	<000701cce483$ffbda890$ff38f9b0$@sjjmicro.com>
	<CAMKF1sqvj6tTPLaasNR9RphshHhM2FGS1gS83LekeJR=UVo7Cw@mail.gmail.com>
	<000001cce49d$a4d2ab50$ee7801f0$@sjjmicro.com>
	<000101cce49f$d8aa3c70$89feb550$@sjjmicro.com>
	<001901cce4ee$8e71bdf0$ab5539d0$@sjjmicro.com>
Date: Mon, 6 Feb 2012 12:31:14 -0500
Message-ID: <CADzUK1LZS8VnT64odpnvmdpRz++U9QaO9qKivm06A2k6JD_xQQ@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
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
X-List-Received-Date: Mon, 06 Feb 2012 17:31:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Here is what I have - I started with a minimal ubuntu server and the
following command seens to get all the dependencies - the last few
(bison, flex and unzip) are not required - but are required for other
stuff I am working on.

I hope this helps with the documentation.

sudo apt-get install -y gcc g++ patch diffstat texi2html texinfo cvs
subversion gawk chrpath make libgl1-mesa-dev libglu1-mesa-dev
libsdl1.2-dev git libxml-parser-perl bison gettext flex unzip

On Mon, Feb 6, 2012 at 11:44 AM, Sean Liming <sean_liming@sjjmicro.com> wrote:
>
> Found the problem - missing package - libxml-parser-perl. It is not part of
> the setup. For any future reference, here is the fix:
>
> $sudo apt-get install libxml-parser-perl
>
> Ubuntu was a fresh install. I should have checked the docs in progress,
> which calls it out at the end.
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
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Sean Liming
> Sent: Sunday, February 05, 2012 11:21 PM
> To: 'Khem Raj'
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Error
>
>
> Searching further there seems to be different patches for perl-native for
> Ubuntu 10.04. Not sure what needs to be applied here.
>
> Regards,
>
> Sean
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Sean Liming
> Sent: Sunday, February 05, 2012 11:05 PM
> To: 'Khem Raj'
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Error
>
>
> How would I check if perl-native is staged? The intltool.inc has the updated
> Rudolf.
>
> Regards,
>
> Sean
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Sunday, February 05, 2012 10:30 PM
> To: Sean Liming
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build Error
>
> On Sun, Feb 5, 2012 at 8:01 PM, Sean Liming <sean_liming@sjjmicro.com>
> wrote:
>> @ autif- thank you for the tar file. Placed it in the downloads folder
>> and
> the error doesn't appear.
>>
>>
>> I added the two lines to the local.conf folder
>>
>> INHERIT += "own-mirrors"
>> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>>
>> I am not sure how to resolve the lib-xml-parser for intltool issue
>> based
> on the post.
>>
>
> checking for perl... /usr/bin/perl
> checking for perl >= 5.8.1... 5.12.4
> checking for XML::Parser... configure: error: XML::Parser perl module is
> required for intltool
> ERROR: oe_runconf failed
>
> it should not be getting perl from your build but from the native sysroot.
> is perl-native staged ?
>>
>> Regards,
>>
>> Sean Liming
>> Owner
>> SJJ Embedded Micro Solutions, LLC.
>> Tel: 714-970-7523 / Cell: 858-774-3176
>>
>>
>> -----Original Message-----
>> From: Khem Raj [mailto:raj.khem@gmail.com]
>> Sent: Sunday, February 05, 2012 4:00 PM
>> To: Sean Liming
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Build Error
>>
>> On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com>
> wrote:
>>> Did I miss configure something? Wrong python version?
>>>
>>> There was a post about the dash vs. bash shell. I am not sure what
>>> shell is supposed to be using:
>>
>> you could add something like below to your local.conf
>>
>> INHERIT += "own-mirrors"
>> SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"
>>
>> that should help a bit
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

