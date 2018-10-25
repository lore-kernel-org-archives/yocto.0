Return-Path: <dinosaurpicnic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2148E00994; Thu, 25 Oct 2018 08:54:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dinosaurpicnic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 796F4E008E3
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 08:54:42 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id b9-v6so3741902pls.7
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2018 08:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9OpmiBdml7OPgyaqTdXxfJgg3feHesKe43kRFMHvvOE=;
	b=lu18TqSVRhgd7uysowSqzoB5zChjgSPkJ2+5KI1Nqy+Yp0qRAgcnahDHRsBWjRMElR
	6d+j52OkLxgxYGVEHRJ3E3gKWG6MeTcygR4T0QF74OD6vg1hs9kbJvH+V/JCxOZcr9KX
	nsddLez3ryGI4O+hzHxJw6DWgS1ClgMsaObNLw85oxS8JVAvSeyX0WYJR8NKikpXGzMD
	1SWgZGyBCgp1ZTi17n5LOGjZfjORsh6uj2A51IoEQsGUnnLd9+vWgI222thDjGyPA2+i
	4xi4CvTePSWvAYnJ2xFNmtRcbmjUj17h/pLMzYNyNq0tHRTmxCYQ1YD2mhUda3/4vJaN
	3dug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9OpmiBdml7OPgyaqTdXxfJgg3feHesKe43kRFMHvvOE=;
	b=s3EoOgCQROxCnQtcBfWydScYaI/W1KeDBII4eGYMAn5Kxd17/KRqyT4/gKuX4I1iUS
	ypH03TTQFDs26b+zECZn9fwLVF8/yJzXNbbW8S4/+Q/uez152K+kWUtKxjyItyjPB0Lh
	re6Z4NU5BL650MOzxdL12WObsJhr4UTRn+TymqXtV2ihRwsgxlNbdcrzmayG8BNm6t6N
	1x+kX7lBhYMHqf1uta8hFYakVWfxVOxBePmro+BKaD8U8w4Jdr+eckvlBZB9KsRTnCSH
	AwpTbozZ2Qep1gpjfvmbtUIDw4cKgjLU0gGkOId6nEwkkC2PgUeoRqusffgIBg6RbI+s
	U56Q==
X-Gm-Message-State: AGRZ1gJofVbnzubqvxKpDV4oSp2tW0PYh4uet/nB35/FFtmw5PV1gbKm
	eTEPc3/9hEnFUIgwVJKoFK+e61Hm6eUKRy3GgSEeYYij
X-Google-Smtp-Source: AJdET5cmq45xzQXAo7gfpTcR5FaIjop9pev/5hTAb6gt0C6phVmhFsdevg01xyu81uIhCwvhle+TN5yeDYE0dHbI2OY=
X-Received: by 2002:a17:902:9a04:: with SMTP id
	v4-v6mr1963866plp.247.1540482881706; 
	Thu, 25 Oct 2018 08:54:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:1aa9:0:0:0:0 with HTTP; Thu, 25 Oct 2018 08:54:40
	-0700 (PDT)
From: Cristian Bercaru <dinosaurpicnic@gmail.com>
Date: Thu, 25 Oct 2018 18:54:40 +0300
Message-ID: <CAOx=1_jXYXR9wvK7YR+7tVK3EuihYERbAg5o4wExZ5M=OGxtMQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 25 Oct 2018 09:00:05 -0700
Subject: build core-image-minimal with no bootloader
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
X-List-Received-Date: Thu, 25 Oct 2018 15:54:42 -0000
Content-Type: text/plain; charset="UTF-8"

Hello!

How do I build a core-image-minimal without any bootloader ?

I tried adding the following lines in conf/local.conf, but without any effect
IMAGE_BOOTLOADER = ""
PREFERRED_PROVIDER_u-boot = ""
PREFERRED_PROVIDER_virtual/bootloader = ""

Thank you,
Cristian Bercaru

