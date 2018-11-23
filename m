Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DB26E00CBC; Fri, 23 Nov 2018 09:20:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9121BE00CA4
	for <yocto@yoctoproject.org>; Fri, 23 Nov 2018 09:20:02 -0800 (PST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	wANHJwL3008041
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 23 Nov 2018 17:19:59 GMT
Message-ID: <8c0a42265a1cbf6727a5ad25983a286dfe2a33ca.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>, Yocto
	discussion list <yocto@yoctoproject.org>
Date: Fri, 23 Nov 2018 17:19:58 +0000
In-Reply-To: <b96afa3704ab3844fb69bfd7218fc381c368403c.camel@linuxfoundation.org>
References: <b96afa3704ab3844fb69bfd7218fc381c368403c.camel@linuxfoundation.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.2 at dan
X-Virus-Status: Clean
Subject: Re: [OE-core] Autobuilder changes
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
X-List-Received-Date: Fri, 23 Nov 2018 17:20:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-11-23 at 17:02 +0000, Richard Purdie wrote:
> I've take this quiet period as an opportunity to make some
> significant autobuilder changes:

I knew I was missing something:

Successful builds are now deleted when they complete using the
background deletion (clobberdir). This should reduce the clutter lying
around on the worker filesystems. It also means builds shouldn't be
contending with background deletion as much.

Failed builds have their build directory renamed to "build-renamed".
This means that the paths all become invalid and can't be accidentally
referenced from other builds.

I did a sweep through the workers deleting all the old build
directories and cleared a lot of the diskspace on them.

Cheers,

Richard


