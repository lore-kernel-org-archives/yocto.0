Return-Path: <daweix.wu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 600A5E00A7B; Wed, 29 Jul 2015 02:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6D8CE009EB
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 02:49:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 29 Jul 2015 02:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,569,1432623600"; d="scan'208";a="757242394"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by fmsmga001.fm.intel.com with ESMTP; 29 Jul 2015 02:49:20 -0700
Received: from shsmsx104.ccr.corp.intel.com (10.239.110.15) by
	KMSMSX153.gar.corp.intel.com (172.21.73.88) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Wed, 29 Jul 2015 17:49:19 +0800
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.38]) by
	SHSMSX104.ccr.corp.intel.com ([169.254.5.45]) with mapi id
	14.03.0224.002; Wed, 29 Jul 2015 17:49:18 +0800
From: "Wu, DaweiX" <daweix.wu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] How to check the version of Yocto
Thread-Index: AdDJ3JQksznbpSEdS0W8rXoRmt8R6f//hguA//93x7A=
Date: Wed, 29 Jul 2015 09:49:17 +0000
Message-ID: <C99A0EA1A65F654ABB458136AC6BD5CB1109F318@SHSMSX103.ccr.corp.intel.com>
References: <C99A0EA1A65F654ABB458136AC6BD5CB1109F2C5@SHSMSX103.ccr.corp.intel.com>
	<4996109.o2HLxXslWn@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <4996109.o2HLxXslWn@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to check the version of Yocto
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
X-List-Received-Date: Wed, 29 Jul 2015 09:49:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks Paul for your quick reply.=20

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, July 29, 2015 17:41 PM
To: Wu, DaweiX
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to check the version of Yocto

Hi Dawei,

On Wednesday 29 July 2015 09:03:01 Wu, DaweiX wrote:
> Hi, as we know ,there are versions like 1.8, 1.8.1, 1.9 , ... , so how=20
> can I check this version? I only know 'bitbake --version' .

Perhaps most definitively, If you are using a clone of the poky repository,=
 in meta-yocto/conf/distro/poky.conf you should see DISTRO_VERSION set to t=
he version. If you are using the default of DISTRO =3D "poky" you'll se thi=
s reported in the information printed at the start of every bitbake build e=
xecution.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

