Return-Path: <kristian.amlie@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DD9EE009D4; Wed, 18 Jan 2017 23:20:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8500E009C2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 23:20:53 -0800 (PST)
Received: by mail-lf0-f43.google.com with SMTP id v186so29092106lfa.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 23:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=pyWNRmqPPnz98FYnf8RR/MRTI9zoeZKUGU6wdXr/4vY=;
	b=ch9ROqu7wMymCs1UewmTy9MBYTd9QGDpOuAnMXfdsMiJZHH3m1mARrXunA3G+QOeV0
	OV59OxywiO2mGaYkXVSXtSN0xEbbpmVWuFqK6F5BbWqGTn5oYOuA/kFFqWhpO6Fwymp6
	mgQqiveJRbdqmVY0Yq0p3bkUIGdFWW/JWqlN9z7OT/VclRbC8brjggecct8YF9rqc2wl
	4L/TmmvHvkVEKFXc0IDZb9uGoiSWZu0qJMg8AilDRveSLx6HIABaeCIPuoHrmovjhPmV
	kLb4PstZtGmQy/Lb2BnatkLsP8G0+xpg8h0zqxn8d33uQ03Fl9AbK6glknvxTetlYrfb
	3Dpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=pyWNRmqPPnz98FYnf8RR/MRTI9zoeZKUGU6wdXr/4vY=;
	b=Jt4A1o/xxEMdfojNWtF4SzGbJqcENoSfUUbpPuBwQYQxHq8WPlmLsybsbfQsBoHIX8
	uvMoNADlA+Y5VHt1NlGnWybtkz/+EUMRmBHGB9YLRwmasX5Sl/KnA5QCRhOD8bBpSfio
	163JbYjghEnejp/QULPMr5JQQWgrx+axpF36GATSEjbYxs4OE2RUc0ij2HyHvrCkuAdF
	qSit1kNJGkg6mOIy+UPh0SLyc5ufCRqBon1qce7aeBFtsnDs077/2L7DQBt+xZAZwLUb
	NqqYPcJa5/PG6+URhaG3oQ9eKPUjmpbkjQBe+n1VKRn03d1paLJI0oTp1/9zdjJJsOCm
	gpXw==
X-Gm-Message-State: AIkVDXIaRiBH7EFramWxv/h48v28AEnXX1N7oIrHCVjnzI6WbaOeXIrQ7ok2JkVXV6jBFQ==
X-Received: by 10.46.13.18 with SMTP id 18mr3421303ljn.27.1484810452052;
	Wed, 18 Jan 2017 23:20:52 -0800 (PST)
Received: from [192.168.1.14] ([176.111.205.58])
	by smtp.googlemail.com with ESMTPSA id
	u18sm1198424lff.48.2017.01.18.23.20.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 23:20:51 -0800 (PST)
To: colin.helliwell@ln-systems.com, yocto@yoctoproject.org
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
From: Kristian Amlie <kristian.amlie@mender.io>
Message-ID: <70fed97e-8fd8-1ebf-ca1d-77f9404a911d@mender.io>
Date: Thu, 19 Jan 2017 08:20:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Thu, 19 Jan 2017 07:20:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 18/01/17 16:10, colin.helliwell@ln-systems.com wrote:
> We have a configuration for our embedded system which is working via
> SysV, but we’re investigating moving over to systemd.
> 
> Not sure if this is ‘wise’ – if anyone has technological arguments
> for/against then I’d be interested – but I wanted to investigate it anyway.

Not really a technical argument, but I thought I'd just report that we
are running with systemd just fine in Mender, and has been doing so for
a good year now. The road hasn't been completely bump-free, but all
issues so far have been resolved, and lately it's been quite stable for
us. I should point out that since we are a software vendor we don't have
devices in production though, only testing/integration.

-- 
Kristian

