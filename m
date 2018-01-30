Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B83D2E00E23; Mon, 29 Jan 2018 19:33:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD91DE00D91;
	Mon, 29 Jan 2018 19:33:26 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Jan 2018 19:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,433,1511856000"; d="scan'208";a="23280655"
Received: from fungyihn-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.71.61])
	by orsmga003.jf.intel.com with ESMTP; 29 Jan 2018 19:33:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 30 Jan 2018 16:33:18 +1300
Message-ID: <3080197.gSJsdXIicL@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
MIME-Version: 1.0
Cc: eclipse-poky@yoctoproject.org
Subject: Eclipse plugin plans
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
X-List-Received-Date: Tue, 30 Jan 2018 03:33:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've recently become involved in development of our Eclipse integration, an=
d=20
we figured it's about time we sent out an update on where things currently=
=20
stand.

Current development
=2D--------------------------

New life is being injected into the Yocto Project Eclipse plugins. There ar=
e=20
several drivers for this:

1) Integrate the tooling with Docker. With changes and additions to Eclipse=
=20
CDT and Eclipse Linuxtools projects, it=E2=80=99s now possible to have Dock=
er images=20
provide functionality that=E2=80=99s running within Eclipse. For example, C=
DT=E2=80=99s=20
autotools can be run in a Docker container for compiling/building/recipe an=
d=20
for running/debugging.

2) Docker tooling also provides a way to do cross-OS building/running - e.g=
=2E=20
Eclipse running on Windows doing compiles/running/recipes for a target runn=
ing=20
on Linux (in a Linux Docker Container). Up until now we have been restricte=
d=20
to Linux as the Eclipse host OS. We will be looking at Windows first, MacOS=
=20
may follow later.

3) Simplify the deployment and installation of the plugins. Currently, the =
=20
plugins have a number of dependencies=E2=80=A6e.g. on Eclipse CDT and other=
s. This=20
often makes it difficult to install, use, and upgrade the plugins,=20
particularly for Yocto Project beginners.

4) Update the plugins for latest Eclipse. Eclipse has upgraded its support=
=20
(CDT, Linuxtools/Docker, etc) significantly, and the plugins do not yet tak=
e=20
advantage of these improvements. The target for the 2.6 release will likely=
 be=20
Eclipse Photon (released June 2018).

5) Improve and make more transparent the Build/Continuous Integration/Relea=
se=20
Engineering for the plugins. This will make it easier for others to=20
contribute, and will make it easier for automated testing to be done improv=
ing=20
overall quality.=20

To start down these directions and explicitly start on 3, 4, 5 we propose t=
hat=20
for eclipse-poky we move toward a maven-based build. Maven-based builds are=
=20
extremely common in the Eclipse plugin development world, and there are a l=
ot=20
of technologies openly available to support building these plugins: e.g.=20
maven, tycho, Eclipse itself. As part of this we will be looking to transit=
ion=20
the autobuilder from the current script-based build to a maven-based build,=
=20
but with two caveats:=20

a) the current autobuilder will be used for 2.5 release
b) both builds (script-based) and maven-based will be maintained until afte=
r=20
2.5 release
c) the maven-based build will add: automated testing, easier dependency=20
management, a more open and maintainable build system

We are proposing that the existing eclipse-poky 2.5 branch (oxygen.master) =
be=20
soon frozen (after a few small pending fixes) and that the eclipse-poky=20
=E2=80=98master=E2=80=99 be opened up for 2.6 development. This way we will=
 have a stable=20
release candidate as 2.5 approaches, and be able to begin work on 1-5 as ab=
ove=20
for 2.6 as soon as possible.

If you want a peek at what we are currently working on with maven see the=20
timo/maven branch in eclipse-poky-contrib. New instructions are in the=20
README.dev file.


A note about CROPS
=2D---------------------------

The earlier effort to build the CROPS architecture to support multiple IDEs=
=20
has been dropped - unfortunately we weren't able to realise the original=20
design for a number of reasons including that in the case of Eclipse it was=
=20
incompatible with the upstream Eclipse direction. We have now switched back=
 to=20
the original eclipse-poky codebase and are following upstream Eclipse /=20
Linuxtools / CDT development a lot more closely. We will however gain some =
of=20
the features that CROPS set out to provide - i.e. building in a container a=
nd=20
therefore enabling the IDE to be running on a non-Linux OS.=20

Note: the CROPS containers [1] are still around and functional, and will=20
likely form the basis of the containers used by the current YP Eclipse=20
plugins.


New mailing list
=2D--------------------

As you may have seen elsewhere, we now have a mailing list dedicated to=20
Eclipse plugin development and related discussion. You can find information=
=20
(and list archives) here:

  https://lists.yoctoproject.org/listinfo/eclipse-poky

If you have follow-up questions / discussion or would like to get involved,=
=20
please join us over on that list.

Cheers,
Paul

[1] https://wiki.yoctoproject.org/wiki/TipsAndTricks/CropsCLIContainers

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre

