Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 047C9E00843
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 05:40:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Feb 2014 05:40:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,512,1389772800"; d="scan'208";a="478456551"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2014 05:40:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.61]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.234]) with mapi id
	14.03.0123.003; Thu, 20 Feb 2014 05:40:10 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Yang, Chengwei" <chengwei.yang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Ref-manual: fix typo for XDG_RUNTIME_DIR
	variable	value
Thread-Index: AQHPLE/klBiIG7SIrkmFxvomSQviQJq+JK1A
Date: Thu, 20 Feb 2014 13:40:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F66BAC@ORSMSX101.amr.corp.intel.com>
References: <1392689926-4212-1-git-send-email-chengwei.yang@intel.com>
In-Reply-To: <1392689926-4212-1-git-send-email-chengwei.yang@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Ref-manual: fix typo for XDG_RUNTIME_DIR variable	value
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
X-List-Received-Date: Thu, 20 Feb 2014 13:40:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Chengwei,=20

Thanks for reporting this.  I have applied the patch to both the master (1.=
6) and dora branches of the yocto-docs Git repository.  You can see the cha=
nge at http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#r=
unning-weston and at http://www.yoctoproject.org/docs/1.5.1/ref-manual/ref-=
manual.html#running-weston.=20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Chengwei Yang
>Sent: Monday, February 17, 2014 6:19 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] [PATCH] Ref-manual: fix typo for XDG_RUNTIME_DIR variable
>value
>
>Signed-off-by: Chengwei Yang <chengwei.yang@intel.com>
>---
> documentation/ref-manual/technical-details.xml |    2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/documentation/ref-manual/technical-details.xml
>b/documentation/ref-manual/technical-details.xml
>index 51b9148..106bb2c 100644
>--- a/documentation/ref-manual/technical-details.xml
>+++ b/documentation/ref-manual/technical-details.xml
>@@ -1005,7 +1005,7 @@
>                     <literallayout class=3D'monospaced'>
>      mkdir -p /tmp/$USER-weston
>      chmod 0700 /tmp/$USER-weston
>-     export XDG_RUNTIME_DIR=3D/tmp/$USER=3Dweston
>+     export XDG_RUNTIME_DIR=3D/tmp/$USER-weston
>                     </literallayout></para></listitem>
>                 <listitem><para>Launch Weston in the shell:
>                     <literallayout class=3D'monospaced'>
>--
>1.7.9.5
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

