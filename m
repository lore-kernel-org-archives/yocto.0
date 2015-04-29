Return-Path: <joel.zhou@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D487E0095D; Wed, 29 Apr 2015 11:09:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.31.210.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-gw2-out.broadcom.com (mail-gw2-out.broadcom.com
	[216.31.210.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE7AE007B9
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 11:09:01 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.11,671,1422950400"; d="scan'208";a="63476699"
Received: from irvexchcas06.broadcom.com (HELO
	IRVEXCHCAS06.corp.ad.broadcom.com) ([10.9.208.53])
	by mail-gw2-out.broadcom.com with ESMTP; 29 Apr 2015 11:16:40 -0700
Received: from SJEXCHCAS04.corp.ad.broadcom.com (10.16.203.10) by
	IRVEXCHCAS06.corp.ad.broadcom.com (10.9.208.53) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Wed, 29 Apr 2015 11:09:01 -0700
Received: from SJEXCHMB12.corp.ad.broadcom.com ([fe80::bc15:c1e1:c29a:36f7])
	by SJEXCHCAS04.corp.ad.broadcom.com ([::1]) with mapi id 14.03.0235.001;
	Wed, 29 Apr 2015 11:08:59 -0700
From: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Kernel customized do_fetch issue
Thread-Index: AdCCo3ucpO3id1frRu2TC2HCA6qcDAAPGt4AAA5k2WA=
Date: Wed, 29 Apr 2015 18:08:59 +0000
Message-ID: <9F136EE5FB53D64397ED1089A0E760E0162CD6BD@SJEXCHMB12.corp.ad.broadcom.com>
References: <9F136EE5FB53D64397ED1089A0E760E0162CD671@SJEXCHMB12.corp.ad.broadcom.com>
	<55411A50.3030304@windriver.com>
In-Reply-To: <55411A50.3030304@windriver.com>
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
X-List-Received-Date: Wed, 29 Apr 2015 18:09:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> But the question has to be asked. Why exactly are you manually fetching
> the kernel ? The fetcher can take care of most everything.

The whole story is starting at the url of our git repo. We have a git URL l=
ike:
	ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk

So the SRC_URI like this, but the fetcher try to apply "scp" over it.
	KBRANCH=3D 3.14_common_dev
	SRC_URI =3D "ssh://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;=
branch=3D${KBRANCH}"
Error:
	ERROR: Fetcher failure: Fetch command failed with exit code 1, output:
	FATAL: unknown git/gitolite command: 'scp -r -f linux-lsk'

Then I change it  according the suggestion in this mailing list:
	SRC_URI =3D "git://svcswgit@git-ccxsw.inhouse.com/linux-lsk;bareclone=3D1;=
branch=3D${KBRANCH};protocol=3Dssh"

This time "bitbake linux-lsk -c fetch" return no error, but the source fold=
er in working directory is empty.=20
	In log.do_fetch
	DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
	http://downloads.yoctoproject.org/mirror/sources/git2_git-ccxsw.rtp. inhou=
se.com. linux-lsk.tar.gz:
	2015-04-29 12:49:36 ERROR 404: Not Found.

Thanks,
Joel

