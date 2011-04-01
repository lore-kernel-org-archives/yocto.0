Return-Path: <simon.li@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5908A4C80B74
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 01:39:55 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 Mar 2011 23:39:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,281,1299484800"; d="scan'208";a="622048971"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 31 Mar 2011 23:39:35 -0700
Received: from pgsmsx507.gar.corp.intel.com ([10.221.43.89]) by
	pgsmsx601.gar.corp.intel.com ([10.221.43.69]) with mapi; Fri, 1 Apr 2011
	14:37:25 +0800
From: "Li, Simon" <simon.li@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 1 Apr 2011 14:37:23 +0800
Thread-Topic: [yocto] How to compile Qt library with bitbake?
Thread-Index: AcvvwZSEDAtD87R4Rj6781cmY4RDEgAcrLYA
Message-ID: <23F1A04A50711046AF124F3D4D1EB2ECC073F5FB@pgsmsx507.gar.corp.intel.com>
References: <23F1A04A50711046AF124F3D4D1EB2ECC073F3FE@pgsmsx507.gar.corp.intel.com>
	<4D94AD2D.7060505@mlbassoc.com>
In-Reply-To: <4D94AD2D.7060505@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 03 Apr 2011 16:48:38 -0500
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to compile Qt library with bitbake?
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
X-List-Received-Date: Fri, 01 Apr 2011 06:39:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Gary,
Yes, it works. However, after build finished, I still cann't find any libQt=
* files.

Best Regards,

Simon

-----Original Message-----
From: Gary Thomas [mailto:gary@mlbassoc.com]=20
Sent: Friday, April 01, 2011 12:35 AM
To: Li, Simon
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to compile Qt library with bitbake?

On 03/31/2011 12:52 AM, Li, Simon wrote:
> To whom may concern,
>
> Since Qt library is not existed in the default build configuration, I hav=
e to port it by myself.
>
> Is there any plan to compile Qt in the Yocto? I cannot find Qt with zyppe=
r as well.
>
> If not, is there any document to describe how to complie Qt with bitbake?

There are recipes for QT4 in the mainline Poky tree.  Just build via:
   bitbake qt4-x11-free
    -or-
   bitbake qt4-embedded

These work fine for me.

--=20
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

