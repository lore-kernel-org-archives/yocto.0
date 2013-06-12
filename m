Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A576E01560
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 22:58:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Jun 2013 22:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,848,1363158000"; d="scan'208";a="315702430"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 11 Jun 2013 22:58:54 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 11 Jun 2013 22:58:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.69]) with mapi id
	14.03.0123.003; Tue, 11 Jun 2013 22:58:54 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Need clarification on some terms
Thread-Index: Ac5nIlkRp+c4KMD8R1u/T9DvP2C7/QADvL1w
Date: Wed, 12 Jun 2013 05:58:53 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF48912@ORSMSX101.amr.corp.intel.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
In-Reply-To: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 05:58:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

Thanks for pointing out these areas where it is confusing.  Maybe someone o=
n the team can add some comments about the gcc-* recipe stuff.  I don't hav=
e that understanding but if I am giving more explanation I can update that =
entry.  I believe the term Cross-Development Toolchain" is the same that Bi=
tBake builds in the beginning.  If not, please someone from the team add so=
me clarification for me and I will update.  I will look for the term "SDK" =
throughout and remedy that.  In the beginning of the development of the doc=
s we used the term SDK liberally.  Then we decided to weed it out.  Seems I=
 need to completely finish that task.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Paul D. DeRocco
>Sent: Tuesday, June 11, 2013 9:07 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] Need clarification on some terms
>
>I'm trying a second time to see if I can learn this system. Section 3.4
>contains a short glossary which explains some things and seems to
>obscure
>others. So perhaps someone can clear up a few simple things.
>
>"Cross-Development Toolchain: A collection of software development tools
>and
>utilities that allow you to develop software for targeted
>architectures." Is
>that different from the toolchain that bitbake builds in the beginning,
>and
>then uses to build the image? If so, what is it?
>
>"Following is a list of toolchain recipes..." This is followed by
>gcc-cross-initial, gcc-cross-intermediate, gcc-cross. All three of these
>things say that the toolchain runs on the host and is used to build
>software
>for the target. So why are there three of them? What are the differences
>among them? It also says that each one is a "native" package. In my
>experience, a "native" toolchain has always meant a toolchain that
>produces
>code for the same machine that the toolchain runs on, while a "cross"
>toolchain produces code for a different machine. That's obviously not
>what
>"native" means in this context, so what does it mean?
>
>The documentation makes frequent references to "the SDK" without ever
>defining it. I know what it means generically, but what is it in the
>Yocto
>context? And why does the SDK involve yet another set of three
>toolchains?
>(Oh, and why is one of them called "canadian"?)
>
>--
>
>Ciao,               Paul D. DeRocco
>Paul                mailto:pderocco@ix.netcom.com
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

