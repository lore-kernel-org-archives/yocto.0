Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B08B9E0054B
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 10:52:20 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id fq13so2886214lab.0
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 10:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=3vkBvv2bQNR8LYsGH45x3NKk9ovjlnnz7OlFOMA3byQ=;
	b=R82ecd/ZU9pwDykITYLbqkoPG/RxAoR/MHqn0ieT5QTmp11y0jFN8xXaX1I+ACfNcp
	jbINnxDb63GsQhosXqDnIs/UuwE7R/MVWbs7RYhMO2E5BhEYXVjXGLqITSjLwCwBPtPi
	yOYvdzcJtTQeRKnzY1ZXPBuWBGTItp0XuJHBgsemsMmXoSYrjdwDundzXOjH1JZy+s8F
	KherLdM/tRMztv+9BxTsJG9veAJtofMsVr+Sy8WGYSHcJ78dzowuIOxecS8eqjiEFBy5
	7EIMGetkLPwwZzJMr5fgccf2kJpWynsPutFzS+VMNiO2taVzvG+A2lID10OYPiKChXnK
	WQDQ==
MIME-Version: 1.0
X-Received: by 10.112.142.234 with SMTP id rz10mr18717186lbb.5.1366912338785; 
	Thu, 25 Apr 2013 10:52:18 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.112.22.66 with HTTP; Thu, 25 Apr 2013 10:52:18 -0700 (PDT)
In-Reply-To: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
References: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
Date: Thu, 25 Apr 2013 10:52:18 -0700
X-Google-Sender-Auth: qNQ5tNUxiwVkOHch9NrC1pYSd0s
Message-ID: <CA+YB3rZELOm4yvYoFeR7==W-Kzi=Xye3hN3XKcV+wJBHXXwuWQ@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Nicolas Dechesne <ndec13@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Compliance program questions
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
X-List-Received-Date: Thu, 25 Apr 2013 17:52:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Nicolas, thanks for asking these questions. We are in the process
of revising the documentation and application forms for that program,
so your questions come at a very good time.

I have a few answers:

On Thu, Apr 25, 2013 at 8:36 AM, Nicolas Dechesne <ndec13@gmail.com> wrote:
> Hi there,
>
> I have a couple of questions regarding the compliance program. If
> there is a better place for asking such questions, please let me know.
>
> I have studied the Yocto compliance documentation, [1] on the website,
> and I have the following questions:
>
>  - is there any 'practical' guide with "do's and don'ts" to help make
> a sucessful Yocto Project Compatible registration?

We don't have a guide like this, but I can create one. I'm guessing
you are looking for guidance on how to answer individual questions as
well as how one answer affects the others, is that correct?

>  - i understand that while the project should build with the OE core
> toolchain, it is not required to use the OE core toolchain 'by
> default', so we should be able to provide our own modified/customized
> toolchain in our layers, is my understanding correct?

Yes - the project needs to be able to build with the standard
toolchain, but you can provide your own as well.

>  - it is recommended, but not mandatory not use the Yocto kernel, so
> we can use any mainline version in our BSP layers, right?

I believe this is the case, but I'll need to research & get back to you.

>  - is it tolerated to change the versions of some components from
> OE-core or meta-oe? Not just add patches through .bbappend, but
> actually use an older or a more recent version of components, let's
> say Gstreamer for example?

I don't think we require specific versions of any packages, but again
I'll have to research first.

>  - can we included new recipes for software programs not already
> included in oe-core or meta-oe in our layers, or do we have to
> contribute them back into oe-core or meta-oe before registration?

Yes, you can include new recipes (and packages).

>  - the Yocto project compatible registration is made against a
> specific version of Yocto. What happens when a new Yocto version is
> released? Should we go through the registration process again?

That is a question we have discussed quite a lot. The plan of record
is for YP Compatible products/projects to resubmit the form after
testing with the new version. However, that does create a problem if
someone has, for example, a dozen YP Compatible products. Plus, what
happens with point releases? These issues are under discussion & I'll
report back as soon as I have clear answers.

> thanks a lot!

Thank you for asking these questions!

>
> nicolas
>
>
> [1] https://www.yoctoproject.org/ecosystem/yocto-project-compliance-program
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

