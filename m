Return-Path: <alexandru.c.georgescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 440A5E01647
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2013 01:39:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Sep 2013 01:39:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1007,1371106800"; d="scan'208";a="385599549"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga001.jf.intel.com with ESMTP; 30 Sep 2013 01:39:42 -0700
Received: from irsmsx105.ger.corp.intel.com (163.33.3.28) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 30 Sep 2013 09:37:24 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.69]) by
	IRSMSX105.ger.corp.intel.com ([169.254.7.29]) with mapi id
	14.03.0123.003; Mon, 30 Sep 2013 09:37:24 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Jate Sujjavanich
	<Jate.Sujjavanich@myfuelmaster.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>
Thread-Topic: Yocto Bitbake Commander New Project Bug
Thread-Index: Ac666N4fx6mXRgzkQUqpM4cJDzRrYwAf56PwAAyRfnAAh1YR8A==
Date: Mon, 30 Sep 2013 08:37:24 +0000
Message-ID: <1FFB62CE8AEB0D4298B51122D8903E9619F6C02B@IRSMSX104.ger.corp.intel.com>
References: <6C2434209962DC46B88345CA85C334A201CAB0AB2006@Courier.syntech.org>
	<1FFB62CE8AEB0D4298B51122D8903E9619F6B551@IRSMSX104.ger.corp.intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C73CB8232@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73CB8232@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
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
X-List-Received-Date: Mon, 30 Sep 2013 08:40:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I don't know if I mentioned, but "Clone from Yocto Project Git Repository" =
must be unchecked in the case the sources are already downloaded.

--
Alexandru Georgescu

-----Original Message-----
From: Zhang, Jessica=20
Sent: Friday, September 27, 2013 19:05
To: Georgescu, Alexandru C; Jate Sujjavanich; 'yocto@yoctoproject.org'
Subject: RE: Yocto Bitbake Commander New Project Bug

This is a bug that due to upstream code.  To avoid the bug, don't use the
directory to host the poky directory under workspace or ~/runtime-Eclipse,
but instead use your home directory $HOME...

Also, as Alex mentioned, for project put the name of directory of your
cloned yocto metadata, e.g. poky, for the location, choose the directory
where the metadata directory is under.  For example, if your metadata is
$HOME/poky, put poky as project name, the location as $HOME.

Thanks,
Jessica
-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]
On Behalf Of Georgescu, Alexandru C
Sent: Friday, September 27, 2013 3:03 AM
To: Jate Sujjavanich; 'yocto@yoctoproject.org'
Subject: Re: [yocto] Yocto Bitbake Commander New Project Bug

Hi Jate,
You can try mentioning in the project name the actual poky directory name
(in your case: poky) and in the project path the location where "poky" is
located (your case: ~/workspace/). That should work.

Regards,
--
Alexandru Georgescu


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]
On Behalf Of Jate Sujjavanich
Sent: Thursday, September 26, 2013 21:48
To: 'yocto@yoctoproject.org'
Subject: [yocto] Yocto Bitbake Commander New Project Bug

Creating a Yocto Bitbake Commander project using an existing poky directory
is a little buggy. I usually do this to avoid downloading poky from the
Internet.

The plugin wizard implies that you can use a poky directory in your
workspace with its clone from yocto repository option.

Attempting to use a cloned poky in workspace/poky results in the wizard
reporting that ".../workspace/poky overlaps the location of another project=
:
poky." Changing the name of the project merely results in the error
"Directory ...workspace/poky2 does not exist, please select git clone".

The workaround is to open a separate dummy workspace, and then run the
wizard with Project Location pointing to your desired Project Location. You
will then be able to hit Finish. Eclipse will create the .metadata and
.eclipse-data files.

You can then switch to your desired workspace and use "Import an Existing
Project."

Is this a bug?


-Jate S.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

