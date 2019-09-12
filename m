Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 555EAE00E11; Thu, 12 Sep 2019 02:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 146E3E00DE4
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 02:42:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 97D3C212002;
	Thu, 12 Sep 2019 11:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
	h=content-transfer-encoding:content-language:content-type
	:content-type:in-reply-to:mime-version:user-agent:date:date
	:message-id:from:from:references:subject:subject; s=default; t=
	1568281338; x=1570095739; bh=rAlSqJjsZ0X6JFFZxXppvH5W1G+XsWvfDpd
	3uq+UC7c=; b=Jub137ForbKfXxO8AGj6PtDyOOLwYEvayHQybXEsMsdnSlnPrGU
	+x0lhPBPYsfHOUzRiPDamuIS9M11a900i42SSQhiJkAkVApxHS+nAizyGIsgtUp+
	yLCtbYl88PiZIHcjw4yOW3DNMv5oaIiEy4jEjiZRX9+CUojG0/cYyftIIPXCWV5h
	0nM5HDQZ1IULxO7Ev6kpvZtfikRznFVtjFj+JbjVBsoFRV++N9TSsBZ0wksboC37
	DcZAT2D1lxwe/YwfpWGZHgCHkBPtPpxxs/xeWrx2yCBRaGlcaROVrbmQ2sNRmdn7
	JraEb//iIOcKqEnjUvrT19iobkQKn1jInK22LLcFVpn90CJRPAStTixUZwZw5ro+
	KUiw0q1FrIZ/mbwIzQjltz9tKYzlsh4/GM7yEsJwKxpi0/BXWM1DGzkxiVUrH32p
	ho7VkCp9/AyZNZD+BRTl0504FBUv1egazKzjEzTSdJ6ukCBOYm+APE0thBJLl/cT
	CQOJw4ZkDatek921saGA8LTGc9cyjoRrn1Vna8VN8rj4gnAN8RxWlarES/SdjyuJ
	WKJlphLfOlM9wWiSAE5/zVanTF6sgsS0Zuxq5b1eeT1ftq+PYs9Llaffizcw5aED
	YPnIzPxWSyFD2tSe4ha6DU9XkJca3Jiv6dJR9J9Z+Z07LL+FysViNsg4=
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id vw9UVlpipi2x; Thu, 12 Sep 2019 11:42:18 +0200 (CEST)
Received: from [192.168.18.127] (unknown [149.6.134.59])
	(Authenticated sender: bas@emcodev.nl)
	by hosting.emcodev.net (Postfix) with ESMTPSA id D24EB212001;
	Thu, 12 Sep 2019 11:42:17 +0200 (CEST)
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <05de12924bbb4a26978992b27c4cc74b@ifm.com>
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <a675415a-5699-988e-06de-6b4d65e66597@basmevissen.nl>
Date: Thu, 12 Sep 2019 11:42:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <05de12924bbb4a26978992b27c4cc74b@ifm.com>
Subject: Re: source an environment file in bitbake recipe.
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
X-List-Received-Date: Thu, 12 Sep 2019 09:42:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 9/11/19 5:09 PM, Pandey, Kamal wrote:
> Hi,
> Is there any way by which I can use the source command inside a bitbake recipe for example if I need to source some environment file before compiling.
> source  <filename> doesn't seem to work
> Will  the command .  <filename> work
>   
> What exactly I need to inherit for source command to work

I ran into something similar in a Makefile. There the problem was that 
the default sub shell used is /bin/sh and does not support the "source" 
command. Solution for the Makefile I used is like:

SHELL=/bin/bash

MY_VAR = $(shell source func_defs.sh && call_func 1 2)

So maybe do something like (untested):

bash -c 'source source func_defs.sh && call_func 1 2'

in the bitbake recipe. You obviously depend on bash-native for that recipe.

Hope this helps,

-- Bas.

