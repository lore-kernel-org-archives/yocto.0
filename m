Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71BAEE00942; Fri, 20 Apr 2018 10:32:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emh03.mail.saunalahti.fi (emh03.mail.saunalahti.fi
	[62.142.5.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A88DE00529
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 10:32:26 -0700 (PDT)
Received: from uwe1 (85-76-108-172-nat.elisa-mobile.fi [85.76.108.172])
	by emh03.mail.saunalahti.fi (Postfix) with ESMTP id 4C5AA400F6;
	Fri, 20 Apr 2018 20:32:25 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
Date: Fri, 20 Apr 2018 20:32:06 +0300
Message-ID: <874lk57pih.fsf@snkmail.com>
MIME-Version: 1.0
Subject: creating your own distro layer
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
X-List-Received-Date: Fri, 20 Apr 2018 17:32:28 -0000
Content-Type: text/plain

Hi!

I have inherited our custom distro layer (heavily based on poky),
but I am not sure whether it has been coded correctly. It produces
working images, but certain weird symptoms when working with bitbake
made me to double-check the code.

I'm reading
https://www.yoctoproject.org/docs/2.4.2/mega-manual/mega-manual.html#creating-your-own-distribution

It says:

> Create the distribution configuration file: The distribution
> configuration file needs to be created in the conf/distro directory
> of your layer. You need to name it using your distribution name
> (e.g. mydistro.conf).

That seems clear to me.

It continues:

> Note: The DISTRO variable in your local.conf file determines the
> name of your distribution.

I find that statement somewhat ambiguous. Didn't we just read above
that the name of the distro is determined by the distro/<name>.conf
file? And in general case you have several of them.

So at least I would find it easier to understand if the note read
something like

  The DISTRO variable in your local.conf file selects which
  distro to build.

The wording in the manual might make sense if you think of the
distribution as a build product. But it doesn't make any sense to me
when thinking about distro metadata. And that's what the reader of that
section is likely to look at/edit in this moment.

Or do I miss something here?


The confusion continues. The manual says

> Your configuration file needs to set the following required variables:

>    DISTRO_NAME
>    DISTRO_VERSION

If I look into
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-poky/conf/distro/poky-tiny.conf?h=rocko
it does not set a DISTRO_NAME.

Well, it gets a DISTRO_NAME from

> require conf/distro/poky.conf

So assuming that poky-tiny and poky are diffferent distros, should
they really share the same name?

Maybe there is something like a distro and a distro variant, but I
could not find any such concept in the manual. Sometimes I see
references to a poky-based distro, though.

I assume the DISTRO_NAME is mostly cosmetic / for humans. So not that
much to worry about? But the DISTRO variable seems to be central for the
build process.

There is a test in script yocto-check-layer that the distro config
file does not set the DISTRO variable.

When running yocto-check-layer on our own distro layer I got a failure
for setting DISTRO. So I treid to remove the variable setting.  But that
results in my DISTRO variable ending up being set to "yocto".

I think it goes like this

1.) my local.conf sets DISTRO to my own one
2.) in consequence my own distro conf file gets processed 
3.) it does "require" of yocto.conf and that resets the DISTRO
    value to "yocto"

4.) (originally our own distro config file reset the value to
    our own name after the "require". So the name was "correct" in the
    end. But yocto-check-layer did not like that)

So what is wrong here? Why does the poky code violate the
test condition of not setting DISTRO? Or is nobody supposed
to "require" poky.conf? I could of course copy the contents,
but copying code is usually not a good idea.


Thanks for reading until here, couldn't formulate it shorter...

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

