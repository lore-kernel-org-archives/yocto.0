Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC9B2E01211; Thu, 14 Jun 2018 09:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A5EFE00CC9
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 09:06:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 3BD3435CE9D
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 16:06:04 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id taEBXBP66v1L for <yocto@yoctoproject.org>;
	Thu, 14 Jun 2018 16:05:56 +0000 (UTC)
Received: from [127.0.0.1] (unknown [185.135.104.23])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 4D95335C14D
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 16:05:56 +0000 (UTC)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <27ae9e49-5cfa-546c-4879-f5e611d6e16c@dynamicdevices.co.uk>
Date: Thu, 14 Jun 2018 17:05:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
Subject: License information for Mono recipe?
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
X-List-Received-Date: Thu, 14 Jun 2018 16:06:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB

Hi all,

I've been doing some updating of meta-mono mono support and the license 
file has changed.

IANAL and I'd like to get this right so is anybody in a position to 
advise me on what the recipe should contain to correctly reflect the 
various licenses for mono?

ref: https://github.com/mono/mono/blob/master/LICENSE

Much appreciated,

Alex


