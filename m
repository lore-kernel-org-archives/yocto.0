Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web08.11177.1619542476591591435
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 09:54:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cybernetics.com header.s=mail header.b=PkLAYk7U;
 spf=pass (domain: cybernetics.com, ip: 173.71.130.66, mailfrom: btv1==7516fec2b9c==cbing@cybernetics.com)
X-ASG-Debug-ID: 1619542474-0fb3b0366bc7ff0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with ESMTP id fqGTJwcS5gtXRHu6 for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 12:54:34 -0400 (EDT)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.4.126
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=cybernetics.com; s=mail;
	bh=ey798t6QxdM5gKW4dbpwhQ2F590u6akqjP+4H82qK3E=;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:References:To:Subject; b=PkLAYk7U4UsnHJyvpX
	u4WBOgqRKECzHXMv+mMLBtNwg+6gArTWMDWaAoaiXzn0v3i2P78frdcI7K3kc8Rn9qWA+YPP1GCFQ
	ZKCyfJeaJ3i1g8o1MJUNRhq1tQuAQY77CY63qKiM6LD8VgYHRvWZ+op1JgyvAEXi1Z3VLRjntOlE=
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 6.2.14)
  with ESMTPS id 10816572 for yocto@lists.yoctoproject.org; Tue, 27 Apr 2021 12:54:34 -0400
Subject: Re: [yocto] Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
X-Barracuda-RBL-Trusted-Forwarder: 10.157.1.18
To: yocto@lists.yoctoproject.org
X-ASG-Orig-Subj: Re: [yocto] Can layer maintainers add yocto-X.Y tags for yocto-3.3
 and later?
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
From: "Claude Bing" <cbing@cybernetics.com>
Message-ID: <abdc88e0-8476-b9e4-f8d4-4f9104fa8910@cybernetics.com>
Date: Tue, 27 Apr 2021 12:54:34 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1619542474
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 2730
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

This would be a helpful addition for us when upgrading between named
Yocto releases.  Normally, when we are ready to upgrade, we checkout the
HEAD for the named branch and try to get everything working together.

Having a tagged commit for a version would (hopefully) help ensure that
all of the layers are in the same state as when it went through QA
testing.  If we are upgrading at some arbitrary point after the release
was made, some layers could have additional commits that may require
changes which have not yet made it into the dependent layers.

Regards,

Claude Bing

On 4/27/21 12:48 PM, Randy MacLeod wrote:
> Hi,
> 
> 
> I've CCed some of the maintainers of more widely used Yocto layers
> to get comments on about tagging. Please add in people who I may
> have missed.
> 
> 
> For a while now, oe-core has had a yocto-X.Y tag in addition to the
> release branch name. This helps users easily find the exact commit
> that corresponds to the say 3.3 GA release. There have been some
> omissions in tagging but Michael and Richard are adjusting the
> release process so that tagging will happen more consistently.
> 
> Most yocto layers have not adopted the tagging perhaps because they
> weren't aware of it so that's why I'm writing this email. Tagging
> will make it easy to find the first commit for a specific release
> independent of what the branching policy of a layer is. Layer 
> maintainers sometimes create the release branch in advance of
> when oe-core is released and by adding the tag, it would make it
> clear when the layer considers content to be officially released.
> Of course it's up to users to decide if they are going to follow
> the HEAD of a branch or, for some reason, stick with a tagged commit
> or private branch off that commit.
> 
> 
> Are there any concerns about attempting to do this for yocto-3.3
> and later?
> 
> Should we make it a requirement for yocto compliance?
> Should it be a feature tested by the yocto compliance script?
> 
> 
> 
> Here's what's in oe-core and bitbake now:
> $ cd .../oe-core.git
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.1.7
> yocto-3.2
> yocto-3.2.1
> yocto-3.3
> 
> $ cd bitbake/
> $ git tag -l | grep yocto-3
> yocto-3.0
> yocto-3.1
> yocto-3.2
> 
> 
> 
> 
> 
