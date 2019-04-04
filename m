Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95C9FE00D21; Thu,  4 Apr 2019 14:55:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.48 listed in list.dnswl.org]
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C22B1E00D15
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 14:55:57 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id w10so5638912wrm.4
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 14:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=O0TMR1tKwHW4N0YkOSoauQ7sBBCZjuvKcb+TRKXiC1g=;
	b=A8aQiwklE/iMNB2aftbdGWVd2ZcoPG8V3o0zWulbPeVYO6mHz6Q6uCbsqy3DRZzrIG
	emFyQrD0bwXESfIPrPM8Il8pMjnJA5gW/F4yxoNNuGN2ap7oFAopHf/3XNZ8xLPgvpGp
	dp4w0PVwtts2tbC94lk7wmuJo1PsroaxBzmvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=O0TMR1tKwHW4N0YkOSoauQ7sBBCZjuvKcb+TRKXiC1g=;
	b=OvshhU4jEztrlXcVoBp6NHkJRSKscr2Lux4TY2K+Wx8TEXwppnBzQchsoMs38k/GIc
	dmBeufGOebVlwM42eCVwQdTo014cqT3klaM3eO+xsRA8sSI+zS5O+Uf1/tOSvhugV9iu
	WjFa1MgrZ1o3WwJx9Qok6IbGgHVuEuhuwyhT7ilLNCcnRtNekKnhM8kg6p34y6C71Inx
	vp1OFvqJ3ldLYLmdg8yeEOtQIVdU+rnSlhCKh8Rr3uGoeW1Cy6EXFuVK+i0w6QgOfXiX
	Rg+Pv4Y4THpgT1rmbliIJ87njXHbtLo60jmzmCkGTaFGoCp1BazUuB81AetKrt9FDR9I
	MVSg==
X-Gm-Message-State: APjAAAWj8oDmZQtr4mscmRYI7+frvbkCXbN1yjwHnFlIuTxTAJscD6X0
	NB5qheZwY8NZR18R2Hv8PW2vJg==
X-Google-Smtp-Source: APXvYqwXulYYuDk1XXZAi10ca/Q8eHR09lUgGopOOdOmnYlOC8XXb/dpFtN8OitViXAzAmwQ8DjjEg==
X-Received: by 2002:a5d:428c:: with SMTP id k12mr6005055wrq.279.1554414956987; 
	Thu, 04 Apr 2019 14:55:56 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	v1sm27373326wrd.47.2019.04.04.14.55.55
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 14:55:56 -0700 (PDT)
Message-ID: <dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, Poky Build User
	<pokybuild@ubuntu1604-ty-1.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>,  Yi Zhao <yi.zhao@windriver.com>
Date: Thu, 04 Apr 2019 22:55:54 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Thu, 04 Apr 2019 21:55:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta wrote:
> Also, I don't see any ptest results for 2.6.2.rc3 on public
> autobuilder. Do you have any plans to run them and share the results
> on autobuilder?

These were run separately but will run as part of any new stable
release builds. The results are here:

https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/
https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/

(for 2.6.2 and 2.5.4)

I'll merge these into the main release output in due course.

Cheers,

Richard


