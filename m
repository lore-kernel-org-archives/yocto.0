Return-Path: <ta@taydin.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BC0CE00957; Thu,  9 Apr 2015 06:22:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 578 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Apr 2015 06:22:04 PDT
Received: from mail.taydin.org (bonsai.taydin.org [213.14.134.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D15DE008EC
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 06:22:04 -0700 (PDT)
Received: from [10.8.0.214]
	(27.127.158.98.client.static.strong-in26.as13926.net [98.158.127.27])
	by mail.taydin.org (Postfix) with ESMTPSA id 69564440032
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 16:12:23 +0300 (EEST)
Message-ID: <55267AB3.1000304@taydin.org>
Date: Thu, 09 Apr 2015 16:12:19 +0300
From: Timur Aydin <ta@taydin.org>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
Subject: toaster configuration variables
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
X-List-Received-Date: Thu, 09 Apr 2015 13:22:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am using yocto version 1.6.2 Daisy branch to build a linux 
distribution for the imx6 processor.

I have started the toaster prior to the build and after the build is 
done, I have examined the bitbake configuration variables. It looks like 
the variable values displayed by the toaster are different from the 
variable values displayed when using bitbake -e myimage > a.txt

The variable I am seeing different is the DISTRO_FEATURES variable. The 
value that toaster displays seems to be the default value of this 
variable, whereas the bitbake -e output shows the correct actual value.

Also the IMAGE_INSTALL variable does not exist in the toaster user 
interface, whereas it does exist in the bitbake -e output.

What could be the problem? Is toaster experimental at this time?

-- 
Timur

