Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 26EE74C800B3
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 19:58:15 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Jun 2011 17:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,372,1304319600"; d="scan'208";a="13537382"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 15 Jun 2011 17:58:14 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Jun 2011 08:57:53 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 16 Jun 2011 08:57:52 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 16 Jun 2011 08:56:44 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Richard Purdie (richard.purdie@linuxfoundation.org)"
	<richard.purdie@linuxfoundation.org>
Date: Thu, 16 Jun 2011 08:57:50 +0800
Thread-Topic: configure optimization feature update
Thread-Index: AcwrwGYgwC26hv/TQVChwICTXMXHaQ==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A52800155@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: configure optimization feature update
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 Jun 2011 00:58:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

Recently I was doing the "configure optimization" feature and collecting da=
ta for it.

The main logic of this feature is straight forward:

1. Use the diff file as autoreconf cache. (I use command: "diff -ruN SOURCE=
-ORIG SOURCE", here "SOURCE-ORIG" is the source directory before running au=
toreconf, while "SOURCE" is the directory after running autoreconf).
2. Add SRC_URI checksum for all patches of the source code.
3. Tag each autoreconf cache file with ${PN} and the SRC_URI checksum of so=
urce code and all patches.
4. If the currently SRC_URI checksum matches the cached checksum, then we c=
an patch the cache instead of running "autoreconf" stage.

I did some testings for sato build, the result is not as good as we expecte=
d:

On a server build machine (Genuine Intel(R) CPU @ 2.40GHz, 2 sockets with 6=
 core each and hyperthreading, thus 24 logical CPUs in all, 66G memory):

w/o the optimization:
real    83m40.963s
user    496m58.550s
sys     329m1.590s

w/ the optimization:
real    79m1.062s
user    460m58.600s
sys     347m42.120s

It has about 5% performance gain.

I also tested the patch on a desktop core-i7 machine (Intel(R) Core(TM) i7 =
CPU 870 @ 2.93GHz, 4 core 8 logical CPU, 4G memory):

w/o the optimization:
real    105m25.436s
user    372m48.040s
sys     51m23.950s

w/ the optimization:
real    103m38.314s
user    332m35.770s
sys     49m4.520s

It only has about 2% performance gain.

The result is not encouraging.

There are also some other things we need to take into consideration for thi=
s feature:

1. If add this feature, the first build time should be longer than current =
since it needs to build the autoreconf cache.
2. Maintainers needs to maintain the SRC_URI checksums not only for source =
code, but also all its patches. For some recipes, it has more than 20 patch=
es, which needs assignable maintenance effort.
3. How to distribute the caches will be a problem. The total size of such c=
ache is about 900M (before compression) and 200M (after compression). Since=
 the size is not small, distributing it with Poky source code doesn't make =
sense. On another aspect, we can use something like "sstate". But since we =
already have caches of sstate, I think it is not necessary for us to enable=
 another similar cache mechanism with little improvement.

Therefore my opinion is we may give up this feature. What's your comments a=
nd suggestions?

Thanks,
Dongxiao=20


