Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BCEDE007FE; Wed, 27 Aug 2014 23:38:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8F6E007F6
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 23:38:16 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id kq14so1251619pab.22
	for <yocto@yoctoproject.org>; Wed, 27 Aug 2014 23:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:user-agent;
	bh=UD/zt+pjpozkq/DDI5tUkCxGbT/SbhSr+gQ09DhnCqA=;
	b=eVbHhXiyWLGf/oTSgIZk+QS0USxbYhZp0mGpS4dRWOKMT43tizi6YvrIhif4f5l4GP
	GkFjfWM6lRqXVPkwXmJ3ySoHvy6TmosvmPRIHmuvkHyaTQxGQJgUEXGy75yTTkh1U7bN
	3YOaFk09D2PbyjrkJMm/wCki0pYS3R70JWOlR7DgG8LMUbAFLXTeu6PEhUenaVIVaTpv
	PRhLbJ9f9Ueb9uIZv5ALIEiQgK7lONuL5N7NmXCV1ReFNXXhiRYHsjqDWF383pKlShWG
	lw9XFjq3tT90VZv6bV8Pt0mRFRyC3tk7Lf7/SE/BuedB6mTC04AgzsLXRzg35GyA4h4Z
	2Pzg==
X-Received: by 10.68.57.144 with SMTP id i16mr2807181pbq.48.1409207896227;
	Wed, 27 Aug 2014 23:38:16 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id l4sm3810693pdp.66.2014.08.27.23.38.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 27 Aug 2014 23:38:15 -0700 (PDT)
Date: Wed, 27 Aug 2014 23:41:50 -0700
From: Khem Raj <raj.khem@gmail.com>
To: openembedded-core@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org, yocto@yoctoproject.org
Message-ID: <20140828064051.GA13139@haswell>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Thu, 28 Aug 2014 06:38:20 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi All

As we all know eglibc has been merged back into glibc and 2.19 was the
last release, here I have put together the recipes for upcoming glibc
2.20 release and removed eglibc 2.19 in favor of move.

I also thought about leaving eglibc in there but then eglibc and glibc
were pretty much same as they always have been that it would be an
incremental change with lot more patches this time.

The tree is here

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-to-glibc-2.20

This has not recieved much testing yet and I am looking out for helping
hands here, so try it out in your buid environments and machines of
interest and report back on issues.

The patches also forward port the options group support and few other
patches from eglibc, details are in commit logs, which I think would make 
good candidates for future glibc merge.

This tree will be reworked and rebased so sync back if you see issues
which we will address here

Thanks for your help

-Khem

