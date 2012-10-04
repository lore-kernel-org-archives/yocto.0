Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEF0EE0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 11:36:55 -0700 (PDT)
Received: by mail-gg0-f176.google.com with SMTP id e5so210482ggk.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 11:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=WJSk/fbhDRp6f3rrhWLrHYp4kqpltCEbdcS6hqh5v6A=;
	b=tM+Le/eP549xuVJ1Fz7EhiW3yRfZeVleQUGvNC+FVtYcT8KZRavNB1ZETjP4MSXMKy
	RxsVMzCg2NoCyH58zOpho5gC7RqTl1SzNp2JC/jcU5AgOM5hUo5O8f6XXVbZI+5ciVoz
	kXzuU7X0KD9zL/KimEgktI99HlrWnzOeA7MaKflMJo20KYmCGbo2AceAbbr9yAyGfklb
	YO8BFDIcaWeoo7+/zqtH5PZLNAO0wpo2ho18wCCViTQTEEYlx6w3IaSKcT8oHOb5YnEA
	UiM3VYmFgbrgwkQE6/NM+6mmM1bV0bqF5ipvKf4EWZwF8LOyVblBi/PJPOj6ewuUZKXO
	XFCg==
Received: by 10.236.76.234 with SMTP id b70mr6247669yhe.31.1349375813032;
	Thu, 04 Oct 2012 11:36:53 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id e24sm11019754yhh.4.2012.10.04.11.36.51
	(version=SSLv3 cipher=OTHER); Thu, 04 Oct 2012 11:36:52 -0700 (PDT)
Message-ID: <506DD743.6030204@gmail.com>
Date: Thu, 04 Oct 2012 14:36:51 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Building crownbay from master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 18:36:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I successfully build the meta-crownbay BSP using the latest pull from 
master branch.  I did get some warning, that I wonder what they mean or 
the significance of them:

NOTE: preferred version 7.11 of mesa-dri not available (for item 
virtual/libgl)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item mesa-dri)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item 
mesa-dri-dev)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7
NOTE: preferred version 7.11 of mesa-dri not available (for item mesa-dri)
NOTE: versions of mesa-dri available: 2:8.0.4 
2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7


WARNING: bzip2: No generic license file exists for: bzip2 in any provider
WARNING: bzip2-native: No generic license file exists for: bzip2 in any 
provider
WARNING: emgd-driver-bin: No generic license file exists for: 
Intel-binary-only in any provider
WARNING: busybox: No generic license file exists for: bzip2 in any provider

Also a number of warning about the recipe trying to install files into a 
shared area when those files already existed.

Jim A


