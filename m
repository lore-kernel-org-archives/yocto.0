Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0EBBE00AAB; Wed,  5 Aug 2015 10:25:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12640E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 10:23:26 -0700 (PDT)
Received: by labow3 with SMTP id ow3so33391870lab.1
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 10:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=lvB3TmB+czX3ON96xQVA/5msXoBhqLSa14akRgWPtZE=;
	b=mYKZ4PyOWVzB+djQKxI0mE4VfU9Z3KOjtnmrlr2kAYXf1ZVpJ1kUWDh37Focx00q0k
	qpu3ibk6Hh/Tey8hE7HkMXqlCE/mW4jjuGSkk48i4i/lT7CW/QKzXOvkXGjME2zOBg5E
	M5dI0pVwH8nongzXqH7Qh+rhMVbbRAnf2U2xY5zvBpdpaNyasqBH4jlJr726QNosfuJH
	Jc2Tz9m2boe8/4pjKC/tkV5FzuBHLmuE/fK0tnrrIH2Q1NSiOWj2lnGhJXKeWXJgePIk
	PGLT8Ia9IPLFw11q/cfq249KcCT6LyKFhgZuRAJhDPkdRibSHCC9LeXGtHABQc9e0/rl
	/w3g==
X-Received: by 10.152.121.4 with SMTP id lg4mr10110570lab.112.1438795403728;
	Wed, 05 Aug 2015 10:23:23 -0700 (PDT)
Received: from [192.168.50.14] (89-70-157-137.dynamic.chello.pl.
	[89.70.157.137])
	by smtp.gmail.com with ESMTPSA id rf2sm697028lbb.12.2015.08.05.10.23.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Aug 2015 10:23:22 -0700 (PDT)
Message-ID: <55C24689.80103@gmail.com>
Date: Wed, 05 Aug 2015 19:23:21 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Perl usage in recipe
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
X-List-Received-Date: Wed, 05 Aug 2015 17:25:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

In my recipe I want to call perl script that will create image.
How should I do that to be absolutely sure that perl will be used from 
yocto not from my system?
Maybe is there any example somewhere that I can check how this should be 
done?

Regards,
Marcin

