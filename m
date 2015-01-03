Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 660B4E0086E; Sat,  3 Jan 2015 15:45:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pd0-f170.google.com (mail-pd0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 119E2E0045D
	for <yocto@yoctoproject.org>; Sat,  3 Jan 2015 15:45:20 -0800 (PST)
Received: by mail-pd0-f170.google.com with SMTP id v10so25818522pde.29
	for <yocto@yoctoproject.org>; Sat, 03 Jan 2015 15:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=0nVDKjlr++KhFsRFKXx2UCk7gjvRIoM9heszQS0W+Ws=;
	b=Mzoy2pYuNyzKBuyvFKla6H6+GnCL46hjLgtOEiNDIf6SrPyS6oc8Dqb/1jjwPntNLl
	44gE32Ez5dDMZAgdnrIGzRapmR+/mMf8s3NQufjpdXe04VZgTosBfuGKUFudB7KmsjQA
	zD8xWcK4I1ayr76SclNyTWs3yTTRIyhtuj+OX6JtPU14+nfVwH2GKX0xcsUcHyrcZXSr
	VBwEHlI2vtbcRGN4j97Fiv6VpTczUlwKzY4N2eYigULz/FLmj6kmMKXqYd2gC0AUvNHT
	3iw5uh5zcJZtMK1gLJLpxSfghNZS2iS2mfG7LwBhid4xejjWevRrs3tdsV0tls5ha7QF
	Dh9Q==
X-Received: by 10.70.47.129 with SMTP id d1mr134262442pdn.46.1420328719251;
	Sat, 03 Jan 2015 15:45:19 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:a5a9:3777:6846:fa5e?
	([2601:c:a700:272f:a5a9:3777:6846:fa5e])
	by mx.google.com with ESMTPSA id
	nr15sm50281477pdb.73.2015.01.03.15.45.17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Jan 2015 15:45:18 -0800 (PST)
Message-ID: <54A87EFF.4000107@gmail.com>
Date: Sat, 03 Jan 2015 15:45:03 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Mahdi Saadat <MahdiS@nimakco.net>, yocto@yoctoproject.org
References: <001101d02740$94faa9b0$beeffd10$@nimakco.net>
In-Reply-To: <001101d02740$94faa9b0$beeffd10$@nimakco.net>
Subject: Re: CLAMAV
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
X-List-Received-Date: Sat, 03 Jan 2015 23:45:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Mahdi,


On 01/03/2015 02:32 AM, Mahdi Saadat wrote:
> Hi
>
> Does anyone knows about ClamAv recipes, I read some ClamAv on Github but
> all of them have problem to do_install and do_configure steps and also
> old version.

What errors are you seeing?

>
> Could you please help me to create or useClamAv.98.5  recipes?

sure.

- Armin
>
> ---------------
>
> Regards
>
>
>

