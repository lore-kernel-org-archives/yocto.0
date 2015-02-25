Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A20B2E003AB; Wed, 25 Feb 2015 08:47:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B276E002F9
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 08:47:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 25 Feb 2015 08:41:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,645,1418112000"; d="scan'208";a="690654932"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 25 Feb 2015 08:47:02 -0800
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 25 Feb 2015 08:47:01 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.135]) by
	ORSMSX116.amr.corp.intel.com ([169.254.9.108]) with mapi id
	14.03.0195.001; Wed, 25 Feb 2015 08:47:01 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: more observations on kernel dev manual
Thread-Index: AQHQUOkvD7swTVYk902rxOdWBJZFQJ0BkUrA
Date: Wed, 25 Feb 2015 16:47:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988EB0D64@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1502250517500.32394@localhost>
In-Reply-To: <alpine.LFD.2.11.1502250517500.32394@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: more observations on kernel dev manual
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
X-List-Received-Date: Wed, 25 Feb 2015 16:47:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So I fixed the two obvious issues here.  I am working on getting clarificat=
ion on the command -c item. =20

Thanks,
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, February 25, 2015 2:52 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: more observations on kernel dev manual
>
>
>  been a while since i went through this manual so some probably simple
>observations -- based on in-progress manual. if scott rifenbark wants to
>process any of this, he has my blessing.
>
>  section 2.2.2: i'm assuming that list of SRC_URIs should actually read?
>
>   ... first-change...
>   ... second-change ...
>   ... third-change ...

Holy Mackerel... how did this go unnoticed for so long.  Fixed.

>
>  section 2.2.3: should that note not refer to the "defconfig" file and no=
t the
>".config" file? as in, the defconfig file is used as the
>*basis* for the eventual .config file, no? so the note should be discussin=
g
>applying the changes from the "defconfig" file, should it not?
>
>  section 2.3.2: hang on ...
>
>   "Complete a build at least through the kernel configuration task as fol=
lows:
>
>     $ bitbake linux-yocto -c kernel_configme -f"
>
>but i thought that "-c <command>" would run *only* that bitbake task ... t=
he
>wording suggests that that command will run everything *up to* that task.

I am double checking on the behavior of this. =20

>
>  also in that section, "are not't" should just say "aren't" in sample war=
ning
>output.

I fixed this in the manual.  I grepped for that particular string in both p=
oky and bitbake repos and came up empty.  So I am not sure where exactly (i=
f even) that string appears in the actual source repo.

>
>  section 2.3.3: again, first para suggests that that command should proce=
ss the
>kernel all the way "through" the kernel configuration.

Again, waiting on some clarification on this issue.

>
>  that's it for chapter 2 ... more later.
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

