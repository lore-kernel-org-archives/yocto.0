Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A70DE00B69
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 06:39:09 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2014 06:39:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,826,1389772800"; d="scan'208";a="510122690"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 09 Apr 2014 06:39:08 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 9 Apr 2014 06:39:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.45]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.163]) with mapi id
	14.03.0123.003; Wed, 9 Apr 2014 06:39:08 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Meier, Dennis" <meier.dennis@siemens.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto-docs] [PATCH] Extended description of the ${D} variable
Thread-Index: Ac9T76d/Q7UGnNsuS9CqfbNlX5SkSwACRk9w
Date: Wed, 9 Apr 2014 13:39:08 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F885B8@ORSMSX101.amr.corp.intel.com>
References: <6F22A92316C68C42A591A48A6291DA9DD77EAD@DEFTHW99EI0MSX.ww902.siemens.net>
In-Reply-To: <6F22A92316C68C42A591A48A6291DA9DD77EAD@DEFTHW99EI0MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [yocto-docs] [PATCH] Extended description of the ${D} variable
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
X-List-Received-Date: Wed, 09 Apr 2014 13:39:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dennis,=20

Thanks for the patch.  I have applied it for the upcoming 1.6 release.  You=
 can examine it at http://www.yoctoproject.org/docs/1.6/ref-manual/ref-manu=
al.html#var-D.  When applying your patch, I performed some minor style edit=
ing to conform to some standards within the YP documentation.=20

Best,=20
Scott

>-----Original Message-----
>From: Meier, Dennis [mailto:meier.dennis@siemens.com]
>Sent: Wednesday, April 09, 2014 5:32 AM
>To: yocto@yoctoproject.org
>Cc: Rifenbark, Scott M
>Subject: [yocto-docs] [PATCH] Extended description of the ${D} variable
>
>Hello everyone,
>
>In comparision to ${S}, the variable ${D} isn't documented very well in th=
e ref-
>manual. I wanted to improve on that a little bit.
>Please review the attached patch (on correctness of the statements
>especially).
>
>It would be cool to see this mainline soon.
>
>With best regards,
>Dennis Meier
>
>Siemens Building Technologies Division HQ (dARE of 5280) Infrastructure &
>Cities Sector Building Technologies Control Products & Systems IC BT CPS R=
&D
>ZG FW CCP Gubelstrasse 22
>6300 Zug, Switzerland
>Tel: +41 41 724-2028
>mailto:meier.dennis@siemens.com
>


