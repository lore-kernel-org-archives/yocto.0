Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4CE8E015E2
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 02:31:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 10 Oct 2013 02:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1070,1371106800"; d="scan'208";a="408745993"
Received: from unknown (HELO helios.localnet) ([10.252.120.176])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2013 02:31:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: seth bollinger <seth.boll@gmail.com>
Date: Thu, 10 Oct 2013 10:31:45 +0100
Message-ID: <2034055.AmVRsnPTrY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5255F1CF.8020203@gmail.com>
References: <5255F1CF.8020203@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 09:31:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Seth,

On Wednesday 09 October 2013 19:16:15 seth bollinger wrote:
> What's the best practice for recipes that need to update a shared file
> provided by a different recipe?  For example let's say that the
> widget-watcher recipe creates /etc/ww.conf and the widget1, and widget2
> recipes need to append a line to the config.  I've searched through the
> recipes a bit and can't find a good example.  The closest that I've seen
> is pkg_postinst().  Is that the best method?

That's really the recommended way to do it. If the software being configured 
supports it, another way is to set it up to read all configuration files from a 
directory and then you can simply install a new file into that directory from 
the other recipe (e.g. Apache is usually configured to read all configuration 
files in /etc/httpd/conf.d or similar).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

