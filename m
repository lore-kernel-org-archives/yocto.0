Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 279CD4C80121
	for <yocto@yoctoproject.org>; Tue, 19 Oct 2010 10:40:20 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Oct 2010 08:40:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,351,1283756400"; d="scan'208";a="668830478"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 19 Oct 2010 08:40:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 19 Oct 2010 08:40:19 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Tue, 19 Oct 2010 08:40:19 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "'McCombe, Kevin'"
	<kevin.mccombe@windriver.com>, "Wold, Saul" <saul.wold@intel.com>, "Zhang, 
	Jessica" <jessica.zhang@intel.com>, "'deVries, Alex'"
	<Alex.deVries@windriver.com>, "'Polk, Jeffrey'" <jeff.polk@windriver.com>, 
	"'Hatle, Mark'" <mark.hatle@windriver.com>, "Purdie, Richard"
	<richard.purdie@intel.com>, "Li, Susie" <susie.li@intel.com>, "Lock,
	Joshua"
	<joshua.lock@intel.com>, 'Bruce Ashfield' <bruce.ashfield@windriver.com>,
	"Zanussi, Tom" <tom.zanussi@intel.com>, "Hart, Darren"
	<darren.hart@intel.com>
Date: Tue, 19 Oct 2010 08:40:18 -0700
Thread-Topic: Yocto Linux Project Sync notes
Thread-Index: AcsY0Ei14kcYesAzSBGri5n46+ni7xWzbnJg
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC510A2@orsmsx501.amr.corp.intel.com>
References: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
In-Reply-To: <4807CBBFD12C484EBEAB6D8DFBDCE47C267E303C06@orsmsx501.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Oct 2010 10:45:28 -0500
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "'Anderson,
	Paul'" <paul.anderson@windriver.com>, "'Ta, Lieu'" <Lieu.Ta@windriver.com>
Subject: Yocto Linux Project Sync notes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 15:40:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attending: davest, RP, Saul, Kevin, Jessica, Tom, Mark, Alex, Jeff, Josh=20

Exec Summary:
	EIGHT DAYS TO LAUNCH.
	RC3 testing is going, will be finished on time for Oct 22
	Readiness review on Oct 21, Saul will set up
	The Fetcher is showing serious problems, this needs to be addressed for re=
lease. Richard will update daily on this.

	You all have items to complete below, please follow up=20


ARs:
	AR: Saul - set up readiness review
	AR: Darren - demo use case notes to ScottR
	AR: Kevin - do we need to retain the WR copyrights on the kernel doc? or c=
an we rebrand as LF?
	AR: Saul - ask Nitin to investigate delta with the MeeGo toolchain
	AR: Dave to send CB, boards, panels, etc to Tom
	AR: Bruce to take the recipes, bring up the 4 arch demo and train Alex on =
them
	AR: MarkH - Package summary doc to ScottR
	AR: Jessica - work on getting Eclipse plug-in download location set up wit=
h ScottR

Giveaway:


Sprint B (Due: Oct 01, Midnight PDT)


* demo

** Alex will put the hardware bits together, Darren to write down the descr=
iption of what needs to come together and wiki-fy it. RP suggests that mayb=
e getting all the pieces running on one hardware might be a good way to try=
 it out just in case.

** create and document on Yocto Linux website the use cases

** NAS: NFS (Mark)
	Will do by end of his day today. This will run on MIPS RouterStation Pro
	Mark will bring this board and drive to Cambridge

** DNLA Server (Darren)

** UPnP Renderer (Josh)
	Will test with real hardware because audio on qemux86 isn't working

* autobuilder runtime testing of images (ScottG)
	Will defer this change until release bits are safely out the door


Sprint C (Due: Oct 8, Midnight PDT)

* Go through each of the recipe file summary info and make sure they are th=
ere and correct, load all into a spreadsheet (Distro team) tech writer corr=
ect them and send them back (MarkH, Bug 281)
	Tech writer info pending, may move to 1.0

* add class for rpmbuild (JeffP)
	WIP

* ldat compatibility
** importing packages from LDAT (JeffP)
	WIP

* determine way to distribute SDK (Jessica)
	Done, waiting for the build to push it.

* setup and test RPM feed (Saul)
	done


Sprint D (Due: Oct 15 (note: Thursday), Midnight PDT)

** shrink kernel repo size (Bruce)

* demo
** kit up boards for give away (Dave/Saul)

** ensure sato desktop runs on ppc real h/w (Bruce)

* qemu ppc graphics (Bruce)



