Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01555E00D6F; Mon, 14 Aug 2017 00:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.47 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A15E00AD0
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 00:11:57 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id l64so41445291pge.5
	for <yocto@yoctoproject.org>; Mon, 14 Aug 2017 00:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=ZrrbCpzAnht6Qkjn/HRqqfq9gL08M+MqqYNXzBDGN2A=;
	b=oxrDCRIW628QBqv1KbJWQ/crvjcvmrpD7Og7XARhBK66Xg597D4i9lHQtLYVWymaMb
	IpLy/aOsG5Iy1ytArJ6MhCdspunJLM/Hy7U9o49vpl4EL9XKoBEeIYKMaFz/N1iSYnX8
	kB3R/fpncsdj8Wip9Z9EQJxlO6ynkkZBC2u4TLaZQTCmgt7SbI5oP9GqeGjEo5WPh3yu
	SOg9C2SYGcjfO1vaD8xyQ0cpEKXyBpqLwj95+vfbJZHGXI7waAGS/JtaP1Dd3YEcZ+2V
	884wPS7sM8uoou2Tif25oXXiPlarJEgcOs3prloWKSTZyCMICCZ8DS/s3ndkJC2/3Juu
	FYXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=ZrrbCpzAnht6Qkjn/HRqqfq9gL08M+MqqYNXzBDGN2A=;
	b=HQk1GORTgaLYrAgOzMbxdaOsC82eyfb19qQkyY7e+g0LuoQUgfascw674lTUKytpIb
	L8yfBbiSpEaMwL4Rlc9eBVfzIG3acTUjKdBiXCWMuIGXyVS4al1nevKi5xi/ogMZA0H0
	I4LVBlNSz7Z2AUJsMHfdVvMgSaCnCBMLnjGNXvHvuHw0AZ4o7vCjPZQxOjL6mA0DDoN/
	wR6Er0XHXzzJRIMHKmlLGfCBLkD+2jNUUCxYboNI6Ajl167cpkgaexcPRwe1KQUKZ191
	KONCPrELPf0YOSRg2W6YJUzgSm+xsuX1Rt3QscEGLhLYoJliUwi1zTxm1XJY1SwG0zWM
	ql4Q==
X-Gm-Message-State: AHYfb5h8VUSMx0pmdVL/tcQoczPig0iavP0OL2pxusGryLtAamRFTTBg
	F6KxUg11nVK5pj1hSg4=
X-Received: by 10.99.171.13 with SMTP id p13mr23104696pgf.109.1502694717177;
	Mon, 14 Aug 2017 00:11:57 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	h62sm12833113pfc.97.2017.08.14.00.11.54 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Aug 2017 00:11:56 -0700 (PDT)
To: "N:" <yocto@yoctoproject.org>
From: Riko <antonius.riko@gmail.com>
Message-ID: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
Date: Mon, 14 Aug 2017 15:11:52 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: layer.conf on openembedded-core ?
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
X-List-Received-Date: Mon, 14 Aug 2017 07:12:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Dear Yocto Members,

How can I find this file ?

==

ERROR: Unable to parse 
/home/bianchi/poky/openembedded-core/conf/layer.conf: [Errno 2] file 
/home/bianchi/poky/openembedded-core/conf/layer.conf not found


Thanks,

Riko


