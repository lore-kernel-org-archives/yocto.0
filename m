Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E65FBE008D0; Tue, 28 Feb 2017 20:00:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A646E007AD
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2017 20:00:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v2140Mfn017489; Wed, 1 Mar 2017 04:00:22 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id jWU195c43uUh; Wed,  1 Mar 2017 04:00:22 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v2140Goh017484
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 1 Mar 2017 04:00:18 GMT
Message-ID: <1488340816.24526.26.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patrick Ohly <patrick.ohly@intel.com>, =?ISO-8859-1?Q?An=EDbal_Lim=F3n?=
	<anibal.limon@linux.intel.com>
Date: Wed, 01 Mar 2017 04:00:16 +0000
In-Reply-To: <1488312568.7785.73.camel@intel.com>
References: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
	<1488312568.7785.73.camel@intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCHv2] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Wed, 01 Mar 2017 04:00:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-02-28 at 21:09 +0100, Patrick Ohly wrote:
> On Mon, 2017-02-20 at 15:12 -0600, Aníbal Limón wrote:
> > 
> > common.test_signatures: Test executed in BSP and DISTRO layers to
> > review
> >     doesn't comes with recipes that changes the signatures.
> I have a question about the goal for this test: is it meant to detect
> layers which incorrectly change the signatures of allarch recipes or
> recipes which share the same tune flags with other machines?
> 
> Let's take MACHINE=edison as an example.

The test is not for these things. Its using the sstate signatures for
something different compared to those other tests.

The idea is that if you have a set of layers and generate the
signatures for world, then you add say a BSP layer but do not select
that MACHINE, the signatures should remain unchanged.

Cheers,

Richard

