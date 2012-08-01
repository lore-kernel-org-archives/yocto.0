Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F3AE0070B
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 10:09:54 -0700 (PDT)
Received: by eaab14 with SMTP id b14so2050060eaa.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 10:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oE7S/0wYt9/14v9DdCAm6/22Vfg16mXqad5gU1A+93o=;
	b=jxPLM/H5vjl0NG19UZZNfaoe24GGHduEdFWLJLLQncnqJv7NM+GOMayD/VUkT4ixSU
	J/tnar8Qf4sH7x3XgM1JhpcZ78WrcLo6ML7Mj2m/uixNwODVlyc5N7yM62ciANmfnoww
	s6T+wte4Vopa3hq3jFKDSiyyRowDSj/O3FpYlt9Ues5FTx9rHVujvKo66XXrhUEAJ6Gb
	D2i7mvrqxlezWPYM1kxIq0wKycVdujCCRLH91JfIm8lm/DWw1O5+6TMFMOt4/73qMpXp
	+ajCE2iSJ1HgOyJHl8AjKCrNhJjsqgbg3VwwBEncZ7oJa54zPFaOHU4UFt5iE2J5STSt
	Sd9w==
Received: by 10.14.214.197 with SMTP id c45mr23240694eep.37.1343840993310;
	Wed, 01 Aug 2012 10:09:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Wed, 1 Aug 2012 10:09:22 -0700 (PDT)
In-Reply-To: <501957C4.7010401@linux.intel.com>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
	<20120801061552.GB15199@jama.jama.net>
	<501957C4.7010401@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 1 Aug 2012 10:09:22 -0700
Message-ID: <CAMKF1soAoCiihcn7OGMfQS29L80zLLvoAWkc2D9AV37ku98idw@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 17:09:54 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 1, 2012 at 9:22 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> (gdb) target extended-remote 127.0.0.1:1234

this should be ip of target which in your case is qemu prolly
something like 192.168.7.2 or somesuch

