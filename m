Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07DDDE00DAD; Wed, 30 Dec 2015 05:32:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	SPF_HELO_SOFTFAIL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 SPF_HELO_SOFTFAIL SPF: HELO does not match SPF record
	(softfail)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4AF7E00B44
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 05:31:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id C69C527E55B;
	Wed, 30 Dec 2015 13:24:15 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id jkE86aBZDkIq; Wed, 30 Dec 2015 13:23:52 +0000 (UTC)
Received: from [172.27.230.137] (lennoab4.miniserver.com [89.200.138.206])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 4BB8A27E555;
	Wed, 30 Dec 2015 13:23:49 +0000 (UTC)
To: Otavio Salvador <otavio@ossystems.com.br>
References: <1450282712-12396-1-git-send-email-otavio@ossystems.com.br>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <5683DADE.2010602@dynamicdevices.co.uk>
Date: Wed, 30 Dec 2015 13:23:42 +0000
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <1450282712-12396-1-git-send-email-otavio@ossystems.com.br>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono PATCH] mono-4.xx.inc: Inherit gettext class
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
X-List-Received-Date: Wed, 30 Dec 2015 13:32:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 16/12/2015 16:18, Otavio Salvador wrote:
> The mono uses gettext for build, by default, so we ought to ensure it
> is available during the build.
>

Applied. Thanks Otavio.

Cheers, Alex


