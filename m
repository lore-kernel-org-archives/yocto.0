Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0207A4C80FDC
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 21:46:44 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 May 2011 19:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,228,1304319600"; 
   d="scan'208";a="3131766"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 17 May 2011 19:46:44 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 May 2011 19:46:44 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Tue, 17 May 2011 19:46:43 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Daniel Lazzari <busytester@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 17 May 2011 19:46:43 -0700
Thread-Topic: [yocto] Can't create a new project with Yocto BitBake
	Commander	plugin
Thread-Index: AcwU9QHqYFD7m8FYR8SdP3ee2bshGgAC2Q5g
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA9501170DB6A1@orsmsx504.amr.corp.intel.com>
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
X-List-Received-Date: Wed, 18 May 2011 02:46:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Daniel,

So to be clear, you want a bitbake commander project or yocto sdk project? =
The former will allow you to edit the bitbate recipe files, the later will =
allow you develop embedded applications that compiling using the cross tool=
chain.

Also, what is your Yocto checkout, the latest or Bernard, how about your ec=
lipse plug-in? The 1.0 Eclipse plug-in is having some issues working with t=
he latest yocto tree, and only working with Bernard.

Please provide more information.

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

