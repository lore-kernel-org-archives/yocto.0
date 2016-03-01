Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2BFAE00BAB; Tue,  1 Mar 2016 05:47:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A681E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:46:59 -0800 (PST)
Received: by mail-yw0-f170.google.com with SMTP id h129so148673808ywb.1
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:46:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=LY8wS3rzbepQTqhRF6teQYWA6tKIXdvFXmoDYGbH1WQ=;
	b=XiLLbegfkdi+ocNLjhPVVJ3VDrjJqojiNsCWXw4b9/cilgTbxzy0zgrTycJiy5fiir
	zLif/sfDlrJDpB1JqwQ9/uMVIS2I+uncWfHgBTICIfow5tGGrPh59Nu2Ax7nE6qxZddQ
	TwFnyxACcyW3O+FxSY5mbX93B7oIRHwKv0Uwcrcp5V0DaR/d8rSN3QlweDCeJicMWCdq
	RlyIp7d9GscrnYi2TPqUzjiB5xw2V5HTKJIjNfQb7dU0oWlIXlEn7JgFN1GBaSf+jTEQ
	BT+j08WFWyK3EyNDKhcguxvN3DYEUlR5xRHCaTI6aAWaMCo/uNST35/q4Zy1GSb/RLHU
	RwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=LY8wS3rzbepQTqhRF6teQYWA6tKIXdvFXmoDYGbH1WQ=;
	b=A6ycSKwyDmPjPpOIjhhkHPagNmBh4sawWlh3B/BTFzQtJDCkbowZTct/9DHw/VQ+OO
	kYR3VUGNn0pJnygT38JXLoM6h4P2ZNvFXTWD4h4Kg/yf5tLj94jOxdbYmmb8jg2+ggg4
	zgaW4Ehfu0ysHqXqzC0SmkT3STcvRsFg69w4w9Bwkc9xjklCOwyVWqG8epTo/tWVbGfk
	mG4LjuWuwcAx2/MrJlCInngjB/IxeuP0K1TgG2KHdHKhkHhFlY8ANZiN04tGISek7p5N
	V1lWCCswSg7rwE1FcppmSJTOrg65LIgU/FaNWLJ9KJNnbjX/90Ry6IHbmYnGvJkSABBq
	5MFQ==
X-Gm-Message-State: AD7BkJIGyYt5B+1gvf2SWodCnEq9cMLX84ODVWRH07Er6sfFQRdCF8XZHObFKpZMVbWCIaL1LM5y+uxFShBJ3A==
MIME-Version: 1.0
X-Received: by 10.129.158.208 with SMTP id v199mr11598464ywg.164.1456840019451;
	Tue, 01 Mar 2016 05:46:59 -0800 (PST)
Received: by 10.129.155.136 with HTTP; Tue, 1 Mar 2016 05:46:59 -0800 (PST)
Date: Tue, 1 Mar 2016 10:46:59 -0300
Message-ID: <CAF3SDA4gQSQNBdS5sVpb0E+iwBKPZ9jiO9ZM422A=+xxMmK0JA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: cronie not executing jobs
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
X-List-Received-Date: Tue, 01 Mar 2016 13:47:05 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I get cronie installed from Poky but I can't get it working. I simply
don't execute the job.
Here is my crontab:
root@enlace-imx6:~# crontab -l
42 10 * * * root /sbin/reboot

I need this machine to reboot once each day. I'm using the Daisy
release and the cronie recipe version is: cronie_1.4.11.bb.

Is anybody facing this problem too?

Best regards,

-- 
"Do or do not. There is no try"
  Yoda Master

