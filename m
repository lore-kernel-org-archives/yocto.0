Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91494E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 07:56:24 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jun 2012 07:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="158386645"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 26 Jun 2012 07:56:24 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 07:56:24 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.235]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 07:56:23 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, jfabernathy
	<jfabernathy@gmail.com>
Thread-Topic: [yocto] Yocto Development Manual Appendix B question
Thread-Index: AQHNU6tX5HKMCOJfWU226Ph+u+uRAJcNJQcA//+LH1A=
Date: Tue, 26 Jun 2012 14:56:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A130B2@ORSMSX101.amr.corp.intel.com>
References: <4FE9CCAD.7080003@gmail.com> <4FE9CD04.60604@windriver.com>
In-Reply-To: <4FE9CD04.60604@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Development Manual Appendix B question
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
X-List-Received-Date: Tue, 26 Jun 2012 14:56:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bruce,=20

Should the example note this?  Would it be best to specifically say to unco=
mment that SRC_URI line?

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bruce Ashfield
Sent: Tuesday, June 26, 2012 7:54 AM
To: jfabernathy
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Yocto Development Manual Appendix B question

On 12-06-26 10:52 AM, jfabernathy wrote:
> In the example in The Developement Manual v1.2 in Appendix B Section
> B.1.7, it states that you need to put in the statement:
>
> KSRC_linux_yocto_3_2 ?=3D"/home/scottrif/linux-yocto-3.2.git"
>
> into the appropriate .bbappend file way now in the poky-extra directory
> structure. If I look at that file, |linux-yocto_3.2.bbappend| , I seen a
> SRC_URI line, immediately after our inserted KSRC statement, that is
> commented out:
>
> # SRC_URI =3D
> "git://${KSRC_linux_yocto_3_2};protocol=3Dfile;nocheckout=3D1;branch=3D${=
KBRANCH},meta;name=3Dmachine,meta"
>
> Should that line be uncommented or is the SRC_URI already defaulted
> somewhere to use the newly defined KSRC_linux_yocto_3_2 variable?

It should be uncommented. I commented them by default, since the extras
repository is a bit of a collection ground. If they are uncommented, and
combined with the AUTOREV also set in the file, you are forced to fix
all files, versus just the one you want.

Cheers,

Bruce

>
> Jim A
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

