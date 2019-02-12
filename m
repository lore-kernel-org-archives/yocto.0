Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48527E00754; Tue, 12 Feb 2019 08:17:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7B02E006D8
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 08:17:09 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id v72so8938113itc.0
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2019 08:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1okeeLPy+dwA6XlXkwTlr6s2QZblEOH+i/DnjZssmnU=;
	b=iEgzPctl2n5fgVmw7QJQREOT1JMBMoyPJFPRwytZdjw4c6IY7NE+mxjaduBPmsU7II
	qKBw7lzZ5qY2EjQjRNpzV19MVDzrbYTEC9kOseYkpqfBcEAcWinR4/MXiSuLClRTdvs+
	18aPt1DCPEPPKOXY4PqxLn2UrZu2jfkAFpj5Btet3l+HcstCYBvGORVEc8SoAUaSUJjB
	oiv6gwUnVFLLe/yqBjOg2y2FK/J5luixcERUoygguMxKiA2BaK7jGqor8WBdJMrCgff3
	iOezkQv7LSoPLpXuo+fhQ7TbOpa4qRjJOe9GSjYcJAZ23vWlbs2vC/bj/NcTxLdI+u3y
	wkzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1okeeLPy+dwA6XlXkwTlr6s2QZblEOH+i/DnjZssmnU=;
	b=UpasFd4bFsPl5xZ+eHv7AdSkV8t1Q/HvdbTg/twNnVaV34oTwhC0RQ8lOJ8HBPH8lQ
	XP3flg6QSKpLgZVFpAvvxoBEYlLcKR+8+3+niP1srUa9M+JRxzPbx/aJzgciKT1JOJBJ
	Z7kcGmlW0rrXJ+HkFN33lqRmo/0S9A4nVZ0yCa/VgRQlfRbYOjFV7KlIJsxU1gHL0hKO
	La9y2semagYoisIk8YoqQ76LBlGbrUYYm6x3L/XyzCFiUgGUs/W/SZg1ClZBL6rG4hLU
	zPaT1QSxBgc3SlZOcw9unW/eHVq2hCKzwH8zwi5GnHoAwwzU3Vi5kdmcDi50WHv/trjK
	6W5A==
X-Gm-Message-State: AHQUAuZhSoFR3EZsyN7oHsWiHRgBl8LjpWgeALDdcgpv5OzMZk5OTjVM
	kFV+bHiEWKAuxZBIyG2Ip7S/47codp/B9l40SmGmnw==
X-Google-Smtp-Source: AHgI3IbCFVCxU3V2xGeBM+cbtosqLjEof1ICBhZPpmeaBO4lqIhdG/qUqJcBojU7SSN2tlrOgBHZPppz1jjr8Al/LdU=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr2028794itj.62.1549988229481;
	Tue, 12 Feb 2019 08:17:09 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4jZZi_BCYJGCq6oJJbHTwL4p3PN626n4KF0mHQxybjrPQ@mail.gmail.com>
In-Reply-To: <CAFq4t4jZZi_BCYJGCq6oJJbHTwL4p3PN626n4KF0mHQxybjrPQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2019 16:16:53 +0000
Message-ID: <CAJTo0LYTo-y=abJ9GAYdUkuePXQGT7HTvnHraNQqTdtWLo6cOw@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: glxinfo
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
X-List-Received-Date: Tue, 12 Feb 2019 16:17:10 -0000
Content-Type: text/plain; charset="UTF-8"

It's part of mesa-demos.

Ross

On Tue, 12 Feb 2019 at 16:14, Peter Balazovic <balazovic.peter@gmail.com> wrote:
>
> I'd like to ask which yocto recipe has "glxinfo" available? I will make available that package within local.conf...
>
> Thanks.
> Peter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

