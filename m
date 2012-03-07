Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B81A9E0044C
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2012 06:05:02 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2012 06:05:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="74689686"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Mar 2012 06:05:02 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Mar 2012 06:05:01 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.48]) with mapi id
	14.01.0355.002; Wed, 7 Mar 2012 06:04:54 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] dev manual could use clarification on possible mailing
	lists
Thread-Index: AQHM/FUTUb75CG2vZE2+QQOdaeSw9JZe3QPA
Date: Wed, 7 Mar 2012 14:05:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B7443F9@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203070622590.30444@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203070622590.30444@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: dev manual could use clarification on possible mailing lists
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
X-List-Received-Date: Wed, 07 Mar 2012 14:05:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I need further guidance on this comment.  To see the latest section see htt=
p://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#how-to-subm=
it-a-change

Someone else from the team needs to read the paragraphs tied to the two mai=
ling lists (poky and yocto) and provide feedback on whether they are still =
valid or not.=20

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Wednesday, March 07, 2012 5:25 AM
To: Yocto discussion list
Subject: [yocto] dev manual could use clarification on possible mailing lis=
ts


  again, dev manual, section 3.8, "How to Submit a Change":

"For defects against the Yocto Project build system Poky, send your
patch to the http://lists.yoctoproject.org/listinfo/poky mailing list.
This mailing list corresponds to issues that are not specific to the
Yocto Project but are part of the OE-core. For example, a defect
against anything in the meta layer or the BitBake Manual could be sent
to this mailing list."

  i'm *guessing* that paragraph is out of date since poky has its own
mailing list separate from oe-core, which is further separate from the
bitbake-devel mailing list.

  i'll let someone else decide if that section needs to be reworded.

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

