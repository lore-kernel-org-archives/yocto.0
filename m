Return-Path: <kristupas.savickas@teltonika.lt>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D407BE00CCE; Tue, 12 Feb 2019 03:56:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.61.46.25 listed in list.dnswl.org]
Received: from mail.teltonika.lt (mail.teltonika.lt [92.61.46.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61DAEE00CB9
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 03:56:00 -0800 (PST)
Received: from [192.168.90.159] (88-119-152-93.static.zebra.lt [88.119.152.93])
	by mail.teltonika.lt (Postfix) with ESMTPSA id 2596F24615A3
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 13:55:58 +0200 (EET)
To: yocto@yoctoproject.org
From: Kristupas Savickas <kristupas.savickas@teltonika.lt>
Message-ID: <cc6d6bc3-da90-11b6-434c-df794597bc90@teltonika.lt>
Date: Tue, 12 Feb 2019 13:55:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
Subject: Using SDK/ESDK to build images
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
X-List-Received-Date: Tue, 12 Feb 2019 11:56:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

we're looking into providing our customers with SDK/ESDK packages to 
develop custom solutions on our boards. We don't want to provide the 
whole project itself as it would leak our intellectual property, so 
precompiled packages are a must. Looking around, it seems like both SDK 
and ESDK are suited to build single packages, rather than complete 
images. Am I correct about this? Is there some kind of method to allow 
images be built using SDK packages?


