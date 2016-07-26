Return-Path: <peteasa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E601E00D11; Tue, 26 Jul 2016 12:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (peteasa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16860E00D0C
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 12:36:23 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id f65so186505338wmi.0
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 12:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=80LFfuD2ePOFU04VcAQcA3KJmtPCPY7W9YRcQ1nYM/s=;
	b=RBU278ymoiGyewNjebuPgIGiGWRWFWAaPewEwXSWSDF7quAMS8POQKmNSpNrknEcdu
	SIJIe8fcnTmtYoZtJ6mZG3Rc8sX/nyuT5/XEHMa8KrL8cJuENLhtVRFXaSUIFkGqxtbG
	9IaX5XokmOVGXhBdIFj43kF5Rz89qK0ZtLTRZxJCaoEb85wMHHKmaBKl53tSsFoYk4wf
	e6oyBYL390YTIi3l/TJfGPQPfGoWu/HpSQPaS/cpYWlBSBf6lVZSpCA3tV4nf6hyFWjo
	M9hYIDL8B+ucA6FE6sc/9V6z2Cuzal/3PHMr+2MWrXIbeihhbrgGkfypJ1rvEbPLRPc1
	5oAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=80LFfuD2ePOFU04VcAQcA3KJmtPCPY7W9YRcQ1nYM/s=;
	b=WCC7B7tK7vStiIamzNey9Gye/qOfmLHLMXgypME7bYJpP7iY/HUj1iZxVYGC9yU5+t
	NBVrz4q3EJlbq2ve0XbhieRL/LBQwGi97a6zkxY9kBJFbEBHDbhqkJI3QYi0Xl158JTL
	wdFSV6YiocM2VaB7YceoxAFeDj2BW0FGsEeLRp+4icT4IiXdYVlM/p8tq4OzAn09aic3
	/95ic+9NDtU3A6NSJfbsLwXrO3zeGsqwoYwg3L2/JTVS8f+2cD5mW1qaLCDng2dS0GxX
	ghqmlCTGKtvBCt9Lbdvx9GxKLy7ALIuO7o9ITkSriB9GgeUJ6oBFERPRanEcj6FXi07x
	DeGw==
X-Gm-Message-State: AEkoouth5dZC5dgoCjVmSKAogjXcpIZZr+hHFNbqKMw81v9B40JO7yhx2UtOgi6EW6UPBQ==
X-Received: by 10.194.102.72 with SMTP id fm8mr22958637wjb.50.1469561782644;
	Tue, 26 Jul 2016 12:36:22 -0700 (PDT)
Received: from [192.169.0.118]
	(cpc26-heme10-2-0-cust765.9-1.cable.virginm.net. [86.3.58.254])
	by smtp.googlemail.com with ESMTPSA id
	r13sm3230723wmf.12.2016.07.26.12.36.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Jul 2016 12:36:22 -0700 (PDT)
To: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
From: Peter Saunderson <peteasa@gmail.com>
Message-ID: <b5158af2-03e1-a91d-900a-ddfcfb69c9e2@gmail.com>
Date: Tue, 26 Jul 2016 20:36:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: meta-epiphany and meta-exotic layers waiting for approval
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
X-List-Received-Date: Tue, 26 Jul 2016 19:36:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have just submitted two new layers for approval:

The meta-exotic layer provides a generic method of creating the set of 
tools needed to support a Microcontroller or other secondary processor 
in the Yocto environment.

The meta-epiphany layer uses the meta-exotic layer to create the tools 
needed to support the Epiphany (http://www.adapteva.com/epiphanyiii/) 
processor in an Arm based linux environment.

Peter.


