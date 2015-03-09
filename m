Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 987DBE00712; Mon,  9 Mar 2015 03:54:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F4076E00477
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 03:53:58 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id F1FEE27E1B1
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 10:53:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id grz_csPjmHjn for <yocto@yoctoproject.org>;
	Mon,  9 Mar 2015 10:53:52 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-77-115.w109-208.abo.wanadoo.fr
	[109.208.172.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id B3B2627E19A
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 10:53:51 +0000 (UTC)
Message-ID: <54FD7B5D.3040909@dynamicdevices.co.uk>
Date: Mon, 09 Mar 2015 11:52:13 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: [meta-mono] Update to 3.12.1 to address SKIP TLS / FREAK vulnerabilities
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
X-List-Received-Date: Mon, 09 Mar 2015 10:54:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

meta-mono master has been updated to build the latest Mono 3.12.1
release which addresses SKIP TLS / FREAK vulnerabilities in all prior
Mono versions >= 3.4.0.

For further details see:

http://www.mono-project.com/news/2015/03/07/mono-tls-vulnerability/

Basic testing has been performed on an i.MX6 platform running helloworld
(console) and helloworldworld (matchbox ui)

Regards,

Alex

