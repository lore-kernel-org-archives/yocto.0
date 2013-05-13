Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60364E01484
	for <yocto@yoctoproject.org>; Mon, 13 May 2013 05:49:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 May 2013 05:47:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,662,1363158000"; d="scan'208";a="312668169"
Received: from fmsmsx105.amr.corp.intel.com ([10.19.9.36])
	by orsmga001.jf.intel.com with ESMTP; 13 May 2013 05:49:53 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX105.amr.corp.intel.com ([169.254.5.226]) with mapi id
	14.01.0355.002; Mon, 13 May 2013 05:49:53 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Documentation cross-reference links for 1.4 on don't
	seem to be working on my machine
Thread-Index: Ac5Pz72q8WDK/jOoQg+b0yUDjBDO+QACIWzw
Date: Mon, 13 May 2013 12:49:53 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35E27@fmsmsx152.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35DF1@fmsmsx152.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF35DF1@fmsmsx152.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: Documentation cross-reference links for 1.4 on don't seem to be working on my machine
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
X-List-Received-Date: Mon, 13 May 2013 12:49:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Solved - seemed to be a caching or cookie problem.  I cleared everything an=
d the issue disappeared.=20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Rifenbark, Scott M
>Sent: Monday, May 13, 2013 4:48 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] Documentation cross-reference links for 1.4 on don't
>seem to be working on my machine
>
>Just a heads up for the documentation that is published on the web.  I
>have encountered some strange behavior in which cross-reference links to
>other specific places in a manual other than the one the link is
>originating from are not working.  Example URLs that will not link to a
>specific topic in a manual are:
>
>http://www.yoctoproject.org/docs/1.5/ref-manual/ref-manual.html#var-
>FILESEXTRAPATHS
>http://www.yoctoproject.org/docs/1.4.1/ref-manual/ref-manual.html#var-
>FILESEXTRAPATHS
>
>and so forth.  I just discovered this oddity and am trying to figure out
>the issue.  Instead of links like the above taking you to the specific
>spot in the manual they simply take you to the top of the manual.
>
>This behavior doesn't seem to be beyond my machine, which is running
>Ubuntu 12.04 LTS.  I am using Mozilla's firefox for Ubuntu canonical -
>1.0 (20.0).  I tried going to the site on my Windows-based machine and
>all the links behave normally for IE, Chrome, and Firefox.  This is
>probably something to do with my machine but I wanted to give a "heads-
>up" out there in case somebody else was having problems with the links.
>
>Scott
>
>Scott Rifenbark
>Intel Corporation
>Yocto Project Documentation
>503.712.2702
>503.341.0418 (cell)
>
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

