Return-Path: <lluis.campos@northern.tech>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06C9DE00D79; Wed, 18 Sep 2019 00:46:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB71EE00D74
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 00:46:19 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id d5so6154608lja.10
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 00:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=northern.tech; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:user-agent
	:mime-version:content-transfer-encoding;
	bh=oghhVP1sJSJSSsdxpbi7SH8hlDhPtmtjirI8tlIJDJ8=;
	b=H33dipbCv6p3LMMyHX7+oNEk7JT/eY5u63KayUTMCUwWWLQOQHEGWgWB6oltgiXfQC
	0fCptl/qdHyod1UvaNqsEkkx8j+BwadvAZCzViqytBfisrtwjH3G1BaMybNu3oibfgDS
	H2yyVPGSYjH20TsUgQEp2VoeHZLQiH37mQw784RSk1DozA5MnL4mO4tJKApsO14lVqp6
	RZ3Z6omhFEXPtoHQMU7skrPWM4AkGmijo3irTijJighcSn0+J/W7KPi1GvR4VIkhhV+j
	kuEyIYzngzRROYm0v5iMRWmWLgxI1U4EDjtbNevPmUTc8855jNkKxwyN4zyIRNRxZxin
	7pZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:user-agent:mime-version:content-transfer-encoding;
	bh=oghhVP1sJSJSSsdxpbi7SH8hlDhPtmtjirI8tlIJDJ8=;
	b=Y8zMl1tWhJMSGKNx+gQRXjzNuaYahIsynDDS5gXn0zd9hFS30bNxS/OkWeDsF4XFAJ
	sFLdlbgm465tWx2xog1NKNcNorUlGpdBctScTrbGdX0FQoknQh15ePXgZsArq7MLgv8R
	v1vQAPpRvyIculhPwixmCEZOkcYWkuyEnNOjeHcX2ir9XaCLgrpVNBHQYgoYuf9j3ybL
	RutiHCKRxIW+Hr/E2KhyBtZ/HL0waIQTmX+VOOOr0ooNuZWK46SexyyMO9aIgcdiOS4D
	VAv6oxLCFkaeGeZXSRi6oUCWNo6mlQcLNc2lDe3qSSZfuWA88NzmovtH1gj51RfIHzqj
	c4qg==
X-Gm-Message-State: APjAAAUqII0n9IWf4oR98FnzJHQccFEJXUBMHWzV6xfzSbzJdWifbEDu
	ANIm2l5uuVXcxexQ5Dh3/hNmbVdbC+oBxw==
X-Google-Smtp-Source: APXvYqy/hCV8tuhphX5sxFDJJWPD0Fr0OXxOItrQ/oCUTBzGeXa3K0EGNplNcBreNG05a2xEei518A==
X-Received: by 2002:a2e:9556:: with SMTP id t22mr518404ljh.97.1568792777922;
	Wed, 18 Sep 2019 00:46:17 -0700 (PDT)
Received: from gerty (195-159-234-190.customer.powertech.no. [195.159.234.190])
	by smtp.gmail.com with ESMTPSA id g26sm882655lje.80.2019.09.18.00.46.17
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 18 Sep 2019 00:46:17 -0700 (PDT)
Message-ID: <c75c2f2b9c18d12b393079d7c0fd3549f8ee4bb3.camel@northern.tech>
From: lluis.campos@northern.tech
To: yocto@yoctoproject.org
Date: Wed, 18 Sep 2019 09:46:16 +0200
In-Reply-To: <CY4PR17MB1479C3706CB1F51A70CEE45CF1E50@CY4PR17MB1479.namprd17.prod.outlook.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: warrior with recipes AUTOREV, issues (and hangs bitbake on Centos )
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
X-List-Received-Date: Wed, 18 Sep 2019 07:46:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hello,

While updating our layers and build system for warrior, we are facing
the exact same issue reported by Richard C Allen back in June [1].

In our case, we are using Ubuntu 16.04 for as build host.

Since then, a new release of yocto was tagged, 2.7.1, but the issue
seems to be still present.

Any update on it? Is there more people affected by it?

Thanks!


[1] 
https://lists.yoctoproject.org/pipermail/yocto/2019-June/045738.html


Lluís Campos
Northern.Tech


