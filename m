Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 408EBE0093B; Tue, 11 Sep 2018 08:40:21 -0700 (PDT)
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
X-Greylist: delayed 1382 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Sep 2018 08:40:19 PDT
Received: from smtp.laposte.net (smtpoutz23.laposte.net [194.117.213.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52646E00566
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 08:40:19 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 4110452EC10
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 17:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1536679036; bh=V4BzJ0C0Of0tomua1ldiY9nZZi0RawKdjURvqrTx1ak=;
	h=To:Date:Subject:From;
	b=HSNC7L17P2tHZBsXg29kd272HXa6bXEdUk56Rpao+TDYWel5WzJTgvZFERAA0VWSa
	65jAlemFR1xljqXGCnJykA0bVQbEoRLf17GTtWgPHQBQ9KfZNYudU04i16qskkftJc
	R8HF0UiiP91lu/ziw0Q/dnef6TfwndGoDiku/bzAkBc7IOTyset27Wxjjy6orJJ95c
	ah7sKuPAaBFVLfv9rHg28CV2pvBzWHeGfzGub8WVG/fQt6W2HKBDyhNPijgQEvO0uz
	B9Y4odmID2Z73E581a81+QOPG4JClLSrvVhc63zVDSsmVpOTBPc5RF/eLIYJoq95Ky
	IrkN4tWiTahJg==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 334FB52FF80
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 17:17:16 +0200 (CEST)
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout011 (Postfix) with ESMTP id 22DD552EC10
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 17:17:16 +0200 (CEST)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 1460F4A6702
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 17:17:16 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin003 (Postfix) with ESMTPA id D71A9498D67
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2018 17:17:15 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 11 Sep 2018 17:17:15 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.zo6ne1yymnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrgedtjedrjedvgdekiecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgfvfffuggfg
X-VR-Cause-3: hffkfgesthfsredttderleenucfhrhhomhepihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghp
X-VR-Cause-4: ohhsthgvrdhnvghtqeenucfkphepvdduvddrvdefgedrfeeirddufeehnecurfgrrhgrmhepmhhouggv
X-VR-Cause-5: pehsmhhtphhouhhtpdhinhgvthepvdduvddrvdefgedrfeeirddufeehpdhhvghlohepphgtqdhmlhhs
X-VR-Cause-6: rdgvtggrfhgrrhhoshdrlhhotggrlhdpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshht
X-VR-Cause-7: vgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrghenucevlhhu
X-VR-Cause-8: shhtvghrufhiiigvpedt
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: [meta-raspberry]rpi-config
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
X-List-Received-Date: Tue, 11 Sep 2018 15:40:21 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hi i'm trying to build an image for a raspberry-pi 3 on branch sumo but =
i  =

have an error when i try to include rpi-config. See the issue under :

ERROR: Task do_populate_sdk in  =

/media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-xxx/recipe=
s-xxxx/images/console-image-xxxx.bb  =

rdepends upon non-existent task do_package_write_rpm in  =

/media/xxx/data/raspberry/yocto/yocto_official/poky-sumo/meta-raspberryp=
i/recipes-bsp/bootfiles/rpi-config_git.bb
ERROR: Command execution failed: 1

Do you have an idea how i can resolve this please ?

Regards,

Micka=EBl

