Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59D72E01653
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 03:04:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2013 03:01:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,991,1371106800"; d="scan'208";a="384340535"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 27 Sep 2013 03:04:55 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX101.ger.corp.intel.com ([163.33.3.153]) with mapi id
	14.03.0123.003; Fri, 27 Sep 2013 11:04:54 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: Yocto Bitbake Commander New Project Bug
Thread-Index: Ac666N4fx6mXRgzkQUqpM4cJDzRrYwAf56PwAAAcmpA=
Date: Fri, 27 Sep 2013 10:04:53 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F6B578@IRSMSX104.ger.corp.intel.com>
References: <6C2434209962DC46B88345CA85C334A201CAB0AB2006@Courier.syntech.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: Yocto Bitbake Commander New Project Bug
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
X-List-Received-Date: Fri, 27 Sep 2013 10:04:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There's also a bug that may address this problem: https://bugzilla.yoctopro=
ject.org/show_bug.cgi?id=3D5203

--
Alexandru Georgescu


-----Original Message-----
From: Georgescu, Alexandru C=20
Sent: Friday, September 27, 2013 13:03
To: 'Jate Sujjavanich'; 'yocto@yoctoproject.org'
Subject: RE: Yocto Bitbake Commander New Project Bug

Hi Jate,
You can try mentioning in the project name the actual poky directory name (=
in your case: poky) and in the project path the location where "poky" is lo=
cated (your case: ~/workspace/). That should work.

Regards,
--
Alexandru Georgescu


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jate Sujjavanich
Sent: Thursday, September 26, 2013 21:48
To: 'yocto@yoctoproject.org'
Subject: [yocto] Yocto Bitbake Commander New Project Bug

Creating a Yocto Bitbake Commander project using an existing poky directory=
 is a little buggy. I usually do this to avoid downloading poky from the In=
ternet.

The plugin wizard implies that you can use a poky directory in your workspa=
ce with its clone from yocto repository option.

Attempting to use a cloned poky in workspace/poky results in the wizard rep=
orting that ".../workspace/poky overlaps the location of another project: p=
oky." Changing the name of the project merely results in the error "Directo=
ry ...workspace/poky2 does not exist, please select git clone".

The workaround is to open a separate dummy workspace, and then run the wiza=
rd with Project Location pointing to your desired Project Location. You wil=
l then be able to hit Finish. Eclipse will create the .metadata and .eclips=
e-data files.

You can then switch to your desired workspace and use "Import an Existing P=
roject."

Is this a bug?


-Jate S.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

