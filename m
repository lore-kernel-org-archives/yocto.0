Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C348FE00D72; Fri, 10 May 2019 18:33:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F34AE0097C
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 18:33:31 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id g9so4089192pfo.11
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 18:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=w8RBOEdPfvs9wrmwZbUFosECcA3Lrbb1Kjx9REebbz4=;
	b=cJO4xboVNkdXw10k5eo/JBtW2HYS198ZzWCajhJBr3GvrG2nNIhB5FJj3z6IWP7zaW
	o6J+4U7c6g2OA+L5dKOmyQeCDDoJwZg1LBJriUf2NdCjSJnKzheubxzoY7wHwAzFyKLK
	18VVUrdFhWEim0pYmgHXCERIdDkIgvlmm60QcsMSVNlflY0h9farvkxLNOIR78VmqaH7
	ZE084WywDU2CcOxbR60IsplLsHaF22pNaviq6wtTWIAcBTSv1RMtx5zn2f+U13jZkMGB
	LLSJhms+TRBl6xXrRM5R9dCyGvqCj2H1qfC/VTz1umIu/LKvM78LtGeHfl/bRG80yRVM
	/iHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=w8RBOEdPfvs9wrmwZbUFosECcA3Lrbb1Kjx9REebbz4=;
	b=E5kVHfmp3Rg+BGqSi/u4UKF+YJQaLNXg3qHGLLQstx4C042nJUVwhdupJsJ4EJceMO
	PZx8ATmBuFX1iVRfmbmMBU/gYLuQDXmyQos0SlIO5jK2Pccmlg3vuTYYTDCpBZ5GkNeF
	FmfaBMQpq6xqdI7SBzyZJDHdihO8u/kVCcil+lbTUEEB9DvyZdtgxU/k1VnlSMukkvwf
	DgJnSINkBZIWbDEUKkT62rFNX3Uafirm7cHHhOqYhTQwLnRDC7soQyoSF+uyCLOXneiE
	W/ikGwfsN9W76Mneag2DVI/PdfMWPPqqqnEjAk3t5y//AyVRVD7S7ptWhr848dHihfSh
	VnpQ==
X-Gm-Message-State: APjAAAUQaGify7RcvrTqioo2aY0NrNcI4fdiyL5I8ntMnBRHd863GuoU
	RB+hlxz3gGRnhFDubHzh8hvZyRZBSb0=
X-Google-Smtp-Source: APXvYqxHww1BTsmujjZ/MgwnwM1DlGqTo5SoPkSy9eE6Kyztwqe1Xm29LNlri5oZyCUtWyvGeN+ZOg==
X-Received: by 2002:a62:582:: with SMTP id 124mr18260855pff.209.1557538410090; 
	Fri, 10 May 2019 18:33:30 -0700 (PDT)
Received: from hermes.local ([2601:646:8500:6bc6:6095:8839:3497:2f69])
	by smtp.gmail.com with ESMTPSA id
	q10sm6767826pgh.93.2019.05.10.18.33.29
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 May 2019 18:33:29 -0700 (PDT)
To: Damien LEFEVRE <lefevre.da@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CA+FhBv_yDZEAU0YPyZ+0kjtvB30VbCWk9mYnD-TEe4Jy=hF2ZQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <1d831c42-416f-a636-7af1-013e8ec0aa63@gmail.com>
Date: Fri, 10 May 2019 18:33:28 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:67.0)
	Gecko/20100101 Thunderbird/67.0
MIME-Version: 1.0
In-Reply-To: <CA+FhBv_yDZEAU0YPyZ+0kjtvB30VbCWk9mYnD-TEe4Jy=hF2ZQ@mail.gmail.com>
Subject: Re: Replacing a configuration file from another recipe
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
X-List-Received-Date: Sat, 11 May 2019 01:33:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 4/29/19 5:35 AM, Damien LEFEVRE wrote:
> Hi,
> 
> In our base image we use nginx. I created a nginx.bbappend to add our 
> PHP configuration in a separated layer.
> 
> For a specific variant of the image I need to add an extra bit of nginx 
> configuration.
> 
> I though I could create a new recipe to overwrite nginx.conf and include 
> that recipe in the variant image definition, but bitbake shouts at me 
> that I cannot modify a file from another recipe.
> 
> If that's the case, is it possible to create image name based bbappend 
> files? Or do I need to create a separate nginx overwrite layer with 
> higher priority than the base image nginx.bbappend for that image 
> variant? (I wouldn't like that)
> 

you might want to use a function to get this done and add it to 
IMAGE_POSTPROCESS_COMMAND in the specific image recipe.

> Thanks,
> -Damien
> 

