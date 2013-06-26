Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D01E01562
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 21:26:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Jun 2013 21:26:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,941,1363158000"; d="scan'208";a="355839744"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2013 21:27:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.181]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.244]) with mapi id
	14.03.0123.003; Tue, 25 Jun 2013 21:26:30 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <trevor.woerner@linaro.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] dev-manual: referencing bugzilla
	issues
Thread-Index: AQHOchZTwBOE/Rt210q+ZktYKL8qrZlHZdeQ
Date: Wed, 26 Jun 2013 04:26:29 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF51ADC@ORSMSX101.amr.corp.intel.com>
References: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
In-Reply-To: <1372214269-16897-1-git-send-email-trevor.woerner@linaro.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>,
	"patches@linaro.org" <patches@linaro.org>
Subject: Re: [yocto-docs][PATCH] dev-manual: referencing bugzilla issues
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
X-List-Received-Date: Wed, 26 Jun 2013 04:26:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trevor,=20

I use to have [YOCTO #<bug-id>] in the manual just as you do here.  I was t=
old by Saul though that I was not to use the brackets in the commit descrip=
tion.  That is when I took them out of the manual.  Maybe Saul can add more=
 to this explanation.

Thanks,
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>Sent: Tuesday, June 25, 2013 7:38 PM
>To: yocto@yoctoproject.org
>Cc: patches@linaro.org
>Subject: [yocto] [yocto-docs][PATCH] dev-manual: referencing bugzilla
>issues
>
>Based on observations from the various mailing lists, it is obvious that
>bugzilla issues are almost always referenced using square brackets.
>
>Signed-off-by: Trevor Woerner <trevor.woerner@linaro.org>
>---
> documentation/dev-manual/dev-manual-newbie.xml | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/documentation/dev-manual/dev-manual-newbie.xml
>b/documentation/dev-manual/dev-manual-newbie.xml
>index 0c849f5..55e0c58 100644
>--- a/documentation/dev-manual/dev-manual-newbie.xml
>+++ b/documentation/dev-manual/dev-manual-newbie.xml
>@@ -1405,7 +1405,7 @@
>                 references - any commit that addresses a specific bug
>should include the
>                 bug ID in the description (typically at the beginning)
>as follows:
>                 <literallayout class=3D'monospaced'>
>-     Fixes YOCTO #&lt;bug-id&gt;
>+     [YOCTO #&lt;bug-id&gt;]
>
>      &lt;detailed description of change&gt;
>                 </literallayout></para></listitem>
>--
>1.8.3.rc1.44.gb387c77
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

