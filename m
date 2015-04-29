Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 447A2E0095D; Wed, 29 Apr 2015 12:45:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.62 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-gw1-out.broadcom.com (mail-gw1-out.broadcom.com
	[216.31.210.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530CCE007B9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 12:44:57 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.11,672,1422950400"; d="scan'208";a="63657476"
Received: from irvexchcas06.broadcom.com (HELO
	IRVEXCHCAS06.corp.ad.broadcom.com) ([10.9.208.53])
	by mail-gw1-out.broadcom.com with ESMTP; 29 Apr 2015 13:13:31 -0700
Received: from SJEXCHCAS07.corp.ad.broadcom.com (10.16.203.16) by
	IRVEXCHCAS06.corp.ad.broadcom.com (10.9.208.53) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Wed, 29 Apr 2015 12:44:56 -0700
Received: from SJEXCHMB12.corp.ad.broadcom.com ([fe80::bc15:c1e1:c29a:36f7])
	by SJEXCHCAS07.corp.ad.broadcom.com ([::1]) with mapi id 14.03.0235.001;
	Wed, 29 Apr 2015 12:44:51 -0700
From: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel customized do_fetch issue
Thread-Index: AdCCo3ucpO3id1frRu2TC2HCA6qcDAAPGt4AAA5k2WD//6YWAIAAcK5g
Date: Wed, 29 Apr 2015 19:44:51 +0000
Message-ID: <9F136EE5FB53D64397ED1089A0E760E0162CD72C@SJEXCHMB12.corp.ad.broadcom.com>
References: <9F136EE5FB53D64397ED1089A0E760E0162CD671@SJEXCHMB12.corp.ad.broadcom.com>
	<55411A50.3030304@windriver.com>
	<9F136EE5FB53D64397ED1089A0E760E0162CD6BD@SJEXCHMB12.corp.ad.broadcom.com>
	<55412F7C.8050700@windriver.com>
In-Reply-To: <55412F7C.8050700@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.203.100]
MIME-Version: 1.0
Subject: Re: Kernel customized do_fetch issue
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
X-List-Received-Date: Wed, 29 Apr 2015 19:45:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Bruce!
> You really aren't seeing anything land in the build/downloads/git2/
> directory structure ? ssh fetches seem to work here.

I do see something in build/downloads/git2/git-ccxsw.xxx.com.linux-lsk, but=
 it looks like an empty git.
	HEAD  branches	config	description  hooks  info  objects  packed-refs	refs

I bring up this issue to IT department, what they said is, the Yocto expect=
s the url contains  host/repo, while gitolit requires host:repo.
This is interesting since the Yocto documentation explicitly mentions gitol=
ite in the SCM section:
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#best-pr=
actices-source-control-management

Thanks,
Joel


