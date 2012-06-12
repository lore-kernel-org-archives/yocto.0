Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0427FE0044A
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 10:12:13 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Jun 2012 10:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164738264"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2012 10:12:13 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 12 Jun 2012 10:12:12 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.113]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.88]) with mapi id
	14.01.0355.002; Tue, 12 Jun 2012 10:12:12 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [yocto] [PATCH 0/1] remove snb rc6 patches from v3.4 kernel
	repository
Thread-Index: AQHNSArG7wLGK4ILB0aLvZ0mPt0ZNpb2BFqA//+TWeCAANYrAIAAVRYg
Date: Tue, 12 Jun 2012 17:12:12 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C031141F7@ORSMSX106.amr.corp.intel.com>
References: <cover.1339443379.git.nitin.a.kamble@intel.com>
	<4FD652E3.3060209@windriver.com>
	<ADD6A3980E8C39419A432FF422031B4C03113E5D@ORSMSX106.amr.corp.intel.com>
	<CADkTA4Md4=YrMs-EcXgfor4zCHq32xReXVwOB1L9KsoPW2=RLw@mail.gmail.com>
In-Reply-To: <CADkTA4Md4=YrMs-EcXgfor4zCHq32xReXVwOB1L9KsoPW2=RLw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] remove snb rc6 patches from v3.4 kernel repository
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
X-List-Received-Date: Tue, 12 Jun 2012 17:12:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Bruce,
> > I think these rc6 patches are still needed for linux-yocto_3.2.bbappend=
.
> And they are referenced in the sugarbay bsp 3.2 Yocto kernel as you note
> above. The commit I sent is for for v3.4 yocto kernel tree.
>=20
> Yes, of course it's for 3.4 .. that's where I merged it :)
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/log/?h=3Dmeta
>=20
> > Are you saying about dropping rc6 patches from the 3.2 kernel tree as w=
ell?
>=20
> I was more reminding for any updates to the BSP to 3.4 .. i.e. don't forg=
et to
> drop it from the recipes when updating, sine it will thrown an error duri=
ng
> patching.
>=20
> Cheers,
>=20
> Bruce
   I see your point now.  I have dropped them from 3.4 kernel recipe 1st to=
 avoid patch application errors. Then we realized that these patches are no=
t needed in the v3.4 kernel repository.

Nitin


