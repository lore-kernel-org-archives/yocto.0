Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E62F0E011C5
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 23:14:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Oct 2012 23:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,563,1344236400"; d="scan'208";a="232057249"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 09 Oct 2012 23:14:19 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 9 Oct 2012 23:14:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.180]) with mapi id
	14.01.0355.002; Tue, 9 Oct 2012 23:14:18 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Evade Flow <evadeflow@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Control which host components are included in ADT output?
Thread-Index: AQHNpmsM00XKWyvFOE6R+jWnVbNMqJeyDGQQ
Date: Wed, 10 Oct 2012 06:14:18 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B0D4B4@ORSMSX101.amr.corp.intel.com>
References: <CAMAb8ZO+56YJbrf8LAjbt1eS=GpSgmYr0=MSvx020K=1xwduWw@mail.gmail.com>
In-Reply-To: <CAMAb8ZO+56YJbrf8LAjbt1eS=GpSgmYr0=MSvx020K=1xwduWw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Control which host components are included in ADT output?
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
X-List-Received-Date: Wed, 10 Oct 2012 06:14:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Evade,

The main purpose of Yocto ADT is for setting up a development environment o=
n your host which allows you to cross develop applications for your target.=
  And there're two key components help you to achieve this: cross-toolchain=
 and sysroot. That's why the sysroot provides you a collection of target li=
bs and all the main focus of ADT manual is for how to customize your sysroo=
t to meet your special development needs.

Seems you're more interested in generate a SDK for host?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Evade Flow
Sent: Tuesday, October 09, 2012 3:11 PM
To: yocto@yoctoproject.org
Subject: [yocto] Control which host components are included in ADT output?

I have a question about the ADT and how it selects host SDK components.
If I type:

% bitbake meta-toolchain-sdk

I wind up getting hundreds of target libs when I extract the generated
tarball:

% pwd
/opt/poky/1.2.1/sysroots
% ls armv5te-poky-linux-gnueabi/usr/lib | wc -l
696

but a relatively small number of host libs:

% ls i686-pokysdk-linux/usr/lib | wc -l
53

Is this normal? Taking libxml2 as an example:

% ls -1 armv5te-poky-linux-gnueabi/usr/lib/libxml*
armv5te-poky-linux-gnueabi/usr/lib/libxml2.la
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2
armv5te-poky-linux-gnueabi/usr/lib/libxml2.so.2.7.8
% ls -1 i686-pokysdk-linux/usr/lib/libxml*
zsh: no matches found: i686-pokysdk-linux/usr/lib/libxml*

It seems desirable to have libxml2 be part of the SDK I give to my developm=
ent team. We have a lot of test applications that can be run on the host, a=
nd I don't like the thought of somebody wasting time chasing a bug that tur=
ns out to be due to the fact that he is linking against a different (system=
-installed) version of libxml2 rather than the target version.

Skimming the ADT manual, this section seems to hint at a solution:

 - http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#adt-=
package

But I can't quite follow all the steps. :-% It says (using libglade as an e=
xample):

  First, you should generate the ipk file for the libglade package and
  add it into a working opkg repository. Use these commands:

    $ bitbake libglade
    $ bitbake package-index


Being totally new to opkg, this lost me. What does the 'package-index'
target actually do?  Does bitbake "add it [libglade] into a working opkg re=
pository" for me, or am I supposed to take the output of the command and do=
 something with it? I had a look in these two locations for 'package-index'=
 and came up empty:

 - http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
 - http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual=
.html

What's the best place to look for these kinds of references when I get stuc=
k on something?

The ADT docs go on to say:

  Next, source the environment setup script found in the Yocto Project
  files. Follow that by setting up the installation destination to point
  to your sysroot as <sysroot_dir>. Finally, have an OPKG configuration
  file <conf_file> that corresponds to the opkg repository you have just
  created.

     $ opkg-cl -f <conf_file> -o <sysroot_dir> update
     $ opkg-cl -f <cconf_file> -o <sysroot_dir> \
        --force-overwrite install libglade
     $ opkg-cl -f <cconf_file> -o <sysroot_dir> \
        --force-overwrite install libglade-dbg
     $ opkg-cl -f <conf_file> -o <sysroot_dir> \
        --force-overwrite install libglade-dev

<sysroot_dir> I understand, but what is <conf_file>? Did bitbake generate t=
his for me? Am I supposed to create one by hand? Where? These instructions =
are a little hard to follow due to the use of placeholders rather than conc=
rete arguments. I think a complete, explicit example would help a lot here.

Also, it seems likely that the above commands would only install a libglade=
 compiled for the target? How would I generate a libglade for the host?

Another question is: is there a way to tune the ADT tarball to be a better =
fit for my needs so that I don't need to add so many packages by hand after=
-the-fact?

Any advice much appreciated, thanks!
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

