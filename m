Return-Path: <david.c.stewart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4ACDE01405
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 21:03:20 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2013 21:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,755,1367996400"; d="scan'208";a="372041756"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jul 2013 21:03:19 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.220]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.149]) with mapi id
	14.03.0123.003; Fri, 26 Jul 2013 21:03:19 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: mulhern <mulhern@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Discovering available Perl modules OR writing recipes
	for your own
Thread-Index: AQHOin467TkG8EqEiEyBThjkywlTjQ==
Date: Sat, 27 Jul 2013 04:03:18 +0000
Message-ID: <CE189489.3F40C%david.c.stewart@intel.com>
In-Reply-To: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.6.130613
x-originating-ip: [10.254.82.165]
MIME-Version: 1.0
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Sat, 27 Jul 2013 04:03:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <45E10CDF7CB3F44EB18723D13628A0EC@intel.com>
Content-Transfer-Encoding: quoted-printable

Did you get an answer? I'm not seeing it.

From: mulhern <mulhern@gmail.com<mailto:mulhern@gmail.com>>
Date: Wednesday, July 24, 2013 8:30 AM
To: "yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>" <yocto@yoctopro=
ject.org<mailto:yocto@yoctoproject.org>>
Subject: [yocto] Discovering available Perl modules OR writing recipes for =
your own

Hi all,

I'm working on a recipe for pullledpork, which is a Perl app which grabs an=
d combines Snort rules from various sites.

My questions all revolve around pulledpork's various module dependencies.

pulledpork tries to use the module Crypt::SSLeay and in my current configur=
ation it can't find it. It is very easy to write a little recipes that prov=
ides this module and forge ahead.

But I'm not sure that that is the correct thing to do...especially as it lo=
oks like I'll have to do the same thing for another ten or so tiny modules =
if I take that approach.

First, is there some way that I can find out whether that or any particular=
 Perl module is provided by some recipe somewhere? My plan would be to RDEP=
END on every available Perl module, forcing them all to be installed in the=
 right place, run the pulledpork script, do the right think to provide any =
modules still missing until the script can actually complete, and then remo=
ve from RDEPENDS all previously included modules that don't show up a value=
s in %INC. So far, so good, but I don't know how to even locate all the Per=
l modules that are already available.

Second, if the modules really are not available is there a better way to pa=
ckage them up than writing individual recipes for each and every missing mo=
dule?

Third, are there naming conventions that should be followed? For example th=
ere is a recipe for liburi-perl that provides the very simply named Perl mo=
dule URI.

Thanks!

- mulhern



