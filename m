Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14229E00719
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:38:06 -0700 (PDT)
X-SBRS: 3.9
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx06bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AtEBAL4VPlEyFB4Li2dsb2JhbABDhDyDJrx+gXMOAQEBFQsbKIIpAQEBAwE6PwULAgEIDgcNFAkHIREUEQEBBA4FCId5AwkGAbQ6DYlbjEaCFzEHgl9hA5R1jTyII4Io
X-IronPort-AV: E=Sophos;i="4.84,825,1355115600"; d="scan'208";a="13127882"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 11 Mar 2013 13:38:05 -0400
Received: from EXHUB104.mmeprod.cbeyond (10.128.38.103) by
	EXHUB101.mmeprod.cbeyond (10.128.38.100) with Microsoft SMTP Server
	(TLS) id 14.2.298.4; Mon, 11 Mar 2013 13:38:03 -0400
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB104.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Mon, 11 Mar 2013 13:38:03 -0400
From: David Mulder <dmulder@lasx.com>
To: Trevor Woerner <twoerner@gmail.com>
Thread-Topic: [yocto] Can I disable RT throttling?
Thread-Index: Ac4cTWBMCcKVjca/TdSAdJObHV69ZQAUrgaAAHMmm5AADNILAAAITIEg
Date: Mon, 11 Mar 2013 17:38:02 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E501347F52@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
	<CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
In-Reply-To: <CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Mon, 11 Mar 2013 17:38:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Trevor Woerner [mailto:twoerner@gmail.com]
> You can call sched_setaffinity() before fork()ing your task, or use
> taskset on the cmdline.

Will that work on a core that's offline?

