Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0840E014E2
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 03:06:11 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id ht10so3633995vcb.18
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 03:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=FJVlNv636L0kuE6fxbyszDb5dUMLHjYgqMQcX2woY7Q=;
	b=tg3fRge/cR7sLtJ6CiYBRoQHOulMmFh8GrrKt5HGPzaPPeLPuUAjHmOhjYm+vI0mmy
	BSvid+u+YECqA39M2c/gUkMkID67UbGNzs+4g0PYn5FocytAIgIxCzqX8ouB2KpEwcT2
	94KEt/gsR0C26V4zpJrPII3EbJz6/Q7Sj5BlX50QT2QYKiJNU+zDGs4whzD8QGIBN+DY
	1x66IGa8/JRWLXDEh6bUnE3WoQ0HEw0AQ+di1Qd1LYtJ3y3mTo2ynjX9vaczT31UoOIN
	ArGyFbJQ0kwENmj4WEOX9/pBexHdS+i4/m3nkdo4Y8Czd+84i34nvMjEaNv2DeqSgigp
	YH6g==
X-Received: by 10.58.54.70 with SMTP id h6mr707638vep.36.1371636370500; Wed,
	19 Jun 2013 03:06:10 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Wed, 19 Jun 2013 03:05:30 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A52C4BE0FA9@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.11.1371063601.16784.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A52C4CCB36E@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<1371227894.20823.90.camel@ted>
	<17797116383D4341B029FDF34C22BF6A52C4BE0FA9@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 19 Jun 2013 11:05:30 +0100
X-Google-Sender-Auth: -aVt2DGTlwJjTNrJJP57xFNVm4A
Message-ID: <CANyK_8dcH02Agd_aHpOrihut4nBv_EEZRLv8J07E1rrjOAxDFQ@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto root permission issue
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
X-List-Received-Date: Wed, 19 Jun 2013 10:06:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 19 June 2013 10:51, Rohit2 Jindal <rohit2.jindal@aricent.com> wrote:
> Hi,
>
> I am facing issue in building sysconfig. Actually i want to compile everything with root permissions in yocto. Is there anything that supports it.
>
> Eg say i have binary called build-ucore with root permission but i am not able to execute this binary using default yocto permissions in do_compile or do_configure
> Can i change yocto default permission or run yocto with SU permissions .
>

What does your binary need root permissions for? The yocto build steps
are executed under pseudo which basically means they're pretending to
be root. Are you sure you need root permissions on the host (not the
target filesystem) to run your binary?

>
> ===============================================================================
> Please refer to http://www.aricent.com/legal/email_disclaimer.html
> for important disclosures regarding this electronic communication.
> ===============================================================================
>

May be worth noting that yocto@yoctoproject.org is a public mailing
list with a public archive.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

