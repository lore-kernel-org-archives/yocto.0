Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC649E01489
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2012 09:05:33 -0700 (PDT)
Received: by lboj14 with SMTP id j14so9069575lbo.35
	for <yocto@yoctoproject.org>; Mon, 02 Jul 2012 09:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=Us/iMI5sJFAnYTL/UOnFtorZAGpr6bTfJ8nyuNTSAuU=;
	b=C1UVP/2vlktg8uICTQgn66JfeMAkkR8TXR/v+iURcqmj6b2RJhqjqoMXAXMufYGz8B
	nQnFrrqGQ6clWDtVZkWU95VA9XOyAeDwyBt1Q6W53C1NAl3yGdaAvN3bUN4kPRykaJHf
	6Rrg/2V0jxJDpIRbqXRLfCF4LW7ym4R2xirvj9o2QwKIvvRqLcjh8OOElH6rH8WvQFKs
	QOLNvznTA1TBYp0Eqfe04LMvjSqFk/W+GiXG/1sdek1zENSjktHzzFfTZVpfmTNS6NXJ
	TCvvCuw+VxDsBJ4cPh05EGmCmQEbKxHeq2wAo5wpamCfHIj42OvXD/ZsyS5Cc+AxykFG
	oHJg==
Received: by 10.152.148.161 with SMTP id tt1mr13844596lab.4.1341245132462;
	Mon, 02 Jul 2012 09:05:32 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.180 with HTTP; Mon, 2 Jul 2012 09:05:08 -0700 (PDT)
In-Reply-To: <CAGws1Tum5GZuXam-Cbo4tk3YBreetpvSy2LzcAUB4dV8BWqdKQ@mail.gmail.com>
References: <CAGws1Tum5GZuXam-Cbo4tk3YBreetpvSy2LzcAUB4dV8BWqdKQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 2 Jul 2012 09:05:08 -0700
X-Google-Sender-Auth: ijnRi0sa-40kBfNEtGJbuOEalLM
Message-ID: <CABcZANmYT+_+o2TiSs_KvFOo9Pv3m0rtNbvz=8BcjZXUwOs6Ug@mail.gmail.com>
To: Markus Hubig <mhubig@imko.de>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: How to use PRINC
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
X-List-Received-Date: Mon, 02 Jul 2012 16:05:34 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 2, 2012 at 9:00 AM, Markus Hubig <mhubig@imko.de> wrote:
> PRINC := "${@int(PRINC) + 2}"

This is the correct method to use in a bbappend. Start with 1,
obviously, and bump it each time the bbappend changes.
-- 
Christopher Larson

