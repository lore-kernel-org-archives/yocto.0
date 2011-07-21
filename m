Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87FBE4C80BE1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 00:40:20 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jul 2011 22:40:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,239,1309762800"; d="scan'208";a="30569739"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2011 22:40:05 -0700
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 21 Jul 2011 13:39:49 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.289.1; Thu, 21 Jul 2011 13:39:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 21 Jul 2011 13:39:49 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Joshua Lock <josh@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Jul 2011 13:39:47 +0800
Thread-Topic: [yocto] [PATCH 0/2][Image Creator] Hob Cache for speed up
	switching
Thread-Index: AcxGdd6N/7EmAa42SYOrtX5Jbl6zsQA8YjOg
Message-ID: <789F9655DD1B8F43B48D77C5D306597312D0DA86A6@shsmsx501.ccr.corp.intel.com>
References: <cover.1310365020.git.liping.ke@intel.com>
	<1311122520.2115.25.camel@scimitar>
In-Reply-To: <1311122520.2115.25.camel@scimitar>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/2][Image Creator] Hob Cache for speed up switching
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
X-List-Received-Date: Thu, 21 Jul 2011 05:40:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Josh

Yes, definitely this patch's importance is much less than the previous one.=
 But if more users are using hob, the cache would be very useful.
Because when using UI, users tend to switch between all combination of menu=
 frequently.=20
Even with the improved the speed, we still need around 7s. It would be nice=
 if he switches back the UI is loaded immediately without waiting time.

Yes. Definitely we need to make sure the hash key was correct.
Currently I am not sure which elements should be the final correct one (the=
 UI might changes in the future).
So my suggestion is that: we hold the patch. In the near future, when Hob i=
s very mature and nice, we can decide the combination key.
Then we rebase the patch and resend the patch. How do you think about it?

Thanks a lot for your help!
criping

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Joshua Lock
> Sent: Wednesday, July 20, 2011 8:42 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 0/2][Image Creator] Hob Cache for speed up
> switching
>=20
> On Mon, 2011-07-11 at 15:31 +0800, Ke Liping wrote:
> > From: Liping Ke <liping.ke@intel.com>
> >
> > The two patches are the implmentation of Hob Cache for accelarating
> > UI switching. If one configuration has been saved before, when user
> > switch back to the same configuration combination, we will use the
> > cache content instead of re-triggering parsing/loading phase.
>=20
> I'm still not certain about merging this change, do you feel it's still
> worth it once we've merged your change to reduce the tree generation
> time?
>=20
> If so we need to revise the second patch to invalidate the cached value
> correctly. sdk-machine shouldn't affect the available packages but which
> layers are enabled certainly will.
>=20
> Cheers,
> Joshua
> --
> Joshua Lock
>         Yocto Project "Johannes factotum"
>         Intel Open Source Technology Centre
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

