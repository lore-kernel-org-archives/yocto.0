Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 885DDE006AD
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 16:00:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Jul 2012 16:00:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164557108"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 05 Jul 2012 16:00:18 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Jul 2012 16:00:17 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.133]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.39]) with mapi id
	14.01.0355.002; Thu, 5 Jul 2012 16:00:17 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Thread-Topic: [yocto] Some questions about the webhob design
Thread-Index: Ac1ZFOdFGM6SyguyTo+eIH9a2sio8AButnyAAAOjafAAFi9XgAANgOmg
Date: Thu, 5 Jul 2012 23:00:17 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C8977DE@ORSMSX105.amr.corp.intel.com>
References: <40776A41FC278F40B59438AD47D147A90FDC7F83@SHSMSX102.ccr.corp.intel.com>
	<1652708.uFroLZqztD@helios>
	<C6510F6D410BB64A8C15398EDC6B847C46A8C089@ORSMSX101.amr.corp.intel.com>
	<1609342.c99bAcXVHq@helios>
In-Reply-To: <1609342.c99bAcXVHq@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about the webhob design
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
X-List-Received-Date: Thu, 05 Jul 2012 23:00:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul Eggleton
>Sent: Thursday, July 05, 2012 3:20 PM
>

>Templates are for starting new projects from scratch, as in the current ho=
b
>they are for starting new builds from scratch. Changes to a project's
>configuration are saved to the project itself immediately - there's no nee=
d to
>hit "save" anywhere; that's why it has to be reflected in real-time for ot=
her
>logged-in users. If you close the browser in the middle of configuring the
>project then some time later re-log in, the project's configuration will b=
e
>exactly how you left it (assuming nobody else has changed it in the mean
>time).

Guys - I'm really struggling with this overall concept of concurrency.

It implies that if Paul and I are sharing the same project and I make a cha=
nge to a .bb file to experiment with something (assuming we have the abilit=
y to do that, refer to my last email) and my change breaks my build, it wil=
l break everyone else's build as well.  But the beauty thing is that it bre=
aks it silently, because the configuration silently changed for everyone on=
 the project.

If you are saying that it won't happen because people won't share a project=
 under active development, then I don't understand the value of sharing a p=
roject. Is it to share the package repo? The images? There are all kinds of=
 ways of doing that.

I think someone needs to sit down and write out the *complete* user stories=
 for how people use the system.=20

