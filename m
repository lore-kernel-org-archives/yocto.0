Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AA8EE01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 22:36:44 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 22:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,804,1363158000"; d="scan'208";a="348318102"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 22:36:43 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0123.003; Tue, 4 Jun 2013 22:36:43 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC] Change in milestone branching.
Thread-Index: AQHOYYN2ThwdiTtrTUu3/DI8BT+afJkmmitQ
Date: Wed, 5 Jun 2013 05:36:41 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF47682@ORSMSX101.amr.corp.intel.com>
References: <CAPhnLPBjbPh=W7+PFgtxQR8Agu_YbYPqhehCi4zrBR776qi7pw@mail.gmail.com>
In-Reply-To: <CAPhnLPBjbPh=W7+PFgtxQR8Agu_YbYPqhehCi4zrBR776qi7pw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [RFC] Change in milestone branching.
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
X-List-Received-Date: Wed, 05 Jun 2013 05:36:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good in my opinion.

Scott R.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Flanagan, Elizabeth
>Sent: Tuesday, June 04, 2013 5:27 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] [RFC] Change in milestone branching.
>
>All.
>
>Now that the autobuilder is able to do mix and match branching
>(everything doesn't need to be the same), does anyone foresee any
>issues with doing away with future poky milestone branches and just
>utilize tags? This should make maintainers jobs a bit easier in that
>they now do not need to maintain/stabilize multiple branches and it
>should help a bit with master stability. We will of course continue to
>do the final release branch but would no longer need the 1.5_M1
>branches.
>
>Objections? Thoughts? My plan is that if maintainers would like to see
>this, to do it for the 1.5 M1 milestone.
>
>-b
>
>--
>Elizabeth Flanagan
>Yocto Project
>Build and Release
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

