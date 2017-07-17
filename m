Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4EB7E00C32; Mon, 17 Jul 2017 07:16:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F15E00C2E
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:16:22 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id z62so7566537ioi.0
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eO+63gO3D/badibts/vihRYfkFa7Bt52RDdHzXcN9HE=;
	b=JWwP8EEMB+67DrmIayehs/esgfgAAl5YX2mkYX18rsD1w7JOeE465bWaegRTbTm0xW
	GZM66mE6P+KXtMq1cL+IuxHGUfJ3qP9GiEaS4UjNvTyru+GQ3a+kxOIAsubwSrfpog90
	5ViusToAlAZD3hJe/JPTv73pHz/lP5yOsSNJq7noXgdGlbSCUAE3AXjGY5FI+NxASZUD
	6xO/78WQ686eVGWofvL9HqNwITNqZbNZ5WxhGugRviTGJJzqlKgqBfcJ0aQBndeWTj1x
	fixprPnV/pwx+p+i1i+p2gdU01xiPlIpOO0TsCTM3wuxXS1fv0KkTknYG8vlZ3+RQ1Jo
	vQdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eO+63gO3D/badibts/vihRYfkFa7Bt52RDdHzXcN9HE=;
	b=MSdgmlZ5GmZYZ9Zr33BzOv6Efabgila7f7SxPYSWdwZRbQAClECjqfM3cpkQi34M1y
	lLBGca028xwjLv3FJ576/hGgXiGsqHJ1BwF6I8MSArM1iILtlbYnE/IK2VVkyg9VjIC8
	t4yKM34R1lViHBtnpCcHWbQZZDiuLF5vxp2mXkB6/aN8f1KmstSF4rsoma7u3LQaza4F
	hzc2FOQjVv+nseaoT6AJI40glSJDDCU7Pfa8bgRpK7VYlJWWAE6QaQMrGnFtwo+PowdF
	GUDCw7YmEMI4rjowrXbrGYDSRLtawjfdxdwZItpFbopXT4yemJm9XZwLPQxI2yH0wVnP
	OBmg==
X-Gm-Message-State: AIVw110z3L1OrCajj9kH6t3hPx53RTEpHT8oOFFZS08f0t4pAUywCnWO
	NIyCFTXLMmgIxU+KRgYe7EcrV2u5Qejy
X-Received: by 10.107.34.72 with SMTP id i69mr19353259ioi.95.1500300981876;
	Mon, 17 Jul 2017 07:16:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.180.77 with HTTP; Mon, 17 Jul 2017 07:16:01 -0700 (PDT)
In-Reply-To: <a2c446cc-3f69-eb01-6886-f83b949a01c1@linux.intel.com>
References: <20170707103058.976-1-ricardo.ribalda@gmail.com>
	<c49169cb-86c2-918d-09aa-e4e8de22a275@linux.intel.com>
	<CAPybu_3WQkv9_pJ-td_heuWyp3uF07kLmFGp894DnPCjX5jGPw@mail.gmail.com>
	<CAPybu_2Y_JhencZe6rU7A=zrGb01HM6juLgSqJkhmVX7CNt8Ow@mail.gmail.com>
	<a2c446cc-3f69-eb01-6886-f83b949a01c1@linux.intel.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Mon, 17 Jul 2017 16:16:01 +0200
Message-ID: <CAPybu_0w1o_cmRVsmsUvCNDyLztCJpE==6xmrHsx8AvR9pxagw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][PATCH] qt4: Fix build with moc4 and boost
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
X-List-Received-Date: Mon, 17 Jul 2017 14:16:23 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Alex

I will fix and resend.

Sorry!

On Mon, Jul 17, 2017 at 4:12 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 07/17/2017 05:12 PM, Ricardo Ribalda Delgado wrote:
>>
>> Actually I got the patch from
>>
>> https://bugzilla.redhat.com/show_bug.cgi?id=1396755
>>
>> http://pkgs.fedoraproject.org/cgit/rpms/qt.git/tree/qt-everywhere-opensource-src-4.8.6-QTBUG-22829.patch
>
>
> In which case it is not a backport. Then the upstream status should be
> inappropriate, and you should still include a link for where the patch was
> taken from.
>
> Alex



-- 
Ricardo Ribalda

