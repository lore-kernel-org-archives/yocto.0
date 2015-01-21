Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83860E008A7; Wed, 21 Jan 2015 13:24:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09DC5E0084E
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 13:24:03 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t0LLNoOp014651; Wed, 21 Jan 2015 21:23:50 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id g2TguYrtAyyA; Wed, 21 Jan 2015 21:23:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t0LLNZDU014637
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jan 2015 21:23:46 GMT
Message-ID: <1421875415.19798.5.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Denys Dmytriyenko <denis@denix.org>
Date: Wed, 21 Jan 2015 21:23:35 +0000
In-Reply-To: <20150121192726.GJ20639@denix.org>
References: <CAENGNhcVmxW2xD4d4TDjTtLu2zCvCJ6sEOF8ek80hWz4kxKf6A@mail.gmail.com>
	<5100308.QAtzWr7jXK@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhff5-CZRSJaD1t1ppPOOQNrWipF01hAdatWqSkjGVmnVA@mail.gmail.com>
	<2632438.D1xOHJKf9V@peggleto-mobl5.ger.corp.intel.com>
	<CAENGNhe7Uv1PQv=J3QYhPAX3dj9p0pakAg5x9oGQ0V3pxfbHUw@mail.gmail.com>
	<20150121192726.GJ20639@denix.org>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org,
	Otavio Salvador <otavio@ossystems.com.br>, Denys Dmytriyenko <denys@ti.com>
Subject: Re: Difference between target, cross, native and nativesdk.
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
X-List-Received-Date: Wed, 21 Jan 2015 21:24:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-01-21 at 14:27 -0500, Denys Dmytriyenko wrote:
> On Wed, Jan 21, 2015 at 11:23:38AM -0200, Raphael Philipe wrote:
> > I was explained about the difference in a different way.
> > 
> > cross generates binary for the host architecture. But the way this
> > binary is generated depends of the target architecture. Native
> > generated binaries that do not depend of the target architecture.
> 
> Pretty much.
> 
> But another big difference is that -native packages do not generate IPK, RPM 
> or DEB, while -nativesdk, -cross, -crosssdk and -cross-canadian do.

-cross and -crosssdk do not generate packages.

Another way to think of this is:

"native" build once

"cross" build once per target, run on native, output code for target

"crosssdk" build once per sdk, run on native, output code for sdk

"cross-canadian" build once per sdk, run on sdk, output code for target

Whilst native.bbclass and nativesdk.bbclass are useful generally,
cross.bbclass is only useful for GNU tool projects like
binutils/gcc/gdb.

Cheers,

Richard


