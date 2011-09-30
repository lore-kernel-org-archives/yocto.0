Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82513E0120A
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2011 19:32:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Sep 2011 19:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="58212016"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 29 Sep 2011 19:32:29 -0700
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Thu, 29 Sep 2011 19:32:29 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Date: Thu, 29 Sep 2011 19:32:26 -0700
Thread-Topic: preempt-rt kernel shutdown now command does not work
Thread-Index: Acx/EnoT2B2DZfF4ReKz0fZrSwILKAABj7Dg
Message-ID: <4BD43A85686FC34D819098DB1C3999D9018A7E81C9@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018A7E818B@orsmsx502.amr.corp.intel.com>
	<4E851EF5.2010900@intel.com>
In-Reply-To: <4E851EF5.2010900@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: preempt-rt kernel shutdown now command does not work
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
X-List-Received-Date: Fri, 30 Sep 2011 02:32:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,

For the non-rt "shutdown now" works perfectly fine.=20
For the rt kernel, after the command is issued, it tries to halt the system=
 and hangs there  forever after the connection to the X server is lost.

Thanks
Kishore.

-----Original Message-----
From: Hart, Darren=20
Sent: Thursday, September 29, 2011 6:44 PM
To: Bodke, Kishore K
Cc: yocto@yoctoproject.org
Subject: Re: preempt-rt kernel shutdown now command does not work

On 09/29/2011 05:54 PM, Bodke, Kishore K wrote:
> Hi,
>=20
> "shutdown -h now" command is not working on core-image-sato image
> with preempt-rt kernel 3.0.4  on Romley and crystal forest BSP
>=20
> I get Warning**: could not initialize ACPI battery. Xinit: connection
> to X server lost. xinit: uexpected signal 15

Hi Kishore,


I don't know that I've tried that specific command.

I see the unexpected signal message when shutting down the qemux86 sato
image (non-rt) with that or the halt command, but it does shut all the
way down. In your case does the system continue to be responsive after
issuing the command?


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

