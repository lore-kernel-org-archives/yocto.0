Return-Path: <aveselinov@generationrfid.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F187E00BB0; Wed,  2 Nov 2016 07:40:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.185.50.73 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0125]
X-Greylist: delayed 1311 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Nov 2016 07:40:17 PDT
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
	[192.185.50.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BC1E009FA
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 07:40:17 -0700 (PDT)
Received: from cm7.websitewelcome.com (cm7.websitewelcome.com [108.167.139.20])
	by gateway24.websitewelcome.com (Postfix) with ESMTP id 23DD0AEB4341F
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 09:18:26 -0500 (CDT)
Received: from gator4093.hostgator.com ([192.185.4.105])
	by cm7.websitewelcome.com with 
	id 32JQ1u01N2Fx1Vc012JRZg; Wed, 02 Nov 2016 09:18:26 -0500
Received: from [146.66.253.137] (port=42628 helo=[192.168.61.179])
	by gator4093.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.87)
	(envelope-from <aveselinov@generationrfid.com>) id 1c1wMy-000Iui-NL
	for yocto@yoctoproject.org; Wed, 02 Nov 2016 09:18:24 -0500
To: yocto@yoctoproject.org
From: Anatoli Veselinov <aveselinov@generationrfid.com>
Message-ID: <d5b63ec2-ce46-74ef-41fd-d000fea28af5@generationrfid.com>
Date: Wed, 2 Nov 2016 15:18:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4093.hostgator.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - generationrfid.com
X-BWhitelist: no
X-Source-IP: 146.66.253.137
X-Exim-ID: 1c1wMy-000Iui-NL
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.61.179]) [146.66.253.137]:42628
X-Source-Auth: aveselinov@generationrfid.com
X-Email-Count: 1
X-Source-Cap: amxvcGV6O2psb3BlejtnYXRvcjQwOTMuaG9zdGdhdG9yLmNvbQ==
X-Mailman-Approved-At: Thu, 03 Nov 2016 07:49:45 -0700
Subject: How do I remove/disable QtWebKit from building?
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
X-List-Received-Date: Wed, 02 Nov 2016 14:40:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I have been searching about this but didn't found anything. I don't know 
if what I'm asking is possible so let me explain.

My goal is to create a custom image for a target that it can run Qt 
applications.
I have the image ready, I also generated the Qt sdk (with populate_sdk) 
and I already can cross-compile. Ok.

My question is, for future builds, how do I disable or remove some Qt 
modules that I don't need?

I did:

PACKAGECONFIG_remove_pn-qttools = "qtwebkit"
PACKAGECONFIG_remove_pn-qtquick1 = "qtwebkit"

but that doesn't disable qtwebkit to be built, I saw qtwebkit do_compile 
task running and it takes a lot of time.

