Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04F0DE00BF8; Thu,  3 Nov 2016 05:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC030E00B9E
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 05:29:59 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id AB92668A019; Thu,  3 Nov 2016 12:29:58 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4CF8868A019;
	Thu,  3 Nov 2016 12:29:58 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E7589674025C;
	Thu,  3 Nov 2016 13:29:57 +0100 (CET)
To: yocto@yoctoproject.org
References: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <a8763b48-7566-4974-895b-f9137e4d3e38@mlbassoc.com>
Date: Thu, 3 Nov 2016 13:29:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
Subject: Re: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 12:30:01 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-11-03 13:19, idealsim wrote:
> Hi all, i need to build a lib --> openZwave (on a imx6 card) libudev.h.
> I have this error during the build :
> /home/root/openzwave-1.4.164/cpp/hidapi/linux/hid.c:44:21: fatal error: libudev.h: No such file or directory
> I have tried to add udev to my local.conf but this not resolve the problem.
> How i can add it to my build please ?

Did you try adding 'udev' to DEPENDS in your recipe?  That's
the way bitbake knows to provide such connections (i.e. how your
recipe can find the appropriate files during build)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

