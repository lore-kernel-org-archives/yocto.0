Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD2FF4C805A8
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2011 02:10:10 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 00:10:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,204,1299484800"; d="scan'208";a="614549167"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 00:10:08 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Mar 2011 15:08:20 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 18 Mar 2011 15:08:19 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Fri, 18 Mar 2011 15:08:15 +0800
Thread-Topic: current status for ADT
Thread-Index: Acvf+IF8zpZ/jJ5ZTSKwQOqE5LZDMwAT9T+wATyXUAA=
Message-ID: <789F9655DD1B8F43B48D77C5D306597333026A0B@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332F5FA0F@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95305E9595@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95305E9595@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: current status for ADT
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
X-List-Received-Date: Fri, 18 Mar 2011 07:10:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

We have a first round completed test cycle against RC3 for the sdk side.=20

And we have updated your test temple and
Upload it on https://oldwiki.pokylinux.org/share/SDK_docs/Test
For the bugs we have found and fixed/verified, we might skip it and did not=
 list
it on the docs.


And all our test project is under the folder of=20
https://oldwiki.pokylinux.org/share/SDK_docs/Test/srcs


We will continue to update the test report with further testing data those =
days.

Thanks & Regards,
criping

> -----Original Message-----
> From: Zhang, Jessica
> Sent: Saturday, March 12, 2011 8:03 AM
> To: Ke, Liping; Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: RE: current status for ADT
>=20
> Liping and Lianhao,
>=20
> Attached is the updated 1.0 test template, feel free to add more test
> cases.
> I think we're building RC3 over the weekend, and once the build is done,
> we should test against it which contains all the latest and needed
> changes for bernard. I'll monitor the build progress over the weekend
> and synch with you on testing at your beginning of the week.
>=20
> Thanks,
> Jessica
>=20
> Ke, Liping wrote:
> > Hi, Jessica
> >
> > We use today's latest poky master which includes all our own fixes to
> > build (arm, i586, mips) target fs and cross toolchains. And then we
> > run below test:
> >
> >
> > Test environment:
> >
> > 1. For the available repo, use adt-installer installed toolchain:
> > i686-arm.
> >
> > 2. For meta-toolchainsdk installed toolchain: i686-i586, i686-arm,
> > i686-mips.
> >
> > 3. target: Qemu x86
> >
> > Test project:
> >
> > Against our selected test c++/c/libtool projects. All works fine.
> >
> > All those tests are under command line with our automatic test
> > scripts.
> > We have not tested Eclipse plugin UI yet.
> >
> > One thing to do is that we need to set up test adt repos for more
> > archs against newer changeset so that we can cover more adt-installer
> > tests against different archs.
> >
> > Thanks & Regards,
> > criping

