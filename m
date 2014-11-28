Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D63CE00972; Fri, 28 Nov 2014 03:22:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 001D8E008EA
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 03:22:38 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id v10so4391092qac.35
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 03:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=8MAnBteULd4h8vbz2HkuWlPBoqpGuhZzXyj6RyImNCY=;
	b=sn+Lq3/6jt1zAXGb3WakfR3AGrb4pXQlcvgQ0javv7xlnCm9Ogc7t4uEOe998l52Bx
	LU6GVvqpu8MmcD9nRBU0KE/AIoBCQKTq7LXkbchMkEjlm17ZIkvjI+7CKf0cZG5q+24p
	/1v05WWtcZctjoAtlHDsakXaJjvV7/1GPW4mPEU5t4uW55ODD70KDFfW7MhFEm1ESQz0
	WP+Sx886P7T1onlBtWVXOB/XDrwMFl/vPxKWKW8erksbADw5WSnGTVKXTORsI8Cxd2SK
	73rk3roYeAJSXSRhrVe2p1DolLxOppzV0yBzDFzijLi/7XGxerlpLQxdluizo3bm23MA
	lsoA==
X-Received: by 10.224.43.2 with SMTP id u2mr47507482qae.36.1417173757840; Fri,
	28 Nov 2014 03:22:37 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.143.146 with HTTP; Fri, 28 Nov 2014 03:21:57 -0800 (PST)
In-Reply-To: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 28 Nov 2014 11:21:57 +0000
X-Google-Sender-Auth: 6okVgCvk7RN-aHik3ZR3zqipzlM
Message-ID: <CANyK_8dXPEHPYDYXdpggbn7LQ879dwT0Z6v0k_aF+sOE71krjQ@mail.gmail.com>
To: Chan Kit Yu <yuchankit@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Fri, 28 Nov 2014 11:22:40 -0000
Content-Type: text/plain; charset=UTF-8

On 27 November 2014 at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
> Hi all,
>
> I'm not sure if emailing this is the most appropriate way and I
> apologize in advance if that's not.
>
> I have some scripts that require /usr/local to exist in Yocto and
> therefore I need to a recipe to create /usr/local directory. I tried
> to accomplish this with a simple recipe but that proved futile.
>
> Although bitbaking that particular recipe was fine, trying to include
> that package in local.conf resulted errors and those errors are
> gibberish (it listed all the packages inside the image that I was
> trying to comple) . Here's my simple stupid recipe:
>
> SUMMARY= "...."
> LICENSE = "something...."
> ...
> ...
> INSANE_SKIP_${PN} = "installed-vs-shipped"

This line is hiding the warning that a file has been installed (copied
into ${D} by your do_install function) but not shipped (which means
placed in an actual package).

/usr/local isn't usually populated so isn't included in a package by
default, you can modify FILES_xxx to change what is included in the
package 'xxx'. In a recipe the main package name (which is based off
the recipe file name), is stored in ${PN}.

So basically, you need to add something like:
    FILES_${PN} += "/usr/local"

Also, you should never need to use INSANE_SKIP unless you're doing
something that is actually insane. Those warnings are there for a
reason!

>
> do_install(){
>      mkdir -p ${D}/usr/local
> }
>
> Is there a better way (or preferably the canonical way) to do this?
>
> Thanks,
> Chan Kit

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

