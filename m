Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88BF2E00BF8; Sat, 15 Jul 2017 05:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 233D2E00BE6
	for <yocto@yoctoproject.org>; Sat, 15 Jul 2017 05:47:08 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 15so3330119wmm.3
	for <yocto@yoctoproject.org>; Sat, 15 Jul 2017 05:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=TFeNZbbhOkyDu2kjmsJAWlyUrHijI6PjW1MJudIlKb8=;
	b=ktoATpS46zoMAs9Es+sTcnXW5OVjYC72WCbN2dY56JtlGn9zVUXOILwJy3VeLkaEMD
	BVfXsC0iKWq8ESpmtZ6qcjHEF81vONR+SgYCigUmMyHVxoD3hiWnBR8Yco2u1x52gwHV
	mt4lsHOFvx9grlkgGiY3DnOFv3c+/kj7ryKaxAt5ct6MB2xfujeld+V2Er6rb+3Tmf8q
	oIS7aBbV+jS7WIccIdq0HCAtU858Sh5lSCQO6C4Xlmilz/9pX+yPq4WjmYiLVut4hv1w
	vMW4NZizlNoxtl6xU/oapDlBmDvOM4q5WQum8/NfAjZwUUsp9wcVnlpjy3yce+UnWwbW
	SENQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=TFeNZbbhOkyDu2kjmsJAWlyUrHijI6PjW1MJudIlKb8=;
	b=gVe6iijlb3Jgs/fbtvW1p1iVnXnyHhTxLbxluCUIa5LjJjY9Sg1p6YWOMuR5hZFeHS
	/ghJGoYU02UAtVU8Q1Utrdoo1BUSx6NEWXfeOqqfdUoJEpgm01KMKIzXnGmz0VX5lq6K
	vk3EiNYzIO6DEnSg689+ggPoGx9jra3ZV5lwgIZu4Bv3EkWY5HIG9mEXtuhZ88YRHlL/
	YD2uf2kHRjDgIW15dbGozCcNZm6ek1nl0doN4hVEKmr5TZk+bgzRSQ4wrYdtXfMdIvjE
	yJLmmKPNl2A83tScBv83DnoX6R46Nyu9nwAY4Y08vQ9RamgOYVYUm1pSu70gcZWtYeWx
	PBFw==
X-Gm-Message-State: AIVw110on4fhJBOc8Tn9TJ6d3Q9GMOx1/TF3q1SN74Wv16eNsxZtpek0
	Aw1RJ5Ztpu/Y5PN1ho8=
X-Received: by 10.28.19.201 with SMTP id 192mr1010715wmt.123.1500122827463;
	Sat, 15 Jul 2017 05:47:07 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-148-99.home.otenet.gr. [2.86.148.99])
	by smtp.gmail.com with ESMTPSA id
	l8sm7179357wmd.15.2017.07.15.05.47.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Jul 2017 05:47:07 -0700 (PDT)
To: Robert Joslyn <robert_joslyn@selinc.com>, Jimi Damon <jdamon@gmail.com>
References: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
	<CAJTo0LZR0=_+WaUqQPx-UA75jOcjMa1OhaB13ztJE+oW4_4xBg@mail.gmail.com>
	<1500064345.5177.3.camel@selinc.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <65a84bf6-0f68-033a-c197-74bc870ee5aa@gmail.com>
Date: Sat, 15 Jul 2017 15:47:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1500064345.5177.3.camel@selinc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do you build 2 versions of the same recipe and a specific version from bitbake cmd line
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
X-List-Received-Date: Sat, 15 Jul 2017 12:47:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 2017-07-14 23:32, Robert Joslyn wrote:
> 
> Just to clarify, the typical way this is done is to put the major
> version number as part of the package name. For example, the recipes
> could be called zeromq3_3.2.2.bb and zeromq4_4.1.5.bb. This assumes
> zeromq can tolerate having multiple versions installed at the same
> time.
> 
> Robert
> 

I did not try but I think in the meantime we can have the same package 
with different versions in the same image.

The docu says about (run time dependencies) RDEPENDS:

"BitBake, which the OpenEmbedded build system uses, supports specifying 
versioned dependencies. Although the syntax varies depending on the 
packaging format, BitBake hides these differences from you."[1]

[1] 
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-RDEPENDS

What's unclear to me is how this works with build time dependencies 
DEPENDS? I guess somewhere you need to say that you want to link against 
version 3.2.2 for one package and against 4.1.5 in another package and 
since it looks like DEPENDS doesn't contain versioned dependencies I 
guess you need to work with names like zeromq3_3.2.2.bb and 
zeromq4_4.1.5.bb.

Is this the case?

Which in turn makes me wonder what's the use case for RDEPENDS and 
versioned dependencies.


Regards,

(Another) Robert

