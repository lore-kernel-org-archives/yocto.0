Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A801E00DF7; Thu,  8 Feb 2018 23:48:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11B11E00D91
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 23:48:04 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Feb 2018 23:48:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,482,1511856000"; d="scan'208";a="16493202"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by fmsmga007.fm.intel.com with ESMTP; 08 Feb 2018 23:48:03 -0800
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.31]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.73]) with mapi id
	14.03.0319.002; Fri, 9 Feb 2018 15:48:02 +0800
From: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [auh] [PATCH] RADME: fix typo on one of the settings
Thread-Index: AQHToWdfmwKqZfF/l0CLFpz6ekFxX6ObImeAgACPNWA=
Date: Fri, 9 Feb 2018 07:48:01 +0000
Message-ID: <50B33AC5ED75F74F991980326F1C438D1F2086E8@PGSMSX103.gar.corp.intel.com>
References: <1518153995-54483-1-git-send-email-rebecca.swee.fun.chang@intel.com>
	<35ff3647-2ee6-676d-c066-9f13e52aa5cf@linux.intel.com>
In-Reply-To: <35ff3647-2ee6-676d-c066-9f13e52aa5cf@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWVjYzM1YjMtNjJiNS00YjE5LWE2NzUtNjRiNzU0YzExM2MwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJTc25vMWxjc1pGUVFUVkc2VGREVnRYTU13T0NrUSt5alNrUW44U040YVNhUW1cLzJFU3RBODFrZ1EyOE1tQWFwciJ9
dlp-product: dlpe-windows
dlp-version: 11.0.0.116
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: [auh] [PATCH] RADME: fix typo on one of the settings
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
X-List-Received-Date: Fri, 09 Feb 2018 07:48:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Oops, please proceed to make the changes, on both README and commit message=
.

Thanks,
Rebecca

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Alexander Kanavin
> Sent: Friday, February 9, 2018 3:15 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] [auh] [PATCH] RADME: fix typo on one of the settings
>=20
> On 02/09/2018 07:26 AM, Chang Rebecca Swee Fun wrote:
> >   README | 2 +-
>=20
>=20
> There is a typo in the commit message however :)
>=20
>=20
> Alex
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

