Return-Path: <gizero@gmail.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A9AE013DA
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:25:51 -0700 (PDT)
Received: by mail-vc0-f177.google.com with SMTP id gf12so6964259vcb.22
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 03:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0pZDilzvb2jRvrWVc2YN8COCNtBdKyKdAl1OzF35Pok=;
	b=TJKNU47aoch5lk4Y/EhdBVR1/5a2DFOn0qpohSkvG20A6UFBoggsUUxU/2jXYGnK1G
	whz2drkX4Hx2IlTbyS+7I8zJB2XtYRQhWuDN4frC2chCEaPzdS+mad9oZylFqCmkESfI
	XjjFxq2wKJ5VwoMHAemWVztbWYokFYKKQOK74YmT7au5EgcBiEKx1VPi0TT/X9Ap9Phu
	tWADMvwXyurGk7QnbijWqIHji8RYwledCzvNlitKnNUadTXGqrjmFmbE+AwVhc3JcWJk
	DkkNpBNb8ZfiqEzge9uycGocQQov6oprr9HK9PgmckMv1XeBHPN6rCb2D44UzSIIu2Q+
	0blA==
MIME-Version: 1.0
X-Received: by 10.58.119.233 with SMTP id kx9mr5904066veb.3.1378981550393;
	Thu, 12 Sep 2013 03:25:50 -0700 (PDT)
Received: by 10.220.215.2 with HTTP; Thu, 12 Sep 2013 03:25:50 -0700 (PDT)
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
References: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
Date: Thu, 12 Sep 2013 12:25:50 +0200
Message-ID: <CAC+thW3E0GOTFFzr=RqRep5zwzcOWxjAL1XFTMMgEcWe2LSgzg@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Brad Litterell <brad@evidence.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to customize a file coming from another recipe?
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
X-List-Received-Date: Thu, 12 Sep 2013 10:25:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Brad,

On Wed, Sep 11, 2013 at 10:30 PM, Brad Litterell <brad@evidence.com> wrote:
> I'm building w/the Arago distribution which contains lighttpd for a web
> server.  I include this in my image as follows:
>
> IMAGE_INSTALL = "packagegroup-core-boot \
> ...
> lighttpd lighttpd-module-cgi lighttpd-module-compress lighttpd-module-expire
> \
> ...
> "
>
> This installs a default configuration file for the service which I now want
> to customize.  What is the recommended way to overwrite or customize files
> in another package?
> Is the best course to create a recipe bbappend for the lighttpd_1.4.31.bb
> file that is being used?  And can I just include a new file with the same
> name in my append and will it overwrite the old one, or do I need to create
> an actual patch file?

In my experience, the suggested approach for packaging and deploying a
custom configuration file in your target rootfs is to define an
override for the corresponding recipe.
The way you do this is slightly different depending upon the Arago
Project your using: from some details you provide, I guess you are
using meta-arago layer on top of Yocto build system and not the old
Arago Project based on OpenEmbedded Classic. If this is not the case
you might have better luck posting this to the arago mailing list.

If this is correct instead, the suggested approach for packaging and
deploying a custom configuration file is to define a .bbappend for
lighttpd recipe i.e. in your own layer. See [1] for more details and
examples on using bbappend files.

[1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#using-bbappend-files


> Or is it better to create a new separate  recipe that just ships my version
> of the configuration file?

This is not convenient, since it would generate metadata duplication
and a lot of unnecessary maintenance burden when the upstream recipe
gets updated.

> How are conflicts handled when two recipes
> attempt to install the same file?

