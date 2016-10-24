Return-Path: <leon.anavi@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 193CBE00CCA; Mon, 24 Oct 2016 01:57:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0BA3E00C93
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 01:57:53 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id b80so91467716wme.1
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 01:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=to:cc:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=Jc8bywU8AH99pp67AJ5kCzhf2VyQchqwmGkWcq5tKEU=;
	b=iHDGwCa07jCM1rgreYRPKRBGzPIcExeWGaRMIgWSmElJ2+JZHijfVI5c/pGmGUY8ne
	0QHjDABVxFfB5YtVSXocEWlNDMtaKz30aZfH41WybgW+1eARLLpXxI6kSegXndxykq/S
	2kU+P5zbqr0Ace3+WhtzAk3O7utVFkjKj2CtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=Jc8bywU8AH99pp67AJ5kCzhf2VyQchqwmGkWcq5tKEU=;
	b=ehtvuhLnittdQZQQvpUQcfRGTeHD3NdMar0kSky6Lvt6vO0VByCKVczwn0Gghr/CUc
	Qhr0s9KB4f+EeJrcdmJoLd7xVvDjPm4VDdsjl3rIJoCmvvWtw8YNTBDeJX22VrPNAsPp
	BAogJniwDdps5ptjxggVpwq5nUU6IarZnqEIr5bTxx74jh4uvfmpmkXc8L7sAdfT0Llk
	NSFVXGfJN9pvAnWXiYbfQFe9/FHrXcBRUoq4DyDKxsukEWLJCgeNRLAfmaK+RCFJnjje
	xBXmWfvhL+xNb/SjWMvNg9zlx70vNC9PRrtB8MB1c3tV3iGaATdET+kZZI7uEqlIox2y
	PJLw==
X-Gm-Message-State: ABUngvcF81ySy+RSVl8rfXUM1P3hksML3t+Ld9DtNE5mKw9yHMxGHYamoDhP3ScRGPUQGA==
X-Received: by 10.194.80.99 with SMTP id q3mr13657447wjx.13.1477299472189;
	Mon, 24 Oct 2016 01:57:52 -0700 (PDT)
Received: from [192.168.4.91] ([5.53.209.92])
	by smtp.googlemail.com with ESMTPSA id
	h10sm18093934wje.48.2016.10.24.01.57.51
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 24 Oct 2016 01:57:51 -0700 (PDT)
To: Andrei Gherzan <andrei@resin.io>
From: Leon Anavi <leon.anavi@konsulko.com>
Message-ID: <faf2e645-8a30-5ad3-df46-31ebe0f365a8@konsulko.com>
Date: Mon, 24 Oct 2016 11:57:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-raspberrypi] Branch Krogoth
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
X-List-Received-Date: Mon, 24 Oct 2016 08:57:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrei,

It was pleasure meeting you during Embedded Linux Conference Europe. 
Thank you for creating branch krogoth at meta-raspberrypi. Last week I 
have updated and tested Automotive Grade Linux (AGL) and now its ports 
for Raspberry Pi 2 and 3 use this branch.

Thanks, Leon

-- 
Leon Anavi
Software Engineer
konsulko.com


