Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E723B4C80FAD
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 20:32:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2011 18:32:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="643906657"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 18:32:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 10:32:03 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 6 Jan 2011
	10:32:02 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 6 Jan 2011 10:32:00 +0800
Thread-Topic: Eclipse Plugin EGit investigation result
Thread-Index: AcutSeVRx5xyz374R3m7VDHz84KUOw==
Message-ID: <789F9655DD1B8F43B48D77C5D3065973315F0A03@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Eclipse Plugin EGit investigation result
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
X-List-Received-Date: Thu, 06 Jan 2011 02:32:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I have tried the existing egit plugin. It is a true powerful plugin, but I =
am afraid it can't be communicating well with poky-meta-project plugin.

Below is some details
advantages:
1. EGIT support all sorts of protocols, including ftp, ssh, git, http, so w=
e can easily pull/push the codebase from any sorts of repository.
2. EGIT use eclipse network proxy settings, so we need not worry about how =
to visit outside repository.
3. EGIT use eclipse SSH configurations, so we can easily commit codebase to=
 contrib.git with ssh protocols, (public key and private key)
4. Support almost any git command, push, pull, cherrypick, reset, track, un=
track, merge, branch, tag, very powerful.


Although I met some bugs, but in a whole, the UI is very beautiful and seem=
s the plugin is really well developed.

Usage Scenario
It is in nature a TEAM plugin ( in eclipse, CVS is a default team plugin, a=
nd this is another which has not been integrated with eclipse by default)

1. You can new a project (any type, by any means), and click the project na=
me, right click the mouse, select team menu, and share this project by=20
Configuring git repository. Then a local git repository is setup, your proj=
ect is now traced by the local git repository. Then, you can use all sorts =
of
git tools, commit, push, pull, branch, add, untrack, anything you want. You=
 can also fetch from a remote repository.

2. Import a project from GIT
Select File->Import->Projects From Git->Clone->Fill git clone configuration=
->Select branch->Create a new repository->Select the repository->Projects C=
reation Wizard->Show available projects from the created Repository cloned =
just now. Such is org.yocto.sdk.site, org.yocto.sdk.remotetools will be sho=
wn.
After that, everything will be tracked by git, and you can push/commit anyt=
hing you like if you set git configuration properly.


I also tried another working model for editing poky-meta data.
1. File->import->import from GIT repository.
2. Pull down poky.git, select master branch.
3. Import as General Project.
4. A general project is setup. Poky folders(meta, bitbake...) are there. Bu=
t it is general project, since no project specific information in remote re=
pository. So eclipse can only set up it as general-not-knowing project.
5. Everything is tracked by local repository now.


But both of the two usage scenario can't be adapted to our needs. We need g=
it support during project creation phase. And the remote repository is not =
a project. So neither new project mode nor import project from remote repos=
itory will work.

I will download the source code to have a look and see whether we could ext=
ract some code from it and satisfy our needs. But I feel since it is actual=
ly a "team" pluin, its infrastructure should be "team" related. So it's imp=
ossible to use it in one of your project creation period unless we totally =
reform it. I can't expect the effort right now... I guess the whole plugin =
would be very complex, since it integrates into many parts of eclipse menus=
.

Thanks& Regards,
criping







