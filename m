Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ia0-f179.google.com (mail-ia0-f179.google.com
	[209.85.210.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07682E00348
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 13:36:26 -0800 (PST)
Received: by mail-ia0-f179.google.com with SMTP id o25so1399017iad.38
	for <yocto@yoctoproject.org>; Fri, 07 Dec 2012 13:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=M618XtbZY+XjylT+W4VZjeBKg9uoSlWA2ACXgooFGAQ=;
	b=PhS0wIihocQxY+OzL0pSWuL+baXotkPvr1KrYyg8IWRXCNnpmmpCpIlpAZUxjRMTR7
	p+Cc0G6Rs1d1zx2SPKZuQR8KQUVH8ED2lINcgQg8NUpzWws3k3qDxAF5IDY4KsB2c1ab
	wfeIuo+PsIE+qO/1gfg7ivt93a32MLKJZtD5xOvWVUzpQ/ZqWqHRWs20L0+hv7V0kJor
	ahOngT8CAY4uxVAIbjznmJyN2b/btsl2zyBY5ILBnOFhFu+SRrKQbOS51E6npXx1UukZ
	qlm0EvXSoJTB3kVh0aIcZ6zhSjYc7Nd6fEX5/fW3444iN1E8GUhR6cOCflqWWILkujko
	7e8Q==
Received: by 10.50.173.106 with SMTP id bj10mr482199igc.13.1354916186445; Fri,
	07 Dec 2012 13:36:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Fri, 7 Dec 2012 13:36:06 -0800 (PST)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 7 Dec 2012 16:36:06 -0500
Message-ID: <CANge7vUOfMWzkokgvDQ3imc8xQTBMLBkfonvQyJyDyJfqE4udg@mail.gmail.com>
To: sean.liming@annabooks.com
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
X-List-Received-Date: Fri, 07 Dec 2012 21:36:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

> I am trying to create a simple hello world recipe for a helloworld.c
> file. The recipe almost works except it hits a QA issue: WARNING: QA
> Issue: hello: Files/directories were installed but not shipped
>
> The warning leads to a failure in the do_rootfs.
>
> WARNING: QA Issue: hello: Files/directories were installed but not shipped
>    /usr
>    /usr/bin
> ERROR: Function failed: do_rootfs
> --------------------------
>
>
> What am I missing in the recipe?
>
> --
> Regards,
>
> Sean D. Liming
> Owner
> Annabooks
> Cell: 858-774-3176
>
>
> -------------- next part --------------
> DESCRIPTION = "Hello World Application"
> LICENSE = "GPL-2"
> LIC_FILES_CHKSUM =
> "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
>
> SECTION = "apps"
>
> SRC_URI = "file:///home/sean/workspace/Hello/HelloYocto.c"
> SRC_URI[md5sum] = "4f5c57b446cc08a7299d4dca58c49cda"
> SRC_URI[sha256sum] =
> "f357d9214f9c585d8b3997c6a3038eb28b218de264a8bb39ae8474949ad2b98d"
>
> S = "${WORKDIR}"
>
> do_compile() {
>  ${CC} ${CFLAGS} ${LDFLAGS} /home/sean/workspace/Hello/HelloYocto.c -o
> helloyocto
> }
>
> do_install() {
>  install -d ${D}${bindir}
>  install -m 0755 helloyocto ${D}{bindir}
> }
>
>

Sean,

I think you need to note which files are installed by the packages
associated with this recipe, via:

FILES_${PN} = "${bindir}"

For more info on these, Check out the FILES and CONFFILES
variables in the Poky Reference Manual. I also found it helpful
to grep around some of the bigger recipes to see how they use
these. (I got a bit tripped up with some libraries with the sonames set!)


Regards,
Jon

