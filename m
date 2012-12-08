Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7ACDE00559
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 07:05:33 -0800 (PST)
Received: by mail-ia0-f176.google.com with SMTP id k32so2488782iak.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 07:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=X51Rhdpu/CsJX7VLHgwSSeBnV2PltAka5jidM0Hzx1Y=;
	b=tt8eDghLe97bd2d5kXvPKxp81TVTsw7Yd9CmscaT3RBHv/XlK84TW1Tg2gBI1VaHCR
	yLRiOH3Q/Q7AHDMGc8YCgtWGWAlIHNWK2gtNCDNEXRY8Oj8sB6MUUIag57e5olryylo3
	FaNu97HoM94rH+r1cc39v5/9Amigpyc2X37GZarxKN8WxNBHFMZrewCknuxJI/FSAfXI
	iE9I3n+jBsmwcv/uikjrXHHTsYXbCV0aDbfZLP9z+Q3YO4VNNMvU4jBSw2N12QWI/FM7
	h8vEY261XXETicM/Q85ZeZ8tMosu8XpgH6t1mlILLLxm05IRagIGtm0yEPl4K36Zz8y8
	1YrQ==
Received: by 10.42.63.145 with SMTP id c17mr7138434ici.22.1354979133202; Sat,
	08 Dec 2012 07:05:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Sat, 8 Dec 2012 07:05:11 -0800 (PST)
In-Reply-To: <000001cdd4f4$024e7f60$06eb7e20$@annabooks.com>
References: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>
	<000001cdd4f4$024e7f60$06eb7e20$@annabooks.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Sat, 8 Dec 2012 10:05:11 -0500
Message-ID: <CANge7vVpMeEHgAK8M_tNXHBGexowv7dCDHgLqmcA6k-4ogwkTw@mail.gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: yocto@yoctoproject.org
Subject: Re: QA issue with custom recipe
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
X-List-Received-Date: Sat, 08 Dec 2012 15:05:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

> > > I am trying to create a simple hello world recipe for a helloworld.c
> > > file. The recipe almost works except it hits a QA issue: WARNING: QA
> > > Issue: hello: Files/directories were installed but not shipped
> > >
> > > The warning leads to a failure in the do_rootfs.
> > >
> > > WARNING: QA Issue: hello: Files/directories were installed but not
> shipped
> > >    /usr
> > >    /usr/bin
> > > ERROR: Function failed: do_rootfs
> > > --------------------------
> > >
> > >
> > > What am I missing in the recipe?
> > >
> > > --
> > > Regards,
> > >
> > > Sean D. Liming
> > > Owner
> > > Annabooks
> > > Cell: 858-774-3176
> > >
> > >
> > > -------------- next part -------------- DESCRIPTION = "Hello World
> > > Application"
> > > LICENSE = "GPL-2"
> > > LIC_FILES_CHKSUM =
> > > "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
> > >
> > > SECTION = "apps"
> > >
> > > SRC_URI = "file:///home/sean/workspace/Hello/HelloYocto.c"
> > > SRC_URI[md5sum] = "4f5c57b446cc08a7299d4dca58c49cda"
> > > SRC_URI[sha256sum] =
> > >
> > "f357d9214f9c585d8b3997c6a3038eb28b218de264a8bb39ae8474949ad2b98d"
> > >
> > > S = "${WORKDIR}"
> > >
> > > do_compile() {
> > >  ${CC} ${CFLAGS} ${LDFLAGS} /home/sean/workspace/Hello/HelloYocto.c -
> > o
> > > helloyocto }
> > >
> > > do_install() {
> > >  install -d ${D}${bindir}
> > >  install -m 0755 helloyocto ${D}{bindir} }
> > >
> > >
> >
> > Sean,
> >
> > I think you need to note which files are installed by the packages
> > associated with this recipe, via:
> >
> > FILES_${PN} = "${bindir}"
> >
> > For more info on these, Check out the FILES and CONFFILES
> > variables in the Poky Reference Manual. I also found it helpful
> > to grep around some of the bigger recipes to see how they use
> > these. (I got a bit tripped up with some libraries with the sonames
> > set!)
> >
> >
> > Regards,
> > Jon
>
>
>
> John,
>
> Thank you. The Q/A Warning is gone. That is one step closer, but the
> package
> is still not resolved.
>
> -------------------------------------
> Processing HelloYocto...
>
> Unable to resolve package HelloYocto
>
> ERROR: some packages were missing
>
> ERROR: Function failed: do_rootfs (see
>
> /home/sean/Yocto1.3/n2800/tmp/work/cedartrail-poky-linux/core-image-minimal-
> 1.0-r0/temp/log.do_rootfs.24265 for further information)
>
> ----------------------
>
>
>
> Regards,
>
> Sean Liming
> Owner
> Annabooks
> Tel: 714-970-7523 / Cell: 858-774-3176
>

Hi Sean,

What's the name of your hello world recipe? Try naming it hello-world.bb or
hello-world_0.1.0.bb (for a version 0.1.0) and appending hello-world to your
IMAGE_INSTALL.

I believe recipe names must be lower case and use '-' as a separator. An
underscore is used to separate the package name and the version number, as
I've shown above.

It looks like someone posted a great hello world example on the wiki, so be sure
to check that out:
  https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_my_recipe_into_Yocto.3F

Take a look at meta-skeleton as well. I found that to provide a few very helpful
examples as well. :)

Cheers!
Jon

