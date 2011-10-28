Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF2DEE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 08:07:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Oct 2011 08:07:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,418,1315206000"; d="scan'208";a="68062554"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 28 Oct 2011 08:07:36 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 28 Oct 2011 23:07:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Oct 2011 23:07:34 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 28 Oct 2011 23:07:32 +0800
Thread-Topic: [yocto] building and using yocto 1.1
Thread-Index: AcyVgFMFn6K7BXTlTEqgHIr6UsX8dwAAnrDQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12DB678086@shsmsx501.ccr.corp.intel.com>
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
In-Reply-To: <4EAAC008.4050406@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 15:07:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We also test 1.1 on a 4-core Core i7 machine with 4GB memory. The build tim=
e is about 120 minutes. The detailed test result and configuration is on ht=
tps://wiki.yoctoproject.org/wiki/Performance_Test. Maybe you could follow t=
he page and retry the build.

> What machine are you using (amount of ram, disk space, and cpu cores)?
>=20
> What configuration did you set for parallel builds?
>=20
> I can build 1.1 on an 8 core i7 system w/ 8 GB of ram, set with
> parallel settings of 8 thread and 8 parallel make jobs, in about 100 minu=
tes (or less).
>=20
> --Mark
>=20
> On 10/28/11 9:20 AM, Xianghua Xiao wrote:
>> when I built 1.0 out of the box, it took 7 hours.
>> on the same machine/network, yocto 1.1 took a full 12 hours, not
>> sure what happened to cause this nearly doubled build time.
>>=20
>> after the default build(bitbake core-image-sato), I run 'runqemu
>> qemux86', click on 'tasks', try to add a new task, however my input
>> is shown non-english, or garbage on screen, which I have seen the
>> same issue on yocto1.0 release as well. this is a 10.04 ubuntu 64bit
>> machine.
>>=20
>> don't know what to say about it, just my OOB(out-of-box) experience
>>=20
>> xianghua
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Best Regards,
Jiajun



