Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3B17E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 12:24:18 -0700 (PDT)
Received: by lboj14 with SMTP id j14so4310621lbo.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 12:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=1cn1Xgn4owcKqxuhUZHWDeTueeqwy8549YRUGspSBbA=;
	b=AJWZ2RcyTeogatk20DvJK3qBZwgeNVstTO1MjUhwlAnHQwBzkvzXBip8noa18k4Ztl
	Pu7mQMjon0om3kIIwk8fQCZVobiP5EqZC1qb1L1MXxgCSPcKVzjvdCQriAHdMmrQ2tsh
	orpCoGAbfMASf2CirZJwph8Ri4JRWGZHg++ISV6cREzz/9+dXbgKy3cNUOtfraRtxiU/
	7SqR5VHYAAN2lL7bee3cPkJqSGp/sgkH6fyMjJQb798tuCtJAgD0H7AUCDxuJmJWocKJ
	RVDrT6Nxt85ZMtptj5I67fSZPB9e6oJU/74WTw6FF78SWz+EiJYxJmsMjyxFgZybrLfn
	LOyQ==
Received: by 10.152.105.51 with SMTP id gj19mr30951247lab.38.1342121057402;
	Thu, 12 Jul 2012 12:24:17 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Thu, 12 Jul 2012 12:23:57 -0700 (PDT)
In-Reply-To: <CAE9DZUS20851zBEYJOM65QufJCx0gHCLnhgfb=7VXbpdkeq4eA@mail.gmail.com>
References: <CAE9DZUS20851zBEYJOM65QufJCx0gHCLnhgfb=7VXbpdkeq4eA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 12 Jul 2012 12:23:57 -0700
X-Google-Sender-Auth: ipjzRtntPz491de9FqCfR6m9r4g
Message-ID: <CABcZANnFf253q=WsSwyzDmZcReBHC-kO8TjDWrzkeMX7MuUgDw@mail.gmail.com>
To: Dallas Clement <dallas.a.clement@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: external toolchain
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
X-List-Received-Date: Thu, 12 Jul 2012 19:24:19 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 12, 2012 at 12:20 PM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
> Should I be modifying this external-sourcery-toolchain recipe to point
> to my toolchain sysroot area?  Just not sure what all needs to be done
> to use my own toolchain.

This recipe is intended for use with the sourcery g++ toolchain. It's
not at all surprising that it might fail with one from a different
vendor. Modify the recipe as appropriate.
-- 
Christopher Larson

