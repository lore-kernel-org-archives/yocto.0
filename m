Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E514E00D00; Fri, 10 Jun 2016 01:39:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F34EE00CC7
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2016 01:39:15 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id DD8E368A01E; Fri, 10 Jun 2016 09:39:14 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 6F13D68A019;
	Fri, 10 Jun 2016 09:39:14 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 96F6667400B0;
	Fri, 10 Jun 2016 10:39:13 +0200 (CEST)
To: yocto@yoctoproject.org
References: <575A7B40.9050509@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <575A7CAF.2050207@mlbassoc.com>
Date: Fri, 10 Jun 2016 10:39:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <575A7B40.9050509@mlbassoc.com>
Subject: Re: Another python3 error?
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
X-List-Received-Date: Fri, 10 Jun 2016 08:39:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-10 10:33, Gary Thomas wrote:
> BB_VERSION        = "1.31.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-15.10"
> meta              = "master:40e789d1fee7f0df2d23230fff38325119ad2935"
>
> $ bitbake my-demo-image -g -u depexp
> Traceback (most recent call last):
>    File "/local/poky-cutting-edge/bitbake/bin/bitbake", line 48, in <module>
>      cookerdata.CookerConfiguration()))
>    File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 374, in bitbake_main
>      ui_module = import_extension_module(bb.ui, configParams.ui, 'main')
>    File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 104, in import_extension_module
>      module = __import__(pkg.__name__, fromlist=[modulename])
>    File "/local/poky-cutting-edge/bitbake/lib/bb/ui/depexp.py", line 21, in <module>
>      import gobject
> ImportError: No module named 'gobject'
>
> bitbake -g by itself works fine.  Is this a [new] issue with my
> build host, or just the change over to python3?
>

Any hints on which (and why it's not being recommended by the sanity checker)?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

