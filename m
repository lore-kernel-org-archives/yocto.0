Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B7AB4C80FE8
	for <yocto@yoctoproject.org>; Wed, 18 May 2011 15:55:32 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2011 13:55:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,233,1304319600"; 
   d="scan'208";a="4212056"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2011 13:55:32 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 18 May 2011 13:55:32 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Wed, 18 May 2011 13:55:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Daniel Lazzari <busytester@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 18 May 2011 13:55:31 -0700
Thread-Topic: [yocto] Can't create a new project with Yocto BitBake
	Commander	plugin
Thread-Index: AcwU9QHqYFD7m8FYR8SdP3ee2bshGgAqIVMg
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9501170DBC5B@orsmsx504.amr.corp.intel.com>
References: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
In-Reply-To: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Can't create a new project with Yocto BitBake Commander	plugin
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
X-List-Received-Date: Wed, 18 May 2011 20:55:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

One more thing to check, do you have a build dir under your Yocto checkout?=
  If so that maybe the reason prevent a new bitbake commander project being=
 created since the build dir can contain large contents that Eclipse IProje=
ct tree view can't handle, so the work around is to move your build dir out=
side your Yocto checkout through oe-init-build-env path_of_build_dir...

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Daniel Lazzari
Sent: Tuesday, May 17, 2011 5:46 PM
To: yocto@yoctoproject.org
Subject: [yocto] Can't create a new project with Yocto BitBake Commander pl=
ugin

Hi everyone,

I searched and couldn't find anything on this issue, but it seems so
obvious that I'm guessing I'm doing something wrong. I installed the
Yocto Eclipse Plugin in Eclipse Helios Service Release 2 on an Ubuntu
10.04 machine. I selected File->New->Project, Selected Yocto BitBake
Commander->New Yocto Project, set the Project Name to Yocto and
selected the workspace folder where I have my Yocto checkout. It says
everything is valid at the top, I click Finish, and it just flashes
and keeps the dialog box up. No new project is created.

Has anyone else experienced this and knows of a fix or workaround? I'd
be happy to provide more details or log a bug for it if that helps.

Thanks,
Daniel Lazzari Jr.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

