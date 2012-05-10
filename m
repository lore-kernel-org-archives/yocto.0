Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37F41E0141F
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 20:27:18 -0700 (PDT)
Received: by eekb45 with SMTP id b45so406361eek.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 20:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=U8Ip9ncEWY5odyLdmj9Bkn6eGw2Rq7k7lEBqtTlRnTc=;
	b=M3sRc/lG6OvbrMb/YWUKJX6AK2w9tdbuQdts9LdZFHruJMOA0FKLLLHqi12/gnuoQx
	Wqwk3hrhvSEx77Pq20iIKtj/Oj0tQvbguzz7qdYNI9LaViPdDHuMWvXQLuPbE+ckVca8
	mLL4S69XQcTSl8aQSdb++FIVc1cTaxDSHEAlZJp0CZfXgdOi0jzjAFhe60Iuk0FNw+o6
	UfZQn5HJ7Ja+ilJnyXdYV5X2RjewRu6P5vS0PIzcS6NprPgs52q5pOcBpAKVZni3tjhD
	fzoRwZFcJ8vKsLWACsfWVmxFZZUeYC0yft/M5zIM52fSi9nnIt7dw/xlCsmLRNgRTaQH
	02Sg==
Received: by 10.14.47.131 with SMTP id t3mr466738eeb.118.1336620436947; Wed,
	09 May 2012 20:27:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.132 with HTTP; Wed, 9 May 2012 20:26:45 -0700 (PDT)
In-Reply-To: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
References: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 May 2012 20:26:45 -0700
Message-ID: <CAMKF1soOa84kp6YLCg=XrUqAb25ZbbmUcK-oJFT9dWrqRttP6A@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gettext.bb question
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 May 2012 03:27:18 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 9, 2012 at 2:39 PM, Chris Tapp <opensource@keylevel.com> wrote:
>
> DEPENDS = "libxml2-native gettext-native virtual/libiconv ncurses expat"
> DEPENDS_virtclass-native = "libxml2-native gettext-minimal-native"
>
> What does -native in the DEPENDS= 'do' here?

there is a bit of optimization here to parallelize the build where
gettext-minimal-native is now used otherwise
gettext becomes serialization point for build

You should also look at gettext.bbclass when you are
looking into understanding gettext dependencies

