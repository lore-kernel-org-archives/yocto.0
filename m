Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 452ABE00510
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 06:00:50 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 19 Nov 2013 09:00:49 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 19 Nov 2013 08:57:40 -0500
Thread-Topic: Compile on recipe works the second time
Thread-Index: Ac7lL0/O+LQ58zHlRNSE9luea/qKcg==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153BB2BE35F@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Compile on recipe works the second time
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
X-List-Received-Date: Tue, 19 Nov 2013 14:00:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm on poky/dylan-9.0.1 and I've created a layer for a separate open source=
 project to include in my image.  The layer is at https://github.com/evenso=
nbryan/meta-bacnet for those of you who want to try and duplicate my result=
s.  Just add this layer to your setup and build the recipe "bacnet-stack".

I have a very odd build issue.  The first time I build the recipe, the buil=
d fails during the compile step.  However, if I then build the recipe again=
, the compile completes without errors.  For example:

1. bitbake -c clean bacnet-stack
2. bitbake bacnet-stack (compile fails)
3. bitbake bacnet-stack (compile succeeds, rest of image packaging works)

Additionally, the following order compiles without error:
1. bitbake -c clean bacnet-stack
2. bitbake -c devshell bacnet-stack
3. (from devshell) make all (compile succeeds)

This project is divided into a static library and multiple demo application=
s.  The static library needs to be built first, and then the demo applicati=
ons include the static library in their build.  I suspect I have an issue w=
ith either populating the static library or the related include files in th=
e sysroot which causes the demo applications to fail to build the first tim=
e but work the second.  However, I can't figure out how to fix the issue.  =
Any pointers on what is setup wrong with this recipe?

Thanks,
Bryan

