Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C41DE00CEF; Thu, 21 Sep 2017 09:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EFA6E00C99
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 09:11:57 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8LGBrOv023566
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 21 Sep 2017 17:11:55 +0100
Message-ID: <1506010313.18640.166.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Michael Ho <Michael.Ho@bmw-carit.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 21 Sep 2017 17:11:53 +0100
In-Reply-To: <1498816090789.97105@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Thu, 21 Sep 2017 16:11:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-06-30 at 09:48 +0000, Michael Ho wrote:
> Hi, at BMW Car IT we are working on an experimental feature to
> improve sstate cache hits and we are looking for comments on the
> approach who might have some insights to the problem and seeing if
> anyone is interested in the feature for mainline.

Sorry I didn't see this before now but it was brought to my attention.

I have given this problem quite some thought off and on. I do worry
that the interface you propose is complex and requires changes
throughout the metadata and those changes impose "policy". One of our
strengths is that we're managed to keep "policy" out of the metadata.

In this context by policy, I mean when a recipe is equivalent and when
it is not.

I do have a counter-proposal of how we could solve this in a less
invasive way. This isn't implemented but wouldn't in theory be hard to
do.

The idea would be to have some kind of equivalence list. The first
built object's sstate checksum would become the definitive checksum and
the object added to the sstate cache.

If a new object is built, it would be compared with the one in sstate.
If deemed equivalent (by whatever policy), a mapping would be added to
the list. If not, there is no mapping and it becomes a new definitive
checksum.

All runqueue would then have to do is present its list of sstate
checksums to the list and convert them (in dependency order) into
canonical checksums.

This list could be a local equivalence file, or an equivalence server
which could resolve list of checksums.

Doing it this way totally isolates the comparison from the metadata
itself and in my view protects us from future changes in definition of
equivalence.

How does that sound?

Cheers,

Richard




