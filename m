Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37FAFE009F3; Wed, 21 Oct 2015 05:59:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Oct 2015 05:59:34 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 838DAE00985
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:59:34 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2D9BABBP8ZV/yYyC4dbGQEBglQsVGkGvTOCAIV9AoEmOhIBAQEBAQEBgQqEIwEBAQEDEnMEAgEIDQQBAwEBCx0HMhQDBggCBAESCBqIDAGseKA+AQEBAQEBAQEBAQEBAQEBAQEBAQEBF4tRhFg4BoMSgRQFjQ6HfQGFAYlwhmqRBBcPg31vAYEGJRyBBAEBAQ
X-IPAS-Result: A2D9BABBP8ZV/yYyC4dbGQEBglQsVGkGvTOCAIV9AoEmOhIBAQEBAQEBgQqEIwEBAQEDEnMEAgEIDQQBAwEBCx0HMhQDBggCBAESCBqIDAGseKA+AQEBAQEBAQEBAQEBAQEBAQEBAQEBF4tRhFg4BoMSgRQFjQ6HfQGFAYlwhmqRBBcPg31vAYEGJRyBBAEBAQ
X-IronPort-AV: E=Sophos;i="5.15,634,1432612800"; d="scan'208";a="125174338"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	21 Oct 2015 08:58:29 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC04.global.avaya.com) ([135.64.58.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	21 Oct 2015 08:58:29 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC04.global.avaya.com ([135.64.58.14]) with mapi id
	14.03.0174.001; Wed, 21 Oct 2015 14:58:27 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Meta layer for Cavium CNS3xxx ARM processor
Thread-Index: AQHRC/33OH0/9QM7uUafEkFSeCA2zZ51589g
Date: Wed, 21 Oct 2015 12:58:27 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A4C9EE0@AZ-FFEXMB01.global.avaya.com>
References: <D24D4681.68AC5%belen.barros.pena@intel.com>
In-Reply-To: <D24D4681.68AC5%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Re: Meta layer for Cavium CNS3xxx ARM processor
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
X-List-Received-Date: Wed, 21 Oct 2015 12:59:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I didn't find a match for Cavium CNS3412.=20
Is there an equivalent machine which use below flags for building up binari=
es.

-march=3Darmv6k -Wl,-z,max-page-size=3D0x10000,-z,common-page-size=3D0x1000=
0,-Ttext-segment=3D0x10000

Thanks,
Abhinav

-----Original Message-----
From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]=20
Sent: Wednesday, October 21, 2015 18:13
To: Bipnesh, Abhinav (Abhinav); yocto@yoctoproject.org
Subject: Re: [yocto] Meta layer for Cavium CNS3xxx ARM processor



On 21/10/2015 10:01, "yocto-bounces@yoctoproject.org on behalf of Bipnesh, =
Abhinav (Abhinav)" <yocto-bounces@yoctoproject.org on behalf of abhinavbipn=
esh@avaya.com> wrote:

>Hi,
>=20
>I am looking for an meta layer which provide support for Cavium CNS3xxx=20
>SOC as need to build some application on that platform. Below is the=20
>output from the board when I check for the release and CPU information
>=20
>$ cat /etc/*release
>MontaVista Linux 6, (.dev-snapshot-20130726)
>=20
>=20
>$ cat /proc/cpuinfoProcessor       : ARMv6-compatible processor rev 4
>(v6l)BogoMIPS        : 279.34Features        : swp half thumb fastmult
>vfp edsp javaCPU implementer : 0x41CPU architecture: 7CPU variant     :
>0x0CPU part        : 0xb02CPU revision    : 4 Hardware        : Cavium
>Networks CNS3420 Validation BoardRevision        : 0000Serial          :
>0000000000000000
>=20
>So is there any meta layer which supports above SOC.

You can find out about such things in the layer index:

https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__layers.openembedded.o=
rg_layerindex_branch_master_machines_&d=3DBQIFAw&c=3DBFpWQw8bsuKpl1SgiZH64Q=
&r=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3DXxYTvsQRPzXBJWLwdOWeBi=
HMpE2Nn6iOx6n2oQQJml4&s=3Di0Lhp1I_W_sJiWRro6u6fjpwCUbISC9O5dSlLY08yBM&e=3D=
=20

Make sure to select the correct branch on the left side of the menu.

Cheers

Bel=E9n

>=20
>Thanks,
>Abhinav
>


