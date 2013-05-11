Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8FCCE00340
	for <yocto@yoctoproject.org>; Sat, 11 May 2013 08:36:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2013 08:34:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,653,1363158000"; d="scan'208";a="311839525"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2013 08:36:44 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.226]) with mapi id
	14.01.0355.002; Sat, 11 May 2013 08:36:42 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] New 1.3.2 Release Candidate available
Thread-Index: AQHOTciwSKGm7hb3m0W/zypQaTFej5kAHhDQ
Date: Sat, 11 May 2013 15:36:41 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35B41@fmsmsx152.amr.corp.intel.com>
References: <CAPhnLPD+1_nENOdF+tqf3W+c6Fq-2_VAp1Tq3kop1KtDaNCkrQ@mail.gmail.com>
In-Reply-To: <CAPhnLPD+1_nENOdF+tqf3W+c6Fq-2_VAp1Tq3kop1KtDaNCkrQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Re: New 1.3.2 Release Candidate available
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
X-List-Received-Date: Sat, 11 May 2013 15:36:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have generated and published a set of YP 1.3.2 documents based on the tip=
 of the yocto-docs/danny branch.  Be sure to pull the commits from yocto-do=
cs/danny into poky repo before final tarball.  Minimally, these commits cha=
nge some variables in the poky.ent file and update the Manual Revision tabl=
es with a new entry for 1.3.2.  I put "June 2013" in there.  Let me know if=
 it will go out in "May 2013" and I will change the dates.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Flanagan, Elizabeth
>Sent: Friday, May 10, 2013 2:52 PM
>To: yocto@yoctoproject.org
>Cc: SSD-OTC Romania Yocto QA
>Subject: [yocto] New 1.3.2 Release Candidate available
>
>We have fixed the final issues with the 1.3.2 rc build. The build is
>available at:
>
>http://autobuilder.yoctoproject.org/pub/nightly/20130509-1
>
>meta-fsl-arm 	a0e486a76af5819ee76ac34e966feb72bd3c48bd 	danny
>meta-fsl-ppc 	084331c6f72dfe8be2f4981c802c43ae44d3b812 	danny
>meta-intel 	d44f005338012cc7111190122b2ab08a29c0e0e7 	danny
>meta-qt3 	c86fb1727ae09526c442ec29fffde3f010aa70eb 	danny
>poky 	00ab7c884b614d23a4ce6c17f07c612ecc9c7319 	danny
>
>Please begin QA on this as soon as possible.
>
>--
>Elizabeth Flanagan
>Yocto Project
>Build and Release
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

