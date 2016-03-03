Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D5A3E00AD7; Thu,  3 Mar 2016 05:40:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4711E00AAF
	for <yocto@yoctoproject.org>; Thu,  3 Mar 2016 05:40:07 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3434768A01C; Thu,  3 Mar 2016 13:40:05 +0000 (GMT)
Received: from [192.168.12.242] (phobos.analogue-micro-ltd.com
	[192.168.12.242])
	by mail.analogue-micro.com (Postfix) with ESMTP id BAA2E68A019;
	Thu,  3 Mar 2016 13:40:04 +0000 (GMT)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56D83EB4.8030804@mlbassoc.com>
Date: Thu, 3 Mar 2016 14:40:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Extending user add
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
X-List-Received-Date: Thu, 03 Mar 2016 13:40:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have a recipe which creates a user on my target.  This works as expected.

Is there a way to add/adjust the home directory created for this user?  In
particular, I'd like to create/change the ~user/.ssh directory for special
SSH setups.

The package I'm building has some very special packaging requirements that I'm
having a few issues with. Can I expect this statement to work in do_install()
(or do_install_append())?
   chown newuser:newuser ${D}/somefile

Thanks

