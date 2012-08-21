Return-Path: <jefro.net@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 494A1E0027F
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:01:22 -0700 (PDT)
Received: by qady1 with SMTP id y1so127332qad.14
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 09:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=743D0efkjZq4fc7YfOKsnsr36B6u/lP43HSwFiqJcUI=;
	b=oDBxQ9A2W2qvbLE1CxOsHUvYR4cnnybjKg+3f6KfSv33Y5smCbBpQTeHSdfS99WOB7
	WcmdFBooQ3ok8y762ZVAcCHzRjKBgVt1TVSAKbHqQKtze7zyxNH9XirRiFpz6tlTKKU3
	r7e0x/bA/qQnVPUXbW8ssX6Y8RSjDs++Er37eaj8UWvfQSHybNylW3X+CiX+4MiujA+i
	bryF9VO3pBZbJpaatKQQ/AXb1kAmyXLVr88pUZaxZAmwytrSbld16NCeHP4xlqhRXjJh
	GFrQjs+mCZv5jPMrGFLblzEBJsBlZRYwS8Ib8F6C7sGo+YP6zYaf+NZuY2fjso3XEA7s
	nTeA==
MIME-Version: 1.0
Received: by 10.229.135.20 with SMTP id l20mr15195697qct.83.1345564881431;
	Tue, 21 Aug 2012 09:01:21 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.229.36.1 with HTTP; Tue, 21 Aug 2012 09:01:21 -0700 (PDT)
In-Reply-To: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
Date: Tue, 21 Aug 2012 09:01:21 -0700
X-Google-Sender-Auth: qySFqEyDRSpsFh2I1SGfqarUqpc
Message-ID: <CA+YB3rYnSio1LLL_awAUM55FaMwdQoxsyanopVTOmmNHmGRqwA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: aaryak gautam <aaryak.gautam@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Tue, 21 Aug 2012 16:01:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi - please take a look at the FAQ here: https://wiki.yoctoproject.org/wiki/FAQ

Near the bottom there are some technical answers, one of which is how
to add a single package:

Q: How can I add a package to my project?

A: As with any complex system, the real answer is it depends, but of
course that is not very helpful. The simplest method for adding a
single package to your build is to add a line like this to
conf/local.conf:

   IMAGE_INSTALL_append += " package"

Use your own package name in place of package. Note the leading space
before the package name.
For more information, read this chapter in the Yocto Project
Development Manual
(http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-addpkg).

I also highly recommend trying out the Hob interface, as it makes the
whole system easier to understand. I like to make changes in the Hob
and then examine those changes in the resulting configuration files to
better understand the system at work.

Hope this helps!

On Tue, Aug 21, 2012 at 1:26 AM, aaryak gautam <aaryak.gautam@gmail.com> wrote:
> Hello
>
> I am  a hobbyist and quite new to both Linux and Yocto.
> I had already compiled my Yocto kernel for I.MX23 successfully.
> But I want to add few packages.
> Like if i want to have ffmpeg in my yocto,how should I add it?
> I have gone through the documentation,but could not understand.
>
> can you help me out?
> I am using Bitbake core-image-minimal , not sato.
>
>
> Thank You.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

