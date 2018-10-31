Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353A9E00B5E; Wed, 31 Oct 2018 07:43:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7A54E00AE0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 07:43:20 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q18-v6so9848499iod.5
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 07:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=A+8AJjCVVmhprXjBcq0iV+Dd4eZUszr1sv38+zkQOD4=;
	b=FwDHGafh6xyQiZ2ns8MGyGVOVktLlyIRy+oWTS8t1j4dFhHQKc71+3kURj5OvOei7Y
	DEfRM2w2F2glqU5U/Vk3gEue2envR9BaDKRt7+Mio9j26+pwNmr6FZwHXqfW3MXkH15S
	U5wrmhqyfZZeT/u/wU/zb6+JmqyNOpTIU53zxzy/15+EWQU1EOa514WNmgmFcW93LKv2
	uPPgznyyXr4Wre3fUrl6J0xCAPvLRp80GwnVafaUg4Gai80Gbo1jXWc+RPRL7mY0PILu
	gwpVthGJwWFrY1SXZz60NuGxvBH1UmfG+bQ2jqqctqP1z8/eOFd7PXapXKbZV+9pHj83
	bR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=A+8AJjCVVmhprXjBcq0iV+Dd4eZUszr1sv38+zkQOD4=;
	b=BgL+kpS5QtWWDXnfCX7v1+ztF9hbp3rFzgXaP+zbhTkB5j79uqIrkQgsxWftC3Heft
	GtJo9CtqMK8D7Jp/ls2UxiitVMyrXpSzMYBuVqFvz/doJkAQQkEiG5+9C2cFpwdZGAQu
	0Wk/DRw9NRctAaT3Vsj+Gu7uwoAkIJmto/H4vadLXVKzRrJ66lqT4PDNdeEBvWwKgT+i
	sJdMbS35j7RTuHVAEOdZ6t/O4ECA34BQrrcR98ms9R1Hj3iDlS7pKlMeO7hwmuan9J0G
	xzeylYXuV1QmF/pHrx+xzew1QUIbxWQ4JFzQPyL70t/Q49PT2CEWklgGIn0lXVu3vR3u
	jd6Q==
X-Gm-Message-State: AGRZ1gLBVi3EHPPAtIKS7cSZ6MsGIwFNR4B99tgZ358ANAMfWDvl1h02
	p6iuQ9UUnFpLlBThL77RTroSnV3kcA9hj5BRXy8gAXzd
X-Google-Smtp-Source: AJdET5cCCsKOBVhUZCKWJSBcR0I1g4jdATe4VF5qdYSq/Bzy8LAadq6tE4Im8pHmu+hG427DL/wfBmZgYes93/wUZ3s=
X-Received: by 2002:a6b:fb18:: with SMTP id
	h24-v6mr1966949iog.270.1540997000028; 
	Wed, 31 Oct 2018 07:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <1540914685.12542.214.camel@genivi.org>
In-Reply-To: <1540914685.12542.214.camel@genivi.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Oct 2018 14:43:07 +0000
Message-ID: <CAJTo0LZOLYW0fgQmOu=fA-M0JB5wt3OUWnsRQ5armecN+YNH=g@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Fetcher failure on mpfr 4.0.1
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
X-List-Received-Date: Wed, 31 Oct 2018 14:43:21 -0000
Content-Type: text/plain; charset="UTF-8"

The usual process is the autobuilder populates the source mirror as it
runs.  I pinged Richard earlier about this, basically it's fallout
from the autobuilder migration and should be looked at next week.

Ross
On Tue, 30 Oct 2018 at 15:52, Gunnar Andersson <gandersson@genivi.org> wrote:
>
> I'm right now seeing a fetcher failure on mpfr-4.0.1.tar.xz
>
> As far as mirrors I believe we rely on this through the inclusion of
> poky.conf?
>
> http://downloads.yoctoproject.org/mirror/sources/
>
> but we also add our own (PRE)MIRRORS in the conf files.  Regardless of the
> project, it's not enough to rely on an external source.  But unfortunately I
> found our own mirror was out-of-date and not updated and I have to look into
> what's needed to fix.  (Our build agents generally cache the sources locally
>  on disk as well, so that's why the network mirror is rarely hit.)
>
> Now, looking at yoctoproject downloads above, the mpfr-4.0.1 tarball seems
> missing there too.  This led me to two questions:
>
> 1.  First, is there a point to posting fetcher failures to this list or is
> that just noise?
>
> 2. Nonetheless it led me ask what the normal situation is for updating the
> yoctoproject.org mirror?  Maybe it's deliberately not done for the latest
> master, only for released versions?  (Although thud branch now exists...)
>
> Just for reference, looks like the mpfr recipe was updated on poky
> master/thud at:
>
>     470327eb1f5 (Khem Raj 2018-08-15)
>
> Best Regards
> - Gunnar
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

