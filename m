Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7225E00282
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 13:18:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jul 2012 13:18:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169534092"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 17 Jul 2012 13:18:03 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jul 2012 13:18:03 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.187]) with mapi id
	14.01.0355.002; Tue, 17 Jul 2012 13:18:03 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>, Joshua Lock
	<josh@linux.intel.com>
Thread-Topic: [yocto] edison/denzil patches (post-1.1.2 and 1.2.1)
Thread-Index: AQHNYFXTv0q7KdYirke7XkZ8aY+u/Jcse4YAgAADWACAAAZbgIAAB/eAgAFZtoA=
Date: Tue, 17 Jul 2012 20:18:02 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8BF274@ORSMSX105.amr.corp.intel.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
	<50042C06.70900@linux.intel.com>
	<CAEsOVNfEw9sDfLVGCAM6AwQjzGrVNxuvrL4vcS=1kDEMaePK3g@mail.gmail.com>
	<50043429.4070204@linux.intel.com>
	<CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
In-Reply-To: <CAEsOVNf-_+hca=qhXGjBiOYRn77-duCYoiTVj5HrYyGTzYZYHQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
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
X-List-Received-Date: Tue, 17 Jul 2012 20:18:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Matthew -=20

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of McClintock Matthew-B29882
>Sent: Monday, July 16, 2012 9:01 AM

>I understand. I'm fine with adding stuff to the edison branch for now
>and we can worry about another official release sometime in the future
>(or never). I'm mostly wanting a place I can tell people to get the
>(working) code from for our targets. And ideally it's on
>yoctoproject.org and not github.com or git.fsl.com

This comes down to a resource trade-off, which is why I'm replying. :-)=20

As an open source project and not a product, we have to set some boundaries=
 on how long we will put effort on a given release. It also seems prudent t=
o treat our release branches consistently as well. Besides tagging branches=
 when we release them, I think we want to leave the head of the release bra=
nches in some known good state. That known good state has always been "pass=
ed our release criteria" which includes QA, release notes, etc.

So what if we create a separate branch off of edison, something like edison=
-fsl? Then you could base your patches against it, but we leave edison in t=
he known good state?

>Just for some more context, we just release our SDK off of edison and
>I expect plenty of activity around bugfixes and back porting commits.
>I would like this work to be available to all attempting to build
>edison as well.

I know... I'm in agony that we have run out of resources to continue to put=
 effort into edison (or "Eddie" as I call him now). Hopefully the above com=
promise serves your needs and keeps our resource commitment and known good =
state assumptions in check.

Whatcha think?

