Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 453C9E012F3
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2011 02:20:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 24 Oct 2011 02:19:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="66151525"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 24 Oct 2011 02:19:51 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 24 Oct 2011 17:18:15 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 24 Oct 2011 17:18:14 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 24 Oct 2011 17:18:13 +0800
Thread-Topic: [yocto] Eclipse Plugin:  ADT Version too old
Thread-Index: AcySK/ewc0XT4HVNQfSwh2uktrAYKwAAXdBA
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
In-Reply-To: <4EA529F5.4010706@communistcode.co.uk>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Mon, 24 Oct 2011 09:20:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Jack Mitchell wrote on 2011-10-24:
> I am trying to use the new eclipse plugin, which I have had working=20
> fine for the past couple of weeks until I switched from the master branch=
 to edison.
>=20
> I performed a fresh build using the stable edison branch, installed=20
> the new 1.1 eclipse plugin and now whenever I try to setup the Yocto=20
> eclipse environment I receive the following error:
>=20
> Yocto Preferences Configuration Error!
> OECORE related items are not found in envrionement setup files.
> The ADT version you're using is too old.
> Please upgrade to our latest ADT Version!
>=20
> This pops up in a message box, not the eclipse console. I have=20
> followed the ADT Setup guide to the letter and it's not playing ball -=20
> could someone confirm this as working or point me towards a reason why I =
may be getting this error?
>=20

Hi Jack,

How did you install your ADT? You can check the ADT version by "cat" the fi=
le /opt/poky/${version}/version-xxxx, where xxxx is your target sys archite=
cture.

-Lianhao

