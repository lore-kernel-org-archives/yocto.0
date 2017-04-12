Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80CEBE00AF8; Tue, 11 Apr 2017 20:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3921CE00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:47:10 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id c198so2697161pfc.0
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 20:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=91P5qRXulit1dYnqR+R7rsu0GY7hS0OHDWfpD8HM3L0=;
	b=Js5PGrdaS+R6gDEpN88iOxRgobWvx06wS+a6MWRjwfxTU+GNhE8o+nNgnemoGuJX8v
	Lz0ZmNtodsRsLjzTkjfh+kNxuIkDb0CR7+cgpesxg2pf41dJHkho2KzNBDiEDgp/3vlQ
	ibBxK2wBLX5R/bZFHnyklSNz4GfHOBr52oXwU+kMkxBak65N/gqzdFG8e3DefImT5i2V
	TzKc/azN9lZfk8vY8tHvBeybNO+8vzJLLRHVelutQBrCsZ7/MNJmaDh/yx3UVPWQpGG1
	k5WlOxtL2FDABCpPCE3oXInUgdy07NcxeNVAJLvuWRztb3rqzrcPWDJet0wx328EVtDL
	H3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=91P5qRXulit1dYnqR+R7rsu0GY7hS0OHDWfpD8HM3L0=;
	b=ZypojMayINosnA11YMFGpCQ4BpfJDv4ZC0l6X3kgxK/M08Bh767pPTSR3OysUmeS5T
	3nS8z8W5yb2ADuIM5pxSA+mATb+0V4UeY7pXax00j6pqXPZpSdz0xaaQHEP1ToAth+a1
	JzW4QU4I8u/ymZlOA41GiN+9kt6WUVjQAiLQxZZ0Oga9nWGGaiwZXArxwmIlqABMMqLn
	Y56gKyPrD2vXqf3MnyLntPbMAV/oL5Vw7/oBt3gjgiu6IN5lf/Yz7BzULxUvzwLLh1gB
	eJd8tGgSpactNMq1H/g4fo3LShU27steedmr26xR0ChO4Nil38vWYRyEEseQ7ikzFlgM
	loAg==
X-Gm-Message-State: AFeK/H3zh5z2GxVIFcJuhhKwfvlyNmhLz/zAEN1xziVFAHN/6bnfYHVKOqoQ9x3dNzEYrQ==
X-Received: by 10.84.238.9 with SMTP id u9mr80030127plk.174.1491968830422;
	Tue, 11 Apr 2017 20:47:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	w129sm32978658pfb.130.2017.04.11.20.47.09
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 11 Apr 2017 20:47:10 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1491894492-11116-1-git-send-email-amarnath.valluri@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <9d9ef75b-9a17-7ef6-c6b1-872034ca8029@gmail.com>
Date: Tue, 11 Apr 2017 20:47:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1491894492-11116-1-git-send-email-amarnath.valluri@intel.com>
Subject: Re: [meta-security][PATCH] swtpm: update to latest tip
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
X-List-Received-Date: Wed, 12 Apr 2017 03:47:13 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


On 04/11/2017 12:08 AM, Amarnath Valluri wrote:
> Pull in changes to support passing client control sockets(--ctrl
> type=unixio,clientfd=<fd>), that allows to fork swtpm and communicate using
> socketpair.
>
> Signed-off-by: Amarnath Valluri <amarnath.valluri@intel.com>

merge to master-next

thanks

> ---
>   recipes-tpm/swtpm/swtpm_1.0.bb | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
> index 99c6fdc..14f668b 100644
> --- a/recipes-tpm/swtpm/swtpm_1.0.bb
> +++ b/recipes-tpm/swtpm/swtpm_1.0.bb
> @@ -10,7 +10,7 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
>   DEPENDS += "tpm-tools-native expect-native socat-native"
>   RDEPENDS_${PN} += "tpm-tools"
>   
> -SRCREV = "d7bbe3de5cc58c1dca41149df89cfdc08019a722"
> +SRCREV = "073e71f99eaa7a0ff9499339176af1af62c090b2"
>   SRC_URI = " \
>   	git://github.com/stefanberger/swtpm.git \
>   	file://fix_signed_issue.patch \


