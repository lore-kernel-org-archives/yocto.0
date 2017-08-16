Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B13E00D75; Wed, 16 Aug 2017 08:43:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.120 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF18E00B77
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 08:43:39 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2017 08:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,383,1498546800"; d="scan'208";a="140383799"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.134])
	by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2017 08:43:39 -0700
Message-ID: <1502898748.28941.44.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Wed, 16 Aug 2017 10:52:28 -0500
In-Reply-To: <30C2D590D16A5C46ADFE652191037798922773DF@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798922773DF@AZ-US1EXMB02.global.avaya.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 16 Aug 2017 15:43:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit



On Wed, 2017-08-16 at 14:42 +0000, Vuille, Martin (Martin) wrote:
> In the process of transitioning from Fido to Morty.
> 
> In the past, when sanity detected a version mismatch with some of
> the configuration files (e.g., local.conf, bblayers.conf,) an error message
> was displayed.
> 
> Now, we see the below, which I do not find very informative or helpful.
> 
> Is that a bug or intentional? Is there a way to get back the error message?
> 

are you reusing the same build folder? if yes, try a separate folder
instead.




> MV
> 
> ERROR: Execution of event handler 'config_reparse_eventhandler' failed
> Traceback (most recent call last):
>   File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 1006, in config_reparse_eventhandler(e=<bb.event.ConfigParsed object at 0x7fc99cba1b00>):
>      python config_reparse_eventhandler() {
>     >    sanity_check_conffiles(e.data)
>      }
>   File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 568, in sanity_check_conffiles(d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                  except NotImplementedError as e:
>     >                bb.fatal(e)
>                  d.setVar("BB_INVALIDCONF", True)
>   File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py", line 103, in fatal:
>      def fatal(*args, **kwargs):
>     >    mainlogger.critical(''.join(args), extra=kwargs)
>          raise BBHandledException()
> TypeError: sequence item 0: expected str instance, NotImplementedError found
> 
> ERROR: Error parsing configuration files
> Traceback (most recent call last):
>   File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", line 124, in fire_class_handlers(event=<bb.event.ConfigParsed object at 0x7fc99cba1b00>, d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                          continue
>     >            execute_handler(name, handler, event, d)
> 
>   File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/event.py", line 96, in execute_handler(name='config_reparse_eventhandler', handler=<function config_reparse_eventhandler at 0x7fc99cbd4a60>, event=<bb.event.ConfigParsed object at 0x7fc99cba1b00>, d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>          try:
>     >        ret = handler(event)
>          except (bb.parse.SkipRecipe, bb.BBHandledException):
>   File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 1006, in config_reparse_eventhandler(e=<bb.event.ConfigParsed object at 0x7fc99cba1b00>):
>      python config_reparse_eventhandler() {
>     >    sanity_check_conffiles(e.data)
>      }
>   File "/home/platform/Workspace/dspgbase/poky/meta/classes/sanity.bbclass", line 568, in sanity_check_conffiles(d=<bb.data_smart.DataSmart object at 0x7fc99d00f198>):
>                  except NotImplementedError as e:
>     >                bb.fatal(e)
>                  d.setVar("BB_INVALIDCONF", True)
>   File "/home/platform/Workspace/dspgbase/poky/bitbake/lib/bb/__init__.py", line 103, in fatal:
>      def fatal(*args, **kwargs):
>     >    mainlogger.critical(''.join(args), extra=kwargs)
>          raise BBHandledException()
> TypeError: sequence item 0: expected str instance, NotImplementedError found



