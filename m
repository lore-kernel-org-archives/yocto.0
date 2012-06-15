Return-Path: <limingx.l.an@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 387E2E013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 19:25:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2012 19:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157853466"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2012 19:25:14 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.19.9.52) by
	FMSMSX104.amr.corp.intel.com (10.19.9.35) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 14 Jun 2012 19:25:14 -0700
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	FMSMSX101.amr.corp.intel.com (10.19.9.52) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 14 Jun 2012 19:25:14 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.56]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.231]) with mapi id
	14.01.0355.002; Fri, 15 Jun 2012 10:25:13 +0800
From: "An, LimingX L" <limingx.l.an@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: live image types and qemu machines
Thread-Index: AQHNSj+iyOSjoET3xkqsKkFSMg1pGpb6pVNA
Date: Fri, 15 Jun 2012 02:25:12 +0000
Message-ID: <E5BAA81A5E0FB344B2B234D4FBAC45DC0FCEBEE7@SHSMSX102.ccr.corp.intel.com>
References: <CBFFBD1E.11118%belen.barros.pena@intel.com>
In-Reply-To: <CBFFBD1E.11118%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: live image types and qemu machines
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
X-List-Received-Date: Fri, 15 Jun 2012 02:25:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Belen,

I only know there have two variables we get from the bitbake to charge whic=
h image is runnable, now.
"RUNNABLE_IMAGE_TYPES" =3D ext3, ext2, "RUNNABLE_MACHINE_PATTERNS" =3D qemu=
.

Thanks!
--
Liming
-----Original Message-----
From: Barros Pena, Belen=20
Sent: Thursday, June 14, 2012 11:09 PM
To: yocto@yoctoproject.org; An, LimingX L
Subject: live image types and qemu machines

Hi all,

The current Hob allows you to build images for a qemu machine selecting 'li=
ve' as your image type. To me (with my pitiful knowledge) this doesn't make=
 much sense: would I want to deploy an image built for a virtualisation env=
ironment in a real piece of hardware?

So here goes a question: should we allow Hob users, who are mainly people n=
ew to the Yocto project, to select the 'live' image type when building imag=
es for qemu machines?

This might sound like a silly question, but it has a pretty big impact on t=
he Settings dialog and on the number of variations we need to create for ou=
r 'Image details' screen, which appears after the build finishes and displa=
ys logical next steps (like run the image or deploy your image to external =
storage).

Any help with this would be much appreciated.

Thanks!

Belen





