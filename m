Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6412E00CE5; Wed, 23 Dec 2015 05:22:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D163E0088C
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 05:22:53 -0800 (PST)
Received: by mail-yk0-f181.google.com with SMTP id 140so193867753ykp.0
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 05:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=k8baqQ9DEid8rHxwFcFteaySJ8hxVoLU+j+UB5khSPg=;
	b=NmctXQIASIdVUzscG9OjfyMDTM3QJY8ffqnZQL+SYJaGNBPS5UH/WEYrv0n+N1zOPp
	t8ZsobIB+etXiDEJZn6kiHUaSSmqoaf2inWvL6F4+FhXFt7hhwCBssoDFeXXqtBG+CnU
	POoO8ot9EQxFAhzmS3OvXtRvYRHBGIBjVMYCoMQoZujV4p3EdpdsA0ELanW8IthNbHgY
	fVH8ANK/LejD4NVg/TRsOqYhFwSfU7GiVO+p51z/lUxf8vAzyEPDZpSXbC7uGecIOB5/
	Vpb7UM8hAIdC5+iyDG5UELnSuahc+XqOT96+gTRTBmwigfnobwO3Uu/4Vs3yFwq0zBiJ
	khsg==
MIME-Version: 1.0
X-Received: by 10.129.130.132 with SMTP id s126mr22790192ywf.131.1450876972764;
	Wed, 23 Dec 2015 05:22:52 -0800 (PST)
Received: by 10.129.155.216 with HTTP; Wed, 23 Dec 2015 05:22:52 -0800 (PST)
Date: Wed, 23 Dec 2015 11:22:52 -0200
Message-ID: <CAF3SDA7mxPkziwWaoetrnDYaTG_6_G5u7Yd=b+zgxgc3imHrZg@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to keep image version and changelog
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
X-List-Received-Date: Wed, 23 Dec 2015 13:22:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I need to versionate and keep a changelog of my images. Today I have a
file (/etc/image-version) that holds the image vesion taken from PV of
my image recipe and compilation date. I need to keep a changelog so I
can easily keep track of changes in image.

My first idea was creating an CHANGELOG variable inside the image's
recipe, update it there and have a kind of auto PV to increment at
everychange on recipe. So I can simply fix bugs and

-- 
"Do or do not. There is no try"
  Yoda Master

