Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A1E7E004AB
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 10:05:14 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Jul 2012 10:05:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173103242"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 25 Jul 2012 10:05:13 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 25 Jul 2012 10:05:13 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.187]) with mapi id
	14.01.0355.002; Wed, 25 Jul 2012 10:05:12 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] does a BSP layer *require* a README file?
Thread-Index: AQHNaeJtqg+aOqDfmkOZzwyO0oui1Jc6F/WQgAAdjZCAAHnWAP//jB3g
Date: Wed, 25 Jul 2012 17:05:11 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A46624@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1207241719300.4602@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A4550D@ORSMSX101.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A46603@ORSMSX101.amr.corp.intel.com>
	<501025FE.6060005@windriver.com>
In-Reply-To: <501025FE.6060005@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: does a BSP layer *require* a README file?
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
X-List-Received-Date: Wed, 25 Jul 2012 17:05:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok - this helps to further clarify things. =20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mark Hatle
Sent: Wednesday, July 25, 2012 10:00 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] does a BSP layer *require* a README file?

On 7/25/12 11:46 AM, Rifenbark, Scott M wrote:
> Here is some more information on this topic.  All layers are not BSP laye=
rs (i.e the meta-tlk layer is not a BSP).  Regarding the real question as t=
o whether a BSP layer *must* have a README file to be considered Yocto-comp=
liant, I have been told that it does need the file.

The compliance document indicates that all layers must contain a README tha=
t=20
specifies a minimum set of information.

"all layers contain a README file which details the origin of the layer, it=
s=20
maintainer, where to submit changes, and any dependencies or version requir=
ements"

The BSP document may require additional information as well.  I found what =
I=20
think is good example of this type of README file in:
   http://git.yoctoproject.org/cgit.cgi/meta-baryon/tree/README

--Mark

> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Rifenbark, Scott M
> Sent: Wednesday, July 25, 2012 8:00 AM
> To: Robert P. J. Day; Yocto discussion list
> Subject: Re: [yocto] does a BSP layer *require* a README file?
>
> There recently was a concern that we document the requirements of a BSP l=
ayer so that it could be considered Yocto-compliant.  The BSP guide does la=
y out the "must" word in that new section where it talks about the README F=
ile.  Is it really required?  Opinions?
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Robert P. J. Day
> Sent: Tuesday, July 24, 2012 2:22 PM
> To: Yocto discussion list
> Subject: [yocto] does a BSP layer *require* a README file?
>
>
>    currently, the BSP guide seems quite adamant that a BSP layer *must*
> have a top-level README file, but at least a couple of the meta-intel
> sublayers (meta-tlk, meta-n450) have no such file.  so should that
> alleged requirement be, you know, dropped?
>
> rday
>

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

