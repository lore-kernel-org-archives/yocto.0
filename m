Return-Path: <jefro.net@gmail.com>
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59F4E00BB8
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 12:50:42 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id p9so5994847lbv.24
	for <yocto@yoctoproject.org>; Mon, 14 Apr 2014 12:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=NvlzWJ/GuyQAsMltaynZtK3zD2jVoVIVmQaKuWbdvd8=;
	b=Pw0swOontBlJzWrxU922hjVaqOK2QW92nDyqWTz7axCqljg23ZWKm4AW17rGqTeLZG
	1MQ1iSr2bVXnX0IFbHO1b6Ob4xB15/8qDt9uNfUCdttyxCxn9mizhatTlWYJEO06df3f
	bKtKLDpl8DoJqEp/NP00oc/e9jxCGSHoaPfKReRtcSNwt8vMMFwlGTEa0+iyPzbk9n4M
	Y4P45uXK39tCUBAEhhLlkLl0MeSCmX4M0pv/54KTW72m5JKp3dEAsPINM6FMC0Y6TPzx
	F1O5L8T0NJWUqwhYOkBOT/pXM3ZW0efzEDf0AfqUadtFIcUMR65QqBkIGJloI4GtTXDs
	Qnbg==
X-Received: by 10.152.36.73 with SMTP id o9mr3689663laj.30.1397505040771; Mon,
	14 Apr 2014 12:50:40 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.173.199 with HTTP; Mon, 14 Apr 2014 12:50:20 -0700 (PDT)
In-Reply-To: <20140414154937.GA3370@denix.org>
References: <CAPhnLPDLvgMCN_e050a4sYWh=n=ukZMCjkuTskVWC2XWUd0oJQ@mail.gmail.com>
	<20140414154937.GA3370@denix.org>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 14 Apr 2014 12:50:20 -0700
X-Google-Sender-Auth: U9HCVUuDOU-lyYrU6arIVWB3RXI
Message-ID: <CA+YB3rYhvvL+qzCmG+Dp1VcbAPUO+Y2tfZ15LKogCq0TZvUENw@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: New RC for 1.6.
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
X-List-Received-Date: Mon, 14 Apr 2014 19:50:43 -0000
Content-Type: text/plain; charset=UTF-8

Hi Denys

> And the question I have is how one gets his own layers into Yocto
> autobuilder?

This question has both political and technical answers.

On the technical side, the layer would at least need to:

- have YP Compatible status
- provide an owner (human)
- provide a QA resource (could be the same human)
- help support the costs of QA

There may be other requirements, and details on some of these issues
are still under discussion. If there is a layer you'd like to discuss,
let me know and I'll set up a meeting with the appropriate people.

-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

