Return-Path: <yreiss@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 756EDE00E6C; Sun, 17 Apr 2016 23:55:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [173.37.86.73 listed in list.dnswl.org]
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Sun, 17 Apr 2016 23:55:53 PDT
Received: from rcdn-iport-2.cisco.com (rcdn-iport-2.cisco.com [173.37.86.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BDFFE0077F
	for <yocto@yoctoproject.org>; Sun, 17 Apr 2016 23:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=477; q=dns/txt; s=iport;
	t=1460962553; x=1462172153; h=from:to:subject:date:message-id:
	content-transfer-encoding:mime-version;
	bh=vtM3Tan5xGNsPur3Mt4JJ7tha1Y5hmv4qtLkVsT4ddg=;
	b=dHoEb0qXzWOw5JXMglLyrjpN/Dz9Bbb+Jd2H0y9DP1m4bqhiVuXLntiK
	vjMK35UhdCAga86OlbqVs/ZJPqc2FWsXVW82A+LSafg9nFNWzrsKJiyGM
	KK7JdPxYHYmMpT8icanl58aVcGUn9uoca/oyH1Kl+eVYHM7E4hquQ562v w=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AMAgAghBRX/5NdJa1bgziBVrodAQ2Bc?=
	=?us-ascii?q?Yc3OBQBAQEBAQEBZRwLhEg6UQE+QiYBBBuIIZhBoGoBAQgCAR2GIY5gBZgOAYE?=
	=?us-ascii?q?tjFmBWI1AjyoBHgEBQoNoiSh+AQEB?=
X-IronPort-AV: E=Sophos;i="5.24,501,1454976000"; d="scan'208";a="97534373"
Received: from rcdn-core-11.cisco.com ([173.37.93.147])
	by rcdn-iport-2.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Apr 2016 06:54:50 +0000
Received: from XCH-RTP-015.cisco.com (xch-rtp-015.cisco.com [64.101.220.155])
	by rcdn-core-11.cisco.com (8.14.5/8.14.5) with ESMTP id
	u3I6soJS017961
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 06:54:50 GMT
Received: from xch-rtp-014.cisco.com (64.101.220.154) by XCH-RTP-015.cisco.com
	(64.101.220.155) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Mon, 18 Apr 2016 02:54:49 -0400
Received: from xch-rtp-014.cisco.com ([64.101.220.154]) by
	XCH-RTP-014.cisco.com ([64.101.220.154]) with mapi id 15.00.1104.009;
	Mon, 18 Apr 2016 02:54:49 -0400
From: "Yigal Reiss (yreiss)" <yreiss@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding kernel module to rootfs without changing machine's
	configuration
Thread-Index: AdGZO4E3JB15jQBTTBaZ9RNKAqingQ==
Date: Mon, 18 Apr 2016 06:54:49 +0000
Message-ID: <690f5e51a76642d689429a2a29067083@XCH-RTP-014.cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.56.237.15]
MIME-Version: 1.0
Subject: Adding kernel module to rootfs without changing machine's configuration
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
X-List-Received-Date: Mon, 18 Apr 2016 06:55:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am able to add a kernel module to the rootfs by appending it to the MACHI=
NE_EXTRA_RDEPENDS of the <platform>.conf under the machine folder of the BS=
P. E.g. for adding nfq:
MACHINE_EXTRA_RDEPENDS +=3D "kernel-module-xt-multiport ...  kernel-module-=
xt-nfqueue"

I would like to make the override (i.e. add my own kernel module, and possi=
bly apply kernel patches) from my own layer without touching the provided B=
SP layer. Is this possible?

Thanks,
Yigal

