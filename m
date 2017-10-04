Return-Path: <sancelot@numalliance.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A093CE00D50; Wed,  4 Oct 2017 01:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.numalliance.com (mail.numalliance.com [194.2.198.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5685E00D4E
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 01:17:30 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.numalliance.com (Postfix) with ESMTP id B3A1220CBD9F
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 10:17:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.numalliance.com
Received: from mail.numalliance.com ([127.0.0.1])
	by localhost (mail.numalliance.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id S8gjjMv0J9yT for <yocto@yoctoproject.org>;
	Wed,  4 Oct 2017 10:17:20 +0200 (CEST)
Received: from [192.168.0.78] (unknown [192.168.0.78])
	(Authenticated sender: sancelot@numalliance.com)
	by mail.numalliance.com (Postfix) with ESMTPSA id 71A6F20CBD7C
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 10:17:20 +0200 (CEST)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?St=c3=a9phane_Ancelot?= <sancelot@numalliance.com>
Message-ID: <88df9eb2-78a1-8e7b-39ca-bd6f8d8bd9ec@numalliance.com>
Date: Wed, 4 Oct 2017 10:17:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: toaster setup
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
X-List-Received-Date: Wed, 04 Oct 2017 08:17:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: fr

hi,

I setted up a toaster configuration, but there are few things that are 
not working or inconsistant with the manual.


1/ I can not find any toasterconf.json file

2/ the toaster interface runs but if try to use "local yocto project", 
no compatible layers are displayed (openembedded-core,meta-poky...)

I am using the mysql backend.

I am running opensuse 42.2. I can use yocto and have successfully built 
the core-image-sato from the cmdline.

Regards,

S.Ancelot

