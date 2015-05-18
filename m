Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DE19E009DA; Mon, 18 May 2015 07:43:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62C27E0094C
	for <yocto@yoctoproject.org>; Mon, 18 May 2015 07:42:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 18 May 2015 07:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,453,1427785200"; d="scan'208";a="696601492"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga001.jf.intel.com with ESMTP; 18 May 2015 07:42:59 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Mon, 18 May 2015 07:42:59 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.221]) with mapi id
	14.03.0224.002; Mon, 18 May 2015 07:42:58 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question on building out-of-tree modules on the target
Thread-Index: AdCReOu3pXj0Q3tfSEaVNG//rlsQSQ==
Date: Mon, 18 May 2015 14:42:58 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EF8590@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Hart, Darren" <darren.hart@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Question on building out-of-tree modules on the target
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
X-List-Received-Date: Mon, 18 May 2015 14:43:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=20

I have a section in the YP Linux Kernel Development Manual that talks about=
 building out-of-tree-modules on the target - http://www.yoctoproject.org/d=
ocs/1.9/kernel-dev/kernel-dev.html#building-out-of-tree-modules-on-the-targ=
et.  In this this section is a simple statements saying "Briefly, the kerne=
l-dev package is installed by default on all *.sdk images."  I talked to so=
me people and they noted that this might be an oversimplification.  It was =
also noted that for lsb and rt sdk images the old kernel-dev is added but f=
or sato-sdk the new kernel-devsrc is added.

The section I have does not even mention a kernel-devsrc.  I am wondering h=
ow accurate this section currently is.  I don't know much about this partic=
ular area and could use some help from anyone to make this section more tec=
hnically accurate given the latest YP release. =20

Thanks,=20
Scott

Scott Rifenbark
Intel Corporation
Yocto Project Documentation
503.712.2702


