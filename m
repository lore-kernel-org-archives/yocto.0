Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BBD64C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 11:39:13 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9KGdCqT019600;
	Wed, 20 Oct 2010 17:39:12 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19132-07; Wed, 20 Oct 2010 17:39:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9KGd4hp019592
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Oct 2010 17:39:05 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504CF2575F98@shsmsx502.ccr.corp.intel.com>
References: <4CBCEC3C.5090003@intel.com>  <4CBCEDC4.3020709@intel.com>
	<1287492926.1720.1342.camel@rex> <1287505758.1720.1673.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504CF2575F98@shsmsx502.ccr.corp.intel.com>
Date: Wed, 20 Oct 2010 17:38:56 +0100
Message-ID: <1287592736.16386.214.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New issue with git fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Oct 2010 16:39:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 16:20 +0800, Tian, Kevin wrote:
> I tried "bitbake poky-image-sdk -c fetchall" both with an existing source directory
> and with a fresh new download. Everything works fine. 

Thanks for testing and the feedback!

Cheers,

Richard


