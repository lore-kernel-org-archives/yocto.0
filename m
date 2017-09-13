Return-Path: <danwalkes@trellis-logic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BDC3E00CB7; Wed, 13 Sep 2017 09:56:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, MISSING_HEADERS, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16823E00C9E
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 09:56:36 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id g206so11745192wme.0
	for <yocto@yoctoproject.org>; Wed, 13 Sep 2017 09:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trellis-logic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc
	:content-transfer-encoding;
	bh=sjIQ9vL/xLZoFTAcbm7FoRR6GK3mQXMtB12v0CyJ/i0=;
	b=qBsvfh+0hLWCJtmI+mLOD3vge/0XKQpzH9dLj/l/Huf07Tlly5x1pquV4yt8B3QloV
	WJUS2bOMpF9Vu0UnfEzLVHiuO5W11wfg0vdoz7H5Sy+HzNEkftBxshUR2U6coBkh2A4J
	l/LjLGF/ab40HrT3oNODUdPanJyNr7DnGJpk3hg8CJkhfDHdm0U1d/lZT5+NW14vt1Ff
	1E9Svc1t15TyhTCRJ0kCpqRrdWyzTmiyoyfxX5njpeF3nSVg3hHx+g84NskVYubGETLP
	8V+0hRz8Zjt/3uN/pWMHTq2A6uG98qrXiqZOGUJmloETQJXVnMdQHWGbo+9DzlWMQ63n
	wMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc:content-transfer-encoding;
	bh=sjIQ9vL/xLZoFTAcbm7FoRR6GK3mQXMtB12v0CyJ/i0=;
	b=iNInx5pgYipgNSIlG8yqDATW9f+02qr+QIj4zyCUQc3lgqSmL0mSwo6tMzsiYx1T0e
	mLAIJJYz8uBFF/Be6WGFMpJ94oSUmxI67pFriOy6p8mRRGiQ1gs5PQubEwV9TjeYm0lj
	1x+Ckr2ywWtz8VWP3pCnAGIHF6OS5ySUoE8XK103EkMetvq6eguBQaSFmbLMnHdupg2I
	gPXPkoYheyAdx51aKzdkCUs/Z8nuAT0uOkE02T7WUogIyVSYPaMsS8S89BlSvorblC/D
	Lh26qaa8s+TdfZYvoOpEHHgBnO3TOhaO2iHrEue4sutCsFt39OiQFTxyJeiUQfbGOi4Q
	kQGw==
X-Gm-Message-State: AHPjjUi+SC8+2Oj9oaIcMVUNcYmX+EGGH4KBRdYfXoh1Oot7z0koagvi
	k/vlvqO9FpnQYvhbdPdKXTzz4ZUTX3WawYO8gyxUBK1wTIM=
X-Google-Smtp-Source: AOwi7QBz1hNuPOvugCVlZ827Au1f+FRw6j5ocYvzb6cm19XpU9EeqCPejHPvcAWiXxN6vp1bwnW3WjNzhvJ3kHnpKl8=
X-Received: by 10.28.199.139 with SMTP id x133mr3178734wmf.43.1505321795725;
	Wed, 13 Sep 2017 09:56:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.102.69 with HTTP; Wed, 13 Sep 2017 09:56:35 -0700 (PDT)
In-Reply-To: <CAJTo0Laxp2ui6Sh8WdUVQxuGmEx+fuGaD_=yCHuFA30u--mZow@mail.gmail.com>
References: <CAAhKrJ0Vcq=udaGzcWi5s4cMyxEnNoyXWoeYW+wJhzWD_zxM8g@mail.gmail.com>
	<CAJTo0Laxp2ui6Sh8WdUVQxuGmEx+fuGaD_=yCHuFA30u--mZow@mail.gmail.com>
From: Dan Walkes <danwalkes@trellis-logic.com>
Date: Wed, 13 Sep 2017 10:56:35 -0600
Message-ID: <CAAhKrJ1YOsQu-F1DZS1v0VweZue=xJ6CR+ASiCAC4=3rUkYz-w@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pyro openembedded gpsd update-rc.d problems with read-only-rootfs
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
X-List-Received-Date: Wed, 13 Sep 2017 16:56:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 11, 2017 at 5:01 AM, Burton, Ross <ross.burton@intel.com> wrote=
:
> On 10 September 2017 at 21:35, Dan Walkes <danwalkes@trellis-logic.com>
> wrote:
>>
>> It looks like because the update-rc.d step fails this setup gets moved
>> into a gpsd post install script, which won=E2=80=99t work because I=E2=
=80=99m
>> configured to use a read only root filesystem.  So I need to find a
>> way to keep the update-rc.d step from failing.
>
>
> The recipe shouldn't invoke update-alternatives directly, but use the
> update-alternatives class instead.
>

Thanks for the suggestion Ross.

I didn't mention it before but I had already attempted to make this
change after I initially noticed the problem.  See this commit:
https://github.com/Trellis-Logic/meta-openembedded/commit/ddf008dbdae602dbe=
722f1fcb231f5549e75a586

I didn't see any difference when I updated to use update-alternatives
instead of invoking directly.

Since the error message was related to update-rc.d I've also attempted
to use the multi-update form of update-rc.d in the above commit.  I
thought that might be required when multiple packages were built from
the same .bb file.  However, don't see a difference in the result with
these changes either.

