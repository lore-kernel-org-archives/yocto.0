Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0399DE00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 14:58:12 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2012 14:58:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,284,1355126400"; d="scan'208";a="234319309"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by orsmga001.jf.intel.com with ESMTP; 14 Dec 2012 14:58:12 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Fri, 14 Dec 2012 14:58:10 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Thread-Topic: [yocto] What is GMAE?
Thread-Index: AQHN2jMUaz0r4g0zHkC5Fchvzb9UyZgZORyAgAAQoQD//33tAIAAlicA//+KHTA=
Date: Fri, 14 Dec 2012 22:58:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6C09F@ORSMSX101.amr.corp.intel.com>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
	<CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
In-Reply-To: <CAFZh4h-nVqnzFVH8SsmKyJL+=8DPa6ew-YQG1=dy2j13kxCtSA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 22:58:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So instead of back port, have you looked into adt-installer to address your=
 need.  It's sysroot is based on target images.  The only downside is it's =
based on opkg and ipk if that's not your default package format.

-----Original Message-----
From: Brian Hutchinson [mailto:b.hutchman@gmail.com]
Sent: Friday, December 14, 2012 1:58 PM
To: Zhang, Jessica
Cc: Mark Hatle; yocto@yoctoproject.org
Subject: Re: [yocto] What is GMAE?

On Fri, Dec 14, 2012 at 4:09 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> Actually I talked with Richard regarding retiring the toolchain targets (=
meta-toolchain and meta-toolchain-gmae) as Mark mentioned that now we can b=
uild a toolchain matching the >image.  Also, we're continue improving adt-i=
nstaller which also allows you to setup sysroot using the target image as w=
ell.  Richard's concern is there maybe some legacy user that >preferred the=
 toolchain target. With the latest changes in toolchain generation which re=
ally maps to target images, probably we should unplug to legacy ones to mak=
e the toolchain generation more streamline.  Thoughts or concerns?

I'm one of the users that is stuck using Edison 6.0.  I'm desperate for the=
 ability to generate a toolchain and sysroot that matches our target.  Righ=
t now I have to build meta-toolchain and then manually look in the tmp for =
sysroot-destdir related stuff from our build and copy it to the sysroot in =
/opt/poky and hand that out to developers.
When our sister group overseas makes a change that effects the sysroot it b=
reaks our build and I have to figure out what happened and manually adjust =
our sysroot to fix the problem.  I sure would like to be able to just do an=
 update and then bitbake the toolchain to pick up the changes.  I figure we=
 are stuck with Edison for a while ... can I back port these toolchain feat=
ures you all are talking about to Edison?

Regards,

Brian

