Return-Path: <franksinankaya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E85AEE00D52; Mon, 20 May 2019 17:28:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E8F4E00D3F
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 17:28:34 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id j49so14676526otc.13
	for <yocto@yoctoproject.org>; Mon, 20 May 2019 17:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:subject:to:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=E6WgvZwdz9lZ7PVj2xvUhG4FckUUUIisloHH4Piosj8=;
	b=DzVbTwPBBLerA7zBkjSdPGy0Gas6643y2D7CsCP5r9n/m+1193ltqz41hnSG1viPzU
	xTu5wY5N5qxs6SSzUaUnnMgfOjV8GpCKF29HrsSFFGXTxuchzwxrca2h2g8s25j4UD53
	fsAmkd1ifixyQYdtZd19UeEy2udCdKYwdJK4fi3s/CHOqbGhTvt5maOP6jU6XtyzEWiv
	+8vu17PEbjZdn9vQkeRrUdly4PtLRKSL8JPsIqb+kOXRD7nEzND+kejzuhk5O1OgN9Vb
	H81q7Y0KjUgSKfFxQCrktGBMCzFfIkd7L37wQ7zh9Nvf6wTG8KSbx81swypMgdiNCod3
	y/8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:subject:to:references:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=E6WgvZwdz9lZ7PVj2xvUhG4FckUUUIisloHH4Piosj8=;
	b=Dqe5Ty8t+6jIl67cyJPwefW2KS5c74uB9QpFXPE0ag8IZ3ouyjsKpTjKF7hZ7zHF8J
	d06hdsz1HgwqW6hkL0NHC3+mqF8yqRHclWf1s8br+ojTeWf+FIXJjqAI3YOtrkAoL421
	JxVZWXzCsExNwZ1/ZVJtNtiQjjpVWzx5UHHoh27eURF7ooUD6PeZzvU/ckA/Tbo0nrVo
	0zlAJ2vE5P9YAh3HK+vjd3QoAB0xpZl8g92gOq2+x/zsd6yoIzlFd5RA++qC/0hIgc9U
	NN3FakGeuoF8rDbJSqwOaFO4SLI7/ipK9G7fO+LwTUa7Vlyxmz+c7B8IjeXTcZ3JJp+k
	81MQ==
X-Gm-Message-State: APjAAAUiozte1xyqG6KdS0NpHPkr6PoSL2xr6CnNwI6L1kd6U9FUIFML
	s/fC9JTsgzK9JF0+1xwWzH0=
X-Google-Smtp-Source: APXvYqzlcC2JWeK+zAHd7YSPNE/uaDM3uoi8XZFpwv5q9km9WF0ISseSNPj9xJGzr2o+bjjV0EZNGA==
X-Received: by 2002:a9d:2f68:: with SMTP id h95mr30385535otb.152.1558398513847;
	Mon, 20 May 2019 17:28:33 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
	[75.58.59.55])
	by smtp.gmail.com with ESMTPSA id k3sm2138832otf.42.2019.05.20.17.28.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 May 2019 17:28:33 -0700 (PDT)
Sender: Sinan Kaya <franksinankaya@gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org, akuster808@gmail.com
References: <20190410193828.29631-1-okaya@kernel.org>
	<39a618f3-7be6-8137-c75d-08e3ca01b92e@kernel.org>
Message-ID: <d0a9c878-fe10-6523-9043-d90cb1dea0f3@kernel.org>
Date: Mon, 20 May 2019 20:28:30 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <39a618f3-7be6-8137-c75d-08e3ca01b92e@kernel.org>
Subject: Re: [sumo] [PATCH v2] systemd: fix musl compilation
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
X-List-Received-Date: Tue, 21 May 2019 00:28:34 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 4/11/2019 1:34 AM, Sinan Kaya wrote:
> +akuster
> 
> On 4/10/2019 3:38 PM, Sinan Kaya wrote:
>> musl compilation has been broken since systemd: fix CVE-2018-6954. 
>> Fixing this
>> by placing #ifdef for glob definition.
>>
>> Signed-off-by: Sinan Kaya <okaya@kernel.org>
>> ---
>>   .../systemd/0002-Make-tmpfiles-safe.patch     | 88 +++++++++++--------
>>   1 file changed, 51 insertions(+), 37 deletions(-) 

ping

