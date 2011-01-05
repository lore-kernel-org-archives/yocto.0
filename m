Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5C9D24C8086F
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 10:30:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2011 08:30:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="643708403"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 08:30:31 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Wed, 5 Jan 2011 08:30:30 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 5 Jan 2011 08:30:30 -0800
Thread-Topic: [yocto] [PATCH 0/1] Autobuilder fixes and added functionality
Thread-Index: Acusz6VqjJG8HQZdQTy3P3FfOoEfgAAJQ7jL
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6F3@orsmsx504.amr.corp.intel.com>
References: <cover.1294102657.git.elizabeth.flanagan@intel.com>,
	<201101051156.09408.paul.eggleton@linux.intel.com>
In-Reply-To: <201101051156.09408.paul.eggleton@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] Autobuilder fixes and added functionality
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
X-List-Received-Date: Wed, 05 Jan 2011 16:30:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

> 1) If you git clone poky-autobuilder into your home directory the install=
 script falls over because it tries to create that same named directory by =
default.=20
> Of course you can override this path or clone it somewhere else but it wo=
uld be nice if it could work out of the box.

Yes, that's an issue I know about. Not sure how to handle it other than ren=
aming either the git directory or the default autobuilder scripts home.=20

> 2) The install script doesn't handle Python 2.7, but only due to paths. I=
 have a patch for this which I'll post when your latest patches are merged.

Excellent. Ty.

>3) BuildBot 0.8.2 unfortunately suffers from buildbot bug #1697 on my syst=
em, making it not very useful (as you can't view any of the build logs thro=
ugh the web interface). It's fixed in 0.8.3. More details:
>
>   http://trac.buildbot.net/ticket/1697

I hadn't run into this, so thanks for pointing it out. I'm tempted to wait =
for 0.8.3p1 which should have the fix for this, rather than trying to pull =
the fix out to patch 0.8.2

> 4) Looking through the logs locally I found some disturbing output from p=
oky, I guess I may have missed some configuration option, or otherwise some=
thing else is going badly wrong:

I found that error yesterday and will have a fix for it today.=20

>5) I did try with 0.8.3 earlier (i.e. without your patch), but I suspect I=
 was hit by the git poller problem that 0.8.3p1 is supposed to fix as there=
 were a lot of strange bitbake parsing errors. I also found that I needed t=
o have python-jinja2 and=20
> python-setuptools installed, whereas with your latest patch using 0.8.2 i=
t seemed to be installing local copies of these (along with twisted).

I don't recall needed setuptools, but that may be just because I tested on =
my desktop. I'll look into this when I push it to 0.8.3p1

-b=

