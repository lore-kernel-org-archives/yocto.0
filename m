Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E7DBE00D1B; Sat, 30 Mar 2019 15:33:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (xerofoify[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 065CDE00B5C
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 15:33:37 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d13so6739020qth.5
	for <yocto@yoctoproject.org>; Sat, 30 Mar 2019 15:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=IM0xoCXHPT/jLoluPGAdAsafWqZNl9DeLPlLPIgPIHg=;
	b=YCMw70Gl0ytuA62TFJkVxVf/6xs/KBFJVeY54nRdKdUuLlKC2v4PN+eEvm3mD+emQs
	/WUqKSn60QttAIWpNThZbrMLcu2ZDCzS8UwVuqXeY+tKRFgZKpy0HHewAy3U4qPNPEcA
	Qx+wbJVhyTISrBuRlJDe3+H9kin8Arvy6RKxumQjdn3y9ie2DVLkUFtIHxtB7LGVK6ih
	W1J9tvwoJUqJSOeQTqDQxh8Td/RvVMxQRaDWaUQ2Gu5+Qx540Xc1gtDcsxAv0nhSB4Vg
	5567hgQaVrQvSnWvrZJK7zZKro42xKrHIm90F5Jihy1PSMFgwrk5rM5q6cW6ZNjMVOXO
	cwHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=IM0xoCXHPT/jLoluPGAdAsafWqZNl9DeLPlLPIgPIHg=;
	b=c90VsFi7/71ysNP2w/YTfPr7xjCRVHgFGfEzXROWOwUyQ8QnBgSkgBUUV2oc+HZfv0
	LeHbPPGPxCyFIsOmDCp++i3gmNYLM51v7OKsx2oFRjnkJf5mCKcMq6SlTdj9Zw0RG2LC
	4y6erIv1j+pQrKXVuzK+SCeaQzJAt0cQ98fWsHYvXuygtfixzvCbfkA5x5y4R75lzQsy
	RHtftQG0H8OFyarc1ZPmhw8oifJvrmgCYCADoXc/FeSVTUuKintkLqR4m7rnySzTxPl3
	eJ1Zly6fTJ+KCMDUdUXlkE5vJ7EJhox5CxPzCBrJ91G0z2UuvUTCgM4vJS2+PqaCgQXJ
	Zb1A==
X-Gm-Message-State: APjAAAUnOgz6FT2MdbLMF94b9b3plQSX7rpD2RxQK+MMfHNrA3WpMF3I
	r/wF7wfwssH8LFs5blox8tlZnnVr
X-Google-Smtp-Source: APXvYqyt7rya++i9oPfxvKfuPN9uF90WWm+8downjacgJlgQU7PDNgZ6esrEpsB91HnuIogYit077g==
X-Received: by 2002:a0c:8693:: with SMTP id 19mr47448432qvf.73.1553985217063; 
	Sat, 30 Mar 2019 15:33:37 -0700 (PDT)
Received: from [192.168.1.101] (173-230-163-230.cable.teksavvy.com.
	[173.230.163.230]) by smtp.googlemail.com with ESMTPSA id
	j93sm3610810qtd.82.2019.03.30.15.33.36 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 30 Mar 2019 15:33:36 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: nick <xerofoify@gmail.com>
Message-ID: <2913d1a0-8d9e-14ac-2801-4c2efede0d2d@gmail.com>
Date: Sat, 30 Mar 2019 18:33:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
Subject: Yocto on OnBoard Intel Galileo Flash
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
X-List-Received-Date: Sat, 30 Mar 2019 22:33:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Greetings All,

What is the best way to put a image on the 8mb of Yocto onboard flash or is
this not possible with the Yocto Project.

Nick

