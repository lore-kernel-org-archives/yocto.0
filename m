Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24392E00D00; Wed, 12 Oct 2016 08:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 16684 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Oct 2016 08:29:44 PDT
Received: from nov-007-i516.relay.mailchannels.net
	(nov-007-i516.relay.mailchannels.net [46.232.183.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0E5DE00CEC
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 08:29:43 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 7475E12776D;
	Wed, 12 Oct 2016 15:29:38 +0000 (UTC)
Received: from hp181.hostpapa.com (ip-10-120-4-226.us-west-2.compute.internal
	[10.120.4.226])
	by relay.mailchannels.net (Postfix) with ESMTPA id 7139A12A324;
	Wed, 12 Oct 2016 15:29:37 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pidge@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [10.135.9.54])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.8); Wed, 12 Oct 2016 15:29:38 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pidge@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-MC-Loop-Signature: 1476286178042:2007654040
X-MC-Ingress-Time: 1476286178042
Received: from [94.186.205.99] (port=33342 helo=[10.200.101.105])
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <pidge@toganlabs.com>)
	id 1buLTN-003ttA-3O; Wed, 12 Oct 2016 17:29:37 +0200
Message-ID: <1476286173.7502.14.camel@toganlabs.com>
From: Beth 'pidge' Flanagan <pidge@toganlabs.com>
To: gmane@reliableembeddedsystems.com, yocto@yoctoproject.org
Date: Wed, 12 Oct 2016 17:29:33 +0200
In-Reply-To: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
Organization: toganlabs.com
X-Mailer: Evolution 3.18.5.2-0ubuntu3 
Mime-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AuthUser: pidge@toganlabs.com
Cc: joshua.g.lock@intel.com, robert.berger@reliableembeddedsystems.com
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: pidge@toganlabs.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Oct 2016 15:29:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-10-10 at 01:44 -0500, gmane@reliableembeddedsystems.com
wrote:
> 


A few notes (not picking on this patch but it does point out some
design failures and I want to at least get this on folks radar).

I've been unhappy with how DeployArtifacts work for sometime.

Long ago, when I wrote DeployArtifacts, it was "get it working, we'll
refactor later" and that refactor never happened. So I'm up for ideas.

I would like a deploy infrastructure that:

a. Is distro/image name/etc agnostic (aka, poky and image names and
paths hardcoded. ick.).
b. Is perhaps config file driven.
c. Had much less of the cruft that exists withing DeployArtifacts.

So. Thoughts on this? I'd be willing to hear suggestions on how to do
this before I go and spend some time ripping this apart post release?

-b

-- 
Beth 'pidge' Flanagan <pidge@toganlabs.com>
toganlabs.com


