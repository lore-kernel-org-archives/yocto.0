Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00905E007DA; Tue,  3 Nov 2015 08:35:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA260E0034B
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 08:35:09 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Nov 2015 08:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,239,1444719600"; d="scan'208";a="841643522"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.5.41])
	([10.219.5.41])
	by orsmga002.jf.intel.com with ESMTP; 03 Nov 2015 08:35:07 -0800
Message-ID: <5638E2CA.7090607@linux.intel.com>
Date: Tue, 03 Nov 2015 10:37:30 -0600
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: benoit.rapidel+yocto@exmachina.fr, yocto@yoctoproject.org
References: <5638C931.2000602@exmachina.fr>
In-Reply-To: <5638C931.2000602@exmachina.fr>
Subject: Re: Unable to issue bitbake linux-yocto -c menuconfig
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
X-List-Received-Date: Tue, 03 Nov 2015 16:35:11 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Which terminal did you use? Can you try the same under xterm? I remember 
working on a -c menuconfig issue under a new gnome-terminal version and 
the problem was that terminal was not spawned, however I do not recall 
any trace log being thrown.


On 11/03/2015 08:48 AM, Benoit Rapidel wrote:
> Hi,
>
> I ran into an error and I don't know where to report it.
>
> I use poky with fido branch on a Debian 3.2.68 VM
>
> See attached file for log
>
> $ tmux list-panes
> 0: [84x44] [history 39/2000, 71202 bytes] %2
> 0: [231x60] [history 435/2000, 194475 bytes] %3 (active)
> $
>
> Regards,
>
>

