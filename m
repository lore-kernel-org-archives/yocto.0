Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2BBBE00ADB; Thu, 23 May 2019 06:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2313BE00942
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 06:56:09 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id i3so5942543wml.4
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 06:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=to:from:subject:cc:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=KYN/Xta4Z1vmcan4qa6TrwuBVF8h9kQSAaiCdLASvZM=;
	b=B3zu0Aj5Zg81efJxmLWl1FXn3BXiDdUnY8X1ydZhCNL70nJDsDbq+kNvffdQ7MdGf6
	blrXh6PmU+obaj+jWk5KEUrV8wX9B4rhxULDjwP2S56l3dhmlhvCQzZhsanMZL57965u
	/tmierTZurdljJQFlS+P7XHVQFGaRLv0jiaeqz5g2vEwQZYBHXJGELPX4WgUFefO+2hD
	IqiuyiYFmrbT9a2XaT9P9/8kw1v9JfKlsa/7ORiPVZNIonDvnnJ6V8Xp91BzEYuvrtf2
	ZpySmnbyIKgcCWkT2YDW/UkyIj+BTFd5UDwfwZ2e6l3fjhQijFFhykJ9nx5yQvapdipy
	Uwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=KYN/Xta4Z1vmcan4qa6TrwuBVF8h9kQSAaiCdLASvZM=;
	b=cl/euEX0KQNsgoGzQyNcqaXIlvrs+xq68qRO2xlm+EXRWN9vd3RA/ZFs09Coepf8xI
	AHIXvXeFUmo/AL4A+5PuueIkE7J96F6ZHpBj0IhTjoSgLMg1lEohQLRHlp5yPCcDyG+B
	7WxRyHF3ec/QAgcYalbagPpALwkMaJXZfYpR0S078CUgzjGn6r4VCu1wOFMQQE0DeP8e
	orc2X7J4Vfwms4y8WPzujdl0RdyZpkC5cBwd6DbSdWPPW3mgIPsZfj+i6ojHHiYRbCQS
	sEUXZU9HXuU9HOfoNZJBpl0nColV8VgYva+ssTE6Fw20jVz3EuSBW19S0vdLVOJRp4cZ
	7+mQ==
X-Gm-Message-State: APjAAAUZxPfZ9CGyo+x2HV1H1pzxnIB6ljPbLvwommaC59SoUeMU0pNf
	50IZosx38HujKWZLK2iAOGE8ZA==
X-Google-Smtp-Source: APXvYqyI5vlTwfcxHVLU/Tbuv/0jyHHc9sz0dA0u8vpvKJbIWa2zzDU8X2UWXg9xoFolxXP5k3VRNg==
X-Received: by 2002:a1c:6a0e:: with SMTP id f14mr5508553wmc.69.1558619768116; 
	Thu, 23 May 2019 06:56:08 -0700 (PDT)
Received: from [10.100.100.101] (host90-152-4-101.ipv4.regusnet.com.
	[90.152.4.101]) by smtp.gmail.com with ESMTPSA id
	t6sm17591373wmt.34.2019.05.23.06.56.07
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 May 2019 06:56:07 -0700 (PDT)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <6ee0327f-e965-e1f5-caca-96ea2d92f8df@gherzan.ro>
Date: Thu, 23 May 2019 14:56:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Cc: zubair@balena.io, bruce.ashfield@windriver.com
Subject: kernel-devsrc used to be full source - not the case since thud
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
X-List-Received-Date: Thu, 23 May 2019 13:56:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,

This might have been discussed before. I couldn't find a relevant
thread, but if it is so, just link me to it.

Since thud, more specific since

commit 9af0f1a46bbb6ad9ee8b35957251f4aa826b023f
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Sat Aug 18 22:50:44 2018 -0400
    kernel-devsrc: restructure for out of tree (and on target) module builds

... we switched from a recipe that was deploying the entire source code
to one that provides mainly the kernel headers (but not only). This
change broke people expectations of this recipe while the description is
also confusing: "Development source linux kernel. When built, this
recipe packages the \source of the preferred virtual/kernel provider and
makes it available for full kernel \development or external module builds".

If size is not a problem (which can be the case when you compile on a
builder for example and deploy only a OOT kernel module through other
means), the full kernel source was a painless experience where things like

commit a9471601fedd1f5087304eaa5fd39b98ae220313
Author: Bruce Ashfield <bruce.ashfield@windriver.com>
Date:   Thu Aug 30 09:45:41 2018 -0400
    kernel-devsrc: fix arm/arm64 target module build

... would not appear. I understand the size impact on target and for
those cases, continuously maintaining this recipe with new
files/resources needed from the kernel, makes sense. So my proposal is
to have two recipes, for example kernel-devsrc and kernel-fullsrc
(kernel-src etc.) so people can choose what they need/want
deploying/using. Or even have another devsrc provider. I'm open to any
implementation detail. I'd just want to have an option for a full kernel
source recipe.

Regards,

-- 
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan


