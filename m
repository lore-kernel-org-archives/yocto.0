Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE177E01412
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 03:55:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1B62DF81209; Wed, 28 Aug 2013 04:55:19 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	NORMAL_HTTP_TO_IP autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D92B0F811FA;
	Wed, 28 Aug 2013 04:55:17 -0600 (MDT)
Message-ID: <521DD72D.2020102@mlbassoc.com>
Date: Wed, 28 Aug 2013 04:55:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <2C94F567F1334C30A5BBD2CA59576460@PAULD>
	<521D354E.1020909@mlbassoc.com>
	<8EB78E64DFE9436EAFB462E357C464EC@PAULD>
In-Reply-To: <8EB78E64DFE9436EAFB462E357C464EC@PAULD>
Cc: yocto@yoctoproject.org
Subject: Re: Can anything be done about do_rootfs speed?
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
X-List-Received-Date: Wed, 28 Aug 2013 10:55:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-27 18:10, Paul D. DeRocco wrote:
>> From: Gary Thomas
>>
>> As far as I understand, the 'do_rootfs' step in building an
>> image is basically
>> equivalent to running "${PKG_MGR} install
>> <all_required_packages>", where PKG_MGR
>> is your package management method of choice - ipk or rpm.
>> This seems to me to
>> be a very single-threaded process.
>
> If there's a way to command the package manager to install a package
> without enforcing dependencies (Is that what opkg --nodeps does?), then
> couldn't the package manager be invoked on one package at a time in n
> threads, just like the other tasks are now run? I don't really have any
> sense of how long it takes to install the packages, as opposed to building
> the final tarball or hddimage and applying the permissions from the pseudo
> database, which would certainly be single-threaded.
>
>> Perhaps you should think more about how you are using this.
>> If you don't need
>> to rebuild the whole image every time, maybe you can use the
>> package management
>> tools instead?  For example, I routinely build images as well
>> but I also try to
>> use 'opkg' as much as possible to manage package updates,
>> etc.   This is a huge
>> time saver, especially when making small or incremental
>> changes.  I only rely
>> on the full image builds when I want to "checkpoint" the
>> state of the system.
>
> I'd like to try that, but I'm not sure how. If I've tweaked one recipe,
> how do I get it to build it and package it, and then stop? Do I use
> "bitbake -c package"? And then do I use "opkg -d" to manually install it
> directly onto my SD card? If my rootfs is a loop mounted hddimage in a
> FAT16 file (as it is on my Atom project), do I loop mount it on my build
> system and install into that?

Not quite - you build the packages (recipes) on your build host, but manage
them directly on your target hardware.  Of course, this assumes that your
build host and target hardware are network connected.

You can [re]build any single package like this:
   % bitbake <recipe-name>
The '-c' option is used to select a particular build phase, not what you
are looking for here.

In order to use the package management on your target device, you need
to export the package set.  This is typically done using HTTP, so you'll
need some sort of "web server".  If you don't already have one running
on your build host (or wherever you want to host the packages), I'd suggest
using 'lighttpd' which is very simple to set up.  Once you have it running,
simply export the package set.  For example, I run lighttpd on my build host
and export the packages for a particular machine/build like this:
   % ln -s ${BUILD}/tmp/deploy/ipk /var/www/lighttpd/BOARD-feeds
As you can see, I use 'ipk' packaging, which on the board is handled by the
'opkg' tool.

One key thing is on your build host you must remember to update/rebuild the
package database(s) whenever you make any changes, be it building new packages
or just rebuilding extant ones.  This is done using a special recipe:
   % bitbake package-index
I typically mix these like this:
   % bitbake some-recipe && bitbake package-index
Notice that you can't put them both on the same command, e.g.
   % bitbake some-recipe package-index
as the 'package-index' recipe can only be built when all other recipes are
complete and that won't happen if you try them both at the same time.

In the case of 'ipk' packages, you'll need to set up the board to make use of
the exported package sets.  There are a number of ways to do this, but in the
case of 'ipk' you can do it all in a single file.  Here's an example on my
SabreLite (i.MX6 ARM system):
   root@sabrelite:~# cat /etc/opkg/base-feeds.conf
   src/gz poky_am-all http://192.168.1.125/sabrelite-feeds/all
   src/gz poky_am-armv7a-vfp-neon http://192.168.1.125/sabrelite-feeds/armv7a-vfp-neon
   src/gz poky_am-sabrelite http://192.168.1.125/sabrelite-feeds/sabrelite

This file tells 'opkg' where to find the various packages which have been broken down
into board specific, architecture specific and general packages.  This is how Poky/Yocto
is setting things up, so this file is just making those connections.  In the example
above, 192.168.1.125 is the IP address of my build host (which you can specify using
any DNS or IP notation) and 'sabrelite-feeds' is the link to my board specific packages,
set up as above.

To use this set up on the board, first you need to update the board's copy of the
package databases.  This is used to figure out what packages are available, what they
contain/provide and what the package dependencies are.
   root@sabrelite:~# opkg update
Once the databases are up to date, you can install/remove/... as needed.
   root@sabrelite:~# opkg install some-new-package

I'm sure there are many details I've left out, so feel free to ask questions
as needed.  I also explicitly left out any discussion of 'rpm' packaging as I
don't use that on my targets and really don't know the details.  Hopefully
someone will document all of this in great detail some day. (in fact I filed a
bug to this end many years ago...)

>
> Installing directly to the card would be nice because copying the whole
> damn rootfs to the card takes an annoying amount of time, too.
>

In my mind, the key is to do this level of copying as rarely as possible and
just use the package management tools the rest of the time.  It can be a huge
time saver, for example my build host is at my main desk in the US and many of
my target boards are actually in the UK.  It's quite painful to transfer large
(complete system) images "across the pond" whereas the 'opkg update;opkg install xxx'
runs very quickly and keeps the whole process manageable :-)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

