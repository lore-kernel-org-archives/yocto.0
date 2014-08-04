Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0874E007DC; Sun,  3 Aug 2014 22:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0582E007D3
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 22:29:48 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2014 22:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,796,1400050800"; d="scan'208";a="579584732"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2014 22:29:47 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 3 Aug 2014 22:29:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.33]) with mapi id
	14.03.0123.003; Sun, 3 Aug 2014 22:29:46 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: question about installing multiple versions of a single library
Thread-Index: AQHPrvox3kOjSwqlOU6tH8xZ/0LTL5u/6/4w
Date: Mon, 4 Aug 2014 05:29:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD3136@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1408030456480.14212@localhost>
In-Reply-To: <alpine.LFD.2.11.1408030456480.14212@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: question about installing multiple versions of a single library
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
X-List-Received-Date: Mon, 04 Aug 2014 05:29:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am putting this out on the list as I have no idea.  Maybe someone else ca=
n explain this one.=20

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Sunday, August 03, 2014 2:05 AM
>To: Rifenbark, Scott M
>Subject: question about installing multiple versions of a single library
>
>
>  sorry for the interruption, i'm reading dev manual here:
>
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-
>manual.html#installing-multiple-versions-of-the-same-library
>
>and the example used (clutter) doesn't even exist in oe-core with those ve=
rsion
>numbers, i was looking for another example that actually exists, didn't
>immediately see one.
>
>  more to the point, the version numbers used in those clutter recipe file=
s look
>weird:
>
>     clutter-1.6_1.6.20.bb
>     clutter-1.8_1.8.4.bb
>
>i'm not used to seeing recipe files that appear to combine a higher versio=
n
>number *and* what looks like a minor version number upgrade as well. do yo=
u
>know what's going on there? maybe that's not the best example for trying t=
o
>explain this topic.
>
>rday


