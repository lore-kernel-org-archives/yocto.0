Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FFFDE00405; Mon, 30 Jan 2017 06:59:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6E7E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 06:59:41 -0800 (PST)
Received: by mail-io0-f171.google.com with SMTP id j18so108651837ioe.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 06:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=6HlOlHCCwXXcm6moyzzoRsNB7tqEdAEgKsC+PSlaErM=;
	b=p4jZcc+JktxATx8EGPz/FMOLQALY+ieZ6ZmKp8xX4JpzIfKl8W/oSycqUrF59D/jr0
	eE0yT6/EyfVBeIwiBgmRy5NF4FKu/5I3deFh3sbMR9KlqOZeNHmu6alZhoaTn9PBR9Iv
	DZ4NY8NjzEg7qfiyF9xtphpjbbdohnvoMIz+tROjGYqDCyxNJiNqxI1QmsZwVo5FMkr0
	hKyn/WEJPXydd4rP3OSSoXG3AOQp72Y9rMNHckbkB6yPSfwRI8w/nko5OXyQN6pYStfR
	eg1exIW0l2NirE3BYP7i5bUcipKawHoFay4QCkNywq/CxjyHPoA7m4oMUrQDLs8l2RQK
	G5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=6HlOlHCCwXXcm6moyzzoRsNB7tqEdAEgKsC+PSlaErM=;
	b=NcuCaTa5ovDDGa+Lreqxg4TlaJIb03eXN966vQEQemt0o4/8Pv6p9YGVa2QmI6AEfy
	0zxwGUVaqPwUGm0CGPeCgcnvgSWn1X76YWQoX2cMs9SFrarhKTMcbYOKryjicLiPKFd3
	TUJhvl9BpvUi3VfpeaDMNuvyfynORQlqodQen0CtHlwkhoJf0lbLjsU/7id3DVZpj48G
	ZDqkgrvvojWldIhMhT5zEurQ4h0HnONMuSrXDSTQ7gl+GYfnLrm0k0fSQNb7dHUpMKZH
	8SPKcz7URFsN/9YOtPlOlr2RKHKTS1I0i/NgLe/hQ8OeVksWJu0lxjqpzrhlWUJ+3g7c
	3z9w==
X-Gm-Message-State: AIkVDXL/UjmVQXOnkfMNrAQRshWzWoeF5mT72wi5d2gluj8VWr9xqtWWUo8RBZsbEAKESow1
X-Received: by 10.107.142.210 with SMTP id q201mr19876373iod.31.1485788381398; 
	Mon, 30 Jan 2017 06:59:41 -0800 (PST)
Received: from pohly-mobl1 (p5DE8CDEB.dip0.t-ipconnect.de. [93.232.205.235])
	by smtp.gmail.com with ESMTPSA id e62sm8371008ioj.2.2017.01.30.06.59.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 06:59:40 -0800 (PST)
Message-ID: <1485788377.20333.143.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Mon, 30 Jan 2017 15:59:37 +0100
In-Reply-To: <1485709952-13916-5-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
	<1485709952-13916-5-git-send-email-akuster808@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 5/6] libtpm: update to tip.
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
X-List-Received-Date: Mon, 30 Jan 2017 14:59:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2017-01-29 at 09:12 -0800, Armin Kuster wrote:
> diff --git a/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
> b/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
> new file mode 100644
> index 0000000..25760bb
> --- /dev/null
> +++ b/recipes-tpm/libtpm/files/fix_dprintf_issue.patch
> @@ -0,0 +1,18 @@
> +Upstream-Status: Pending
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>

Just wondering: what's your approach regarding "pending" patches? Accept
them into the layer, then submit upstream later as time permits?

Besides that, the six patches are all fine, so please consider them

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>

However, when I started using these recipes already before the latest
changes, I had to fix quite a few things before the recipes were usable
(will send patches shortly):
- tcsd from trousers doesn't start because of incorrect ownership of 
  /etc/tcsd.conf
- swtpm was more useful for me as a native tool in combination with
  Stefan's qemu-tpm patches, but couldn't be compiled natively
- libtspi.so.1 was not getting installed, causing tpm tools to fail

I had the impression that the recipes were mostly in a "they build" kind
of state, but not really used much in practice. Is that correct?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




