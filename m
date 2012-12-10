Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6757E003D6
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 03:52:58 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Dec 2012 03:52:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,250,1355126400"; d="scan'208";a="178873351"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Dec 2012 03:52:57 -0800
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 10 Dec 2012 03:52:57 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.188]) with mapi id
	14.01.0355.002; Mon, 10 Dec 2012 03:52:57 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: slight clarification for yocto docs web page?
Thread-Index: AQHN1stJtahOldQzukWjE8FZQ7qsRZgR6uzw
Date: Mon, 10 Dec 2012 11:52:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACBC2B@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212100636190.6810@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212100636190.6810@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: slight clarification for yocto docs web page?
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
X-List-Received-Date: Mon, 10 Dec 2012 11:52:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

This "poky" term in the link is because back when the manual was first set =
up I used "poky-ref-manual" as the manuals folder.  The easiest fix would b=
e set up a symlink from a more appropriately named link.  A fix that has a =
lot more ripples would be to rename the directory to something like "ref-ma=
nual."  The point about noting the BSP chapter is wrong and should not be t=
here.  I am copying Jeff so that it can get fixed on the website's document=
ation page.=20

Thanks,=20
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Monday, December 10, 2012 3:41 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: slight clarification for yocto docs web page?
>
>
>  more pedantry, but here:
>
>https://www.yoctoproject.org/documentation/inprogress
>
>the link for the "Reference Manual" takes one to a link whose name
>includes the word "poky" but whose manual has the name "yocto project
>reference manual".  is that properly a "poky" ref manual, or a "yocto"
>ref manual -- it really should be clarified given how freaked out some
>folks get when you don't use the right terminology. :-)
>
>  also, the link itself claims that the reference manual "also
>contains a chapter on Board Support Package (BSP) development."
>pretty sure that's not true anymore, given the separate manual on
>BSPs.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

