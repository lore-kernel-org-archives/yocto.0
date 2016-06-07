Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F477E00BCE; Tue,  7 Jun 2016 05:11:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E32AFE00B5F
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 05:11:01 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id r5so8593804wmr.0
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 05:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=mj8djP2Bp+cqrUzDeMAEdbffTMMlRO3+rzRr6+w8HPk=;
	b=ittfyBqKMD7d28wetcU96KZYaYCeqIXSmxw6LrDiFgYlo5uvk/vtnC7uhPMZV1twiV
	dBeabgzXmph0INL2bjsFEd9JmtUMxoak116uh3l2mpE2728I5BW0xtlAwsdN0Y1Fdwno
	rfz5lT3EFUR15/YthfRv0j0Zw6rFZyOBIa39D8qvZrpBkDi9G3MVdKouHFk2c/rbfZ2C
	ZdE//SW0tZfFzvW5aUlBeS4qrnFcUw01VgoulMhsCPvGUJZmD5VqlXxNxyC17KRvw3QX
	wP8B24lYIoy96p8BveTDW9Rdns6ObRVWRq1MXscASt1UdFQa8f0IrtmxoLvnt04QXh98
	GCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=mj8djP2Bp+cqrUzDeMAEdbffTMMlRO3+rzRr6+w8HPk=;
	b=ApdCKDFC31nofXBDRj0UtEef77KKHuykEiQShjU2PEqrvMgDsJUgsutyBYyI4TU4Mp
	HFCLGajNuzZEtprlM53L99pzt38mBnEn8qxOxnLeNjjZSqDUNHDDFLYeMR7+GDhiCuW1
	873Abj4uTm/P22qxmOs5Ouv0bYoFo26IHrNq0LP9v/CFR+citlwTXJQ23AEFOn4lVKao
	jZKJPg2N644/LQzYbxXC/J20Kd1uMaGTg4/KVAg8W6maO6WyzWZUWU8KbbIRjjzhJCUx
	ihpyeZ0tVe4JSVEuELaMMrsO93rfqCXfxx4+BjceUXZKj/IWWZz/7oKqcxJlRompdM/w
	QiaQ==
X-Gm-Message-State: ALyK8tLLInO7/v1OiLHnwyi/XOpi4k9qm9bB8ptBhGzaiRDjy8ZHy6eaccF+diuL0kiubQ==
X-Received: by 10.194.221.137 with SMTP id qe9mr5833009wjc.21.1465301460219;
	Tue, 07 Jun 2016 05:11:00 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	b63sm14498571wmb.0.2016.06.07.05.10.59 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 07 Jun 2016 05:10:59 -0700 (PDT)
To: yocto@yoctoproject.org
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <5756B9D2.3000700@elfin.de>
Date: Tue, 7 Jun 2016 14:10:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: DISTRO_FEATURES modification from image recipe?
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
X-List-Received-Date: Tue, 07 Jun 2016 12:11:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
Is it possible to manipulate DISTRO_FEATURES from my image recipe file?

In my case I added line:
DISTRO_FEATURES += " systemd"

to local.conf and it worked (added systemd), but when I moved this line 
to my image.bb recipe I got build errors:

ERROR: Required build target 'my-image' has no buildable providers.
Missing or unbuildable dependency chain was: ['my-image', 'my-app', 
'systemd']

I already have in my image recipe line:
DISTRO_FEATURES_append = " gles2"
so I tried to add systemd to it like so:
DISTRO_FEATURES_append = " gles2 systemd"
but it didn't help.

Can you help a me?
What should I put and where to enable distro-feature: systemd without 
manipulating with local.conf? Is that possible?


Thanks
Piotr Lewicki

