Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC320E00AAB
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 11:44:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5B70AF811E8; Wed, 12 Mar 2014 12:44:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B2A0F811DA;
	Wed, 12 Mar 2014 12:44:29 -0600 (MDT)
Message-ID: <5320AB11.4060303@mlbassoc.com>
Date: Wed, 12 Mar 2014 12:44:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
In-Reply-To: <CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
X-Enigmail-Version: 1.5.2
Subject: Re: Building on target
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
X-List-Received-Date: Wed, 12 Mar 2014 18:44:35 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 2014-03-12 10:09, Rick Bianchi wrote:
> I completely agree with regards to the comparison, but I have compiled the same exact source on the same target (arm) and it only took 5 minutes when running the Linaro image.
> 
> To clarify, the only difference is the build, one is Linaro (took 5 minutes to compile source on the target) and the other Yocto (took almost 24 hours to compile source on the target).

Sorry, I missed that this was on the same hardware.

What are you building?  I'm going to try and duplicate this here
on hardware I have that's quite similar to your Gumstix board.

> 
> Is there something that I am missing?
> 
> 
> On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     On 2014-03-12 09:15, Rick Bianchi wrote:
>     >
>     > I have the gumstix-console-image with the added packages below. When I compile on the target is take a very long time for it to complete, over 24 hours. I have compiled the same
>     > code on the same target, but running Linaro image, and it only takes a few minutes. Is there another recipe that I need to add to the build to speed up compiling?
> 
>     Doubtful.  The reason your build on the target takes so long is merely
>     one of horsepower - that little ARM processor just doesn't have it, especially
>     if you are comparing it to a typical desktop environment.
> 
>     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
>     > IMAGE_INSTALL_append =" autoconf"
>     > IMAGE_INSTALL_append =" autofs"
>     > IMAGE_INSTALL_append =" automake"
>     > IMAGE_INSTALL_append =" ccache”
>     > IMAGE_INSTALL_append =" chkconfig"
>     > IMAGE_INSTALL_append =" dbus-glib"
>     > IMAGE_INSTALL_append =" gcc"
>     > IMAGE_INSTALL_append =" glib-2.0"
>     > IMAGE_INSTALL_append =" glib-networking"
>     > IMAGE_INSTALL_append =" glibmm"
>     > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
>     > IMAGE_INSTALL_append =" pciutils"
>     > IMAGE_INSTALL_append =" pkgconfig”
>     > IMAGE_INSTALL_append =" python-scons"
>     > IMAGE_INSTALL_append =" systemd-compat-units”
>     > IMAGE_INSTALL_append =" sysfsutils"
>     > IMAGE_INSTALL_append =" tcp-wrappers"
>     > IMAGE_INSTALL_append =" usbutils"
>     > IMAGE_INSTALL_append =" util-macros"
>     >
>     >
> 
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 
> 
> 

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

