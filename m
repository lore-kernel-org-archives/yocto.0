Return-Path: <PatrickTurley@gamestop.com>
Received: from GSIRONPORTA.gamestop.com (mail1.gamestop.com [12.25.107.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AEBCE00524
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 15:30:29 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,530,1344229200"; d="scan'208";a="68066421"
Received: from unknown (HELO GV1HQPEX01.babgsetc.pvt) ([172.22.1.244])
	by GSIRONPORTA.gamestop.com with ESMTP; 03 Oct 2012 17:30:28 -0500
Received: from GV1HQPEX03.babgsetc.pvt ([169.254.1.67]) by
	GV1HQPEX01.babgsetc.pvt ([172.22.1.191]) with mapi id 14.02.0283.003;
	Wed, 3 Oct 2012 17:30:28 -0500
From: Patrick Turley <PatrickTurley@gamestop.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: The BitBake equivalent of "Hello, World!"
Thread-Index: AQHNobawsFl2O8i4ZUWCT5ZGDLdssA==
Date: Wed, 3 Oct 2012 22:30:27 +0000
Message-ID: <CC9226B2.365%PatrickTurley@gamestop.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.1.244]
MIME-Version: 1.0
Subject: The BitBake equivalent of "Hello, World!"
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
X-List-Received-Date: Wed, 03 Oct 2012 22:30:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <16F576CCA2237F4D967EAB88C2632A91@gamestop.com>
Content-Transfer-Encoding: quoted-printable

I'll start with my question (so you can decide whether you care to read
the rest):


    What is the BitBake equivalent of "Hello, World!?"

    Specifically, what is the minimum project structure that
    correctly describes a single layer and a single recipe?


--------------------------------------------------


I'm trying to understand Yocto and BitBake thoroughly. As a start, I tried
to construct a "minimal" BitBake project, with no Yocto content.

I began by running BitBake in an empty directory and fixing each error in
turn. Eventually, I was able run BitBake without errors -- even though it
didn't actually *do* anything (which was fine).

After that, I created a single layer, and that worked fine.

Most recently, I tried to create a single recipe within my one layer. I'm
having problems I don't know how to solve.

At the bottom of this message, I show the full structure of my tree and
the contents of all the files. Since the project is "minimal," there isn't
much to show.

From within the "build" directory of my project, I ran BitBake like this:


    $ ../BitBake/bin/bitbake
    Nothing to do.  Use 'bitbake world' to build everything,
    or run 'bitbake --help' for usage information.


That's what I expected. Then, I tried to examine the layers:


    $ ../BitBake/bin/bitbake-layers show-layers
    layer    path                                    priority
    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
    LayerA   /home/pturley/Workspace/woohoo/LayerA   0


That's also what I expected. Things went wrong when I tried to examine the
recipes:


    $ ../BitBake/bin/bitbake-layers show-recipes
    Parsing recipes..$


That's wrong. I expected something like this:


    Parsing recipes..done.
    =3D=3D=3D Available recipes: =3D=3D=3D
    a:
      LayerA               1


At first, "base.bbclass" was empty so, on a hunch, I added this:


    do_hello() {
        echo Hello
    }

    addtask hello


That changed the output to this:


    $ ../BitBake/bin/bitbake-layers show-recipes
    Parsing recipes..done.
    =3D=3D=3D Available recipes: =3D=3D=3D
    a:
      ?                    1


This is still wrong, but better (though I can't explain why).

At this point I thought it best to look for experts. I don't need
hand-holding - but I *do* need substantive, accurate hints. If you have
any, I'd be grateful.


--------------------------------------------------


Here is the tree of files in my "minimal" project, along with the contents
of those file:

/home/pturley/Workspace/woohoo
    |
    +-- build
    |   |
    |   +-- classes
    |   |   |
    |   |   +-- base.bbclass
    |   |
    |   |     +-------------------------------------------
    |   |     | do_hello() {
    |   |     |     echo Hello
    |   |     | }
    |   |     |
    |   |     | addtask hello
    |   |     +-------------------------------------------
    |   |
    |   +-- conf
    |   |
    |   +-- bblayers.conf
    |   |
    |   |     +-------------------------------------------
    |   |     | BBLAYERS ?=3D " \
    |   |     |   /home/pturley/Workspace/woohoo/LayerA \
    |   |     |   "
    |   |     +-------------------------------------------
    |   |
    |   +-- bitbake.conf
    |
    |         +-------------------------------------------
    |         | CACHE =3D "${TOPDIR}/cache"
    |         +-------------------------------------------
    |
    +-- LayerA
    |   |
    |   +-- a.bb
    |   |
    |   |     +-------------------------------------------
    |   |     | PN =3D 'a'
    |   |     | PV =3D '1'
    |   |     +-------------------------------------------
    |   |
    |   +-- conf
    |   |
    |   +-- layer.conf
    |
    |         +-------------------------------------------
    |         | BBPATH .=3D ":${LAYERDIR}"
    |         | BBFILES +=3D "${LAYERDIR}/*.bb"
    |         +-------------------------------------------
    |
    +-- BitBake ...

    The BitBake directory origin is:

        http://git.openembedded.org/bitbake/

    I have the 1.15.2 tag checked out, which is what
    Yocto denzil uses.


