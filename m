Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CA76E0086E; Mon, 13 Feb 2017 16:35:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB5FBE00754
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 16:35:04 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id c7so10669479itd.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 16:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=j9LxW4RIXsj7tmCIxOw+bClJPEDm8MFg/0Qjiw5gRVs=;
	b=WZUGdg+c/Rw4Ul8xAzJTqCwH5xX8x079w0vYfY7dPjCk3YWn8/bX0QbLDOwbWXHLXT
	n97CO5BtCCXXe043QPUVBPdkCIfOcy7e1s5r5D4TlmuQaZoDIXv1TU67QjXWHvSZEdJF
	noMCWhW7Jxz/+K3/tBrm40ACvOD7yj5nrVc7tkfYJzlz3Atim0DtYRj3LO0OFYmpEP3M
	vfvQEttjksgVQfcVtYUPJfPjnfZIEDFF493xpYTB0xGU5WDa6IeGF7JyBj7dUWvQgfIs
	EMiPtGWAlbHuwBZgzJzoYyHsfWno9l/rc2VL6aQXXPHZOGJvAyR9CO5tDhVwurM9xuBR
	1W/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=j9LxW4RIXsj7tmCIxOw+bClJPEDm8MFg/0Qjiw5gRVs=;
	b=BGrHE9H26+4NN4wiGCQjHnlcG8YQrkSrkHwQ4W2FN1Om2MOCy8M+7gJBCAx+VSJfQO
	YVBTnThmKzV++uE7a+wegvh8q466AcYiyypHQ+au1RFHiHET2u8EKM4L8TMZGxrT2E4M
	IunIyFT5UZ9Z8Ym+syc4t7Fg5UON61BweQC6TAXKSAiZG/kTIiawHKc5/K+86/Y3GVaw
	X8c8zAjtD+yQVgHmkgtjuaob7bQG6jd01Kv2oYAlnXskBJn/yQPp2QHKFV+7FgmpOMLT
	+4d+Ry6B1U9rWSPj+sG9aqKWMLmGVEj1DVrzuymGJA+/Ef9uSo8+H2yI230s/MuwFVBO
	rQug==
X-Gm-Message-State: AMke39mCRcs2NzvrE7EmtNV+y6J/sFK6ZlFwd1SxUmRt3nGmQfjGbZXHtIJo5KVtKs0SeA==
X-Received: by 10.99.184.18 with SMTP id p18mr30007053pge.20.1487032503396;
	Mon, 13 Feb 2017 16:35:03 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:18d0:6491:1453:68e3])
	by smtp.gmail.com with ESMTPSA id
	i73sm16742925pgc.62.2017.02.13.16.35.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Feb 2017 16:35:02 -0800 (PST)
To: yocto@yoctoproject.org
References: <1487031662-21508-1-git-send-email-philip@balister.org>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <e5acb4a3-20b7-9799-d842-08a2da3dbf80@gmail.com>
Date: Mon, 13 Feb 2017 16:35:58 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <1487031662-21508-1-git-send-email-philip@balister.org>
Subject: Re: [meta-qt4][PATCH] python-pyqt: Update to version 4.12.
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
X-List-Received-Date: Tue, 14 Feb 2017 00:35:06 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2/13/17 4:21 PM, Philip Balister wrote:
> -LICENSE = "GPLv2 & GPLv3 & GPL_EXCEPTION"
> +LICENSE = "GPLv3"

this is quite a change. Thanks for explaining it.

