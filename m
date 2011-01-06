Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 359834C80FAD
	for <yocto@yoctoproject.org>; Wed,  5 Jan 2011 23:40:51 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Jan 2011 21:40:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,281,1291622400"; d="scan'208";a="643951555"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 05 Jan 2011 21:40:50 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 13:40:23 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 6 Jan 2011
	13:40:18 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>
Date: Thu, 6 Jan 2011 13:40:16 +0800
Thread-Topic: Eclipse Plugin EGit investigation result
Thread-Index: AcutSeVRx5xyz374R3m7VDHz84KUOwADlsuQAAIMsmA=
Message-ID: <789F9655DD1B8F43B48D77C5D3065973315F0B94@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973315F0A03@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9504CAFF51@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9504CAFF51@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin EGit investigation result
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
X-List-Received-Date: Thu, 06 Jan 2011 05:40:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

After discussed with Lianhao, seems there're two requirements

1) Lianhao expect that we can use the capability of git clone functionality
   provided by egit. Egit is strong and implemented its own git, support al=
l sorts of ops,
   so we need not use native git; of course there's no need to consider pro=
xy settings at all.
   It will use http proxy set by eclipse itself. Lianhao said it's difficul=
t for him
   to set proxy and call it through shell. So, use egit clone is his requir=
ement.

   So, if we want to use it for clone project.
   1. One way: User must install egit, then we try to hack the code, direct=
ly
      call the egit related UI Wizard during poky-meta-project creation pha=
se..
      Risk is: Egit is in incubation. I did meet some errors when checkout,=
 (NULLPointer...).=20
      If user does not install it, create project will fail.
   2. Another way: We study the code, get rid of useless code, only extract=
 clone
      related code.
      Risk is: git repository is implemented as a whole, UI are complex too=
. The code
      amount is huge.

   So my question is: Since poky.git is the only destination, we need not c=
onsider support=20
   all sorts of repositories at all. Also, if user want to bitbake, he must=
 configure his
   git well (such as proxy problem). I am not sure how shell git works now =
and is it totally intolerable?
   We need egit's implementation instead of current shell script implementa=
tion.

2) You want to support commit, diff, patch, cherry pick, etc.=20
   It's no problem. Actually it's what egit is supposed to do.

   After user create poky-meta-project successfully, he will click the proj=
ect, then
   Select->Team->Share->git, a local repository is set up. commit, diff, br=
anch,=20
   anything is not a problem. Poky does not allow submit changes to remote
   repository, so user can only have local repository to track their change=
s.


So I guess the only problem left here is that whether we should try extract=
 egit internal clone=20
Functionality. If yes, which way 1) install egit and hack the UI code 2) st=
udy the code, extract
needed code. Both risks have been listed above.

Thanks & Regards,
criping


> -----Original Message-----
> From: Zhang, Jessica
> Sent: Thursday, January 06, 2011 12:57 PM
> To: Ke, Liping; Lu, Lianhao; Tian, Kevin
> Cc: yocto@yoctoproject.org
> Subject: RE: Eclipse Plugin EGit investigation result
>=20
> Liping,
>=20
> Thanks for the thorough analysis of EGIT, as you pointed it mainly for
> team
> setup which is not what we want.  Can you download the source and see
> how it
> interact with git and probably we can borrow some ideas to achieve some
> simple git tasks, e.g. commit changes etc.
>=20
> Thanks,
> Jessica
>=20

