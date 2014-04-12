Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5885DE002A6
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 21:42:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3C4gNIW017183; Sat, 12 Apr 2014 05:42:23 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id C8-4ClWOZA90; Sat, 12 Apr 2014 05:42:23 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3C4gFE8017163
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Sat, 12 Apr 2014 05:42:20 +0100
Message-ID: <1397277725.15843.20.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Eliaser, MaX" <max.eliaser@intel.com>
Date: Sat, 12 Apr 2014 05:42:05 +0100
In-Reply-To: <E88D0531F83F3744B03D1A909A2B070F5B1D1E@ORSMSX110.amr.corp.intel.com>
References: <E88D0531F83F3744B03D1A909A2B070F5B1D1E@ORSMSX110.amr.corp.intel.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [RFC] possible solutions to bug 2421
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
X-List-Received-Date: Sat, 12 Apr 2014 04:42:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2014-04-11 at 17:21 +0000, Eliaser, MaX wrote:
> I've been working on bug 2421. [1] The bug report notes that several -native
> and -cross packages include man pages, info pages, and other documentation.
> This is unnecessary, and build times and disk usage could be improved by
> eliminating these files.
> 
> However, with the exception of Perl's Module::Build, [2] the build systems we
> support have no built-in way to do this, and most (all?) upstream projects
> don't implement it manually in their build system configurations. Unless I'm
> missing something easy and obvious, which I don't discount at all.
> 
> There are actually two different unnecessary things going on. First is the
> generation of the man/info pages, HTML/PDF files, etc. from source markup.
> This is done using programs like pod2man, asciidoc, groff, nroff, etc. Second
> is the copying of the files to their destination, usually in /usr/share
> somewhere. There are a few different ways I can think of to attack one or both
> of these problems:
>  *  Add a --disable-docs feature to each applicable upstream project's build
>     setup. Keep in mind that this is at *least* 58 separate autotools
>     configurations to add this feature to (specifically just the ones used
>     by -native and -cross recipes.) Plus a bunch of CMake ones, plus probably
>     a few others. But it would allow you to prevent documentation files from
>     being generated *and* copied.

Doing it per recipe is going to be time consuming and prone to breakage
when we upgrade so whilst a nice ideal option, we probably need to find
something else.

There are probably some things with doc flags (gnome software using
gnome-doc-stub for example?). Where there are doc flags, adding a
PACKAGECONFIG[doc] would be nice but the core set of native recipes
aren't likely to have flags, agreed.

>  *  Come up with some patches for each project that will simply nuke the doc
>     building altogether instead of making it optional. These patches obviously
>     could not be upstreamed, but they'd be easier to write.
>  *  Add code to the recipes to re-clear /usr/share/man, /usr/share/info, etc.
>     after each install has finished. That saves disk space but actually *adds*
>     disk activity and build time.

FWIW we already do this albeit at do_populate_sysroot time. See
sysroot_stage_dir() in staging.bbclass.

> I'd say that those three options are all legitimate, solid solutions. There 
> are also some ways to cheat:
>  *  Attack the documentation formatting utilities used by the various build
>     systems. There are a finite number of programs that get used for this--
>     pod2man, asciidoc, groff, etc. Why not replace these with a simple program
>     that does nothing, or just emits a blank file? We could conditionally set
>     the PATH environment variable to use or not use these dummy programs. The
>     file copy still happens, but at least it's a blank file.

I like this idea. I would draw your attention to the
scripts/native-intercept directory and:

classes/native.bbclass:PATH_prepend = "${COREBASE}/scripts/native-intercept:"

since we already "intercept" chown for different reasons.

This approach has the advantage that its relatively straightforward to
attempt, maintains relatively easily and should let us see whether this
kind of optimisation is worth much or not.

>  *  Attack the "install" program, wrapping it in a shell script that checks
>     if the install target directory is in some blacklist (i.e. /usr/share/man, 
>     /usr/share/info) and if not, invoking the original "install" binary. That
>     saves a file copy.
>  *  Mark the bug as "won't fix."
> 
> There are probably a few other solutions I haven't thought of yet.

I think its worth seeing how much of a difference some simple intercept
scripts can have.

When looking at this kind of thing, also keep an open mind to other ways
we can speed up the system. We're always looking for new ideas :).

Cheers,

Richard


