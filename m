Return-Path: <karshi.hasanov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA44E00C43; Tue,  2 Apr 2019 23:08:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (karshi.hasanov[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64F02E00872
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2019 23:08:17 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id v20so17926372qtv.12
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2019 23:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=D73B5dTlyoHhBKb0K+l1Cvnllao5pvXOMl0ijHnpYZM=;
	b=GXp7/XPTH9nFwLe9gaevoEx/lOKgXqs8GAxoW2BwzEIdsqC+2FrWxZGmusw24nisiv
	yQbKnA0Mt9NnOqGJdVzeLJfzSCgAtQGRND1Z52dB7uz6g8hUSde/EeQA7GYhbKBMCnYX
	Qgi46B8ngI0GNDNNBx7dxia/4xu6Dcxq+OFqWwnF4G1/r45boNoU+cCgghTWrS5MwwKg
	Rl4Yy9hzCvEP03jJgXhj/z0/ib0ibpAF10C1uEsffAG2S/RLkQg84zyqJGHGsCBk4zZ6
	XRIZBNAXNpgWVwSvmWIvvOp7ZEt0tCCShb178+TmCHyUSilUAOiN8HXysfKjEBSzv3S3
	7d9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=D73B5dTlyoHhBKb0K+l1Cvnllao5pvXOMl0ijHnpYZM=;
	b=Q2QvvpfZDUkl9df6EoiypBhy+x8pVkFmPo8E7cSB1NyS+OFtQ9bexJJILnbAG3+mLv
	QZnFicc0o3ev2kpyVVTrsy0reZJCTM5G0QBD5K9LnWIgVEq4Mb4EMsihCA28ITPSCMgl
	fSxc2ol+SvT5JjLkHMYZxI1HMe7/xmDewDtjmI+bYuiI5Q+jx/AFIeuwHCgIxFOqM8Jw
	0vf8U0PwJW3Mg/NqwVInbJ/XGGfOlwO8DtbVOEVxqVDvxdGvDf5Vsz4aZt1cvXHiF14u
	fYG1PMGmDnh0OYejPWhj6EinNqBj1JA0g5ovYyA16lBeLf/406LpyFqrfjB/Cb/1MzU1
	8H0g==
X-Gm-Message-State: APjAAAVLzOy7QK+nilUgGNU8vaqOYp/1ARtkE86wX+uiooUMsF7QKOQc
	J8iqzmFmvfxFmfiBRYbX/HtwWoWJ
X-Google-Smtp-Source: APXvYqwOoRDpectlRH8saMsZRhNdvle6u9nRJdclwtArmKVNFaIKZvr+lKAPr65MECcOJBBCvrr5Qw==
X-Received: by 2002:ac8:5493:: with SMTP id h19mr60399891qtq.23.1554271696480; 
	Tue, 02 Apr 2019 23:08:16 -0700 (PDT)
Received: from imac.karshi.ca (toroon473nw-lp140-02-70-48-70-219.dsl.bell.ca.
	[70.48.70.219]) by smtp.googlemail.com with ESMTPSA id
	y18sm9489232qtc.52.2019.04.02.23.08.15 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 02 Apr 2019 23:08:15 -0700 (PDT)
To: yocto@yoctoproject.org
From: Karshi Hasanov <karshi.hasanov@gmail.com>
Message-ID: <6bf22911-f264-f7b2-13a3-a914f9b3d2dd@gmail.com>
Date: Wed, 3 Apr 2019 02:08:15 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.5.1
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 08 Apr 2019 09:30:29 -0700
Subject: Installation help
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
X-List-Received-Date: Wed, 03 Apr 2019 06:08:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

I have followed the

https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html

when issue the "bitbake core-image-minimal"

I am keep getting this error:

ERROR:  OE-core's config sanity checker detected a potential 
misconfiguration.
     Either fix the cause of this error or at your own risk disable the 
checker (see sanity.conf).
     Following is the list of potential problems / advisories:

     Fetcher failure for URL: 'https://www.example.com/'. URL 
https://www.example.com/ doesn't work.
     Please ensure your host's network is configured correctly,
     or set BB_NO_NETWORK = "1" to disable network access if
     all required sources are on local disk.


