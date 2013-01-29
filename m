Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC8F1E0072F
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 09:46:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2013 09:46:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,561,1355126400"; d="scan'208";a="278126871"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 29 Jan 2013 09:46:45 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.214]) with mapi id
	14.01.0355.002; Tue, 29 Jan 2013 09:46:45 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH 0/3] Archiver documentation updates
Thread-Index: AQHN/ayjA860I6WqVEiyUD4O3IhR0JhglajQ
Date: Tue, 29 Jan 2013 17:46:44 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28F02@ORSMSX101.amr.corp.intel.com>
References: <cover.1359414197.git.kevin.strasser@linux.intel.com>
In-Reply-To: <cover.1359414197.git.kevin.strasser@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH 0/3] Archiver documentation updates
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
X-List-Received-Date: Tue, 29 Jan 2013 17:46:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Kevin,=20

Thanks for the fixes.  I cherry-picked them from your contrib area and they=
 are now in yocto-docs/master.=20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Kevin Strasser
>Sent: Monday, January 28, 2013 3:06 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] [yocto-docs][PATCH 0/3] Archiver documentation updates
>
>The following changes since commit
>69fa3cc4a07fc471fc869a81ff2545d62b63286e:
>
>  mega-manual: Removed support for old kernel-manual. (2013-01-28
>15:14:01 -0600)
>
>are available in the git repository at:
>
>  git://git.yoctoproject.org/poky-contrib strassek/docs_updates
>  http://git.yoctoproject.org/cgit.cgi/poky-
>contrib/log/?h=3Dstrassek/docs_updates
>
>Kevin Strasser (3):
>  dev-manual: use path independent bblayers.conf example
>  dev-manual: fix gpl source release example
>  dev-manual: clarify what source is being archived
>
> .../dev-manual/dev-manual-common-tasks.xml         |   20 ++++++++++---
>-------
> 1 file changed, 10 insertions(+), 10 deletions(-)
>
>--
>1.7.9.5
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

