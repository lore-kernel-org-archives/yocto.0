Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F931E00B43; Thu, 16 May 2019 08:31:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA27E00B1B
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 08:31:54 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id y3so1826332plp.0
	for <yocto@yoctoproject.org>; Thu, 16 May 2019 08:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=YOpqq3n823FMicFUaE5UfzxS11dDrUpDO5wwH9yVBOw=;
	b=I8DCRJxqVLMLe0x1q3hJAOS6xYb04azYzUGaFJvWZCE0Qj253pGWLDhaL7a4ejg1HZ
	I5xi/VtWdxmjW36IaNHmSDQariQhMLGPiWsXYkC4GstYmimx6MAfwkmCDGYC5AM+yBJ9
	5JXHySS0o6rtnVhUsBBrG+X5mC352rt8icQiTRgB5JTrlG7uQ5j+hXnA7eXJDdwnMOJg
	TQa8cJwF1sWl0r9AVJmvl1QHvh3C7q/sIZQUjOsapTtWRs/oVhwswNGAtTPnze7mG+Dd
	vHNwE3Brzh4BMZHQ1ZdEHrR+Q2JDGfTD60dUrO5WwP8KMcv7pyUI/3IwLVe/kjRdvash
	Qeqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=YOpqq3n823FMicFUaE5UfzxS11dDrUpDO5wwH9yVBOw=;
	b=UaZ7q74I1WrxpwHPXQ7nfIz4K7XKU6H48Jv8+8ckG9jsCh3KAY+VOjSoy/4UYKUgkh
	nx37v8uhTjNmaXH9HBTlOaMxs2pIsM4TB/3e0RWHZWobp9terT7nebiMtRtxPg9sXSRA
	aVivHkZewUbiNI/m/N6OS0T2dwNwgG83SFJH68RK3aGkEQto7IjUxFh0pyUQfjSvy+iZ
	r/swLIyzlSmQH22EF3ldm9Xmi08mvXnmrXDGB+Nuz7WQXwymatuxPi+2bsgquPEKSyBg
	mdrawzeEI9miTjk0N39MtiXdXHNR9iaNtNsGc6OmVzB67u91S9/78Drm+JtIVod+G8tl
	8+rw==
X-Gm-Message-State: APjAAAWZ0qZbsZUKBjDkxwKD4ZBuU0jtnysfb8vlI+1Yeehk4YLBujHe
	OrLktJKCKgFWDn8NKC/Gi2ASwLfohu4=
X-Google-Smtp-Source: APXvYqy7g72BalGXO//3lNZUf+xSkc6+R5hblQTk4rjshx607H7M508lNXbgixlmTeXMnU5RGPRG9A==
X-Received: by 2002:a17:902:294a:: with SMTP id
	g68mr25329787plb.169.1558020713597; 
	Thu, 16 May 2019 08:31:53 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	x18sm9274400pfj.17.2019.05.16.08.31.50 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 May 2019 08:31:51 -0700 (PDT)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Message-ID: <db5fdd69-f031-1932-27bb-6ed1a6f60f4c@ibeeto.com>
Date: Thu, 16 May 2019 08:31:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
Subject: [meta-raspberrypi] RPi 7" Touch Display
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
X-List-Received-Date: Thu, 16 May 2019 15:31:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

I am trying to use the "official" RPi 7" touch display 
(https://www.raspberrypi.org/products/raspberry-pi-touch-display/) with 
meta-raspberrypi (most recent from master). However, I cannot get it to 
work. As a matter of fact the display does not even show the GPU rainbow 
screen making me think that the GPU firmware packaged with 
meta-raspberrypi does not support the DSI display. It works just fine 
with the latest Raspbian release (screen and touch).

I searched the web up and down but could not find anything. Maybe 
somebody has an idea? Wrong firmware (maybe cannot be distributed 
because of licensing...)?

Thanks,

Rudi


