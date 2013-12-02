Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE578E007B3
	for <yocto@yoctoproject.org>; Mon,  2 Dec 2013 03:57:38 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 02 Dec 2013 03:57:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,810,1378882800"; d="scan'208";a="437049630"
Received: from pmcgurk-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.184])
	by fmsmga001.fm.intel.com with ESMTP; 02 Dec 2013 03:57:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Date: Mon, 02 Dec 2013 11:57:35 +0000
Message-ID: <11848834.gRVeh0UGRN@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <22354788.5R15oKMmSW@koontz>
References: <22354788.5R15oKMmSW@koontz>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto .gitignore
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
X-List-Received-Date: Mon, 02 Dec 2013 11:57:39 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi S=F8ren,

On Friday 29 November 2013 23:12:24 S=F8ren Holm wrote:
> Why does yocto .gitignpre include meta-*/. Why would we possibly want=
 to
> ignore custom layers ?

I presume you mean the .gitignore in the poky repository. Any additiona=
l=20
custom layers shouldn't be part of the poky repository, they should be =
in=20
separate repositories.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

