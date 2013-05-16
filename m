Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7386EE014FB;
	Thu, 16 May 2013 02:28:59 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 16 May 2013 02:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,683,1363158000"; d="scan'208";a="242373285"
Received: from unknown (HELO helios.localnet) ([10.255.12.131])
	by AZSMGA002.ch.intel.com with ESMTP; 16 May 2013 02:28:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Biao <huanmateme@163.com>
Date: Thu, 16 May 2013 10:28:56 +0100
Message-ID: <2070085.Hr0blbbIlE@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <37275e8c.d6ec.13eaca4bb97.Coremail.huanmateme@163.com>
References: <37275e8c.d6ec.13eaca4bb97.Coremail.huanmateme@163.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Authentication on git clone
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
X-List-Received-Date: Thu, 16 May 2013 09:29:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 16 May 2013 17:21:17 Biao wrote:
> I was asked to provide username/passwd when trying to clone repositories
> from http://git.yoctoproject.org, where is the register entry?

I just tried this and it worked without requesting authentication; are you 
sure you're not reaching some proxy server?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

