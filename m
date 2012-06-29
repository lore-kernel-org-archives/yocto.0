Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88DC9E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 09:23:37 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Jun 2012 09:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="162294287"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 29 Jun 2012 09:23:36 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 29 Jun 2012 09:23:36 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.154]) with mapi id
	14.01.0355.002; Fri, 29 Jun 2012 09:23:35 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] FW: Revised arch design of web hob with addition of
	web	service part
Thread-Index: Ac1VtZDqbuZb26X5SGidz6lrT8ROXgAFK1ZQABJb5sA=
Date: Fri, 29 Jun 2012 16:23:35 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C86A522@ORSMSX105.amr.corp.intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC23C0C63D@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC23C0C63D@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "Liu, UrielX" <urielx.liu@intel.com>
Subject: Re: FW: Revised arch design of web hob with addition of web	service part
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
X-List-Received-Date: Fri, 29 Jun 2012 16:23:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Wang, Shane
> Sent: Friday, June 29, 2012 12:40 AM
>=20
> On behalf of Uriel:
>=20
> Please find the enclosure for the revised web hob design with the additio=
n of
> web service part. Thank you.
>=20
> Sincerely Yours,
> Uriel Liu

Guys - thanks for the update, this explains things better for me. Questions=
:

1. So you will be communicating with the bitbake server using SOAP rather t=
han REST?  Can we just call it SOAP (the specific implementation) rather th=
an Web Service (which seems pretty generic)?

2. Slide 5 - still shows REST, should this be fixed with "Web service" or b=
etter with SOAP?

3. What is the license for the Django server? At some point we will need to=
 analyze licensing of all the components we want to use, but just in genera=
l if you can let us know what we're dealing with.

4. Based on the above, would we be able to release all of the server-side s=
oftware with the core Yocto Project release?

Thanks

Dave

