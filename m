Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C91A7E00D51; Sat, 11 May 2019 08:35:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42ACFE00B49
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 08:35:41 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id e19so6845597iob.3
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 08:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ag5ONtHivaKqkf+u3Zo/zHyiULEf+Nk2dqHSwTCtorg=;
	b=Hp92vzOsfsKt3eWabYWTxMLIXPGNdOmpnZy/L09dD6EGgVum96OMN7c12pAJDDT0Ey
	hLXVyPxG5oeMkpbvvs6pKr7tIwFE4SPbW2T9thorh4d+HBYHfUvYxWi2J5cihCituTyi
	qItNsJlIkhbI4HK1RSz89UamskKO4HeDEAkEn4ZmBvrhuzifRCp1DyS3McLorZCTHHeK
	SX8FAFBHZWs7wfRygG8QZhHKL7bcFtF7oN9FJxoZAEhTreuFUrmX7X2mrahTqu5dbchD
	CiC2trXkxPvi0P87agk22Sw3ujc21WMPM4GfvUAV6B2h9/lQujfUBKnkx8I48m6W6rcy
	ydlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ag5ONtHivaKqkf+u3Zo/zHyiULEf+Nk2dqHSwTCtorg=;
	b=Zj8op7pfSMxeDZztf9l7+hKUKTF2rCph+fO8wq0PQAeI4XUr3wWSgaNDf02F55bPlR
	xjxJtkuVejcDDN1Hf8emZ2tZ44REw1EYlieZBEc/u427tgH2Ud2xen4GzDKmz054/dI+
	mKFQ6peo+FYUhRrFiqGsmEBpkBEeZoE9oQNeVvmZBgrg4vdwdpewV0wG/SNp6IT4V8Iq
	SXBCtHApIyZpZpJkh0CH9Wzg4c9qP+PsYWNdtKPlY9Y8s5mfa/4mZjVLEs8WJQLNJnVO
	qqps26kJNt+ugBPEcdzahGq6EX/4RX1hehzviPkrJIqaXqeI5jN9YFNT/Mu2BA6y+0fa
	gt1g==
X-Gm-Message-State: APjAAAWpz5BEPS1d8Ev+Z1oJRngM58ml54FKfdy15zdcl0yyGrnFg4rT
	7acdrA2zLBb7FinAmM+ZbfrqkLTEMkr5eXl7eq2KNQ==
X-Google-Smtp-Source: APXvYqzQvzrJP9jUX+1yQ6SfkMUkSdUPDgSrrW78utIcOGIZpNAr/g9fXlnCxXBv84yDJRCvm0/hKwTLcb7f7peAvxc=
X-Received: by 2002:a6b:ea02:: with SMTP id m2mr9746030ioc.270.1557588940754; 
	Sat, 11 May 2019 08:35:40 -0700 (PDT)
MIME-Version: 1.0
References: <230317904.2732545.1557532426303.ref@mail.yahoo.com>
	<230317904.2732545.1557532426303@mail.yahoo.com>
In-Reply-To: <230317904.2732545.1557532426303@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 11 May 2019 16:35:29 +0100
Message-ID: <CAJTo0LZa2vc8CDQCdqYSZTTSzdo+PG6fMnxb5NLisvwKxMJEBQ@mail.gmail.com>
To: Madhu Krishnamurthy <madhukanthk@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I include all packages under a layer ?
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
X-List-Received-Date: Sat, 11 May 2019 15:35:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, 11 May 2019 at 00:54, Madhu Krishnamurthy <madhukanthk@yahoo.com> wrote:
> Do I have to specify every package or is there a way I can add all packages inside a layer?
> For example, how do I add all packages from inside poky/meta to my image?
> Or at least how do I add all packages under poky/meta/recipes-devtools ?

You need to list them explicitly.  Some layers have packagegroups that
pull in all the dependencies if that makes sense, but adding "all of
oe-core/recipes-devtools" would be odd: you'd have three package
managers for a start.

Ross

