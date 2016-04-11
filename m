Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D905E00E2C; Mon, 11 Apr 2016 15:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 009E1E00B45
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 15:35:23 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id bx7so284393pad.3
	for <yocto@yoctoproject.org>; Mon, 11 Apr 2016 15:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=qcJZANuJPrfzQdQyFbumbR758JT7vQplsSIWeaVdkX4=;
	b=XzNfGlqqpLM3RLx37rmcQXxawZPwzv55W/2qbyTjXKe253e5KYidY/QPLsacieNvFV
	LTxQhU4ZG+4Q9HeHkrcDofZdnWZnM4oqlmSncn5/1IRJmwDRPdZctNO9JI3jyFaEeYyP
	Z0iY2qysUT98a5njHt+JLKCdu2zgX3zvwd/VM/167/j78i6CZrWIJdjFIUO80V3mQlE1
	lzZjFOhf0iLGx3TxTfBK1QuAI67KDk2BYhYY7gfrmVl3l0DHdfcmnknBawmRXV3VUt2p
	sF2iFIPk+ci1m6GcOp89y8XBWXyaofFV86TspPgTrV+2F3d0ajMsY5fmFQuEmT0J0ZA6
	yZAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=qcJZANuJPrfzQdQyFbumbR758JT7vQplsSIWeaVdkX4=;
	b=FClvxdoq+NjGBwmctJdgq/HwqaW4MjkCvVqHcLcv7phlfsPy2FIrpxKkePB+DJJbQi
	S9RC73mVRDt9vpTne+YgbjQbZu188JW+Ne6Adyf3lL0X5RF/qdnKxgWaaXJ6TE16X9TT
	IjJkp/bDnhajVfPcDA/XVPkxDcYdL4G389vWHw0pGmCbCvN/jYxmO+DcZd2+S+ICryj5
	FklXPd5eJm8ojZPFF/tXlI2gFmzZyLc3oQ/ZaOZ2Jfez+eZPodUmX5clLfATjbXdOf0d
	0SU6wuc5u1sBc42qediPgAMa6ccIsHV1SaPylWe27IUptgcgLX59KQ80t7uLi7rAXnR9
	ypZw==
X-Gm-Message-State: AD7BkJLnvP8FwQILDMJAJbCp1PKVdW/tXMQR95SLGZEsxyAtMBsDV78G8Npzu1bBorNFNw==
X-Received: by 10.66.162.39 with SMTP id xx7mr35823858pab.97.1460414122992;
	Mon, 11 Apr 2016 15:35:22 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id h5sm38542987pat.0.2016.04.11.15.35.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Apr 2016 15:35:22 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: openembedded-devel@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Date: Mon, 11 Apr 2016 15:35:21 -0700
Message-ID: <2408177.Nm4BLto1dd@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.6-201.fc22.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <56F30D13.6030909@balister.org>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>
Subject: Re: [oe] [OE-core] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Mon, 11 Apr 2016 22:35:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello Everyone:

If you attended OEDAM last Friday in San Diego, I very much hope that you enjoyed being here.

The Catamaran Hotel, where we held the meeting, would very much appreciate your feedback:

www.catamaranresort.com/trip

I hope you all had a safe trip back home,
Rudi



