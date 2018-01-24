Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FE9EE00DE6; Tue, 23 Jan 2018 21:40:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D252FE00D6E
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 21:40:28 -0800 (PST)
Received: by mail-oi0-f48.google.com with SMTP id m83so2052647oik.8
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 21:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=GfhLcLgtfCGBP+OkxNj29/JseadNi9c6dOIXnEyqn2M=;
	b=R3sU5LR3OvzDfx3pVpDBBxL3t7MobOAzqRkNKrP7vAp2ihcOgjchXfT8JghC9EjtRn
	Fr/4CPjI2YMYdSsW386XxEgGwP16z7ru6di9bbNp93RHcPP4ZBPzfImVyG+QzORZzsLu
	2mhzM6PelAegUwK8cN0CmNorC+DqVkLp/k8uHmCzFwlsqiLh+vSnf7xj7d2ugoUBF8QB
	0rraFqxLSYtuXTmqOgsqQgjOmn4yA6ii3qybo172d9S4E7uD2unSgX0mQV+NecbNH30e
	qcpBN8dk0Q6GzoqVgtIMXdpjA8BRxZH6nZms1FyG20b/YPjora7tbtNGKTTLX8G7yMHV
	WnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=GfhLcLgtfCGBP+OkxNj29/JseadNi9c6dOIXnEyqn2M=;
	b=kKoL7uAA4keIU+v7ShyE+j5c8Vjy1ZtA4558oWyu4S93fS1CnUQnjquY+gKki44lei
	hZlVGvnZVIB/vz+x8G9ZAlbZ9Y6VwpkPFxjrMN/wLm+hVUHMAB3wFLEaehQjdO3Kq8nE
	EQ6DFfXKAh1BqD+yg/tVbFRMPJb2wrWNivFfxA6lLwHsVdProAFr0U69AV5K78tETd+e
	qfEIndgKALoxOWKSxE0mQHYhVCydRflBWka4apPWwywvPJuxkSNvGHGabNsE4ZpCiANE
	k5ExI4++h/fYWlDsPghwCnvVCLMuVAg3OTYvEMABKlgitxHyrfmUmf1S1G7omrdJnNdD
	OgGA==
X-Gm-Message-State: AKwxytfvp2BWmyA6wrMCXTQpidP+WXibl3OIlw2RAv7sREDHcFEMb2IG
	4FGxqAR8dUs3ExdovkryPLyHjtk+
X-Google-Smtp-Source: AH8x226u9KlmthlGtY0+LlB3YEGTPoTcMP3KkVMx5qwb1HDKGC0TffwvNQMm58DKzKqEQC3REKs0Vw==
X-Received: by 10.202.98.139 with SMTP id w133mr6912073oib.282.1516772427415; 
	Tue, 23 Jan 2018 21:40:27 -0800 (PST)
Received: from [172.20.1.220] (207-91-160-20.nstci.net. [207.91.160.20])
	by smtp.gmail.com with ESMTPSA id
	i45sm1075201otd.59.2018.01.23.21.40.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jan 2018 21:40:26 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAE5v_r+PO5h7KLXasQcLVxybF+zR2PbtX=48GkHyPREd9iF9bg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <334eac34-d33b-4bef-5e0a-8bb2c875e9c2@gmail.com>
Date: Tue, 23 Jan 2018 23:40:24 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CAE5v_r+PO5h7KLXasQcLVxybF+zR2PbtX=48GkHyPREd9iF9bg@mail.gmail.com>
Subject: Re: issue with clang-native when building with bitbake
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
X-List-Received-Date: Wed, 24 Jan 2018 05:40:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/19/17 10:36 AM, Tomasz Michalski wrote:
> Hi
> When I build image I get such error and build stops:
> 
> ERROR: Nothing PROVIDES 'clang-native'. Close matches:
> ....
> NOTE: Runtime target 'lib32-ty' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['lib32-ty', 'clang-native']
> NOTE: Runtime target 'lib32-duma' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['lib32-duma', 'lib32-ty',
> 'clang-native']
> 
> So I grep all my repository with command
> "grep -r "*clang-native*" ./ 
> and I don't see any recipe/anything which inherits or depends on
> clang-native. In fact nothing is found for keyword "*clang-native*".
> Nevertheless I debugged that clang is connected with 
> meta-openembedded and there is meta-clang available
> on https://github.com/kraj/meta-clang so I downloaded meta-clang dir and
> placed it in meta-openembedded directory but nothing changes, still the
> error is the same.
> 

you also need to add the layer to your bblayers.conf
maybe you can use bitbake-layers add-layer </path/to/meta-clang> to do that

> Could someone give some hints how to debug such problem? The strange
> thing is that nothing is found for keyword "clang-native" in yocto
> project. lib32-ty doesn't depend on clang-native despite the output from
> console is: 
> Missing or unbuildable dependency chain was: ['lib32-ty', 'clang-native']
> I checked lib32-ty recipe.
> In fact I don't need clang at all, however it is no matter for me, if I
> have to I can add this to my project.

you can see if its setting the dependency explicitly. you can remove the
dependency on clang-native too.

> 
> Thanks in advance for hints
> Tomek
> 
> 


