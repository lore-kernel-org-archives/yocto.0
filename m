Return-Path: <cubicool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E67FFE00708; Sat,  5 Jul 2014 20:58:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cubicool[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4D4BE006B5
	for <yocto@yoctoproject.org>; Sat,  5 Jul 2014 20:57:57 -0700 (PDT)
Received: by mail-yk0-f182.google.com with SMTP id 19so1218772ykq.27
	for <yocto@yoctoproject.org>; Sat, 05 Jul 2014 20:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=YM5yOxnGlsKzSO64zn4G1rkC3a9zJNUBlM1o7UlwoFA=;
	b=U9F5VFlcXP6vVEJEm88n26KToQLGlwEvivZKoy14D9IBOp3MbdEGqOH0fR5Hrn9N6Y
	OCpzKloXP/KT50ZWs7w5us0INCvQEcAvDtgd/RmdFAviB6GizLGCYhG93mDq/K1qwkmE
	TZFxPXKp1uXECpfU2wk5+VIA/z86xcBAGEk8krd68QECvKpJFaAty02l3WrGCgabbJp4
	bIFNuXMO4FK4dUoQZ8jY0bnIP3Bwp0FJfOdR/40JUztlXzN5VuLipjSqgQESQ4e0ExvT
	3S+VAxqlbEnN7sRV+200O9lLxKKaPXLJ7Hlky+7NbKrBHgS2UHSDHSTrTLlwU01Es61s
	c3pA==
X-Received: by 10.236.191.132 with SMTP id g4mr30924528yhn.32.1404619076730;
	Sat, 05 Jul 2014 20:57:56 -0700 (PDT)
Received: from [10.0.0.12] (c-76-125-19-43.hsd1.ga.comcast.net. [76.125.19.43])
	by mx.google.com with ESMTPSA id u61sm40225795yhl.0.2014.07.05.20.57.55
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 05 Jul 2014 20:57:55 -0700 (PDT)
Message-ID: <53B8C942.6010405@gmail.com>
Date: Sat, 05 Jul 2014 23:57:54 -0400
From: Jeremy Moles <cubicool@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Minimalist Initrd
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
X-List-Received-Date: Sun, 06 Jul 2014 03:58:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hey guys! I've been using Yocto for a while now and it's quite 
phenomenal; I really appreciate the hard work and effort the community 
puts into this project, and I hope I can (with the approcal of my 
clients) return some of my own Yocto/OE (and specifically, Angstrom) 
work back for everyone to use!

I've encountered a scenario wherein I have only (and this constraint 
can't be worked around) 13MB of space into which I can place a JFFS2 
image which can be used to continue the system startup (which is 
initially started by an older version of uboot).

I'm having trouble finding a clean solution within the Yocto/OE world 
for this issue. Thus far, I've been using an old, generic, super-tiny 
ARM-based initrd I made years ago which just does a few (proprietary) 
things in the linux and then fires off /sbin/init in the "real" filesystem.

What I need now, however, is a recipe (or perhaps hints on where to 
start when rolling my own recipe) for generating little more than an 
image (JFFS2 or cpio.gz) with busybox in it. I can handle the rest view 
function overrides, I just need the base startup.

Can anyone give me any hints on this? I'm using Poky mostly, which some 
forrays into Angstrom 2016. Any hints on existing bitbake recipes I can 
inherit/adapt would be amazingly useful. Thanks!

