Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85F4CE006C7; Thu, 13 Sep 2018 06:15:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz23.laposte.net [194.117.213.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 353BCE00546
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 06:15:34 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id DD9AF52E883
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 15:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1536844532; bh=l/Uq1JMC/DT+Pl/PhmkEL/KlUKpfhy1TM1L+YK3ByNs=;
	h=Date:Subject:To:From;
	b=FN6Xy+QHIE9scckKTn4ZnzE+uv6yZ0507lNEdQUNxfjmgzCS6fxY41XpC9XlQFocu
	7Z4wjVNDcTGAofBjD0zPmswNOB65cnJ43VSDRz3bjYnfCV+h67MeUEJa5pzuYVFbOS
	anPu7BpFPosxveAhX0xm8eavpGqM/Nx8J+ouEaafwpkvyxEKLYQ976NATx1vDbpgsu
	52xQ4E0UpVGzptCJGUs1slvTRj9NP2SmI4aqFfxsnreW/SPt8RmW9qDtNFSCKiOpXu
	UClApAMWDhuOt1VKbhijDGtncKjtfnTUsqAQQADujTrZz/8yUDMSdGUx3fr18rPmgI
	rSeIqerZ5gYxw==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id CF28152EBD4
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 15:15:32 +0200 (CEST)
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout011 (Postfix) with ESMTP id CA3A152E946
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 15:15:32 +0200 (CEST)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id BA53A72895A
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 15:15:32 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id 8E2417289AB
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 15:15:32 +0200 (CEST)
Date: Thu, 13 Sep 2018 15:15:32 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.zo9636t6mnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrgedtjedrjeeigdeitdcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgffuffvggfg
X-VR-Cause-3: hffkfgesthejredttderleenucfhrhhomhepihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghp
X-VR-Cause-4: ohhsthgvrdhnvghtqeenucffohhmrghinhepvghvvghnthdrfhhirhgvnecukfhppedvuddvrddvfeeg
X-VR-Cause-5: rdefiedrudefheenucfrrghrrghmpehmohguvgepshhmthhpohhuthdpihhnvghtpedvuddvrddvfeeg
X-VR-Cause-6: rdefiedrudefhedphhgvlhhopehptgdqmhhlshdrvggtrghfrghrohhsrdhlohgtrghlpdhmrghilhhf
X-VR-Cause-7: rhhomhepihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtpdhrtghpthhtohephihotghtoheshiho
X-VR-Cause-8: tghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: bitbake error
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
X-List-Received-Date: Thu, 13 Sep 2018 13:15:35 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi, i'm trying to build an image with Yocto on a new machine (ubuntu 16.04  
LTS)but i have this error that i can't resolve. Can you help ?

ERROR: Execution of event handler 'uninative_event_fetchloader' failed
Traceback (most recent call last):
   File  
"/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass", line  
55, in uninative_event_fetchloader(e=<bb.event.BuildStarted object at  
0x7f2015027790>):
              if not os.path.exists(tarballpath):
     >            bb.utils.mkdirhier(tarballdir)
                  if d.getVar("UNINATIVE_URL", True) == "unset":
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line  
716, in  
mkdirhier(directory='/home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8'):
              if e.errno != errno.EEXIST:
     >            raise e

OSError: [Errno 13] Permission denied: '/home/b/yocto-krogoth/../../yocto'

ERROR: Command execution failed: Traceback (most recent call last):
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py",  
line 104, in runAsyncCommand
     commandmethod(self.cmds_async, self, options)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py",  
line 325, in buildTargets
     command.cooker.buildTargets(pkgs_to_build, task)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/cooker.py", line  
1423, in buildTargets
     bb.event.fire(bb.event.BuildStarted(buildname, ntargets), self.data)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line  
178, in fire
     fire_class_handlers(event, d)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line  
110, in fire_class_handlers
     execute_handler(name, handler, event, d)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line  
82, in execute_handler
     ret = handler(event)
   File  
"/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass", line  
55, in uninative_event_fetchloader
     bb.utils.mkdirhier(tarballdir)
   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line  
716, in mkdirhier
     raise e
OSError: [Errno 13] Permission denied: '/home/b/yocto-krogoth/../../yocto'

