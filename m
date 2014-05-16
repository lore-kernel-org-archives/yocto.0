Return-Path: <paul.w.farquhar@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65CD8E0077C; Fri, 16 May 2014 06:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga11.intel.com (unknown [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038F6E0070F
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 06:41:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2014 06:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1067,1389772800"; d="scan'208";a="540230830"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2014 06:41:41 -0700
Received: from irsmsx106.ger.corp.intel.com (163.33.3.31) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 16 May 2014 14:41:41 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.98]) by
	IRSMSX106.ger.corp.intel.com ([169.254.8.28]) with mapi id
	14.03.0123.003; Fri, 16 May 2014 14:41:41 +0100
From: "Farquhar, Paul W" <paul.w.farquhar@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] couple simple questions on building for intel galileo
Thread-Index: Ac9xDI2Dcw7d9TWvRvS031yo73Qjbg==
Date: Fri, 16 May 2014 13:41:40 +0000
Message-ID: <73A048818337FA45835A946BCB303D721D32C8E1@IRSMSX104.ger.corp.intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: couple simple questions on building for intel galileo
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
X-List-Received-Date: Fri, 16 May 2014 13:41:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

I just finished building the Yocto image for the Galileo.

I used the V1.0.0 BSP: https://downloadcenter.intel.com/Detail_Desc.aspx?Dw=
nldID=3D23197
The documentation on how to build is also here.

I used Ubuntu 14.04 which was not straightforward. I suggest to use an olde=
r distribution.
I also build the UEFI and installed that too.
All works fine on my Galileo!

Regards,

Paul
Intel GmbH
Dornacher Strasse 1
85622 Feldkirchen/Muenchen, Deutschland
Sitz der Gesellschaft: Feldkirchen bei Muenchen
Geschaeftsfuehrer: Christian Lamprechter, Hannes Schwaderer, Douglas Lusk
Registergericht: Muenchen HRB 47456
Ust.-IdNr./VAT Registration No.: DE129385895
Citibank Frankfurt a.M. (BLZ 502 109 00) 600119052


