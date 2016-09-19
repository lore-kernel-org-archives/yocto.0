Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 377EDE00DA8; Mon, 19 Sep 2016 03:07:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE115E009C7
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 03:07:14 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 19 Sep 2016 03:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,361,1470726000"; d="scan'208";a="170479748"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
	by fmsmga004.fm.intel.com with ESMTP; 19 Sep 2016 03:07:02 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.155]) by
	irsmsx105.ger.corp.intel.com ([169.254.7.196]) with mapi id
	14.03.0248.002; Mon, 19 Sep 2016 11:07:00 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Mathieu Allard <mathieu.allard@evalan.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [toaster] import config
Thread-Index: AQHSEl2PJT8LvQUdYEqrAXFefqQQIg==
Date: Mon, 19 Sep 2016 10:07:00 +0000
Message-ID: <D40573A6.85588%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.6.7.160722
x-originating-ip: [10.103.238.159]
MIME-Version: 1.0
Subject: Re: [toaster] import config
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
X-List-Received-Date: Mon, 19 Sep 2016 10:07:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <5E7C1DDE076DEA4BA52A14DDB4B64A15@intel.com>
Content-Transfer-Encoding: quoted-printable



On 16/09/2016 16:12, "yocto-bounces@yoctoproject.org on behalf of Mathieu
Allard" <yocto-bounces@yoctoproject.org on behalf of
mathieu.allard@evalan.com> wrote:

>Hi!
>
>It maybe is a naive question and I assume it's not possible because I
>didn't find anything related in the manual.
>
>Is it possible to launch a toaster instance on an already
>command-line-setup build?

If you are using the 2.1 release (krogoth), you can start a build from the
command line from your build directory as you would normally do without
Toaster. Toaster will monitor the build and store all the information
about it in a special project we've called "Command Line Builds".

This means you can configure the build system using config files, instead
of Toaster, and still use the build reporting capabilities of Toaster if
that's what you are after. You just need to make sure Toaster is running
before you issue the bitbake command.

I hope this makes sense.

Cheers

Bel=E9n


>Like inheriting the toaster bbclass and maybe some magic trick?
>
>Or am I stuck in reconfiguring everything manually through the web
>interface?
>
>Now that I have some working builds, I just wanted to know is there is a
>quick way to get some overview over it on our local network, and to
>quickly build my application again when I have an update.
>
>Otherwise I'll just hack some cheap script to launch a remote rebuild of
>my package when I need it.
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


