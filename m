Return-Path: <eystein@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 238DFE00EDF; Mon,  5 Sep 2016 12:39:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB0A4E00ECA
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 12:39:47 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id hb8so63607638pac.2
	for <yocto@yoctoproject.org>; Mon, 05 Sep 2016 12:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=Nq41iSZFqYUUvoCoEm9q1va4dh+dhyXvo1d59AZnWJM=;
	b=UELIF/QCZ90fXSHcws75jMlk9Th6rvZpQV1V4IetEjgBV5t0UcCESrnJXyiZY02Djv
	SKFBaHr5/mKmEmoGmPhaQRktYTz0l5C8moHXC+L5yN35THb0r91cfDoNRk7ltUFVdwAR
	3AGiPNkagvnjJkY7kZHdtO9ZbKPdDQ5BD6hXhRiMMO5RTECCbsHVJk1c6mrrzCTRrtJc
	fiE1rho4dyDyONKtAsBLKRbE8Gj57hAMkY10KFTgrwv7YeUiYP7OaNtR5oDOQP3loAoD
	RtJ5P/Or4TBsiPicquxpPMFy+qs/NoQFdWLIgXjWMMGafe64MvrGO6qNZAicTAy463lo
	WS2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=Nq41iSZFqYUUvoCoEm9q1va4dh+dhyXvo1d59AZnWJM=;
	b=kSusOIa8qjWVVWA/cA7CzN0I7rBjxPRDanavyEyFfds1iPcKbXtb/NhaLSY2rIEybe
	gXQGiaf+9i50rwnC+OaoAHNVJ/KZ874K/CQfLt950/yhKVZr2F+WqNjE5GSl1uV7G17V
	kUGw57TiK5eV5iWYZeExeLr0S4+FSBT2pYAx24v2HK6JaIxTouAh2uQtOEBXHccdkd8Z
	knGcoVq7hwrvK+DZaEgE+0xCXav+1zkAtToZDsUr4emXWOVI2zAcSHOcqm1HpjuNj8nu
	qpjKXh6M93LnlQBuG9vVSlrCQ7uAABFNPN/N7dkkisRh5/cJXPwuLyDns60JC6XGUoXO
	GqrQ==
X-Gm-Message-State: AE9vXwMORDt6D56HzlXsbqAzf//Pp2BF8APZj0GOfqcAgwvANRfBbO3YFmD60J9LVY1S7g==
X-Received: by 10.66.250.196 with SMTP id ze4mr66685940pac.86.1473104386563;
	Mon, 05 Sep 2016 12:39:46 -0700 (PDT)
Received: from [192.168.1.8] ([192.77.237.64])
	by smtp.gmail.com with ESMTPSA id
	yd9sm6523056pab.43.2016.09.05.12.39.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Sep 2016 12:39:45 -0700 (PDT)
To: yocto@yoctoproject.org
From: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>
Message-ID: <c3e2d09b-7a92-6d06-afa9-00cd8b7ed61d@mender.io>
Date: Mon, 5 Sep 2016 12:39:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: Yocto Project SDK Quickstart Guide
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
X-List-Received-Date: Mon, 05 Sep 2016 19:39:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

The Yocto Project Software Development Kit (SDK) can save us a lot of 
time when developing embedded applications.

To make it easier to approach we have published a guide for using the 
SDK with simple example applications. It should take about 30 minutes to 
follow and give a basic understanding of the SDK's use-cases.

You can find the SDK quickstart here: 
https://mender.io/resources/yocto-sdk-quickstart

Please let me know if have comments or questions.

-- 

Eystein Stenberg
Mender.io

