Return-Path: <kishore.k.bodke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D9D4E0137A
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 14:12:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2012 14:12:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="144773055"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2012 14:12:52 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 25 May 2012 14:12:52 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.73]) with mapi id
	14.01.0355.002; Fri, 25 May 2012 14:12:51 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>, 
	"Saxena, Rahul" <rahul.saxena@intel.com>
Thread-Topic: [PATCH 0/1] meta-intel: update README.sources for all BSPs
Thread-Index: AQHNOrlOXhCN4rtq+kmTFxcG2OgA0pba/8kw
Date: Fri, 25 May 2012 21:12:51 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACB5E48@ORSMSX105.amr.corp.intel.com>
References: <cover.1337979215.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1337979215.git.tom.zanussi@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH 0/1] meta-intel: update README.sources for all BSPs
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
X-List-Received-Date: Fri, 25 May 2012 21:12:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Zanussi, Tom
>Sent: Friday, May 25, 2012 2:00 PM
>To: yocto@yoctoproject.org; Bodke, Kishore K; dvhart@linux.intel.com;
>Saxena, Rahul
>Cc: Zanussi, Tom
>Subject: [PATCH 0/1] meta-intel: update README.sources for all BSPs
>
>From: Tom Zanussi <tom.zanussi@intel.com>
>
>I took the liberty of updating all the BSPs in meta-intel with the denzil
>sources URL.
>
>To those on the To list: please let me know if you don't want this for
>your BSP(s).
>

Acked-by:  Kishore Bodke <kishore.k.bodke@intel.com>


>The following changes since commit
>a62c485edffed30ea95658760948fd50925adfb0:
>  Darren Hart (1):
>        linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new
>kerntools
>
>are available in the git repository at:
>
>  git://git.yoctoproject.org/meta-intel.git tzanussi/denzil-README.sources=
-
>update
>  http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/log/?h=3Dtzanussi/d=
enzil-
>README.sources-update
>
>Tom Zanussi (1):
>  meta-intel: update README.sources with denzil link
>
> meta-cedartrail/README.sources   |    2 +-
> meta-crownbay/README.sources     |    2 +-
> meta-emenlow/README.sources      |    2 +-
> meta-fishriver/README.sources    |    2 +-
> meta-fri2/README.sources         |    2 +-
> meta-jasperforest/README.sources |    2 +-
> meta-n450/README.sources         |    2 +-
> meta-romley/README.sources       |    2 +-
> meta-sugarbay/README.sources     |    2 +-
> meta-sys940x/README.sources      |    3 +--
> 10 files changed, 10 insertions(+), 11 deletions(-)


