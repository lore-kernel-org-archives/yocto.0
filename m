Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A1C5E006D8; Tue,  3 Jan 2017 08:16:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C5B2E00405
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 08:16:53 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v03GGkfR027853; Tue, 3 Jan 2017 16:16:46 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3S8LFhIfsf5Q; Tue,  3 Jan 2017 16:16:46 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v03GGhPo027835
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 3 Jan 2017 16:16:44 GMT
Message-ID: <1483460203.4367.60.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Date: Tue, 03 Jan 2017 16:16:43 +0000
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E5732C512@fmsmsx111.amr.corp.intel.com>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E5732C512@fmsmsx111.amr.corp.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
Subject: Re: [OE-core] Yocto Project Status WW01
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
X-List-Received-Date: Tue, 03 Jan 2017 16:16:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-01-03 at 15:51 +0000, Jolley, Stephen K wrote:
> Current Dev Position: YP 2.3 M2 -> M3
> Next Deadline: YP 2.3 M2 by Jan 23, 2017
>  
> SWAT team rotation: Maxin -> Joshua
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
>  
> Key Status/Updates:
> ·        M1 is having some QA difficulties due to some kind of bad
> interaction between the PR service and tinfoil2. We’re waiting until
> people are back from vacation and up to speed before we decide what
> to do about this.

One question which came up was whether just to cherry-pick fixes for M1
into a branch, or whether we use master. For me personally master is
tempting but its probably safer just to use an M1 branch as master has
moved on a fair bit. I wanted to give people an opportunity to express
opinions either way.

Cheers,

Richard

