Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D9EFE0077F
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 13:48:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2013 13:44:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,769,1378882800"; d="scan'208";a="414628771"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 13:48:24 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.6]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 13:48:24 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] ref-manual: add usage NOTE to
	IMAGE_FSTYPES
Thread-Index: AQHO6WN0mR+zzJ3FSEy2tbNxmwSQlJo2fUYw
Date: Mon, 25 Nov 2013 21:48:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F5144C@ORSMSX101.amr.corp.intel.com>
References: <1385331570-22164-1-git-send-email-trevor.woerner@linaro.org>
In-Reply-To: <1385331570-22164-1-git-send-email-trevor.woerner@linaro.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "patches@linaro.org" <patches@linaro.org>
Subject: Re: [yocto-docs][PATCH] ref-manual: add usage NOTE to	IMAGE_FSTYPES
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
X-List-Received-Date: Mon, 25 Nov 2013 21:48:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Applied Trevor...thanks.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>Sent: Sunday, November 24, 2013 2:20 PM
>To: yocto@yoctoproject.org
>Cc: patches@linaro.org
>Subject: [yocto] [yocto-docs][PATCH] ref-manual: add usage NOTE to
>IMAGE_FSTYPES
>
>Due to the way in which IMAGE_FSTYPES is processed, it is not possible to
>modify it using _append or _prepend. Therefore add a note to the manual to
>warn users in case they stumble on this issue.
>
>Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
>---
> documentation/ref-manual/ref-variables.xml | 9 +++++++++
> 1 file changed, 9 insertions(+)
>
>diff --git a/documentation/ref-manual/ref-variables.xml
>b/documentation/ref-manual/ref-variables.xml
>index fb33791..67ea422 100644
>--- a/documentation/ref-manual/ref-variables.xml
>+++ b/documentation/ref-manual/ref-variables.xml
>@@ -2199,6 +2199,15 @@
>                     you can choose, see
>                     <link linkend=3D'var-
>IMAGE_TYPES'><filename>IMAGE_TYPES</filename></link>.
>                 </para>
>+
>+                <note>
>+                    Due to the way this variable is processed, it is not
>+                    possible to update its contents using
>+                    <filename>_append</filename> or
>+                    <filename>_prepend</filename>. To add one or more
>+                    additional options to this variable the
>+                    <filename>+=3D</filename> operator must be used.
>+                </note>
>             </glossdef>
>         </glossentry>
>
>--
>1.8.4.474.g128a96c
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

