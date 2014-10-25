Return-Path: <rudnik.mathias@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BBBEE00860; Sat, 25 Oct 2014 11:53:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudnik.mathias[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D24EE0080D
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 11:53:05 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id h11so1496679wiw.6
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 11:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=m64LTucBpZrJ0QAALoA3S6yMXbcbqJoU5YUcuVRazvU=;
	b=pXUYsHK65+LgPYH25JDsJopkttJl7cTXjauI22AI5qf48qvlWzUJ+jmPclWT+UyCpn
	uXPA5J5PNZSxN4UsbPlW7lEbTBve+ishcx7pU3nqmpRKunk8qnc7buUCqqpc9E6N9RRk
	HfIBGb2fSAmbuMu94lqXCNJCQh+k2w8BpX47h7ezqPd2bQudlgHs/ybWcu/85IpQ6Rmx
	BGujF1BP80ouyE3WYmjD3SI3m319rq3XMXjJl0Ryi4eAuB6N6Yc6sHdRidZ44Vap9KfN
	GWWl7JfDQU0+UFj+2s1D248nzpiL1yH25VaChbUStba9w0dhU5HQAFU4qX2pHJl4kcnK
	KI5A==
X-Received: by 10.194.6.233 with SMTP id e9mr13179554wja.20.1414263184006;
	Sat, 25 Oct 2014 11:53:04 -0700 (PDT)
Received: from [192.168.178.24] (p579584D8.dip0.t-ipconnect.de.
	[87.149.132.216])
	by mx.google.com with ESMTPSA id cz3sm9557472wjb.23.2014.10.25.11.53.02
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 25 Oct 2014 11:53:03 -0700 (PDT)
Message-ID: <544BF18D.1030106@googlemail.com>
Date: Sat, 25 Oct 2014 20:53:01 +0200
From: Mathias Rudnik <rudnik.mathias@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: "yocto-kernel config list yocto-bsp" throws error
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
X-List-Received-Date: Sat, 25 Oct 2014 18:53:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

when issuing the command "$ yocto-kernel config list yocto-bsp" command 
i get following error message:

Traceback (most recent call last):
   File "/home/c0dix/Downloads/Font/poky/scripts/yocto-kernel", line 
394, in <module>
     ret = main()
   File "/home/c0dix/Downloads/Font/poky/scripts/yocto-kernel", line 
389, in main
     invoke_subcommand(args, parser, yocto_kernel_help_usage, subcommands)
   File "/home/c0dix/Downloads/Font/poky/scripts/lib/bsp/help.py", line 
73, in invoke_subcommand
     subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
   File "/home/c0dix/Downloads/Font/poky/scripts/yocto-kernel", line 65, 
in yocto_kernel_config_list_subcommand
     yocto_kernel_config_list(scripts_path, args[0])
   File "/home/c0dix/Downloads/Font/poky/scripts/lib/bsp/kernel.py", 
line 191, in yocto_kernel_config_list
     config_items = read_config_items(scripts_path, machine)
AttributeError: 'NoneType' object has no attribute 'readlines'

Any ideas how to solve this problem?



