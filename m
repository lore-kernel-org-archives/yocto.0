Return-Path: <max.eliaser@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E576E00CFD
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 10:21:09 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Apr 2014 10:21:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,842,1389772800"; d="scan'208";a="417890582"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 11 Apr 2014 10:21:07 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.3.81]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.180]) with mapi id
	14.03.0123.003; Fri, 11 Apr 2014 10:21:07 -0700
From: "Eliaser, MaX" <max.eliaser@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [RFC] possible solutions to bug 2421
Thread-Index: Ac9Vqmr+oXOJ6T0VQwu+OK/Jaf82lQ==
Date: Fri, 11 Apr 2014 17:21:06 +0000
Message-ID: <E88D0531F83F3744B03D1A909A2B070F5B1D1E@ORSMSX110.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: [RFC] possible solutions to bug 2421
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
X-List-Received-Date: Fri, 11 Apr 2014 17:21:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi list,

I've been working on bug 2421. [1] The bug report notes that several -nativ=
e
and -cross packages include man pages, info pages, and other documentation.
This is unnecessary, and build times and disk usage could be improved by
eliminating these files.

However, with the exception of Perl's Module::Build, [2] the build systems =
we
support have no built-in way to do this, and most (all?) upstream projects
don't implement it manually in their build system configurations. Unless I'=
m
missing something easy and obvious, which I don't discount at all.

There are actually two different unnecessary things going on. First is the
generation of the man/info pages, HTML/PDF files, etc. from source markup.
This is done using programs like pod2man, asciidoc, groff, nroff, etc. Seco=
nd
is the copying of the files to their destination, usually in /usr/share
somewhere. There are a few different ways I can think of to attack one or b=
oth
of these problems:
 *  Add a --disable-docs feature to each applicable upstream project's buil=
d
    setup. Keep in mind that this is at *least* 58 separate autotools
    configurations to add this feature to (specifically just the ones used
    by -native and -cross recipes.) Plus a bunch of CMake ones, plus probab=
ly
    a few others. But it would allow you to prevent documentation files fro=
m
    being generated *and* copied.
 *  Come up with some patches for each project that will simply nuke the do=
c
    building altogether instead of making it optional. These patches obviou=
sly
    could not be upstreamed, but they'd be easier to write.
 *  Add code to the recipes to re-clear /usr/share/man, /usr/share/info, et=
c.
    after each install has finished. That saves disk space but actually *ad=
ds*
    disk activity and build time.
I'd say that those three options are all legitimate, solid solutions. There=
=20
are also some ways to cheat:
 *  Attack the documentation formatting utilities used by the various build
    systems. There are a finite number of programs that get used for this--
    pod2man, asciidoc, groff, etc. Why not replace these with a simple prog=
ram
    that does nothing, or just emits a blank file? We could conditionally s=
et
    the PATH environment variable to use or not use these dummy programs. T=
he
    file copy still happens, but at least it's a blank file.
 *  Attack the "install" program, wrapping it in a shell script that checks
    if the install target directory is in some blacklist (i.e. /usr/share/m=
an,=20
    /usr/share/info) and if not, invoking the original "install" binary. Th=
at
    saves a file copy.
 *  Mark the bug as "won't fix."

There are probably a few other solutions I haven't thought of yet.

Regards,
-Max Eliaser.

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D2421
[2] http://search.cpan.org/~leont/Module-Build-0.4205/lib/Module/Build.pm


