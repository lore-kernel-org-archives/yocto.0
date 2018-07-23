Return-Path: <mohammad.rasim96@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD2BE00BB5; Mon, 23 Jul 2018 02:49:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammad.rasim96[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0044FE00AC5
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 02:49:43 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id y10-v6so11222ioa.10
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 02:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=52tc6ZanBY7OFemzAmt3Nb0qp/jodn8DEsFsCwG2DeQ=;
	b=DSLten+TxGMEBQ35FNO2TNRxFxIzXQiUVODFZUhzDQQYd5Xj/eOyV6+ntj3HUH0slX
	pNTeioyqQn+wt+y+Vzq5eQfa+KWDSp7rovVHtTQo0fxMGYbuJrs4YiY73tPgcODTtGjV
	UonXGkhUlsu/N96Yc519PTsTRBzxQ/+lNNjM+CIO/EWToYSXCxdfnycsKD45iEDZqHqT
	aJaZ9vXMueYqgk48StWiQyAkjahDzyI6dzM9sDOhVB57MFI05RlQK7JMWiUhQL3DLohx
	hcN/tPcAqPtp36aLqIlkDsiUBoWcy0apIyoMZuF9sIFY2t+u0CriXHt0vkUl73Dh8tsz
	tFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=52tc6ZanBY7OFemzAmt3Nb0qp/jodn8DEsFsCwG2DeQ=;
	b=hSWgkPoy0GuL3+eM2FvGcsPma3uFP997CrTwjjOTXaomZpAyuB9QYTTrQr0N+2g/OO
	U6UpiNT1wfSEV/tTjoBfVfffcVLFkzjzOXyYl24oGOSJTFoX8eZPsOPvuJPmmkA3b72J
	Hz0wOxG/3AE5rEE2hcPOsasUOef/8itPRSdIKdNd9lECdUGJHwON8+bKBH9KQCDA0/+F
	/oRqtzXV94Zn7h7tPJdEVm0HNL9fudhl1EwGmsQvVO3+vEFJ+oRYqwZu8+srmtwgJjus
	MJHpAc70pxVI+JsLWI046Id/9WC1JfUeus7qBuxUi/87+C4ujXFUcR5mMKhuk4Suw08W
	4yLQ==
X-Gm-Message-State: AOUpUlF9y1CssR0c4iRDGw6gCm0MJr3y/5jq3TaaNMbg9to9bXa3sQRS
	Do4vsVfZqcJp2iC0xWUd4ClxbxvZ81E=
X-Google-Smtp-Source: AAOMgpdIgwfC89S8B1wocAxgI3oGRAobTHJVaHNsgT/PgG0RGcX0Brb2YxrM9CsQhbOcIgaOQ+MoSg==
X-Received: by 2002:a6b:de09:: with SMTP id v9-v6mr9249039iog.10.1532339382868;
	Mon, 23 Jul 2018 02:49:42 -0700 (PDT)
Received: from [10.211.4.220] (fpa0562d06.mieg102.ap.nuro.jp. [160.86.45.6])
	by smtp.gmail.com with ESMTPSA id
	n21-v6sm2597610iog.80.2018.07.23.02.49.40
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jul 2018 02:49:42 -0700 (PDT)
To: yocto@yoctoproject.org
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Message-ID: <1e741f3f-f20e-4e38-d9ec-643e22b34e2d@gmail.com>
Date: Mon, 23 Jul 2018 12:49:33 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: How to tell bitbake my prefered terminal in for devshell and access bitbake datastore?
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
X-List-Received-Date: Mon, 23 Jul 2018 09:49:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,

when running bitbake with a recipe and giving the devshell as a command 
bitbake runs the devshell inside xterm, on my other machine it runs tmux.

looking at the openembedded source code here 
https://github.com/openembedded/openembedded-core/blob/master/meta/lib/oe/terminal.py

I can see there are multiple classes for terminals that bitbake loop 
through, but how can I tell bitbake that I prefer a certain terminal?

Also, is it possible to access bitbake datastore from inside the 
devshell(or devpyshell) ?

Regards


