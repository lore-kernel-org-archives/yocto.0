Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EAD34C81001
	for <yocto@yoctoproject.org>; Wed, 18 May 2011 20:47:01 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4J1kxXe002731;
	Thu, 19 May 2011 02:46:59 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02315-07; Thu, 19 May 2011 02:46:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4J1kqG6002725
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 19 May 2011 02:46:52 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Ke, Liping" <liping.ke@intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659734C665E01@shsmsx501.ccr.corp.intel.com>
References: <cover.1305250702.git.liping.ke@intel.com>
	<1305763807.3424.358.camel@rex>
	<789F9655DD1B8F43B48D77C5D30659734C665E01@shsmsx501.ccr.corp.intel.com>
Date: Thu, 19 May 2011 02:46:50 +0100
Message-ID: <1305769610.3424.420.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 May 2011 01:47:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-05-19 at 09:40 +0800, Ke, Liping wrote:
> Thanks for the detailed design guide. I will sync up with Jessica and redo the patch.
> 
> And thanks for advice of the namedtuple usage. During the implementation,
> we did tried several ways of inheritance refactory, but all failed with nametuple static attributes.
> And when trying to change it to dict, I found too much code need to be modified, and I was very upset and gave up...

For reference its taken me a lot longer than I expected to be able to
reply to this with code ideas that I'm happy should work for this
implementation and let this code function in a way I'm happy about from
an overall architecture perspective. Its a tricky problem.

> I am now basically clear about your comments. If meeting detailed problem when implementation, I will let you know.
> 
> And Jessica, so could you make some schedule adjustment? I guess I need some time to finish this refactory.

One other thing we need to keep in mind memory usage. The previous
implementation was designed to be light on memory use and we need to try
and ensure this one is too. I've not looked at numbers for this at all
at this point. This is particularly true for OpenEmbedded which has a
lot more recipes that we have in OE-Core.

Cheers,

Richard




