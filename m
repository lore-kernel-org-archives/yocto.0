Return-Path: <alexandru.c.georgescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48E80E006B7; Fri,  1 Aug 2014 01:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFAFAE00736
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 01:10:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Aug 2014 01:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,778,1400050800"; d="scan'208";a="578647338"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2014 01:09:39 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 1 Aug 2014 09:09:39 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.239]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.214]) with mapi id
	14.03.0195.001; Fri, 1 Aug 2014 09:09:39 +0100
From: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] will yocto 1.7 work with eclipse luna?
Thread-Index: AQHPrV/wWIt+nn0eeEOZ4aeppy10eg==
Date: Fri, 1 Aug 2014 08:09:38 +0000
Message-ID: <D001254A.72DD%alexandru.c.georgescu@intel.com>
References: <alpine.LFD.2.11.1407311737480.19552@localhost>
In-Reply-To: <alpine.LFD.2.11.1407311737480.19552@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.108.87]
MIME-Version: 1.0
Subject: Re: will yocto 1.7 work with eclipse luna?
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
X-List-Received-Date: Fri, 01 Aug 2014 08:10:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <481C5ADE2D429147B6753D1EB5F71CF3@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Robert,

The upgrade to Luna is expected to happen during the 1.7 timeframe as
shown here: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6251.
After the upgrade will happen, it will merge into our QA flow to make sure
that the core functionality exist.

Regards,
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 01/08/14 00:41, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>  already dropped scott rifenbark a note about this, but current dev
>manual recommends eclipse kepler, while eclipse luna is out, and
>fedora 22 appears to use that as the yum-installable version. so any
>issues with eclipse luna?
>
>rday
>
>--=20
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


