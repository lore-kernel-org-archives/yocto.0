Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B92E00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 02:24:52 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id j17so2349346oag.12
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 02:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s0Mk4UgCGHhtO91kc3GgRiUHwqA0Uoi/d+M/cbWuq5o=;
	b=b0auG7v31uCRdng3zphwmljK2zP6+1Q0LTdc7eQ4v8+eTpHpV2ftzwCxCpWaJSw2LQ
	cQRfHRK4w1/bTed7MkaP7kKtCyxQzE5oeFBjPUt9Vb2/lHughK9WXc1ewV5V58ZN/Rvu
	eaR2kVG03V1xgCf/KfOddOjB0QCFWgZWhKQrpXUoUgOMpCsJIw3umjWbGuWQVDw4OX++
	688U0UOHQRuyqD30dijb29OwUge+PoMOXvEdaep1YoZcuNHyz4JUFdhx/RTAEmnj1oKe
	bUhTw+Pk2Yj4cxahGeWNeooXB5rL6S1iYrLVN1IO2obP1z5YxQUaJb6slaAa8Tb+iXmX
	EW+w==
X-Gm-Message-State: ALoCoQmK136Qda1K8p0VQ4ZZO+wkOEFD3JnFui1Q6ZJHqXlX2JK7LzHzgQ3D21cZZMOKTza6naY+
X-Received: by 10.182.219.197 with SMTP id pq5mr511798obc.64.1394789091004;
	Fri, 14 Mar 2014 02:24:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.182.99 with HTTP; Fri, 14 Mar 2014 02:24:30 -0700 (PDT)
In-Reply-To: <5322C771.8070601@mlbassoc.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
	<5322C771.8070601@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 14 Mar 2014 10:24:30 +0100
Message-ID: <CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 09:24:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 14, 2014 at 10:10 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>>   CCLD   libgsttag-0.10.la <http://libgsttag-0.10.la>
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgstbase-0.10.la <http://libgstbase-0.10.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgobject-2.0.la <http://libgobject-2.0.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgmodule-2.0.la <http://libgmodule-2.0.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libgthread-2.0.la <http://libgthread-2.0.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libglib-2.0.la <http://libglib-2.0.la>' was moved.
>> libtool: link: warning: library `/opt/poky/1.5.1/sysroots/armv6-vfp-poky-linux-gnueabi/usr/lib/libxml2.la <http://libxml2.la>' was moved.
>> sed: can't read /usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>: No such file or directory
>> libtool: link: `=/usr/lib/libgstreamer-0.10.la <http://libgstreamer-0.10.la>' is not a valid libtool archive
>> make[4]: *** [libgsttag-0.10.la <http://libgsttag-0.10.la>] Errore 1
>>
>> The library configured for cross compilation. I'm starting from the sources patched as in yocto.
>>
>> Any help appreciated!
>
> Why not do these changes/development using your bitbake/Yocto
> build environment.  I've found that using quilt makes this quite
> easy to do and helps manage the changes, patches, etc.  It will
> also avoid the problem you are having which seems to stem from
> trying to build outside the original environment.

yeah. i would recommend that too. I find the externalsrc class quite
handy for such things. E.g. you can keep your git tree separate during
development, *but* still rely on OE to build, which I think gives you
the best of both world...

of course for your own applications, using the SDK makes sense.

nicolas

