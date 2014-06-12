Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F30FDE009E7; Thu, 12 Jun 2014 04:55:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 023C4E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 04:55:18 -0700 (PDT)
Received: by mail-yk0-f181.google.com with SMTP id 9so854844ykp.40
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 04:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=uKTQLq5zDRji6b15KjreyJtSTmysdWTh44qrrFDgdB8=;
	b=fAeX+ZJlgE2FOmY55EuJrCcNpT0D84zsXUzERtaljTVwtRHzB5zNglPMfZUPNzwRpr
	AX0MCZxbPOP/NpZ3V+jXjCb7TLdhPMNlTTDD5gtuhGfMmRVb7qXezSIVQ7FnzJRYMect
	aSlT85PzYNByF3Uqva9lIuzsucD3qah0WanVYvqPaMm19UCjJq1o23WfSsl0FYkpcqLG
	P85UKNl6/iM+yDGEPivb3gmUHROx1mQB7ir6UNYP+4LZXMG9yvAQVuAAn5hd+OoQt8Ui
	uSgBwXuCQ92hVv7mi3c1N8edDyOUWiWrCZXwcUjXBmbVwOJrBYojMNLxqqJJOVAU8lNi
	2VkQ==
X-Received: by 10.236.113.69 with SMTP id z45mr15227563yhg.0.1402574118134;
	Thu, 12 Jun 2014 04:55:18 -0700 (PDT)
Received: from [155.1.1.163] ([187.11.221.17])
	by mx.google.com with ESMTPSA id k66sm1024229yhg.39.2014.06.12.04.55.17
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 12 Jun 2014 04:55:17 -0700 (PDT)
Message-ID: <53999502.1050802@gmail.com>
Date: Thu, 12 Jun 2014 08:54:42 -0300
From: Daniel Hilst Selli <danielhilst@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Conditional patches on kernel depending on board, how to maintain?
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
X-List-Received-Date: Thu, 12 Jun 2014 11:55:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a SoM which will be used on several boards, this SoM has a base 
kernel for it, with its board-*.c file. In each board I may have 
different peripherals, so I have to patch the same board-*.c file 
depending on my target board, and that patches may be conflicting one 
each other. For example, I could have a RF on first SPI bus on one 
board, and on another board a SD card on same first SPI bus.

So basically I will have a different kernel(uImage) and rootfs (with 
kernel modules) for each board.

I think to create a layer for each target board, with the 
linux-SoM.bbappend including the patches for that board..., so I enable 
the layer depending on target board I'm creating, but is too much file 
editions, or have a build directory for each target board, enabling the 
right layer on each local.conf, but this means mantaining build 
directories, or at last local.conf, which doesn't seem a good idea for me...

Would be possible to do this relying only new layers and its configurations?

Thanks in advance
Cheers!

