Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55CA7E00D7E; Tue, 16 Jan 2018 01:32:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jan 2018 01:32:40 PST
Received: from cloudserver096301.home.pl (cloudserver096301.home.pl
	[79.96.179.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D85A0E00A9C
	for <yocto@yoctoproject.org>; Tue, 16 Jan 2018 01:32:40 -0800 (PST)
Received: from 109241231046.gdansk.vectranet.pl (109.241.231.46) (HELO
	[192.168.3.103])
	by serwer1539010.home.pl (79.96.179.35) with SMTP (IdeaSmtpServer 0.82)
	id 150481a57194d8c8; Tue, 16 Jan 2018 10:25:59 +0100
To: Mostafa Farzane <farzanemostafa@yahoo.com>, yocto@yoctoproject.org
References: <1970961286.255227.1515871974890.ref@mail.yahoo.com>
	<1970961286.255227.1515871974890@mail.yahoo.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <8436a6a8-89b6-efe7-ec4c-71d1feb45ca7@3mdeb.com>
Date: Tue, 16 Jan 2018 10:29:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1970961286.255227.1515871974890@mail.yahoo.com>
Subject: Re: How to install dtb file to boot directory
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
X-List-Received-Date: Tue, 16 Jan 2018 09:32:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 13.01.2018 20:32, Mostafa Farzane wrote:
> I sucssesfully installed kernel to boot directory by comment out RDEPENDS_kernel-base="" line in local.conf. now i need to install dtb file to boot directory as well. I tried use do_install_append in my kernel recipe but no success. Any suggestion?

I may suggest installing packages `kernel-image` and `kernel-devicetree` 
to install both kernel image and
devicetree in rootfs.

To do that you would need to add:

IMAGE_INSTALL_append = " kernel-image kernel-devicetree" in your's image 
recipe or local.conf.

Let me know if this is any help for you.

-- 
Maciej Pijanowski
Embedded Systems Engineer
http://3mdeb.com | @3mdeb_com


