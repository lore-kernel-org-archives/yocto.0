Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6A6EE017A4
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 07:34:42 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Nov 2013 07:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="317768420"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Nov 2013 07:34:17 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.35]) with mapi id
	14.03.0123.003; Wed, 6 Nov 2013 07:34:17 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] ref manual: what means "package_deploy-rpm"?
Thread-Index: AQHO2sJ6+1j25NO3UkSS3Yfl87v9A5oYSKVQgACH8ID//4T+IA==
Date: Wed, 6 Nov 2013 15:34:16 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44AE6@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311060229130.18511@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44AB8@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1311060951530.23263@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311060951530.23263@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ref manual: what means "package_deploy-rpm"?
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
X-List-Received-Date: Wed, 06 Nov 2013 15:34:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have been investigating this and the entire package_deploy_rpm thing is b=
ogus.  I am working on a re-write for that section and will provide a link =
when I get it done.

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, November 06, 2013 6:54 AM
>To: Rifenbark, Scott M
>Cc: Yocto discussion list
>Subject: RE: [yocto] ref manual: what means "package_deploy-rpm"?
>
>On Wed, 6 Nov 2013, Rifenbark, Scott M wrote:
>
>> Probably a typo... "pakage_deploy_rpm" is likely what it is supposed
>> to be.
>
>  i looked for that first thing but see no reference to it -- i see no ref=
erence to
>anything of the form "package_deploy*" anywhere.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

