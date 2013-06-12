Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABCEAE01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 05:24:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 12 Jun 2013 05:24:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,851,1363158000"; d="scan'208";a="352233695"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2013 05:24:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.5]) with mapi id
	14.03.0123.003; Wed, 12 Jun 2013 05:24:07 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "michael@cubic.org" <michael@cubic.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/QAdpzoAAAxeNNA=
Date: Wed, 12 Jun 2013 12:24:07 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF48BF0@ORSMSX101.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
In-Reply-To: <bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 12:24:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

See http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#cross-d=
evelopment-toolchain for the changes that I have made to the "Cross-Develop=
ment Toolchain" term description.  Let me know if this helps.  Also let me =
know if I have botched anything.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of michael@cubic.org
>Sent: Wednesday, June 12, 2013 4:17 AM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] Need clarification on some terms
>
>> "Cross-Development Toolchain: A collection of software development
>tools
>> and
>> utilities that allow you to develop software for targeted
>architectures."
>> Is
>> that different from the toolchain that bitbake builds in the
>beginning,
>> and
>> then uses to build the image? If so, what is it?
>
>A "cross development toolchain" is a toolchain that runs on an
>architecture (cpu+os+libc) that is different from the architecture it
>generates code for. That can even be a toolchain running on an IA64-
>Linux
>machine generating object-code for an IA32-Linux machine.
>
>> "Following is a list of toolchain recipes..." This is followed by
>> gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of
>these
>> things say that the toolchain runs on the host and is used to build
>> software
>> for the target. So why are there three of them? What are the
>differences
>> among them?
>
>The gcc must be build multiple times when you bootstrap it.
>For building the gcc you need to build the libc and therefor you need to
>build the linux kernel headers and therefor you need the gcc. Oops.
>
>Thats why you first build a gcc only with c support and no libc first.
>Use that to generate the kernel headers, then build the initial libc and
>then another gcc with libc support and all the frontends you need
>(c,c++,java,fortran,..). Why there is the gcc-cross-intermediate I am
>not
>shure, but there will be a reason and another one can clarify that.
>
>> It also says that each one is a "native" package. In my
>> experience, a "native" toolchain has always meant a toolchain that
>> produces
>> code for the same machine that the toolchain runs on, while a "cross"
>> toolchain produces code for a different machine. That's obviously not
>what
>> "native" means in this context, so what does it mean?
>
>In terms of openembedded a "native" package is a package that contains
>code that is intended to run on the build machine (your workstation).
>The
>cross-compiler runs on your build-machine to produce code for your
>target-machine. Thats why it is a "native" package. And there are a lot
>more "native" packages than only the compiler.
>
>> The documentation makes frequent references to "the SDK" without ever
>> defining it. I know what it means generically, but what is it in the
>Yocto
>> context? And why does the SDK involve yet another set of three
>toolchains?
>> (Oh, and why is one of them called "canadian"?)
>
>A canadian-cross is a term from the compiler stuff, not specific to the
>Yocto Project or Poky or Openembedded.
>Building a canadian-cross is the process of build a toolchain on
>architecture A that runs on architecture B and produces object-code for
>architecture C. An example is building a gcc on an IA32 architecture,
>that
>will run on an ARM, producing code for an M68K. Yes, that does make
>sence,
>if the ARM machine does not have the resources to be able to bootstrap
>the
>compiler by itself.
>
>Hope that made some things clear.
>
>Michael
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

