Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B736B4C80FAD
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 11:29:31 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Jan 2011 09:29:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,278,1291622400"; d="scan'208";a="693870840"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 05 Jan 2011 09:29:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 5 Jan 2011 09:29:31 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 5 Jan 2011 09:29:30 -0800
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 5 Jan 2011 09:24:33 -0800
Thread-Topic: [yocto] [PATCH 0/1] Autobuilder fixes and added functionality
Thread-Index: Acus/U2b83mFhvHkRBSTRFcMIfW0zQAAB1JN
Message-ID: <DC74E0187B44084E9AD28300B75DFE300557D6F4@orsmsx504.amr.corp.intel.com>
References: <cover.1294102657.git.elizabeth.flanagan@intel.com>,
	<201101051156.09408.paul.eggleton@linux.intel.com>
	<DC74E0187B44084E9AD28300B75DFE300557D6F3@orsmsx504.amr.corp.intel.com>,
	<4D24A8E9.4000901@intel.com>
In-Reply-To: <4D24A8E9.4000901@intel.com>
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
X-List-Received-Date: Wed, 05 Jan 2011 17:29:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Let's wait on all this. I'm running into a few issues with the AB that I wa=
nt to fix that are unrelated to the upgrade and would rather do one big pat=
chset that did the upgrade and fixed some of the issues I'm trying to fix.

I'll keep everyone posted. That said, we should probably discuss tagging/ve=
rsioning process for non-poky projects within yocto. If I remember correctl=
y, there was discussion about this going on already, and I'm a little uneas=
y leaving the ab master broken without a tag to a known good version. Anyon=
e have any thoughts on this?=20

-b
________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] On Be=
half Of Scott Garman [scott.a.garman@intel.com]
Sent: Wednesday, January 05, 2011 9:22 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] [PATCH 0/1] Autobuilder fixes and added functionality

On 01/05/2011 08:30 AM, Flanagan, Elizabeth wrote:
>> 3) BuildBot 0.8.2 unfortunately suffers from buildbot bug #1697 on
>> my system, making it not very useful (as you can't view any of the
>> build logs through the web interface). It's fixed in 0.8.3. More
>> details:
>>
>> http://trac.buildbot.net/ticket/1697
>
> I hadn't run into this, so thanks for pointing it out. I'm tempted to
> wait for 0.8.3p1 which should have the fix for this, rather than
> trying to pull the fix out to patch 0.8.2

Hi Beth,

Do you want me to merge this patchset into master now, or should I wait
for a respin based on Buildbot 0.8.3p1 (which should be out by the end
of the week, I think)?

Scott

--
Scott Garman
Embedded Linux Distro Engineer - Yocto Project
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

