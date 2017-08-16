Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3DE4E00D24; Wed, 16 Aug 2017 08:46:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 360BBE00C1C
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 08:46:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2017 08:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,383,1498546800"; d="scan'208";a="1183430609"
Received: from jlock-mobl3.ger.corp.intel.com ([10.252.31.202])
	by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2017 08:46:24 -0700
To: yocto@yoctoproject.org, akuster808 <akuster808@gmail.com>
References: <30C2D590D16A5C46ADFE652191037798922773DF@AZ-US1EXMB02.global.avaya.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <775769b0-58cf-66cb-3c6a-94794be67b97@linux.intel.com>
Date: Wed, 16 Aug 2017 16:46:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <30C2D590D16A5C46ADFE652191037798922773DF@AZ-US1EXMB02.global.avaya.com>
Subject: Re: NotImplementedError from sanity check
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
X-List-Received-Date: Wed, 16 Aug 2017 15:46:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 16/08/17 15:42, Vuille, Martin (Martin) wrote:
> In the process of transitioning from Fido to Morty.
> 
> In the past, when sanity detected a version mismatch with some of
> the configuration files (e.g., local.conf, bblayers.conf,) an error message
> was displayed.
> 
> Now, we see the below, which I do not find very informative or helpful.
> 
> Is that a bug or intentional? Is there a way to get back the error message?

It's a bug, newer branches have a fix:

http://git.yoctoproject.org/clean/cgit.cgi/poky/commit/?id=62b521722ae72bc87d599719b400dab771154fa7
http://git.openembedded.org/openembedded-core/commit/?id=a675b2c89e477af088faee9b3be96eae19a85f0b

It would be nice to propose that patch as a backport to morty.

Thanks,

Joshua

> MV
> 
> ERROR: Execution of event handler 'config_reparse_eventhandler' failed
> Traceback (most recent call last):
>    File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 1006, in config_reparse_eventhandler(e=<bb.event.ConfigParsed object at 0x7fc99cba1b00>):
>       python config_reparse_eventhandler() {
>      >    sanity_check_conffiles(e.data)
>       }
>    File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 568, in sanity_check_conffiles(d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                   except NotImplementedError as e:
>      >                bb.fatal(e)
>                   d.setVar("BB_INVALIDCONF", True)
>    File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py", line 103, in fatal:
>       def fatal(*args, **kwargs):
>      >    mainlogger.critical(''.join(args), extra=kwargs)
>           raise BBHandledException()
> TypeError: sequence item 0: expected str instance, NotImplementedError found
> 
> ERROR: Error parsing configuration files
> Traceback (most recent call last):
>    File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", line 124, in fire_class_handlers(event=<bb.event.ConfigParsed object at 0x7fc99cba1b00>, d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                           continue
>      >            execute_handler(name, handler, event, d)
> 
>    File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", line 96, in execute_handler(name='config_reparse_eventhandler', handler=<function config_reparse_eventhandler at 0x7fc99cbd4a60>, event=<bb.event.ConfigParsed object at 0x7fc99cba1b00>, d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>           try:
>      >        ret = handler(event)
>           except (bb.parse.SkipRecipe, bb.BBHandledException):
>    File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 1006, in config_reparse_eventhandler(e=<bb.event.ConfigParsed object at 0x7fc99cba1b00>):
>       python config_reparse_eventhandler() {
>      >    sanity_check_conffiles(e.data)
>       }
>    File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 568, in sanity_check_conffiles(d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                   except NotImplementedError as e:
>      >                bb.fatal(e)
>                   d.setVar("BB_INVALIDCONF", True)
>    File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py", line 103, in fatal:
>       def fatal(*args, **kwargs):
>      >    mainlogger.critical(''.join(args), extra=kwargs)
>           raise BBHandledException()
> TypeError: sequence item 0: expected str instance, NotImplementedError found
> 

