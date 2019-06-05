Return-Path: <pierluigi.greto@bisdn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A018EE00D64; Wed,  5 Jun 2019 02:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 435 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Jun 2019 02:24:14 PDT
Received: from mx.bisdn.de (mx.bisdn.de [185.27.182.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF240E00D5D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 02:24:14 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.16.250.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx.bisdn.de (Postfix) with ESMTPSA id 0B843A46CE
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 11:16:57 +0200 (CEST)
To: yocto@yoctoproject.org
From: Pierluigi Greto <pierluigi.greto@bisdn.de>
Message-ID: <c4034430-bdf6-0324-9c7a-24257fb0327f@bisdn.de>
Date: Wed, 5 Jun 2019 11:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Subject: fitImage kernel compression type
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
X-List-Received-Date: Wed, 05 Jun 2019 09:24:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hello everyone,

I'm building an fitImage and I would like to set the kernel compression 
type. Yocto is automatically creating the linux.bin but I cannot find 
any variable to specify the kernel compression type. I would like to 
have a gzip compressed kernel. Is possible to specify the compression 
type by using a variable? If not, there are other ways?

Thank you,
Pierluigi


