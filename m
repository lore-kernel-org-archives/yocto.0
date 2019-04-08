Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E945E00AB0; Mon,  8 Apr 2019 13:45:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from aisupplychain.ca (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02197E00A84
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2019 13:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default;
	h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vDOIMmo6fj51M0hPDZy4SqqUVZQL7JsyTo+hFEMriHk=;
	b=HU8apDV5789Z7ZKT+XaXF3LbV3
	A8wVU4ER3bqwxSRkE65dHatPUwGpglJ1DrPQD+CgU/sYY7LgX202tPj98TTXBvnZynJ/zToySAHNF
	su0C6Fb0L8wPbauU3n6eEVEAqOIV3AU+89TzT6tU9+aErdToJqo+tZmD/TsTXoXQRFM7Kgm4i+8iy
	puIsfxNRtripLodcxqo5uwrjkVmhrWXFjKxy0/nDfMBrHxvnizNp8CiaDdxw+qMWLIqhwrJ8EIUNK
	RPzLe76f0UdzUwrMey0yn1phIhqfdmFxey/jQjM4IBKTgp2ufu2XIE4JvBdzqAXOvqbSF5wa/wQ5J
	+Ejdx9Ug==;
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com
	([174.114.57.56]:40134 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>) id 1hDalP-0001PJ-N7
	for yocto@yoctoproject.org; Mon, 08 Apr 2019 16:21:08 -0400
Date: Mon, 8 Apr 2019 16:21:07 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: m4-mative: "Please port gnulib fseeko.c to your platform!"
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
X-List-Received-Date: Mon, 08 Apr 2019 20:45:11 -0000
Content-Type: text/plain; charset=US-ASCII


  a few months ago, i ran into (and asked about) a failure building
m4-native that you can read here:

https://yocto.yoctoproject.narkive.com/6KyM5UvS/m4-native-zedboard-please-port-gnulib-fseeko-c-to-your-platform

first, i will admit i'm not sure where the fault lies -- is it m4, or
gnulib, or glibc, and whose responsibility is it to fix what. i'll be
honest -- i don't understand what the bug is or who should be
resolving it.

  i ask all this as i just had *exactly* the same error trying to
build agl-image-minimal with the AGL code base. what is the proper
solution to this? BTW, i'm trying this on fedora 30 branched, so this
is definitely not a supported build distro, but i'm still curious as
to what would be the proper fix.

  finally, it occurs to me that, if building a native package like
"m4" fails, would it be a reasonable workaround to simply say

  ASSUME_PROVIDED += "m4"

for the time being, to avoid having to build it until i know what the
proper fix is?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

