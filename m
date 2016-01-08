Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1984E00AA8; Fri,  8 Jan 2016 03:34:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0008]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 472D3E007F2
	for <yocto@yoctoproject.org>; Fri,  8 Jan 2016 03:34:33 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 473B327E57A;
	Fri,  8 Jan 2016 11:34:31 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id s2QpXjJpOrDz; Fri,  8 Jan 2016 11:34:08 +0000 (UTC)
Received: from [192.168.0.97] (unknown [51.179.151.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 910AA27E574;
	Fri,  8 Jan 2016 11:34:08 +0000 (UTC)
To: Adam Lussier <adam.lussier@timesys.com>
References: <CAD5MXoujp=7tvPTnEuL2SrnVEwZGLGwDivqT+RY4kHTqs8T+pg@mail.gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <568F9EAD.1080901@dynamicdevices.co.uk>
Date: Fri, 8 Jan 2016 11:34:05 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <CAD5MXoujp=7tvPTnEuL2SrnVEwZGLGwDivqT+RY4kHTqs8T+pg@mail.gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: [meta-mono] Re: ***UNCHECKED*** meta-mono patch
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
X-List-Received-Date: Fri, 08 Jan 2016 11:34:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 06/01/2016 20:44, Adam Lussier wrote:
> Alex,
>
> I looked but couldn't find where I might submit a patch for meta-mono.
> Without this patch, mono fails the host-user-contaminated test on
> jethro.  Please let me know if I should send it somewhere else.
>
> Thanks,
> Adam
>

Applied, thanks Adam.

Cheers, Alex



