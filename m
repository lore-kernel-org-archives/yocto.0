Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FD66E0098F
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 05:50:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2014 05:50:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,685,1389772800"; d="scan'208";a="475614929"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 05:50:14 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.27]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.224]) with mapi id
	14.03.0123.003; Wed, 19 Mar 2014 12:50:11 +0000
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: oe-selftest documentation
Thread-Index: Ac9DcFJ8mXowjRFWRXy+1IRNJLXz1g==
Date: Wed, 19 Mar 2014 12:50:11 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A213411@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: oe-selftest documentation
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Mar 2014 12:50:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We have oe-selftest already integrated in poky but we lack in documentation=
: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D4740

Here is what I am thinking about what could be done and I would like opinio=
ns on what should be done:
1) We can do a wiki entry to describe in detail how to use oe-selftest and =
give examples. The problem here is that as oe-selftest changes this entry m=
ight become outdated and even if we update it then older Yocto releases use=
rs will not be able to use it anymore.
2) We can have a manual entry derived from the wiki entry. Scott can use th=
e wiki entry as a reference, if we decide to have one, to create the manual=
 entry. The advantage of this is that we will have valid and up to date inf=
ormation for each Yocto release.
3) We can introduce comments in the script to explain what and why it does =
what it does(at the moment we have some though)
4) We can introduce comments in test modules or a DESCRIPTION field to docu=
ment the test steps, especially for more complex tests(we have no such comm=
ents at the moment).

I would opt for 2) and 3) as I believe they give the most value with the le=
ast amount of time needed for creation and maintenance. =20

If anyone has any more ideas please add your thoughts.=20

Regards,
Corneliu

