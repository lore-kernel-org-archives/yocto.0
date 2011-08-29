Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE96E0120E
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2011 09:27:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Aug 2011 09:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,297,1312182000"; d="scan'208";a="46091675"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2011 09:27:38 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 29 Aug 2011 09:27:37 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.193]) with mapi id
	14.01.0323.003; Mon, 29 Aug 2011 09:27:37 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Thread-Topic: [yocto] Tested host distros for 1.1
Thread-Index: AQHMYatcIeBLunnO90OcfqsSBiPEd5U0BniwgAB6/gD//4tfAA==
Date: Mon, 29 Aug 2011 16:27:36 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CC17@ORSMSX101.amr.corp.intel.com>
References: <201108231642.49667.paul.eggleton@linux.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E5CBD6@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNeP9Epi6nqGGV-_NwFM4U085qGO6K9-En8KFDVFg9L5YA@mail.gmail.com>
In-Reply-To: <CAEsOVNeP9Epi6nqGGV-_NwFM4U085qGO6K9-En8KFDVFg9L5YA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Mon, 29 Aug 2011 16:27:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Matthew,=20

Right now what I mention in the Poky manual you reference is somewhat vague=
.  Early on the team had some discussion as to whether to try and compile s=
ome sort of complete list of the distros that are supported.  It turned out=
 the actual distros tested were few.  So I guess my comment here to the gro=
up was trying to verify (again) whether we had a real list of distros with =
version numbers we could say have been tested with Yocto.  Maybe it is wort=
h discussing again how exhaustive and detailed we want the supported distro=
s list to be.

Thanks,=20
ScottR

-----Original Message-----
From: McClintock Matthew-B29882 [mailto:B29882@freescale.com]=20
Sent: Monday, August 29, 2011 9:22 AM
To: Rifenbark, Scott M
Cc: Paul Eggleton; yocto@yoctoproject.org
Subject: Re: [yocto] Tested host distros for 1.1

On Mon, Aug 29, 2011 at 11:02 AM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> So the official list of distros we test against includes?:
>
> =A0 =A0 =A0 =A0Ubuntu 11.04
> =A0 =A0 =A0 =A0Fedora release 14 (Laughlin)

The manual mentions a few more:

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#intro=
-requirements

-M

