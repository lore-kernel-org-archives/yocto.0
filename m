Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67CD5E00C18; Mon,  4 Apr 2016 05:57:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE3DCE00BFD
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 05:57:28 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id p188so142188124lfd.0
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 05:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tLXteEV71mnrMdM4UdL43xipV6L7LIp9uzS6wU8LrEY=;
	b=GhtLgwut01Y44SLowK+igQBmTEtca1x3CrLLZuy+j1nOJ2Kzb4F5m8stwwsR7e6+XB
	Fx2fPRBhbqII8Lu4aeD7WAmGG0UaPTR7spakQQ9DCzaTRT3eSKDLXJvipSlaRd4LLGOU
	JIWDarmE0xqXLa7bTj7WoZP1HTflOrQCN56bQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tLXteEV71mnrMdM4UdL43xipV6L7LIp9uzS6wU8LrEY=;
	b=BdpXC44eN6wnKD4D0aYHBZbNsHCJJMlX08+NhlqLdQh/2fZL40gkoEzitadX2JO1gH
	T8g+D9dgiytEz8FJdYmhfj3QseJN01GMr4DouzifhAg309cpXH2V2I0s09XQfTzq2VIc
	mSpCSo53kl5cN7Qo3Yrkd5j9INpKx6EmU9Q9aGU2xpjC4vCJiCm6OJu7KfhtaH58GGFp
	ipxQsGw+yPgStkcIBpk6vJBTuWB/KazJWSXQUJR0Bcr95x950epJBxJ/IB7ZAGUexHLg
	GSe3jfNuw6fnihWXBO2ehzXfKaBQfk98Fhy5m9BwAtzahp1SgCCftdXTcJT+vW9ExBXd
	Pl5g==
X-Gm-Message-State: AD7BkJKsyRegdsQt0Vqh6DTEQ16UTNYAkxroEUVHYPDl9mjxp+j0zF1GI8MH2xpNUfNzuJxWhwdIA0q/UqRC69A9
X-Received: by 10.194.205.138 with SMTP id lg10mr18115836wjc.153.1459774645754;
	Mon, 04 Apr 2016 05:57:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.206.33 with HTTP; Mon, 4 Apr 2016 05:57:06 -0700 (PDT)
In-Reply-To: <434fe8858bc94e6da6dac6f5f11636e6@SI-MBX1022.de.bosch.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
	<3011913.B3k47xJghH@peggleto-mobl.ger.corp.intel.com>
	<CAP71WjxnqQrZRVTuANO7Y86qVVkN1nYRKc4ozX=0L+OD5OYh0w@mail.gmail.com>
	<434fe8858bc94e6da6dac6f5f11636e6@SI-MBX1022.de.bosch.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 4 Apr 2016 14:57:06 +0200
Message-ID: <CAP71WjxTG0fMc3sRcQ+atXZGBz8QMQ8AtGJvxr9eqOzXk3tFVQ@mail.gmail.com>
To: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Mon, 04 Apr 2016 12:57:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 4, 2016 at 2:43 PM, Olsson Rikard (RBSN/ESW1)
<Rikard.Olsson@se.bosch.com> wrote:
> Thanks for your answer. Will these two files conf/auto.conf and conf/site.conf be able to handle changes for bblayers.conf as well?

no.

>
> For example we need to add meta-qt5 but would prefer to append to the layers already there and not add our changes into bblayers.conf to avoid merge work.
>

bblayers.conf is parsed by bitbake directly, and i don't think you can
use another file for it. Khem's suggestion to use "bitbake-layer
add-layer" would let you override bblayers.conf 'dynamically' without
having to archive it..

