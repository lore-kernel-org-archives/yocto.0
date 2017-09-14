Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 796C2E00CB7; Wed, 13 Sep 2017 17:19:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B255E00B1B
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 17:19:46 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id j16so3353756pga.1
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 17:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pZMJib7OVhMN8zIp9IsflmscFIKRZn4rdZxBLAZI0DI=;
	b=SKlQMjoKpQJ6HwWQiKaC54NVd8YsVXDo3m5T2qbLpNsV426qihJJ9M4SYBm0WFSEfH
	gXfJh94XBnr+Hnw84JINwV+vF4dmFlvQoyUicPN10xICNEzFMCgiEaTKWkBQ58nVdoIw
	ZvvyzzS1MpkaxOvU9xJtW4+XHXwSvTCqZYSA1MKCr58pL7m4RxIX/xiPXCEeNgQV1Nvs
	qDm2uWbbtcerlnBTZSHFFWu71SBWIeCYujYlTFsHY55es0WLq1qoOpBDtWTtkSJJjdBB
	BdH4SFRjNfYOmtiliyfnlA4fmpdTM8H830o+W1H/3Pmt0vcUbVDr9Viq7yqT6Z4bGYr1
	G6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pZMJib7OVhMN8zIp9IsflmscFIKRZn4rdZxBLAZI0DI=;
	b=GdfLBzRTOxey5aopySLSSDwmGnDRUP/TmvCS6MR/4S6aCESRaAXr1zoZa5lW6ZJNmK
	6p4e0P+G0lQs+TIrzF3VV2vTbtM+RNGDh2DJiC6B++1cpT1k73RCUZDmryq1Tb67vpeM
	UEqjdKKhb7urkRz3yRqwIQmROuKnNKwC5Fz2ki46G1R2RIf6Nu2XczBfXYSyahHQaJy5
	FTcWpc7HMfZv/ji3GwOrY1tsz8Ml/7GXXb5S2AiRpAk/M6VpaRwv/Z2bXZyu/vh5PRlM
	5UuaaEQUzyYP43cwLj9dWSyecg+1vo6xJQy0/kTT7HuK3/fWukJei39V0d0mmTAd15+C
	ZI1w==
X-Gm-Message-State: AHPjjUjZHXHTH8kYwikbrfpg0KvhfA8EJpB0s6UjsLHcdaRMchW6nNq3
	7hlu3ab32h3VwIF4WaTlgPLGPmB+RGPHOicMHw0=
X-Google-Smtp-Source: ADKCNb4TZWvs7eT9aSjQIvgjyr4Ll3/Csdvtml8GRUTI9CtGWYOksGlL1284hGUlyW8qbRuTGo4SoA0zsQzChtBdwoQ=
X-Received: by 10.84.218.199 with SMTP id g7mr22840952plm.215.1505348386135;
	Wed, 13 Sep 2017 17:19:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Wed, 13 Sep 2017 17:19:15 -0700 (PDT)
In-Reply-To: <CAB6-VtJj_Z-GLwbi-OAAs3LZXrFpTVXEbGr_9AYh-H8LS6zthg@mail.gmail.com>
References: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
	<CAB6-VtJj_Z-GLwbi-OAAs3LZXrFpTVXEbGr_9AYh-H8LS6zthg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Sep 2017 17:19:15 -0700
Message-ID: <CAMKF1spC=Mo=dU6dZhJvcCuLC-Z0sOGVmoMiCiHZcSt5FPi5mg@mail.gmail.com>
To: Einar Vading <yocto-ml@vading.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practices when for script recipes.
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
X-List-Received-Date: Thu, 14 Sep 2017 00:19:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 13, 2017 at 1:06 PM, Einar Vading <yocto-ml@vading.se> wrote:
> Hi,
>
> I was just wondering if there is some best practice advice on how to
> handle adding a single script from a recipe.
>
> If I have one or a few shell scripts with their own recipe. Do I make
> a git and use the git from the recipe or do I just add the scripts to
> a files directory and install from there?
>
> Are there any pros and cons to either?
>

Generally, it depends. if OE is all you intend to support then you might
choose to keep it with the metadata or a separate repo. Keeping in seprate
repo makes a cleaner history as well as defines component ownership if
that matters.

If you drill down to automation or mechanics then there are no added benefits.

