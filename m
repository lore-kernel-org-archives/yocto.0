Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 919C8E009B1; Fri,  2 Sep 2016 14:00:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A18AE00905
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 14:00:30 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id e124so59451649ith.0
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 14:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=PVUQagRN6vOoEt5mMLkobh6CRizt/EUgvrIYTN9lDFU=;
	b=jFARCzSMSYCCFaaocuLF9UOFMkO+3Ait8VlnNnVUh5yVsv7hl9yZPb0WSyecTX8zgh
	1Tjl3IO0uXHbhCzSdhso0V7tVgDd+TCp7u3dkuPXGj9MbXMuFutlT6J87DH7cqBgOPS3
	j8ZGZU8kQq8gZf0M/cLp1wlj2Jb3QC0lj7fj0vsxRqfr2PoqliJVyRKVdZZ4DLMKfTxU
	AB4NBAOKCS/8Y1VGUh2hgjUXBbrYhx9znw8GP4zhyz4Guu25Ufv8bkuAtk2ZKP4Hl86/
	YVOB3vH1++Bl9vnsGyB8RjK2qcbjlUTjYSLVWPr+Tmf7ZUlkfFqJe+dFVnD7zzB9hFrL
	rpXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=PVUQagRN6vOoEt5mMLkobh6CRizt/EUgvrIYTN9lDFU=;
	b=IcRGohIM9AAIZxdAZNrtN+zVnyTQZuhjsC9JNjrX0njDwKR3Zheeb30aILzZsmAzJK
	LLjL+BQr16ygvnAeyxbzK7XGbK7FIY5CQGqdvce+r/8cARXf5SlX054yrY1/YpKqB3Mp
	0mKlznQzezUrlE9eAlK6Bn7Evg8ZSXJNGVgcP33KJlqRLDutUgCiF3dk+KuXYjE3xRgk
	ZjYo5JQAqRg0mLcpuxAFzIHK3nRIh/RVaBmVWO7omZBWbP+Bp871QvC/DfQl9n/aqApN
	WdAz3No59BKFxg9R/OBXN826Yt/6yWnb4xJ3Fi6aPx+nZ2n0bFblZNZ+moHS4teNb7eR
	CIsQ==
X-Gm-Message-State: AE9vXwPfvpgLuKGWEl5S7U3vZ3kf51PY95p23QtqQyI0MSLw+Q374isYx/9Oi0UZtwdvGw==
X-Received: by 10.107.174.14 with SMTP id x14mr1388308ioe.134.1472850029676;
	Fri, 02 Sep 2016 14:00:29 -0700 (PDT)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.250.193.223]) by smtp.googlemail.com with ESMTPSA id
	j63sm3216558itj.19.2016.09.02.14.00.28 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Sep 2016 14:00:28 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <52148e60-3e1c-5c7e-96c3-56b124c2fd64@gmail.com>
Date: Fri, 2 Sep 2016 17:00:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
Subject: Interested in Helping Out
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
X-List-Received-Date: Fri, 02 Sep 2016 21:00:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Greetings All,
I am interested in helping out here. In addition I do have some experience with the project
so just giving me a heads up on where to start or what is the current focus would be great.
Nick

