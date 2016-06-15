Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86E5E00D3B; Wed, 15 Jun 2016 13:35:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [168.127.0.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from fncnmp04.fnc.fujitsu.com (fncnmp04.fnc.fujitsu.com
	[168.127.0.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 552E7E00D34
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:35:47 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,477,1459832400"; d="scan'208";a="80116662"
Received: from rchexhcp2.fnc.net.local ([168.127.134.76])
	by fncnmp02.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	15 Jun 2016 15:35:44 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP2.fnc.net.local ([168.127.134.76]) with mapi id 14.03.0294.000;
	Wed, 15 Jun 2016 15:35:43 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToA=
Date: Wed, 15 Jun 2016 20:35:42 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22394.002
x-tm-as-result: No--42.967400-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Wed, 15 Jun 2016 20:35:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thank you. This is in the target.=20

Thanks,
Monica=20

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, June 15, 2016 3:25 PM
To: Rajasekaran, Monica <Monica.Rajasekaran@us.fujitsu.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] autoreconf

Hi Monica,

On Wed, 15 Jun 2016 20:17:16 Rajasekaran, Monica wrote:
> What is the package to install autoreconf ? (Ubuntu equivalent:=20
> apt-get install dh-autoreconf )
>=20
> I am getting the following error for one of my applications:
> "autoreconf: command not found"

autoreconf is part of autoconf.

Where is this? On the target or within the build system?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

