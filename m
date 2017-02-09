Return-Path: <belal.m.abu.elolla.hassan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C620CE00A3B; Thu,  9 Feb 2017 04:23:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_08,
	HTML_IMAGE_RATIO_06, 
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_SPAM,
	T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider
	*      (belal.m.abu.elolla.hassan[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* 0.0 HTML_IMAGE_RATIO_06 BODY: HTML has a low ratio of text to image
	area * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3125E009F6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 04:23:09 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id c7so123728585itd.1
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 04:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=HIyejpc1EwQMUicYCOEdCOHXJbnwPW9447nXzi/f4Kw=;
	b=h/ocysRmo4Wk8dA487SgswyxwTB3bElEsJrNJtO14cF4JSqxaa5bKJmdPP9gFhAclN
	YmkeITTM0SK2BKHnNtWUxrfbd2x4yn5zquf0VhHIrbRQ+BqNa+hzh331rOpz5ceZITA2
	kY8rizmT6vMuRHGcBIsXw8zHTX2LtoE7zTqJ/fDvfLwINWZaGZ4oazHiZFhGY8sLBpQY
	v+Ht3hltcHuAsX4N/AdM2ANjiHRtHPLBRX+PHkTi9TF4rxcUKvYGq+vZKBIXum6g0WMD
	Z230I72B3ODuynCboxPCFrnd6oPUpioL2Upo5CnisYlZO7z4dT1gLQhhXUzW2XfGdTzY
	SFqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=HIyejpc1EwQMUicYCOEdCOHXJbnwPW9447nXzi/f4Kw=;
	b=ds6mJPwILPwZUNFBAKxnhrlf/jplXz0bLMC8NNdLdnhYBHDeXDqGfvGbakvHSeHh4V
	I8zvIpQkxhnPsdbrA+8A4HMtaHZYJyzwOHYQQE1aHBx4kFJ6CUAsEvgs4TbXbQspxKVH
	uiRqNarg/KE1UWxt0KTbFewE5Xa87A8VBH9LtUIr/A7Gg8hfKmmWF3GVyJXsrABDck+J
	QobkIAkvzCDb8rALbnPk2TxVuOFhkXSn/c4gpj1PCbtlmDYVN71rWbYzkIn9mPK/U3TU
	54AhBz26oMWobwQ6FopJzn6QaLFJpRcSTC4IBvBwsKgSMgMbIVWt0jnny8p/0CQe39cD
	zhVw==
X-Gm-Message-State: AIkVDXImBff71wWEuvjzR7X8NnCT+68YCqjrqQmpUxyLk0Xoz/XG8djta+AJL/C4p6e8NnAVQjGQZj7ANfoELw==
X-Received: by 10.36.185.93 with SMTP id k29mr21165589iti.66.1486642988657;
	Thu, 09 Feb 2017 04:23:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.13.199 with HTTP; Thu, 9 Feb 2017 04:23:08 -0800 (PST)
From: Belal Hassan <belal.m.abu.elolla.hassan@gmail.com>
Date: Thu, 9 Feb 2017 14:23:08 +0200
Message-ID: <CA+XG-x6LtEj4NDzju4VqL+g_K=7rR14RHbdY--VE410vTwO5Yw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 10 Feb 2017 06:46:23 -0800
Subject: poky: core-image-minimal cannot login
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
X-List-Received-Date: Thu, 09 Feb 2017 12:23:12 -0000
Content-Type: multipart/alternative; boundary=f403045d96a63f32040548180b0e

--f403045d96a63f32040548180b0e
Content-Type: text/plain; charset=UTF-8

Hi,

I have error when i try to login as root this message is appear login can't
set groups: operation not permitted. Could you help me.

I target zynq7 zc702 and i use master meta-xilinx

Thanks,
Belal Mohamed

--f403045d96a63f32040548180b0e
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><br><span class="gmail-mt-tool-email-notification-false"></span><span class="gmail-mt-tool-email-tracking-true"></span>Hi,<br>
<br>
I have error when i try to login as root this message is appear login 
can&#39;t set groups: operation not permitted. Could you help me.<br>
<br>
I target zynq7 zc702 and i use master meta-xilinx<br>
<br>
Thanks,<br>
Belal Mohamed<img width="0" height="0" class="mailtrack-img" src="https://mailtrack.io/trace/mail/4879eae67670a360f516aaba24c4e8485444b004.png?u=1268363"></div>

--f403045d96a63f32040548180b0e--
