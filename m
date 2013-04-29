Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BCA4E0137F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 01:31:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Apr 2013 01:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="234180942"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Apr 2013 01:31:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Peter Tornel <petertornel@yahoo.com>, Gaurang Shastri <gmshastri@gmail.com>
Date: Mon, 29 Apr 2013 09:31:16 +0100
Message-ID: <2405529.Zb3KdaMDbY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAE_REAvejk5Yu-m=grtitHa0pxP=4HKkdNgLS9kvJcDGJSdwwQ@mail.gmail.com>
References: <1367073557.2502.YahooMailNeo@web161505.mail.bf1.yahoo.com>
	<CAE_REAvejk5Yu-m=grtitHa0pxP=4HKkdNgLS9kvJcDGJSdwwQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to clean all?
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
X-List-Received-Date: Mon, 29 Apr 2013 08:31:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 29 April 2013 11:11:56 Gaurang Shastri wrote:
> You can run "bitbake -c clean all" to clean everything or simply you can do
> "rm -rf tmp/" directory and you will start from the beginning :)

"bitbake -c clean all" won't work; the syntax would run -c clean on a recipe 
called "all" (which doesn't exist). You may be thinking of "bitbake -c 
cleanall recipename" which cleans the working directory, sstate packages and 
downloaded files for the specified recipe (but not all recipes).

rm -rf tmp/ within your build directory (in the default configuration) will 
delete the output files but won't touch your configuration. If you want to start 
completely from scratch you would also want to delete the sstate-cache 
directory as well, although under normal circumstances there shouldn't be any 
need to do that since the system will work out what it can re-use from the 
cache and what needs to be rebuilt based on any configuration changes.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

