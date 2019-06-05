Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4098CE00D6B; Wed,  5 Jun 2019 13:50:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
	[209.85.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF8BFE00D48
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 13:50:11 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id f204so245174wme.0
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 13:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=ItYm2JowrsGcJ4sj3r5gK16Th2zkziVDedF86RUtLfg=;
	b=j2uPjEvFoE6iifl1B6Y0GFDR1Li0gS+T/TaZ0sTJvXy/TTsBUuHkhK1cK7U6C3vBbh
	/xWCNmkdUKdCJ8A5SoYfvCj3N0PX+CdFkyiQXGGqk1NFJnBSsjS+S5R66GTw+eYRB44U
	Taoogub5Z8cnIKnaUR7i8gwybxYSKUIDcLqeO3Pwqjc1Rp8o6r/lK58EjqLz1v+EOYkQ
	S6aYCkYfv+yIAJg8+YMV9poYAivOXxOPNxx04mo/HI+vBSAgpiYmf4F0MiKhnZwPqpNn
	yVWsH0ki+neDPPp2l4j8YAWRiLXg9zp3llcgGn7zXrTCvTBDkCFtM5XilD9PNdH552vu
	q9Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=ItYm2JowrsGcJ4sj3r5gK16Th2zkziVDedF86RUtLfg=;
	b=iO912eFRGWtnJF6ZK0NngE/M8SR6RWj4D5+Y+g21ePCmojBw5rpgFt+dJkHHUBGtc1
	rikwkdj/SN7cGZ/p9S8I5but8fGufQXMDyR8B8NNRtiGiqEeblGyJ43tEnjYPurHJdoh
	MiatXqAN+AouMGe1i1He+RfDSXZoJt7gmq79wFl9pLL3xJ+4FWk69N3g2OCK8oCKV1H0
	w/1eU+eCVLQW3JSeRYRXuUJniCgC12uh4eB40T3dMySMcsIdIZcIT84ooD2ocVcNntFn
	b0EBv0b237gB6A7Dd4fbPrVctTT/ewz/7QP3NDaoSSGsI0B2vC8/8KUvidWYUADeYj+7
	gIKw==
X-Gm-Message-State: APjAAAXsyw32O5Be6Wl9Rwa3Vkb4xhSunErZGsG3qAOal9pFA7dBYFGq
	TeCANO6TXVwp0hg7FGRUNzPKadqM
X-Google-Smtp-Source: APXvYqyBcO/CYoViOFK6PBQwA9fe1/rbjnmTNQTGr9rV+ALWe6hblgQfuCameNyRvmVgZmg8OX0Ktg==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr22184890wmc.110.1559767810494;
	Wed, 05 Jun 2019 13:50:10 -0700 (PDT)
Received: from [192.168.19.183] ([185.117.214.16])
	by smtp.gmail.com with ESMTPSA id
	x3sm13828255wrp.78.2019.06.05.13.50.09 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Jun 2019 13:50:09 -0700 (PDT)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <10b2ce1c-c264-aa9d-7185-a693bd0ed34e@gmail.com>
Date: Wed, 5 Jun 2019 22:50:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Subject: warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O)
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
X-List-Received-Date: Wed, 05 Jun 2019 20:50:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I can see in some examples:

warning: #warning _FORTIFY_SOURCE requires compiling with optimization (-O)

which can be fixed by passing the proper CFLAGS.

Unfortunately the warning is only visible in log files.

1) Is there a way to show compiler warnings when you bitbake on the 
console (without -DDD and/or -v and filtering for warning:)

2) How would you add a check for this to insane.bbclass?

Regards,

Robert

