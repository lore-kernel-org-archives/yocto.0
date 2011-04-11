Return-Path: <julie.n.fleischer@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 93E904C80059
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2011 12:54:10 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Apr 2011 10:54:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,192,1301900400"; d="scan'208";a="417299622"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 11 Apr 2011 10:54:09 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 11 Apr 2011 10:53:52 -0700
Received: from orsmsx506.amr.corp.intel.com ([10.22.226.44]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Mon, 11 Apr 2011 10:53:51 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 11 Apr 2011 10:53:50 -0700
Thread-Topic: Notes from Yocto Technical Team meeting at Linux Collab
	Summit, April 8th
Thread-Index: Acv4cWpJIzHD1w6HRDiwtrrO3RiANA==
Message-ID: <4F65016F6CB04E49BFFA15D4F7B798D90160AAF8CD@orsmsx506.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Notes from Yocto Technical Team meeting at Linux Collab Summit, April 8th
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
X-List-Received-Date: Mon, 11 Apr 2011 17:54:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks to all who attended the Yocto Technical Team meeting at the Linux Co=
llab Summit!  We had quite a few attendees from multiple companies and had =
some great discussions on the Yocto Project 1.1 features.

I have included the additions we discussed below and on the Wiki at - https=
://wiki.yoctoproject.org/wiki/Yocto_1.1_Features.  If you notice any change=
s or corrections that need to be made, please send me a note and/or update =
the Wiki with the change.

Thanks.
- Julie


ADDITIONS
=3D=3D=3D=3D=3D=3D=3D=3D=3D
- Web-based interface that does what the Image Creator does
- Publish shared state
- Make it very easy for your team lead to publish a package repository for =
the rest of the team to use (this needs to be clearly documented)
- Executable images (ex. a pre-installed Ubuntu image with YP installed) ??
- Create customizable chroot; Build an image that would be self-hosting
- Equivalent of kernel OOPS
- Decrease the depth of the revision history
- Crazy git upgraded to P1?
- Ability to archive the work directory to handle the GPL compliance issue.
- Selectively turn on the ability to pull back a revision tag archive
- Address the issue that can occur when the upstream is rebasing and there =
is lost information in the local git.


THEMES FOR 1.1
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- Since the initial experience for SDK users was addressed in 1.0, we'd lik=
e to have the initial experience building images (i.e. Image Creator) to be=
 addressed in 1.1 so that users can easily and seamlessly build images usin=
g Yocto.


ISSUES
=3D=3D=3D=3D=3D=3D
- We need to determine correct term(s) to use when we have been saying "Pok=
y."

-----------------------
Julie Fleischer
Open Source Technology Center
Intel Corporation


