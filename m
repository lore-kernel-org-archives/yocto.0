Return-Path: <yejun.guo@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E011E00C68
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 22:34:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Apr 2014 22:34:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,784,1389772800"; d="scan'208";a="505916622"
Received: from fmsmsx108.amr.corp.intel.com ([10.19.9.228])
	by fmsmga001.fm.intel.com with ESMTP; 02 Apr 2014 22:34:42 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
	FMSMSX108.amr.corp.intel.com (10.19.9.228) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 2 Apr 2014 22:34:42 -0700
Received: from shsmsx103.ccr.corp.intel.com (10.239.4.69) by
	fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 2 Apr 2014 22:34:41 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.11]) by
	SHSMSX103.ccr.corp.intel.com ([169.254.4.199]) with mapi id
	14.03.0123.003; Thu, 3 Apr 2014 13:34:34 +0800
From: "Guo, Yejun" <yejun.guo@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] how to set LICENSE for llvm in .bb file
Thread-Index: AQHPTvvdnTt2H+tjMkaSTBYIQpLImpr/XoXw
Date: Thu, 3 Apr 2014 05:34:32 +0000
Message-ID: <854E8DBA9F41904AB047E03BB6963AE501A0F775@SHSMSX101.ccr.corp.intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>
	<CAPhnLPD5_19gPzyez-CHKjzzE_2dzeOrEm9FPwFYg7wkQTP58A@mail.gmail.com>
In-Reply-To: <CAPhnLPD5_19gPzyez-CHKjzzE_2dzeOrEm9FPwFYg7wkQTP58A@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Thu, 03 Apr 2014 05:34:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Elizabeth!


-----Original Message-----
From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]=20
Sent: Thursday, April 03, 2014 1:16 PM
To: Guo, Yejun
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] how to set LICENSE for llvm in .bb file

As it's not going into core, I would the license to your layer by adding a =
custom license directory to your layer.conf:

# Additional license directories.
LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"

Place the license in custom-license. I'd name it NCSA-1.0. Then I would ref=
erence that in your .bb file:

LICENSE =3D "NCSA-1.0 & ...... (llvm has a few other licenses iirc)


On Wed, Apr 2, 2014 at 7:16 PM, Guo, Yejun <yejun.guo@intel.com> wrote:
> Hi,
>
> I'm adding package llvm which has its own license: University of Illinois=
/NCSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT =
.  I tried something for LICENSE in .bb file, but is not recognized by the =
system. Could you please let me know how to set this value? Thanks a lot!
>
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
Elizabeth Flanagan
Yocto Project
Build and Release

