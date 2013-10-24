Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3704E01768
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2013 09:01:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 24 Oct 2013 09:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,563,1378882800"; d="scan'208";a="416582086"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2013 09:01:25 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.4]) with mapi id
	14.03.0123.003; Thu, 24 Oct 2013 09:01:25 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] filling in the "missing" entries in the ref manual
	variable glossary
Thread-Index: AQHO0M9USv42/0u3sEqle1qmLnm29ZoEAiUg
Date: Thu, 24 Oct 2013 16:01:24 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F40DF2@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
In-Reply-To: <alpine.DEB.2.02.1310240832580.5411@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Thu, 24 Oct 2013 16:01:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Robert,=20

You don't need to submit full patches and explanations for these.  Noting t=
hat they are missing and need documenting is perfect.  If you do have time =
when you point out a missing variable, providing a brief explanation would =
help.  And... reporting what is missing is extremely useful.  It has been (=
and will continue to be) an ongoing process of fully documenting variables =
in the reference manual.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Thursday, October 24, 2013 8:40 AM
>To: Yocto discussion list
>Subject: [yocto] filling in the "missing" entries in the ref manual variab=
le
>glossary
>
>
>  expecting the standard reaction to be, "hey, feel free to submit a patch=
 :-)",
>i've noticed that there are (unsurprisingly) quite a number of variables m=
issing
>from the variable glossary in the ref manual.
>
>  just related to u-boot (which i've been messing with this morning), here=
's the
>current situation:
>
>http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-
>U
>
>and what seems to be missing is:
>
>  * UBOOT_ARCH
>  * UBOOT_SUFFIX
>  * UBOOT_BINARY
>  * UBOOT_IMAGE
>  * UBOOT_MAKE_TARGET
>  * UBOOT_SYMLINK
>
>short of submitting full patches for things like this, is there at least a=
 list we can
>keep track of this stuff on? i'm not sure i have the time to submit full
>explanatory patches for everything i run across, but i can at least report=
 what's
>missing if that's useful.
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
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

