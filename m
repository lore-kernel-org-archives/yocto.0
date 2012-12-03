Return-Path: <koansoftware@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 576E3E0033F
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 07:00:13 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so2495889lbo.35
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 07:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:cc:subject:content-type:content-transfer-encoding;
	bh=nUf2P1SI7LIZhAjfV4jWWph4ynIzytKrTsgE/dvmgNE=;
	b=WzyCs5pHK/4cw3mBgipHPaBR1xVdhpp5grxnY80ZIrAH8phyYu5cx1VpfQOwdJsWRX
	OVGvqIM9GLujQWckCsDxzABImCSFfNw1/5lx1uWDB971USFjQqhidMzI9NLbuwfEoWw2
	P7NQ8Gy1TxGKan6DvplsGZm5rkOnM+7LkA9ovNekT7vkZx936nNPVv2bzCZ+aAqrmvzC
	5WZyl1m1WofG6VD87/DOzJ9x4nHZH+QipHel6aWSNM98XPOOpVhto6Nk5fJKaMX9865y
	OTpKb7g64BdqC0FwvT+wG36GmODBYpP+mppHoRbUNye+KxEWBobLW4Ny/R1IFLGlxp4a
	G43g==
Received: by 10.152.111.68 with SMTP id ig4mr9804459lab.50.1354546811866;
	Mon, 03 Dec 2012 07:00:11 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPS id hu6sm5428060lab.13.2012.12.03.07.00.09
	(version=SSLv3 cipher=OTHER); Mon, 03 Dec 2012 07:00:10 -0800 (PST)
Message-ID: <50BCBE77.4070700@gmail.com>
Date: Mon, 03 Dec 2012 16:00:07 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Howto use yocto meta-toolchain?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Dec 2012 15:00:13 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
after build meta-toolchain (for beagleboard, for example) I have this script

15:32 koan@quad:~/yocto-8-danny/poky/build
$ ll tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
-rwxr-xr-x 1 koan koan 16143 2012-12-03 15:25 
tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh

Then I argued I had to launch it to install the Yocto toolchain, but I 
get an error

15:32 koan@quad:~/yocto-8-danny/poky/build
$ sudo tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
[sudo] password for koan:
Enter target directory for SDK (default: /opt/poky/1.3):
You are about to install the SDK to "/opt/poky/1.3". Proceed[Y/n]?
Extracting SDK...done
Setting it up...find: `/opt/poky/1.3/sysroots/x86_64-pokysdk-linux/lib': 
No such file or directory
SDK could not be set up. Relocate script failed. Abort!

What's wrong?
I wasn't able to find any document about it in YP website.

TIA
-- 
Marco

