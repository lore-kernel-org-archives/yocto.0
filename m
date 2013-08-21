Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0297E00747
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 13:13:10 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id g17so646922vbg.14
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 13:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=K1ty8BSW4I1LGMpeQ/7g8mkJlLra9jdi2/yCrygBjTM=;
	b=UkM7ZTQRJLlIKjDQty8Odb2m0XjSErU44FemFBKsEfFy9PQlDblJEN9I3uxUHklRL5
	BwYu2TNyoqm89l5WlUeY8AEZp2Pg+acp00etjmjWMdP7EGAu2946Mqf2QD6o68MbqRfF
	6FWkqXYRgBUawkgsYGVky2lQDfEiXY01tpYl6XLTcjDi82rguL1ZMfF4gtoWxJQdUbAl
	/f7YyctYaGmjRq8n80iE/h+D48hGgbortSkvba0c4jvpVYE/T8xyhG3DnJ0hfZQSV1nM
	lGSu1RRTCXKsMYpU+IBeCiS80iq4KNK9Izjur92MbxCpCne7TNwrGoTSSsJjsVHgnjo7
	uR3A==
X-Received: by 10.52.30.48 with SMTP id p16mr6610675vdh.25.1377115990185; Wed,
	21 Aug 2013 13:13:10 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Wed, 21 Aug 2013 13:12:30 -0700 (PDT)
In-Reply-To: <CAK18fxE8JuUo3is2LbL42SEOsWfkDmr5CZFDuw9rOx_sgAvqaQ@mail.gmail.com>
References: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
	<CAK18fxE8JuUo3is2LbL42SEOsWfkDmr5CZFDuw9rOx_sgAvqaQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 21 Aug 2013 21:12:30 +0100
X-Google-Sender-Auth: 3X8RberH-bmzVDEx1wmu2gv78Zs
Message-ID: <CANyK_8dY=_=zTK+zq2oLq68=zOQuA9UkF=juJCRexo_rLWbzuA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Wed, 21 Aug 2013 20:13:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 August 2013 18:11, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Aug 16, 2013 at 1:48 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> +# Compression method to apply to SDIMG after it has been created. May be
>> "none",
>> +# "gzip", "bzip2" or "xz". Setting this to something other than "none"
>> will
>> +# cause SDIMG to be renamed.
>> +SDIMG_COMPRESSION ?= "none"
>> +
>
>
> One thing I don't understand here. Where is the SDIMG renamed if for example
> I set by mistake SDIMG_COMPRESSION to something like "this-is-a-mistake"? If
> I check your code this will be ignored as the case won't match any keywords.
>

Setting it to one of the other listed values will cause the SDIMG to
be re-named. I think the code is as I intended, the documentation
comment needs to be corrected though.

Actually I could just have the default be an empty string as anything
other than the understood compression types is ignored rather than
treated as an error.

> Would you mind adding the variable explanation to README too?

Will do.

I'll give this another spin this weekend.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

