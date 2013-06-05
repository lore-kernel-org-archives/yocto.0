Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE58E006C2
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 12:43:59 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D6084F811EB; Wed,  5 Jun 2013 13:43:58 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 94085F811E0;
	Wed,  5 Jun 2013 13:43:57 -0600 (MDT)
Message-ID: <51AF94FF.3050508@mlbassoc.com>
Date: Wed, 05 Jun 2013 13:43:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAGt+t1EKDfo=_=NK1vJMfYFh=yh=iJy+pf1c++-XKFO91LO_w@mail.gmail.com>
In-Reply-To: <CAAGt+t1EKDfo=_=NK1vJMfYFh=yh=iJy+pf1c++-XKFO91LO_w@mail.gmail.com>
Subject: Re: LIC_FILES_CHKSUM points to an invalid file
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
X-List-Received-Date: Wed, 05 Jun 2013 19:43:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-05 13:17, Zafrullah Syed wrote:
> I am getting these errors when I try my build. Any Idea?
>
> ERROR: Function failed: hello: LIC_FILES_CHKSUM points to an invalid file:
> /home/siguser/yocto2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/hello-1.0/COPYING
>
> ERROR: Logfile of failure stored in: /home/siguser/yocto2013-05-08/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/hello-1.0-r0/temp/log.do_configure.1985
>
> Screen shot of the above error directory. http://imgur.com/zRLKuYj
>
> hello-1.0 is empty but hello-2.7 has all the files extracted.
>
> Why does hello-1.0 exist when i did not include it in my recipe.
>
> my hello.bb <http://hello.bb> recipe:
>
> DESCRIPTION = "GNU Helloworld application"
> SECTION = "examples"
> LICENSE = "GPLv3+"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> PR = "r0"
> SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
> SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
> SRC_URI[sha256sum] = "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
> inherit autotools gettext
>
> Any ideas about this error?

Your recipe doesn't seem to have a version number.  Try renaming hello.bb to hello_2.7.bb

>
> Thank You,
>
> On Tue, Jun 4, 2013 at 9:45 PM, Zafrullah Syed <zafrullahmehdi@gmail.com <mailto:zafrullahmehdi@gmail.com>> wrote:
>
>     Hi,
>
>     I followed all the instructions and i started my build again. Build successfully started and struck with Hello md5sum error.
>
>     ERROR: Fetcher failure for URL: 'ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz'. No checksum specified for /home/siguser/yocto2013-05-21/build/downloads/hello-2.7.tar.gz, please
>     add at least one to the recipe:
>     SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
>     SRC_URI[sha256sum] = "fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"
>
>
>     I downloaded hello-2.7 from ftp://ftp.gnu.org/gnu/hello/ unzipped and ran md5sum against COPYING file. Each file has different md5sum, which md5sum should I include in my
>     hello.bb <http://hello.bb> file?
>
>     _My hello.bb <http://hello.bb> file_:
>
>     DESCRIPTION = "GNU Helloworld application"
>     SECTION = "examples"
>     LICENSE = "GPLv3+"
>     LIC_FILES_CHKSUM = "file://COPYING;md5=fc01b05c7f943d3c42124942a2a9bb3a"
>     PR = "r0"
>     SRC_URI = "ftp://ftp.gnu.org/gnu/hello/hello-2.7.tar.gz"
>     inherit autotools gettext
>
>     Thank You,
>
>
>
>
>     On Tue, Jun 4, 2013 at 3:57 PM, Paul Eggleton <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>> wrote:
>
>         On Tuesday 04 June 2013 15:42:06 Zafrullah Syed wrote:
>         > On Tue, Jun 4, 2013 at 3:26 PM, Paul Eggleton <paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>
>         > wrote:
>         > > Yes, conf/bblayers.conf is supposed to be in the build directory; and
>         > > whichever build directory you are actually using. The build directory can
>         > > be anywhere, but you shouldn't really have two build directories unless
>         > > you know what you are doing - did you perhaps run oe-init-build-env with
>         > > no arguments in two different places? I suspect this is what has happened.
>         >
>         > I think yes. I usually give just *source oe-init-build-env *command, this
>         > is how i used earlier and failed. May be that is the reason it has created
>         > another build directory in /poky.
>         > What should be the command before building? i guess this(
>         > TEMPLATECONF=meta-gumstix-extras/conf
>         > source ./poky/oe-init-build-env ). so, every time i just need to give
>         > TEMPLATECONF  command before building?
>
>         You need to run oe-init-build-env at the start of every session yes, but you
>         shouldn't need to specify TEMPLATECONF except when you first create the build
>         directory. The important thing is you need to be in the same directory when
>         you run oe-init-build-env *or* specify the path to the build directory as a
>         parameter.
>
>         > Lastly, my meta-bebot directory should be as following ?
>         >
>         > /poky
>         >   --meta-bebot
>         >       --conf
>         >          --layer.conf
>         >   --recipes-bebot
>         >     --hello
>         >       --hello.bb <http://hello.bb>
>
>         If you have recipes-bebot under meta-bebot, yes.
>
>         > and meta-bebot path should be set in bblayers.conf file?
>
>         Yes.
>
>         Cheers,
>         Paul
>
>         --
>
>         Paul Eggleton
>         Intel Open Source Technology Centre
>
>
>
>
>     --
>     Regards,
>     Zafrullah Syed
>
>
>
>
> --
> Regards,
> Zafrullah Syed
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

