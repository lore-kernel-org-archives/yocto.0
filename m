Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B985FE00EB8; Tue, 10 Jul 2018 03:47:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1EDFE00AAB
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 03:47:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 03:47:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,334,1526367600"; d="scan'208";a="55746289"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga008.jf.intel.com with ESMTP; 10 Jul 2018 03:47:17 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.13]) with mapi id
	14.03.0319.002; Tue, 10 Jul 2018 18:47:15 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: [PATCH] [yocto-autobuilder] init: Fix the import module
	yoctoabb & yocto_console_view
Thread-Index: AQHUF/2Sn7dPTp+TgEut+88gdg1JC6SHnTQAgACnAJs=
Date: Tue, 10 Jul 2018 10:47:14 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>,
	<0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
In-Reply-To: <0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoabb & yocto_console_view
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
X-List-Received-Date: Tue, 10 Jul 2018 10:47:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

[Richard] I think this means you're using python2 and we really should be u=
sing
                python3 as I don't want to support both...

[Reply] This error/bug was found during buildbot startup meaning this is ou=
t of my control.=20
            Maybe you have a fix for this, otherwise I do suggest to add in=
 __init__.py in places where we need to source custom modules.

$ buildbot start ~/yocto-controller
$ cat -n 100 ~/yocto-controller/twistd.log

5800	2018-07-10 18:42:13+0800 [-] Main loop terminated.
  5801	2018-07-10 18:42:13+0800 [-] Server Shut Down.
  5802	2018-07-10 18:42:27+0800 [-] Loading buildbot.tac...
  5803	2018-07-10 18:42:27+0800 [-] Loaded.
  5804	2018-07-10 18:42:27+0800 [-] twistd 18.4.0 (/usr/bin/python 2.7.13) =
starting up.
  5805	2018-07-10 18:42:27+0800 [-] reactor class: twisted.internet.epollre=
actor.EPollReactor.
  5806	2018-07-10 18:42:27+0800 [-] Starting BuildMaster -- buildbot.versio=
n: 1.2.0
  5807	2018-07-10 18:42:27+0800 [-] Loading configuration from '/home/ab/yo=
cto-controller/master.cfg'
  5808	2018-07-10 18:42:27+0800 [-] error while parsing config file:
  5809		Traceback (most recent call last):
  5810		  File "/home/ab/.local/lib/python2.7/site-packages/twisted/python/=
threadpool.py", line 266, in <lambda>
  5811		    inContext.theWork =3D lambda: context.call(ctx, func, *args, **=
kw)
  5812		  File "/home/ab/.local/lib/python2.7/site-packages/twisted/python/=
context.py", line 122, in callWithContext
  5813		    return self.currentContext().callWithContext(ctx, func, *args, =
**kw)
  5814		  File "/home/ab/.local/lib/python2.7/site-packages/twisted/python/=
context.py", line 85, in callWithContext
  5815		    return func(*args,**kw)
  5816		  File "/home/ab/.local/lib/python2.7/site-packages/buildbot/config=
.py", line 182, in loadConfig
  5817		    self.basedir, self.configFileName)
  5818		--- <exception caught here> ---
  5819		  File "/home/ab/.local/lib/python2.7/site-packages/buildbot/config=
.py", line 140, in loadConfigDict
  5820		    execfile(filename, localDict)
  5821		  File "/home/ab/.local/lib/python2.7/site-packages/twisted/python/=
compat.py", line 246, in execfile
  5822		    exec(code, globals, locals)
  5823		  File "/home/ab/yocto-controller/master.cfg", line 11, in <module>
  5824		    from yoctoabb import builders, config, schedulers, workers, ser=
vices, www
  5825		exceptions.ImportError: No module named yoctoabb
  5826	=09
  5827	2018-07-10 18:42:27+0800 [-] Configuration Errors:
  5828	2018-07-10 18:42:27+0800 [-]   error while parsing config file: No m=
odule named yoctoabb (traceback in logfile)
  5829	2018-07-10 18:42:27+0800 [-] Halting master.
  5830	2018-07-10 18:42:27+0800 [-] BuildMaster startup failed
  5831	2018-07-10 18:42:27+0800 [-] BuildMaster is stopped
  5832	2018-07-10 18:42:27+0800 [-] Main loop terminated.
  5833	2018-07-10 18:42:27+0800 [-] Server Shut Down.

Cheers,
Aaron
________________________________________
From: richard.purdie@linuxfoundation.org [richard.purdie@linuxfoundation.or=
g]
Sent: Tuesday, July 10, 2018 4:40 PM
To: Chan, Aaron Chun Yew; yocto@yoctoproject.org; Burton, Ross; Eggleton, P=
aul
Subject: Re: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoa=
bb & yocto_console_view

On Tue, 2018-07-10 at 11:24 +0800, Aaron Chan wrote:
> This patch is to fix the inconsistency in loading custom module
> yoctoabb & yocto_console_view during Buildbot Master startup.
>
> Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
> ---
>  __init__.py                    | 0
>  yocto_console_view/__init__.py | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  create mode 100644 __init__.py
>  create mode 100644 yocto_console_view/__init__.py

I think this means you're using python2 and we really should be using
python3 as I don't want to support both...

Cheers,

Richard

