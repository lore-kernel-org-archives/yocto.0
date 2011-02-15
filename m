Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B09FE4C8007E
	for <yocto@yoctoproject.org>; Tue, 15 Feb 2011 01:22:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2011 23:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,473,1291622400"; d="scan'208";a="707919433"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 14 Feb 2011 23:22:39 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Feb 2011 15:21:42 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Feb 2011 15:21:42 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 15 Feb 2011 15:21:41 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Chris Tapp <opensource@keylevel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 15 Feb 2011 15:21:40 +0800
Thread-Topic: [yocto] Command line audio
Thread-Index: AcvMkEIOxojXagFeRXKM7ISMrZnSswAUCX9Q
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A332859F4@shsmsx501.ccr.corp.intel.com>
References: <848C40EE-B62A-48D9-B9BC-3303559443D9@keylevel.com>
In-Reply-To: <848C40EE-B62A-48D9-B9BC-3303559443D9@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Command line audio
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
X-List-Received-Date: Tue, 15 Feb 2011 07:22:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There is no such command-line recipe audio player in Yocto currently.

But to play music in command line, does "gst-launch" help with your case?

Thanks,
Dongxiao

Chris Tapp wrote:
> Is there a command-line audio player recipe in the Yocto meta?
>=20
> I've searched for the usual candidates (mpg123, etc.), but I've not
> found anything.=20
>=20
> I'm just after something that I can use to see if the kernel
> configuration I have now gives me working audio.=20
>=20
> Thanks !
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


