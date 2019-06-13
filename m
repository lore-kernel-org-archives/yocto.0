Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B012E00DF0; Thu, 13 Jun 2019 00:55:14 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.50 listed in list.dnswl.org]
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D068BE00D94
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:55:12 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id c6so9047807wml.0
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 00:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:cc:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=cU8Z1xEVvUkfLYLzPZNleVhmabDehEHSLHJ1AfjIuM8=;
	b=eRaDvDgOretZvfPpFjKwRFPq9BpfYKn5mil/rj8nXQJFNaDjTYWp6J3SyymDy2NJCg
	ucl0ZCagnhuVbGxMtBuWN89s460RS8vQ3gVNCXVdaiqSbrf1Ic+yp3AhyO0ek/syZzbh
	DypzrTNUtNd/yRdPKNroVVw8SjxtzbrO7SU+Y9h1S4MARSBjFbJabeQtvF4+dSD6Z3CZ
	J+CaOeTVuBrRDASJS1Y1O1IsBuFXwphBpGAYa3HqEfW3OcEjxP71xqTyH8PPUG/3DiO+
	n/18oel3p5onOVzVBMy8euu/TYU4vxha6c7518bttXuIdFWOXBDI1SboJuOImywj75Kr
	IV6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=cU8Z1xEVvUkfLYLzPZNleVhmabDehEHSLHJ1AfjIuM8=;
	b=lp2m5zOtzMpPvm4w0rYu5jps04vjxLtWLQMm3fDFWSsQOS4qBNCE9+hBlXyQaXxVkG
	fFQlviVmXCkts3afkT04vUlG9XGMLZ2p6W3UiGpOhTausMuqZxItnX58J+Cb0hNFf5Zj
	Ck/A28CjUY2CnaBxSome0tKscgUzXT3FTAEgDWCY8h5SvPbp8QfeA0UCSk+mm8fh9z5N
	Qpe6lo7oyjNbD6NcdTzLlmUQ1YhN1ob90aWdDqAQCns3JtmKQ0MupFhjiKZJFIKDz1/i
	vphSMIwiFSiADZgiC2EfzagoAqnxP6XTAsPECC24cv6klJPfgD1kOHri4PJR+yUBDL5q
	izog==
X-Gm-Message-State: APjAAAUlMa2zKtU9Gu/kMpaxRtnosWwxEaHFI4MhIV3NdeRqGMSLAiU5
	yhINLuc+4orSrygxu1U2d8o=
X-Google-Smtp-Source: APXvYqzNBwq3nMAglPqlYkufLfpFDP9j3/m5jfH3+HsRSqde9Idh+BZ89AvZkT9a4fNhwzAuh3NpKQ==
X-Received: by 2002:a1c:1a06:: with SMTP id a6mr2498580wma.128.1560412512169; 
	Thu, 13 Jun 2019 00:55:12 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-149-15.home.otenet.gr. [2.86.149.15])
	by smtp.gmail.com with ESMTPSA id
	x83sm1959914wmb.42.2019.06.13.00.55.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 13 Jun 2019 00:55:11 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <e16f922e-947b-ee4f-01a5-ed87d1aa25b6@gmail.com>
Date: Thu, 13 Jun 2019 10:55:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [autobuilder] Y-AB in a docker container?
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
X-List-Received-Date: Thu, 13 Jun 2019 07:55:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I use the good old yocto autobuilder in a docker container and it still 
serves me well, but I would like to move to the shiny new yocto autobuilder.

Before I start spending hours to do it myself I wonder if someone 
already did something like this and is willing to share the Dockerfile(s).

Regards,

Robert

