Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6919E013A7
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 07:13:31 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id db10so1526249veb.12
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 07:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:content-type;
	bh=St06Tz6KoSLaFpcumNOQBli124nQ+QZAYCbt6SPBqss=;
	b=AuT8S2OuwLX/LdSPHY1pp+lMcR3FrNdX3iFfPQaRbZtmXq4RuvBw4zB8HJf1DSh7bJ
	gM7F2woVSANuGzhgSDISYEpNy5bMnoyq3wAspGXljDjoK6JoKdFLWS57CIhkub4B4ecP
	Bx7GpaBYKF+anOTuL63OtiJbNcKxZZcjRc5d4hIKlrzdf0Vy4kt/dQtEddZP2xtVncK+
	2ZpeYwIozOSovhl1bsrbbCNJCRIu+FnAjoDHnRqaj4C8iKb/BaBQ9kDqLLEuQe0CpYhP
	B2I5nBm+ROIfgvmeteL4HMJQpAlBi28I99Sa2qtG63/44Xohu/awNIXQBy+EfRQF6fRw
	+xaw==
X-Received: by 10.58.54.70 with SMTP id h6mr2189163vep.36.1374070410319; Wed,
	17 Jul 2013 07:13:30 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Wed, 17 Jul 2013 07:12:50 -0700 (PDT)
In-Reply-To: <1373728745-15435-2-git-send-email-paul@paulbarker.me.uk>
References: <1373728745-15435-1-git-send-email-paul@paulbarker.me.uk>
	<1373728745-15435-2-git-send-email-paul@paulbarker.me.uk>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 17 Jul 2013 15:12:50 +0100
X-Google-Sender-Auth: SeS58QsYUhQsfEPvii_g1agK1FM
Message-ID: <CANyK_8c8xiN6zwhm21oxB824iFXgz=rgqA0nwRDFzM+OOny6XA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-yocto][dylan][PATCH] linux-yocto: Fix SRCREVs in linux-yocto_3.2
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
X-List-Received-Date: Wed, 17 Jul 2013 14:13:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 July 2013 16:19, Paul Barker <paul@paulbarker.me.uk> wrote:
> The KERNEL_VERSION set by linux-yocto_3.2.bb in openembedded-core is 3.2.32 but
> the SRCREVs in the bbappend in meta-yocto-bsp referred to version 3.2.18. These
> SRCREVs are updated to the correct values.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>

I've finally tested this on a Beagleboard - kernel builds, boots and
'uname -r' gives '3.2.32-yocto-standard'.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

