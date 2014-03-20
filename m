Return-Path: <paul.eggleton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02C4BE00997
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 02:57:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Mar 2014 02:52:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,693,1389772800"; d="scan'208";a="476284961"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.120.182])
	by orsmga001.jf.intel.com with ESMTP; 20 Mar 2014 02:57:11 -0700
From: Paul Eggleton <paul.eggleton@intel.com>
To: Yi Zhao <yi.zhao@windriver.com>
Date: Thu, 20 Mar 2014 09:57:10 +0000
Message-ID: <1756515.4xg7ThEJvb@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.6-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <532A8653.7050300@windriver.com>
References: <532A8653.7050300@windriver.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: Hob still can not launch in build-appliance with 1.4.3 rc4
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
X-List-Received-Date: Thu, 20 Mar 2014 09:57:17 -0000
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 March 2014 14:10:27 Yi Zhao wrote:
> With 1.4.3 rc4 build, the hob still can not launch in build-appliance.
> Looks it still miss python module. I already reopened bug 5941 .
> Here is the error message:
> 
> ** (process:672): WARNING **: Trying to register gtype 'GMountMountFlags' as
> enum when in fact it is of type 'GFlags'
> 
> ** (process:672): WARNING **: Trying to register gtype 'GDriveStartFlags' as
> enum when in fact it is of type 'GFlags'
> 
> ** (process:672): WARNING **: Trying to register gtype 'GSocketMsgFlags' as
> enum when in fact it is of type 'GFlags' Traceback (most recent call last):
>   File "/home/builder/poky/bitbake/bin/bitbake", line 352, in <module>
>     ret = main()
>   File "/home/builder/poky/bitbake/bin/bitbake", line 301, in main
>     server = start_server(servermodule, configParams, configuration)
>   File "/home/builder/poky/bitbake/bin/bitbake", line 213, in start_server
>     server.initServer()
>   File "/home/builder/poky/bitbake/lib/bb/server/process.py", line 221, in
> initServer self.serverImpl = ProcessServer(self.server_channel,
> self.event_queue, None) File
> "/home/builder/poky/bitbake/lib/bb/server/process.py", line 91, in __init__
> self.event_handle = multiprocessing.Value("i")
>   File "/usr/lib/python2.7/multiprocessing/__init__.py", line 252, in Value
>     from multiprocessing.sharedctypes import Value
>   File "/usr/lib/python2.7/multiprocessing/sharedctypes.py", line 39, in
> <module> from multiprocessing import heap, RLock
>   File "/usr/lib/python2.7/multiprocessing/heap.py", line 36, in <module>
>     import mmap
> ImportError: No module named mmap

:(

I'd love to know what changed such that this worked in 1.4.2 and earlier and 
not in 1.4.3, but at the moment I can't see it. I can certainly see where 
python-mmap was added in dora and master, so I can backport that fix.

(FWIW I did try to test build this before handing it back to you guys, but my 
machine ran out of disk space trying to build the build appliance.)

Cheers,
Paul
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


