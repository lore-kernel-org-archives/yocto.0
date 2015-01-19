Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64195E0083A; Mon, 19 Jan 2015 14:57:41 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D60E00571
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 14:57:39 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Jan 2015 14:57:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,429,1418112000"; d="scan'208";a="653397935"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jan 2015 14:57:38 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 19 Jan 2015 14:57:38 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.95]) with mapi id
	14.03.0195.001; Mon, 19 Jan 2015 14:57:37 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] what is the future for package_tar.bbclass?
Thread-Index: AQHQLOiA54eTL8J7xUSn0bYhqmqRwZzIHK/g
Date: Mon, 19 Jan 2015 22:57:37 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E9D091@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1501101014070.11943@localhost>
In-Reply-To: <alpine.LFD.2.11.1501101014070.11943@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: what is the future for package_tar.bbclass?
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
X-List-Received-Date: Mon, 19 Jan 2015 22:57:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The class is broken and unsupported.  I have updated the docs indicating su=
ch.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Saturday, January 10, 2015 7:16 AM
>To: Yocto discussion list
>Subject: [yocto] what is the future for package_tar.bbclass?
>
>
>  once upon a time, richard purdie didn't see much use for the packaging c=
lass
>file package_tar.bbclass:
>
>http://lists.openembedded.org/pipermail/openembedded-core/2014-
>July/094843.html
>
>however, that packaging format is still mentioned at the very end of secti=
on
>3.4 in the YP reference manual. is there a plan for keeping it, deleting i=
t,
>ignoring it, etc?
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

