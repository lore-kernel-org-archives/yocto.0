Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F0874C80132
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 02:56:57 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2010 00:56:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,279,1286175600"; d="scan'208";a="853258480"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2010 00:56:56 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 2 Nov 2010 15:56:12 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 2 Nov 2010
	15:56:11 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, "Garman, Scott A"
	<scott.a.garman@intel.com>
Date: Tue, 2 Nov 2010 15:56:09 +0800
Thread-Topic: [yocto] nightly-release takes more than 24 hours to build.
Thread-Index: Act5tG3D7vclTcAVQ+OgXJJNdmU8kAAqxIpA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D18E66AFC@shsmsx502.ccr.corp.intel.com>
References: <4CCE8A82.7070000@intel.com> <1288609394.22875.133.camel@rex>
In-Reply-To: <1288609394.22875.133.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: nightly-release takes more than 24 hours to build.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 07:56:57 -0000
X-Groupsio-MsgNum: 162
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_625BA99ED14B2D499DC4E29D8138F1504D18E66AFCshsmsx502ccrc_"

--_002_625BA99ED14B2D499DC4E29D8138F1504D18E66AFCshsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Monday, November 01, 2010 7:03 PM
>
>On Mon, 2010-11-01 at 02:38 -0700, Scott Garman wrote:
>> Leading up to our 0.9 release, our autobuilder has been building an
>> increasing number of targets for our nightly-release buildset. We've now
>> reached the point that the nightly build takes more than 24 hours to run
>> (> 26 hours, in fact) - which is clearly a problem on a build that we'd
>> like to generate on a daily basis.
>>
>> The following is a list of everything which is built within nightly-rele=
ase:
>>
>> The following targets are built for qemux86, qemux86-64, qemuarm,
>> qemumips, and qemuppc:
>>
>> * poky-image-minimal
>> * poky-image-sato
>> * poky-image-lsb
>> * poky-image-sdk
>> * meta-toolchain-sdk (SDKMACHINE=3Di586 and also x86_64)
>>
>> For emenlow and atom-pc, we build:
>>
>> * poky-image-minimal-live
>> * poky-image-sato-live
>> * poky-image-sdk-live
>> * meta-toolchain-sdk (SDKMACHINE=3Di586 and also x86_64)
>>
>> Finally, we also build the Eclipse plugin, and copy the shared state
>> prebuilds and RPM output at the end of the build.
>>
>> I was going to post build times for some of these targets for reference,
>> but it would be misleading as we build the targets in succession (e.g,
>> we start with poky-image-sdk which takes the bulk of the time, and then
>> the other targets can largely rely on the shared state builds).
>>
>> Ideally I think our nightly build should take much less than 24 hours to
>> build. The question is what we can move out of the nightly build and do
>> on perhaps a weekly basis instead?
>>
>> Our buildserver hardware is a dual quad-core Xeon server with 12 GB of
>> RAM. Throwing hardware at the problem is another solution, but not an
>> inexpensive one (we'd be looking at a 4-socket machine filled with
>> quad-cores and 32 GB of RAM).
>
>There doesn't just have to be one build machine, we are going to end up
>needing multiple machines and we can split the load between them quite
>easily. I think there is going to be a second machine needed alongside
>the existing one regardless of what other optimisations we make.
>
>The changes in development at the moment will have a mixed effect on the
>autobuilder's load. On the plus side we know there are performance
>regressions with 0.9 which we're about to investigate. I can think of
>one change I have in mind which on its own should get the builds back
>under the 24 hour time.

In case you didn't note Qing's investigation last week, attach his mail for
your reference.

Thanks
Kevin

>
>On the down side there are going to be changes that need increased
>horsepower from the build machines such as the runtime testing we're
>close to enabling or enabling builds of world.
>
>Cheers,
>
>Richard
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.pokylinux.org/listinfo/yocto

--_002_625BA99ED14B2D499DC4E29D8138F1504D18E66AFCshsmsx502ccrc_
Content-Type: message/rfc822

Received: from rrsmsx605.amr.corp.intel.com (10.31.1.129) by
 SHSMSX602.ccr.corp.intel.com (10.239.4.104) with Microsoft SMTP Server (TLS)
 id 8.2.254.0; Wed, 27 Oct 2010 17:27:31 +0800
Received: from azsmga001.ch.intel.com (10.2.17.19) by RRSMSX605-1.rr.intel.com
 (10.31.1.129) with Microsoft SMTP Server id 8.2.254.0; Wed, 27 Oct 2010
 03:27:29 -0600
Received: from azsmga102.ch.intel.com ([10.2.16.52])  by
 azsmga001-1.ch.intel.com with ESMTP; 27 Oct 2010 02:27:27 -0700
