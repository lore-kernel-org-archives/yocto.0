Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 328ADE00A1A; Fri, 29 May 2015 14:59:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D08DDE0096A
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 14:59:03 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so72977542ieb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 14:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=y/tKh7MYeidjGUJudI7wTQaRVfp8LMc7XAKRd+d31fQ=;
	b=DmZH6exOKNZsJHvSaMS4+OWVUfuqia5b1UseE6eiuJwE0CYdzUFhJH7xkqawjJkitq
	BNWOb7BpduT8KAvjPA9kie5R+u4RCNPWykM+bpqiNK1zVgOnXpEhy6qzBoFUUCa/jRWQ
	Kb/nShUACcrByIytq+7v1HeQnfFm4FpaFOESfY4Ggy0WBF/g6QCVGCDK5ONIUOxU6l8X
	YfLnWnRTBRWH2hxcw9l1z8mIPT7e9fxFgl+CkKCBTjj7qq/PEo0XECr+bENgc6QxHiQz
	UQhk7CDO6pFbTyLsxVcb1pjnbb2k7PN+bcQTQUjPe/hcG0jAzR3Top+eGUJMp9t6zIwB
	mKhw==
X-Received: by 10.50.64.244 with SMTP id r20mr2316igs.33.1432936739088;
	Fri, 29 May 2015 14:58:59 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	q10sm2418405ige.16.2015.05.29.14.58.58 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 14:58:58 -0700 (PDT)
Message-ID: <5568E11F.8030000@gmail.com>
Date: Fri, 29 May 2015 17:58:55 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: overriding equals
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
X-List-Received-Date: Fri, 29 May 2015 21:59:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

If a BSP layer sets a preferred kernel using an equals sign (e.g.
PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi") is there any
way of overriding this decision that doesn't involve:
1) forking the layer
2) hoping the maintainer accepts a relevant patch
3) creating my own DISTRO
?

If I create my own kernel (linux-raspberrypi2-rt) in my own layer and
set PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi2-rt" in my
conf/local.conf, bitbake still complains that there are multiple
providers for virtual/kernel and suggests I set PREFERRED_PROVIDER

haha, very funny :-)

