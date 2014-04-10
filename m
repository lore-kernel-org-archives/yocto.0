Return-Path: <wpdster@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E99F5E00CB9
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:44:15 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id fb1so4628437pad.29
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 16:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ROwwYsnLgMeSLRxi+UPl3OegEDxJC7g2czcBDJ0miP4=;
	b=OZjU7ulq8Aca4zWne1YCY4FzviR/83JZyIrZV2Z3RU+WUWtFyo2uZk9YySewgMqUob
	oBlYJLYk240Nljis3FFtW3mBo1HJTdeu4g9FTku6GgrNNSZ8t8dF6Bz5S1EvOjkACQjK
	FPHb7n0G9B2olMLCs3iGsaMbUz0XsLc5Z0lJcGu/1oXvtZDrD9kch3+0Os1JNSCgUAEe
	MZ614jdo1dxDW0Oe279Trcx/ev2qOyiAWEY+90QKdx1FLSCbSz4wzMGldnLKpn8/78Cf
	w8bOOwo0YlCO0gYMuKfYmb+uxJRHsWjsV9xn8awMicN1BWCS8OyP3Xzz32LtznFouT0Q
	7JNg==
X-Received: by 10.66.141.144 with SMTP id ro16mr22787234pab.131.1397173455033; 
	Thu, 10 Apr 2014 16:44:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 16:43:44 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 19:43:44 -0400
Message-ID: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Confusion about autotools
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
X-List-Received-Date: Thu, 10 Apr 2014 23:44:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

I am trying to write a recipe for a custom gstreamer plugin that
compiles fine (natively) with autotools.

I thought it would be as simple as writing a recipe that said something like:

inherit autotools

myplugin_do_fetch() {
    commands_to_make_a_copy_of_my_source_code_in_build_tree;
}
EXPORT_FUNCTIONS do_fetch

(I am leaving out the boilerplate DESCRIPTION, LICENSE, etc...

But when I try to run my recipe, I get an error that ends like:

109: /home/wpd/.../run.do_fetch.1234 do_fetch: not found

and when I look at run.do_fetch, I see on line 109

do_fetch

I thought that do_fetch would be inherited from base.bbclass.  I look
in autotools.bbclass and I don't see a do_fetch function task defined
there.

So now I'm confused.  Since this isn't working the way I thought it
would, I figured it was time (once again -- and thanks for all of the
help so far!) to ask the list how I should do this.

For purely hysterical reasons, the gst plugin is in the same (bzr)
repository and my yocto build environment.  I was expecting to write a
"do_fetch()" task that would copy the source files into the
appropriate location in build tree.

I guess I could create a subdirectory of the recipe that contains a
bunch of symbolic links to each of the source files required to build
the plugin, and list them all as file:whatever in SRC_URI.  But that
feels hackish.

Once again, any tips to help over this hump (and help me make it to
the big important demo next week) would be welcome.

--wpd