Received: from 173.192.43.66-static.reverse.softlayer.com (HELO
 mx1.pokylinux.org) ([173.192.43.66])  by mga14.intel.com with ESMTP; 27 Oct
 2010 02:27:24 -0700
Received: from otc06.sl.ssgisp.com (localhost [127.0.0.1])	by
 mx1.pokylinux.org (Postfix) with ESMTP id 4987C4C811AC;	Wed, 27 Oct 2010
 04:27:24 -0500 (CDT)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])	by
 mx1.pokylinux.org (Postfix) with ESMTP id 583CF4C80BD7	for
 <yocto@yoctoproject.org>; Wed, 27 Oct 2010 04:27:23 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])	by
 fmsmga102.fm.intel.com with ESMTP; 27 Oct 2010 02:27:22 -0700
Received: from qhe2-db.sh.intel.com ([10.239.13.109])	by
 fmsmga002.fm.intel.com with ESMTP; 27 Oct 2010 02:27:22 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)	id 1PB2Ds-0004xV-84; Wed, 27 Oct 2010
 17:23:08 +0800
From: "He, Qing" <qing.he@intel.com>
To: "rpurdie@linux.intel.com" <rpurdie@linux.intel.com>
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Sender: "yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Date: Wed, 27 Oct 2010 17:23:08 +0800
Subject: [yocto] Some data collection and analysis on poky performance
Thread-Topic: [yocto] Some data collection and analysis on poky performance
Thread-Index: Act1uS4Ov8VnSOJxSGe5NMfXuQbpYQ==
Message-ID: <20101027092308.GA18748@qhe2-db>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-AuthSource: RRSMSX605.amr.corp.intel.com
X-MS-Has-Attach: 
X-Auto-Response-Suppress: All
X-MS-TNEF-Correlator: 
x-ironport-anti-spam-filtered: true
x-ironport-anti-spam-result:  Ap0LAEyNx0ytwCtCgWdsb2JhbACcAYVsAQEWIiK9CIVIBIRVhQ8
x-ironport-av: E=Sophos;i="4.58,245,1286175600"; d="scan'208";a="620753458"
x-extloop1: 1
list-post: <mailto:yocto@yoctoproject.org>
list-id: Discussion of all things Yocto <yocto.yoctoproject.org>
x-beenthere: yocto@yoctoproject.org
x-mailman-version: 2.1.13
list-archive: <http://lists.pokylinux.org/pipermail/yocto>
errors-to: yocto-bounces@yoctoproject.org
user-agent: Mutt/1.5.20 (2009-06-14)
delivered-to: yocto@yoctoproject.org
x-original-to: yocto@yoctoproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0

As we know, many of us have experienced slow builds of recent poky,
and it also takes larger disk space. This affects user exprience thus
is one of our directions in 1.0.

To find the problems leading to performance issues, I tried some
profiling on poky builds, below is a very brief summary of the data.
I profiled poky-image-minimal of both the current master branch and
green release, with similar parameters (4 CPUs) on NHM. Note that
both rpm and ipk packages are built for current master branch, while
oonly ipk packages are built for green release


I. some stats
1. recipes (including -native)
  green release:
    recipes built:  76
    tasks run:  998
  master:
    recipes built: 133
    tasks run:  1600

2. time
  green release:
    real:  28m7s
    user:  57m45s
    sys:    9m41s
    user+sys: 67m26s
  master:
    real:  66m39s
    user: 152m17s
    sys:   27m37s
    user+sys: 179m54s

3. space (haven't analyze though)
  green release:   7.8G
  master:         26.6G


II. profiling
I tried a brief profile by collecting the time used for every task, so
we can scrutinize the result from a microscopic point of view. I'm still
looking into the full result, but there's something of immediate
attention.

In master, hardly any task consume less than 1.3s, this is quite
surprising, since many tasks like do_patch virtually do nothing, while
in the green release, these tasks may simply consume 0.1~0.2s. A deeper
investigation shows that this large overhead goes to bitbake-runtask,
the bitbake config and cache mechanism is executed for every task,
considerably increased the time. The overhead introduced solely by
this is around 1600*1.3=3D2080s, approximately 35 minutes (user+sys).

Also, we should count the additional rpm packaging system,
do_package_write_rpm costs around 1400s, (excluding 1.3s per task,
btw, this is about 50% slower than do_package_write_ipk, in average),
that's around 23 minutes.

Roughly considering that the build time is proportional to recipes
count, we can try to estimate master build time from green release:
    67 * (76 / 133) + 35 + 23 =3D 175
very close to the real time consuming (although somewhat too closed...),
so possibly the above two are the most significant time consumers
in the slowness of current poky

Thanks,
Qing




_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.pokylinux.org/listinfo/yocto

--_002_625BA99ED14B2D499DC4E29D8138F1504D18E66AFCshsmsx502ccrc_--
