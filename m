Return-Path: <laurentiu.duca@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22614E00C44; Mon, 22 Apr 2019 05:27:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (laurentiu.duca[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA425E00AF2
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 05:27:19 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id o74so9429736ota.3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 05:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v5xO9cC24daa9nK/M7MDM+GM01EF/tX2c6Yrmkmv0bU=;
	b=TVD5ajzlaygqfhchjeJ2HaWnt4vz/Tg+ih9YAwfDcSOLK55rdI+gmpXYlLXK4GGV9T
	b4bMqqhFBR3QN6/Gqlrosnr8TJjRisTQn0ecdZLQe3MxFcTYz5axbuRoLjMKuU9RQFH9
	ngpdXz6F543OTUeVYxWpdBhdShqN0NhjAEAe1YMQSh8czofcegmgcFdnvxFxCHMoA2wB
	W/P2RTi3FEiQiOrtcsFuQB/71SguwWhIswSkW7VaDArruK7OpTK8+POi1SMybyW0pP3P
	LWFnht6TmoH0+8vnoG1XZOi6UoSuqIyWh/dtzQJZTpR9+3uukuZzfdAaNWJHiYAzWCI5
	2U9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v5xO9cC24daa9nK/M7MDM+GM01EF/tX2c6Yrmkmv0bU=;
	b=Hkzo4WuYne/txwguFZY0IMYsHj1PpXpAUURt3cXslhaUg8kWzioGEcPJDJHJWlCMF4
	bR3xshbCV/aUxr9ls1C7/8yjthGSouzhsJHq/Kv8C2PZ6YTDCbGBMdVIqOcvX/pBDpO2
	vJwjiSHgSJ5vQaHpu8ySgFRV8k7aQknAvSniooADHErn6HCB44hcWTSRhOb2cJ5MK7y2
	YfoAjMCINrhtSLYmXoXmfLxbNrrqalE3pu9rXoHHo4YjE1ccWOrGlqHES89i9e2PcSbq
	W8T97ObNGlE7FJLSgbkWqzVycrTKEnWUJayCU+/wLqkbGrjilDNOaBZgZUozg9VkPy+j
	BSmQ==
X-Gm-Message-State: APjAAAWLTsrb9JSE/mf5MSONyKDx25tvkBJOP5wFIW2JmTNGCAEilqNF
	oCtwLkAi5uQI9et9XIj9zeMJi/+c0t8N2+gzmH3c8A==
X-Google-Smtp-Source: APXvYqzNFNhpmBmkB6FqsZts9QRkFFPCzza4MpM8gEPkA2nkYO4y+XyyBt3soReK4HTjLf1lrvGkBNpMkrOmzdVe0Cc=
X-Received: by 2002:a05:6830:10d7:: with SMTP id
	z23mr11897879oto.265.1555936038876; 
	Mon, 22 Apr 2019 05:27:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:9cd1:0:0:0:0:0 with HTTP; Mon, 22 Apr 2019 05:27:18
	-0700 (PDT)
From: Laurentiu-Cristian Duca <laurentiu.duca@gmail.com>
Date: Mon, 22 Apr 2019 15:27:18 +0300
Message-ID: <CAPm8-H7zfMkaN-nzHX2j6YcxY=ghn3QA8qrvOiwtQTCrJp8Utw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to find and modify the list of packages
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
X-List-Received-Date: Mon, 22 Apr 2019 12:27:20 -0000
Content-Type: text/plain; charset="UTF-8"

Dear yocto-community,

  I have a basic question:
how to find the list of packages that will be installed
and (most important) how to modify this list before
running "bitbake core-image-sato" for example.

Thank you
and best regards,
L-C. Duca

