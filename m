Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3688E00B8F; Sun,  1 Nov 2015 01:16:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4FAAE00803
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 01:16:48 -0800 (PST)
Received: by wicll6 with SMTP id ll6so33521157wic.0
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 01:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=ze4AFs5jDTrmfKZ0lFcEz9CZHLiEe73ZfwZOAQ3YjjU=;
	b=sF/Zgs2dA1OPf/9s3dAJvcjGh0V9iVekxJLDzzY5mzdqlhvl2W/DuCyYp4pMxOSYnb
	BANYtaD3FF792/qZz1O1gXwaQR0yujTT5Ksq+X1xhuqV5FAP58kYvj569B6XtJImz7I5
	YURY2i/WC84rl6htbycHbnupkwMR1AIRZDfFsOIF7tukQCmOuZEo4NJxvv7qgavmZTIl
	i62FxcIzUND+xLV1sMlQSk4PDSZJ539ZgGbH9PnPhmhhLSsfgKNkPbJCyArKmyZqGW6X
	vM+c70fikouqnTlBdJkdHJyIhm+SzcVF6SWURx4hTLks2Rm0CBkEGa+7HjRgHVOkcb9I
	JUjg==
X-Received: by 10.194.71.16 with SMTP id q16mr16720318wju.49.1446369407548;
	Sun, 01 Nov 2015 01:16:47 -0800 (PST)
Received: from [192.168.23.113]
	(HSI-KBW-46-223-219-101.hsi.kabel-badenwuerttemberg.de.
	[46.223.219.101]) by smtp.googlemail.com with ESMTPSA id
	c1sm16099873wjf.19.2015.11.01.01.16.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Nov 2015 01:16:47 -0800 (PST)
Message-ID: <5635D87E.3070504@gmail.com>
Date: Sun, 01 Nov 2015 10:16:46 +0100
From: Christian Ege <k4230r6@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Yocto on the UDOO Neo
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
X-List-Received-Date: Sun, 01 Nov 2015 09:16:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi,

if you have participated in the UDOO Neo Kickstarter campaign and
received your UDOO Neo you can try my meta-fsl-arm-extra fork with
UDOO Neo support

https://github.com/graugans/meta-fsl-arm-extra

My changes are in branch fido.

I'll prepare patches to meta-fsl-arm-extra when I have done more
testing.

In my branch there is also support for udooquad but those are fairly
untested because I do not have one.

regards,
Christian

