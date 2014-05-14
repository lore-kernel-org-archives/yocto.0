Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE840E006EF; Wed, 14 May 2014 12:58:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 483 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 12:57:57 PDT
Received: from mail-ve0-f169.google.com (unknown [209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CA1BE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 12:57:57 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id jx11so69600veb.28
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 12:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=WJS3mfSPMC+O/ZpbDbyDlCu4pF0ygVYVvKoIdNnidoM=;
	b=eF4hUb/AoPV9zUNJ4ijswNYNIArXciiQPKJryXSt5+P7Mz3/R2ZQJwMxQKUZazJgzw
	HXWzUAMBqNXcYisJQPDJUNocgZNTjcKVHelERChTvZuyneFUXPRv3WbOgFF2AUHvlfbu
	kpvQVNNQJczucdF4JWaqC+MzDCFRam35N7b5QlgWBsVB0YVTbKf+w6vkecue3XqHqykK
	+W05kt0XF2nICumqscsAaXW3G5Jx9+m2VmwCRFOaaZOBN0wMFhEUjiiUZu5G8dVoyg8F
	4YgV8AXKKMrA5vp88VXezJdsQYI/GGl/lx6hsRlU2k2Z9yRI3RH4/R2mlSyb7z/BSSPF
	Mr0w==
X-Received: by 10.52.95.171 with SMTP id dl11mr3730027vdb.36.1400096993953;
	Wed, 14 May 2014 12:49:53 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Wed, 14 May 2014 12:49:12 -0700 (PDT)
In-Reply-To: <5373B0AB.4070204@mlbassoc.com>
References: <5373B0AB.4070204@mlbassoc.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 14 May 2014 20:49:12 +0100
X-Google-Sender-Auth: 6xXBv0-OlqPwwq7dBORpDB9BziA
Message-ID: <CANyK_8cS8QpPo9QyXuyU7NZ=ru7=CpYK+KLv9zch=mZEq-J3pg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Where did my preferred version go?
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
X-List-Received-Date: Wed, 14 May 2014 19:58:01 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 19:06, Gary Thomas <gary@mlbassoc.com> wrote:
> I have a number of platforms which [for whatever reason]
> need older versions of GCC.  I've been supporting this by
> keeping the older code around in my own layers - I need
> 4.7.x for some targets, even 4.6.x for others.
>

You're probably better off having these platforms built off an older
branch of OE.

I run multiple 'projects' (for want of a better term), one on dylan as
it needs a 3.2 series kernel, two on daisy and one on master. That is
a lot less painful than trying to shoehorn everything onto the master
branch.

Hope this helps,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

