Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5782E007C3; Mon, 30 Nov 2015 11:25:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DBC2E005B7
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 11:25:55 -0800 (PST)
Received: by ykdr82 with SMTP id r82so195936060ykd.3
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 11:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DiqQrFQ5Wa8TSd2O83krlh9a87uplQBS7uiq4KdRIbQ=;
	b=gUiH1XOPC7CH2AvPi0y9oS+xLDM3nLk0KC57BPSRgjNLl+K5U6NA0UWSSi6hizNv78
	706OSdgQMy7D1m7khzJZeIfWsmhTz8w74gc9SJjYuyWdB6ISicDiEkM+4DJmmkGMHvWZ
	zvJgiRfVCuwOpGjbv08pnSO6Mh7iLZ0ZaJULmkO7kCmLUMvyQou+uyJbnXf5+xwge2lg
	xp/saHcsI5VPinfhx9qYo/BELeeMQPbRm0B3PNV7RJoAvmym8+EZdtrhMkCVau5Ten7K
	W4FX+UZf97vi8u+m6W8FAUxFAZMrbY7CE614dgc+Dxv8AdFAgU727icl8PlYyjW+BRkX
	vo0Q==
MIME-Version: 1.0
X-Received: by 10.129.146.7 with SMTP id j7mr56156469ywg.217.1448911554526;
	Mon, 30 Nov 2015 11:25:54 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Mon, 30 Nov 2015 11:25:54 -0800 (PST)
Date: Mon, 30 Nov 2015 17:25:54 -0200
Message-ID: <CAF3SDA531vpWpfiSuKSr8FhbdMdt=1ma8LMhG55_uTia=E7q2A@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: One kernel tree, two BSP layers, two defconfigs. How to pickup the right one based on MACHINE value?
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
X-List-Received-Date: Mon, 30 Nov 2015 19:25:57 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have one kernel tree where I keep all my modules in-tree. Inside
kernel I have two FOO_defconfig and BAR_defconfig which are
configurations for FOO-board and BAR-board. On Yocto I have
core-layer, FOO-bsp layer and BAR-bsp layer. At core-layer I have
linux-custom.bb file which has the URI for kernel tree with a dummy
defconfig. At FOO-bsp and BAR-bsp a have a .bbappend that adds a
folder with the right defconfig for each board.

My doubt is: I have two .bbappends, on two distinct layers being
applied at same time? Both layers are pointed at
build/conf/bblayers.conf.

How can I have sure to pick up the right defconfig at build time?

I've tried to delete core-layer and have two kernel recipes with
distinct names, but Yocto complains about two recipes being selected
at same time for build (because of virtual/kernel feature or something
alike). So I want to keep one kernel recipe and select the right
defconfig based on MACHINE value.

Both defconfig are present on arch/arm/configs. Can I overwrite
do_config()? Is that safe? About the .bbappends: Should be two
.bbappends on same .bb file be avoided?


Regards,
- dhs
-- 
"Do or do not. There is no try"
  Yoda Master

