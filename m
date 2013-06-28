Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB9E8E01482
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 03:25:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2013 03:22:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="336922763"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 28 Jun 2013 03:25:10 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 28 Jun 2013 03:25:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.24]) with mapi id
	14.03.0123.003; Fri, 28 Jun 2013 03:25:09 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Chris Tapp
	<opensource@keylevel.com>
Thread-Topic: [yocto] Bitbake requires Python 2.7.3
Thread-Index: AQHOc91mMJirr0C1ckq402r6OL75NJlLVKGA//+XCgA=
Date: Fri, 28 Jun 2013 10:25:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF523CC@ORSMSX101.amr.corp.intel.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
In-Reply-To: <76247853.lJbnn8TcbK@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 10:25:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yep - this is on my plate to document. =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Friday, June 28, 2013 2:40 AM
>To: Chris Tapp
>Cc: yocto@yoctoproject.org
>Subject: Re: [yocto] Bitbake requires Python 2.7.3
>
>Hi Chris,
>
>On Friday 28 June 2013 09:55:42 Chris Tapp wrote:
>> I'm experimenting with meta-fsl-arm and I need to use 'master' for
>some of
>> the latest updates. However, when I build I get told that "Bitbake
>requires
>> Python 2.7.3".
>>
>> My development system is Ubuntu 11.10, which only has 2.7.2 (and is
>out of
>> support, so no updates!) and the "latest" "Quick Start" manual simply
>says
>> that 2.7 is required.
>>
>> Is 2.7.3 now a hard requirement (in which case the documentation could
>do
>> with a minor change), or is the version test being too specific?
>
>It is now a requirement, yes (as are git >=3D 1.7.5 and tar >=3D 1.24). As=
 I
>understand it a documentation update is queued to cover this.
>
>FWIW, for older hosts where installing these tools in the normal fashion
>is
>difficult or impractical, there is now buildtools-tarball (which
>replaces and
>extends the old external-python-tarball). This builds on the relocatable
>SDK
>installer to provide suitable versions of python, git, tar and other
>tools
>required on the build host. I believe the plan is to offer this for
>download so
>that people can get started immediately (and of course point to this in
>the
>documentation).
>
>Cheers,
>Paul
>
>--
>
>Paul Eggleton
>Intel Open Source Technology Centre
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

