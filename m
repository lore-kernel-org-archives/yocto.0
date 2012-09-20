Return-Path: <kyle@farnsworthtech.com>
Received: from smtp.knology.net (smtp-fo.knology.synacor.com [64.8.71.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3582E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 08:32:55 -0700 (PDT)
X_CMAE_Category: 0,0 Undefined,Undefined
X-CNFS-Analysis: v=2.0 cv=f4TK9ZOM c=1 sm=0 a=WUVZR0xZJcfxSaQYriipYQ==:17
	a=aFP-xk0SXQ8A:10 a=dWUxHrtDoX8A:10 a=8nJEP1OIZ-IA:10
	a=4Du6mIFzAAAA:8 a=zigpRg_KXi4A:10 a=e9uD3FyEN2Ruv3LIxMgA:9
	a=wPNLvfGTeEIA:10 a=WUVZR0xZJcfxSaQYriipYQ==:117
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
Authentication-Results: smtp02.knology.synacor.com
	smtp.mail=kyle@farnsworthtech.com; spf=neutral;
	sender-id=neutral
Authentication-Results: smtp02.knology.synacor.com
	header.from=kyle@farnsworthtech.com; sender-id=neutral
Authentication-Results: smtp02.knology.synacor.com
	smtp.user=kfarns@knology.net; auth=pass (LOGIN)
Received-SPF: neutral (smtp02.knology.synacor.com: 24.236.110.180 is neither
	permitted nor denied by domain of farnsworthtech.com)
Received: from [24.236.110.180] ([24.236.110.180:1529]
	helo=host.farnsworthtech.com)
	by smtp.knlogy.net (envelope-from <kyle@farnsworthtech.com>)
	(ecelerity 2.2.3.47 r(39787)) with ESMTPA
	id D8/39-12827-2273B505; Thu, 20 Sep 2012 11:32:50 -0400
Received: from [192.168.1.43] (farntech1.farnsworthtech.com [192.168.1.43])
	by host.farnsworthtech.com (Postfix) with ESMTP id CE9BB811BB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 10:32:49 -0500 (CDT)
Message-ID: <505B3722.2090302@farnsworthtech.com>
Date: Thu, 20 Sep 2012 10:32:50 -0500
From: Kyle Farnsworth <kyle@farnsworthtech.com>
Organization: Farnsworth Technology, Inc.
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.4
Subject: source added to -dbg pkg
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
X-List-Received-Date: Thu, 20 Sep 2012 15:32:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I would like to NOT put the source code within the ${PN}-dbg pkg and
keep it separate from my symbol binaries in that pkg.  Is there a way to
either turn off the collection of the source or allow me to put it in a
different pkg.  It could be useful to have some cases but not in all.

I have been using OE classic for years and just started using oe-core,
so this surprised me that it was doing this under the covers without
having to install it in the image dir first.

Thanks.

