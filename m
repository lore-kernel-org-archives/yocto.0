Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE762E00DE5; Wed,  7 Feb 2018 08:58:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 767C6E007E1
	for <yocto@yoctoproject.org>; Wed,  7 Feb 2018 08:58:23 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id s5so1818788wra.0
	for <yocto@yoctoproject.org>; Wed, 07 Feb 2018 08:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=5/9U3eCziCfugTaKk112358OUTUB3Ekrlh6gtwxzrXk=;
	b=cRinfHjuGsS8Ly05QdTbAUZmO3KshK7rU5rx2gTQx6a8xugMr1miEoq6LQIj7Kq3QZ
	YNGOMEghjXjxjthFkM2o7NbG/VN+MmBFrijZPdJfWVw1TtZcs0RIchR1LhXhpjRN4c61
	TZADyaRi/txVvQ2G7olBM/b+OiE2uWWK9FvAsK2KuL2kF1ek3q70sxrfRmR6MHJ1PhdZ
	tlYdTqt1FnFue0Ej5iDBmcTSUVWzdcIWPO+45q0H1i+TBPMVld3xhVx8iSxAi/+/9rWq
	3wG0upot+MccGjTKFwgFJLJOXBpJVHQ1EIjqjjBb62tdpWyjTbk9UFnsMSnr8/oFltVp
	qsFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=5/9U3eCziCfugTaKk112358OUTUB3Ekrlh6gtwxzrXk=;
	b=K+nNpCIcUdxGHecaCu8IF7D6SnGvP09EXSz3aDjyAOAMzjs+Idf1zRQfgGGUmTjDSN
	Mm+yGQMThgsfdQrKl7G8qeLMxMRKzOs9XyEZo/a9pyVALbx8I+pqsymDLgqRzaTmx407
	7MtcwjwGS7HthnS9a013TSyHjXTWzrs2xIZrKx6lAI50il7Ysr7Mlx8TSscR7Sz6BfCe
	d7Fore5o3WLl6KJzaUFZJW2wFO51srwPdSfXeKfaaBvgArwcVmaG3q4swNh0wmvINckm
	Xm71B17KZJ2WpPECO/uDCEP6OfZC6SAnytQ5126r/lvkTdTEsNYjIwYGlwkxpAziH2Ig
	hm8w==
X-Gm-Message-State: APf1xPDhQl/+pAz55DkHglB5Sy2PImKNHBhEXT3eQ7EXQp0DKDO5gYN5
	M6Eu3YAmfQRqgf7CGPtFyyUij5Oy
X-Google-Smtp-Source: AH8x224JnLp/hAZ/hfhVvMgS4sTVkD7yaWDMolMnDx5W0XdvI51Sq/SuDWr5niJOv08Zt3PSc7Logw==
X-Received: by 10.223.170.142 with SMTP id h14mr6255449wrc.26.1518022703024;
	Wed, 07 Feb 2018 08:58:23 -0800 (PST)
Received: from [192.168.42.50] (ppp-2-86-138-178.home.otenet.gr.
	[2.86.138.178]) by smtp.gmail.com with ESMTPSA id
	l92sm2929788wrc.31.2018.02.07.08.58.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Feb 2018 08:58:22 -0800 (PST)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
	<f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
	<e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <01e6a2b9-5a4f-a5ad-5729-4d3e915422f6@gmail.com>
Date: Wed, 7 Feb 2018 18:58:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Wed, 07 Feb 2018 16:58:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

On 2018-02-07 16:01, Mircea Gliga wrote:

With this line you try to add -dev (.so), -dbg and staticdev (.a) for 
**all** packages:

>      SDKIMAGE_FEATURES += "dev-pkgs dbg-pkgs staticdev-pkgs"

I am not sure it makes sense to build and add both the static and 
dynamic libs to an SDK.

Do you really want this?

Regards,

Robert

