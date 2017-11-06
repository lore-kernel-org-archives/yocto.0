Return-Path: <prvs=47600d62b=Martin.Hundeboll@prevas.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46F89E00D03; Sun,  5 Nov 2017 22:01:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.95.78.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Nov 2017 22:01:24 PST
Received: from mail02.prevas.se (mail02.prevas.se [62.95.78.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A13E00C82
	for <yocto@yoctoproject.org>; Sun,  5 Nov 2017 22:01:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=prevas.dk; i=@prevas.dk; l=534; q=dns/txt;
	s=ironport2; t=1509948085; x=1541484085;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=3kmv5FIDKMzgy38YdpIHQP17ycbmqUXetWC3SwPxbLQ=;
	b=RO4208PMcxnkw5hMHjcCxiVJx6UWLcUvMj7CJHW/ZY3uQPWlw0aks+nI
	7rzW8d8p7195VgHfQkXM1hNSgByqzHXwNbIvPe6ofba5WXGgBS6aLsZNI
	+76CMgMK8Fb8+bPjwWQOJLY39qy2zr5Bh/qshlU8wb78ojEQMKdYd44BJ 8=;
X-IronPort-AV: E=Sophos;i="5.44,351,1505772000"; 
   d="scan'208";a="2647172"
Received: from vmprevas3.prevas.se (HELO smtp.prevas.se) ([172.16.8.103])
	by ironport2.prevas.se with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 07:00:18 +0100
Received: from [172.16.11.33] (172.16.8.31) by smtp.prevas.se (172.16.8.103)
	with Microsoft SMTP Server (TLS) id 14.3.361.1; Mon, 6 Nov 2017 07:00:18
	+0100
To: Jonathan Poulin <jopoulin@gmail.com>, <yocto@yoctoproject.org>
References: <CAGMz-a7Pc3QzcGgKjs+vhbPVGq5cBo8Y7GH8KbJM-0Jh5S-7Ng@mail.gmail.com>
From: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin.hundeboll@prevas.dk>
Message-ID: <3bdf1d2b-533f-8f07-bd4d-7e966f4f733e@prevas.dk>
Date: Mon, 6 Nov 2017 07:00:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAGMz-a7Pc3QzcGgKjs+vhbPVGq5cBo8Y7GH8KbJM-0Jh5S-7Ng@mail.gmail.com>
X-Originating-IP: [172.16.8.31]
X-Mailman-Approved-At: Tue, 07 Nov 2017 08:11:40 -0800
Subject: Re: Customize SDKPATH
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
X-List-Received-Date: Mon, 06 Nov 2017 06:01:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Jonathan,

On 2017-11-02 17:43, Jonathan Poulin wrote:
> Is there a way to set IMAGE_BASENAME to the image name used in the 
> command "bitbake -c populate_sdk <image_name>" in a way that all package 
> recipe see it?

We use TOOLCHAIN_OUTPUTNAME, like this:

TOOLCHAIN_OUTPUTNAME = 
"${PN}-${SDK_ARCH}-${SDK_OS}-${REAL_MULTIMACH_TARGET_SYS}"


-- 
MARTIN HUNDEBØLL, Prevas A/S
Software Developer

Hedeager 3, DK-8200 Aarhus N
Phone +45 87438070
Mobile +45 25562438
Martin.Hundeboll@prevas.dk
www.prevas.com

