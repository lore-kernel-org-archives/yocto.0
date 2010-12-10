Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AD3C4C80FD4
	for <yocto@yoctoproject.org>; Thu,  9 Dec 2010 19:53:06 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Dec 2010 17:53:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,322,1288594800"; d="scan'208";a="685705846"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 17:53:05 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 10 Dec 2010 09:52:00 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 10 Dec 2010 09:51:59 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Fri, 10 Dec 2010 09:51:58 +0800
Thread-Topic: [yocto] PULL] ADT installer script implementation, Liping Ke
Thread-Index: AcuX29d4Ehuqoug7RE2CXblOApd/1gADMz2wAAjtBpA=
Message-ID: <789F9655DD1B8F43B48D77C5D3065973312DBF3B@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D3065973312DBD16@shsmsx501.ccr.corp.intel.com>
	<1291924853.1554.933.camel@rex>
	<9AFCD584B0B67B48AE8D8585BE30BA95021EBE98@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95021EBE98@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: PULL] ADT installer script implementation, Liping Ke
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
X-List-Received-Date: Fri, 10 Dec 2010 01:53:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> That definitely a bug regarding how to locate .config that we need to
> address.  As to the different config files, the .config is on purpose
> non
> user editable that's why we set it as hidden file by default.  And the
> yocto_installer.conf is the customizable config user should change and
> we
> have prompt for the user as regard to the configuration values to be
> used
> and where they're from along the installation process...
>=20

Hi, Jessica

For the configuration in .config file, I found it has problem too as a hidd=
en file those days.
It might be missed in some file ops. I was thinking whether I should remove=
 this file
and directly assign values in the common file (such as util script). Normal=
ly user will
not change it. If he's capable enough, of course he can change the opkg fil=
e name
as well as log file?

As for the rootfs default downloading value, I will remove it to the Yocto_=
installer.conf

Thanks & Regards,
criping

