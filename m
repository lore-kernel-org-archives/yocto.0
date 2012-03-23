Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01897E0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 15:58:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 23 Mar 2012 15:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124467667"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 23 Mar 2012 15:58:25 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 23 Mar 2012 15:58:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.199]) with mapi id
	14.01.0355.002; Fri, 23 Mar 2012 15:58:25 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] poky ref manual still confuses BB_ENV_WHITELIST and
	BB_ENV_EXTRAWHITE
Thread-Index: AQHNCEGg3E9j+73xfkuB57lCgoCnIJZ4fU+Q
Date: Fri, 23 Mar 2012 22:58:25 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175C01@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203221134480.7169@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203221134480.7169@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: poky ref manual still confuses BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Fri, 23 Mar 2012 22:58:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Okay - I dug into this a bit with the help of Scott Garman.  He uncovered a=
 bit in the BitBake changelog.  It states the following:

   By default it will now only pass certain
   whitelisted variables into the data store. If BB_PRESERVE_ENV is set bit=
bake will use
   all variable from the environment. If BB_ENV_WHITELIST is set, that whit=
elist will be
   used instead of the internal bitbake one. Alternatively, BB_ENV_EXTRAWHI=
TE can be used
   to extend the internal whitelist

This entry is by no means clear but has some information.  It implies that =
BitBake has an internal list of environment variables that can be preserved=
 if the user sets BB_PRESERVE_ENV.  Where those variables are set and what =
they are I don't know.  Maybe BB_ENV_WHITELIST defines them.  But, Scott Ga=
rman said that BB_ENV_WHITELIST doesn't seem to be getting set in the sourc=
es.  Does this mean the user has to set it up?  I don't know.  Maybe there =
is an internal list separate from everything and then if the user sets BB_E=
NV_WHITELIST to anything that list becomes the BB environment list.  Regard=
ing BB_ENV_EXTRAWHITE, I think it is pretty clear that is just used to appe=
nd or augment BB_ENV_WHITELIST.=20

I think the actual example in the section B.5 is valid if you take it as au=
gmenting a set of whitelisted variables.  What I need a clearer understandi=
ng of BB_ENV_WHITELIST, the existence or non-existence of a set of internal=
 environment variables outside these lists as a default, and the effects of=
 BB_PRESERVE_ENV. =20

I need help from the audience here....

Thanks,
scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Thursday, March 22, 2012 9:37 AM
To: Yocto discussion list
Subject: [yocto] poky ref manual still confuses BB_ENV_WHITELIST and BB_ENV=
_EXTRAWHITE


  in ref manual, B.5, "Running a Task",

"Tell BitBake to load what you want from the environment into the data
store. You can do so through the BB_ENV_WHITELIST variable. For
example, assume you want to prevent the build system from accessing
your $HOME/.ccache directory. The following command tells BitBake to
load CCACHE_DIR from the environment into the data store:

     export BB_ENV_EXTRAWHITE=3D"$BB_ENV_EXTRAWHITE CCACHE_DIR""

  as you can see, the para refers to one variable, while the export
command refers to another.  not sure how someone wants to word that so
i'll leave it for someone else to fix.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

