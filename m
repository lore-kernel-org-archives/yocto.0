Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E97774C80054
	for <yocto@yoctoproject.org>; Sun, 24 Oct 2010 19:39:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Oct 2010 17:39:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,233,1286175600"; d="scan'208";a="339914927"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 24 Oct 2010 17:39:44 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 25 Oct 2010 08:38:12 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 25 Oct 2010 08:38:11 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 25 Oct 2010 08:38:09 +0800
Thread-Topic: RC3 vs RC4a
Thread-Index: ActyOzXSVwV712kEQ5yVUlQVucujnABoYgDA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D0B8DEFA1@shsmsx502.ccr.corp.intel.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC1832E6@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC1832E6@orsmsx501.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: RC3 vs RC4a
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Oct 2010 00:39:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Stewart, David C
>Sent: Saturday, October 23, 2010 6:48 AM
>
>We have an RC3 which we feel confident in based on our no-nogo launch deci=
sion.
>
>However, there are a handful of issues which are not critical but would be=
 desirable to
>address them - for example, having to do with errors being "fatal" which a=
re not, etc.
>
>So I have asked Saul to create an RC4a with these patched in. Would like S=
anity and BAT
>tests run on RC4a to see if we should ship it, or with stick with RC3.
>
>RP - will complete the patch tonight.
>Saul - will complete the RC4a build by 5PM Sunday (Pacific)
>Kevin and Jiajun and whole team - test this build as much as you have time=
 for.

OK, we'll try latest RC4a and report any new issues if seen.

Thanks
Kevin

>
>Late Monday, we will decide whether to go with the RC3 build or RC4a build=
.
>
>Dave
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.pokylinux.org/listinfo/yocto

