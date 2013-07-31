Return-Path: <btraynor@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FBF6E013B0
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:54:30 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id hi8so3902838wib.5
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=DzeV7FoZZSzYcK7V3ptI7Geu5L6c9E51dpH5qAlCtN4=;
	b=S6VhQ4VSlbqUXct+YuqiHeFD5y755NEUX7cz/dq0ih83FwPX7CjTj8AQRWDzQ16nvS
	JRELRWX+gVVFpp5kK/7lOVzwS6gAeNB0MFc4h45KWxZUn0pCsghM6515JtY7gixdJy3C
	e7YTibVq8B75vz6XPSik9/2pEvoVlvZdLF9E27xJiW8XHGlvCipXGqFzZAwwfHIrI35R
	T1men3uDNW1JEd9rcEbC13pgpny8hnGGHXgkAyiBsKCQ3HjBgDZbcEiED+S074LXCVLT
	eL8XAmH/NxfLfNGhGWyshlPItGH1xF+Gb0Coa8oymzu4g3tvF+aylM61uccDl5aSiKzZ
	dYSA==
X-Received: by 10.180.21.229 with SMTP id y5mr5090575wie.17.1375293269900;
	Wed, 31 Jul 2013 10:54:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.85.166 with HTTP; Wed, 31 Jul 2013 10:53:49 -0700 (PDT)
In-Reply-To: <000c01ce8e14$762fb050$628f10f0$@annabooks.com>
References: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
	<000c01ce8e14$762fb050$628f10f0$@annabooks.com>
From: Bill Traynor <btraynor@gmail.com>
Date: Wed, 31 Jul 2013 13:53:49 -0400
Message-ID: <CAN20qYq25FEDAvYZJR3onLDbyVWbuQkaFz36-Cw-g_fYLZdofQ@mail.gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Minnowboard
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
X-List-Received-Date: Wed, 31 Jul 2013 17:54:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 31, 2013 at 1:36 PM, Sean Liming <sean.liming@annabooks.com> wrote:
> There is a BSP layer that is part of the meta-intel layer:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/

There's also the meta-minnow layer:
http://layers.openembedded.org/layerindex/layer/meta-minnow/

>
> Regards,
>
> Sean Liming
> Owner
> Annabooks
> Tel: 714-970-7523 / Cell: 858-774-3176
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Paul Barker
>> Sent: Wednesday, July 31, 2013 10:33 AM
>> To: Yocto discussion list
>> Subject: [yocto] Minnowboard
>>
>> Hi all,
>>
>> So I've just read about the Minnowboard, an Atom E640T single-board
>> computer.
>>
>> http://uk.farnell.com/circuitco/minnowboard/atom-e640t-platform-
>> sbc/dp/2319581
>>
>> The datasheet says "Yocto Project 1.3 compatible" so I think I'll be
> buying
>> one!
>>
>> Does anyone know what layer the support for this will be in? I'm wondering
>> whether it's in meta-yocto, meta-intel or something Angstrom-specific.
>>
>> Cheers,
>>
>> --
>> Paul Barker
>>
>> Email: paul@paulbarker.me.uk
>> http://www.paulbarker.me.uk
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

