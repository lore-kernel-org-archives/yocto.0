Return-Path: <prof7bit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CEC9E00D67; Wed,  6 Dec 2017 00:58:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prof7bit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D929DE00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 00:58:25 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id s141so2131148vkb.12
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 00:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=EoMmZHADdDb8K/jvDJqGMj5mYAKOtrhPrOM2R6picYs=;
	b=X123jL21rPmf0csVylIj048BEVmruHK/gQ5VQbB90ieuhxulozTxgzYsYuocrLJSrI
	Z/P209Z4LUVWFTxcjvzJIY4oChjY7ie+CsAzyfk/AvooVf7ceN1cS2uma2bC6+jtJFe7
	1DgM+9kfN7hgI7SzOoy0UWnhCnGPwi+NCu2z70ZK/AwG26wt/PwUpenuMEcJmg7D7Sl4
	YUxFyCAAqEMsD2FRObxAw5Rwf55OdbzPvwT9FAVsb8bvKLiDMW3rHFZekGz3JpevF/bS
	8nsPXwfZGw/duRMXENlZL67L5oPvOdNaQwInk09UT1McDWBgGaCwHaDS5Gb95xnqkC6l
	/F6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EoMmZHADdDb8K/jvDJqGMj5mYAKOtrhPrOM2R6picYs=;
	b=Ei/7ziK/WWHYi8UkAZlNLmHjHoJUQxhHeMZjswyKHuAauGaQmO5Oez1YoqIje2KiRO
	afpT3fcHmBHibED9AJrlB+jRQEMR/0J2yy3O01Dglr5qCiqZDgcRnd5/wsgLB4mbGWL+
	R7fNGAPgwUuROb8WnJsrAd+SyBEWIE68jxurbGukLv2yzuk6ItkZTIe6U1f8WveECjF7
	BAFm5cIK8UMRwjgB2rXIc774ICWDarocsnLEMWUqejzsLdzqywAfNV3K1iXq7+F2nqBA
	2z9uC38lDvU12kR3VD/Obk2ggpjZ16BRJcM8ILTfsRjZrSrXGs1Ky1amjg6UEUy5TBdk
	hWNA==
X-Gm-Message-State: AKGB3mIW0HPxKtFSePbaBou/OAmSPfG7VCX7lDAs9jjJlWikfSDiPIVY
	1C4L+QRiU0TPUe6ayoFhEIhR2yGh4gUnzOk+X3ZYjg==
X-Google-Smtp-Source: AGs4zMb9I12EAcffVGHOEYSpfuz/P/omocQt70KwahG93814mnAy8T/1+C1hrdDoPl8JeX6FCSyDDJpXYu08Uhamx6I=
X-Received: by 10.31.88.68 with SMTP id m65mr8877974vkb.182.1512550704634;
	Wed, 06 Dec 2017 00:58:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.217.152 with HTTP; Wed, 6 Dec 2017 00:58:24 -0800 (PST)
From: Bernd <prof7bit@gmail.com>
Date: Wed, 6 Dec 2017 09:58:24 +0100
Message-ID: <CAAkg2-mQ8RswTrBrFDt1v_-600+aCYNnmhHX=9aO6X2t8f6QfA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: variable override syntax, where is it documented?
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
X-List-Received-Date: Wed, 06 Dec 2017 08:58:26 -0000
Content-Type: text/plain; charset="UTF-8"

I just found out that I can ovverride the line

hostname = "${MACHINE}"

in base-files simply by assigning a value to

hostname_pn-base-files

in my configuration file and it will re-assign it with a higher
priority than "=".

Now I wonder where this kind of black magic is documented, I don't
seem to be able to locate any document that explains the "_pn-" syntax
and I wonder if there are even more such tricks that could be useful
and am looking for a document that explains them all. Is there such a
thing?

- Bernd

