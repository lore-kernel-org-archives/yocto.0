Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB1C4E0082A; Mon,  1 Sep 2014 23:10:04 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94F94E0078A
	for <yocto@yoctoproject.org>; Mon,  1 Sep 2014 23:09:57 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 01 Sep 2014 23:09:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="380118166"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Sep 2014 23:05:22 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 1 Sep 2014 23:09:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.178]) with mapi id
	14.03.0195.001; Mon, 1 Sep 2014 23:09:55 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Cochran <yocto@mindchasers.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs] should I be able to make the docs without
	warnings?
Thread-Index: AQHPw78A8iRCe2eMUkuT4sa+l5DJ6ZvtX3KQ
Date: Tue, 2 Sep 2014 06:09:54 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FE01F8@ORSMSX101.amr.corp.intel.com>
References: <5400D366.8050207@mindchasers.com>
In-Reply-To: <5400D366.8050207@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [yocto-docs] should I be able to make the docs without	warnings?
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
X-List-Received-Date: Tue, 02 Sep 2014 06:10:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bob,=20

The warnings when you make a PDF document consist of the following:

* "cannot add @xml:base to node set root element. Relative paths may not wo=
rk."
* /usr/bin/fop: Unable to locate servlet-api in /usr/share/java"
* Various font substitutions dependent on the build host
* And then some line overflow messages (quite a few) that have the form: "L=
ine 1 of a paragraph overflows the available area by xxxx millipoints. (See=
 position xxx:xxx)

I have just considered these warnings as acceptable.  I have never taken th=
e time to try and run them down and figure out what they mean.  The PDF fil=
e builds out to an acceptable item in my opinion.  PDF versions of the manu=
als have taken a serious back-seat to their HTML counterparts.  If you can =
shed some light on these warnings I am all for trying to suppress them or e=
liminate them.  For the time being though, they would be low on my priority=
.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Bob Cochran
>Sent: Friday, August 29, 2014 12:24 PM
>To: Yocto discussion list
>Subject: [yocto] [yocto-docs] should I be able to make the docs without
>warnings?
>
>Hello,
>
>I'm thinking about chasing down some of the warnings I see when I make the
>docs (pdf) in yocto-docs.
>
>However, it's not clear to me whether the warnings I get are to be expecte=
d
>or can be configured out.
>
>I don't see that the auto builder is used to build the docs. Therefore, ca=
n
>someone please point me to a known good log or at least let me know that I
>should be able to make the docs without warnings.
>
>Thanks,
>
>Bob
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

