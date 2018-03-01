Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01E00E00E4B; Thu,  1 Mar 2018 06:39:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f182.google.com (mail-wr0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520C4E00DC2
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 06:39:06 -0800 (PST)
Received: by mail-wr0-f182.google.com with SMTP id u49so6570288wrc.10
	for <yocto@yoctoproject.org>; Thu, 01 Mar 2018 06:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LQo9XPQoo0xXUfh6IBJX+ucXtLKU3gstfqGu4rYndF4=;
	b=uP64D7GmWqH1GoOg0WuOck+RQviXfiluJMi5L2aezDX/HMGL9v4mh50t+Bje8BVK3u
	c+zBLvUk2J4VBv+sMtRU95Zph9MwqRyyhoEgI2xsyAO0Tk96s5gFMunI10Mn1TuEBhNy
	hkeSNsAjIEHe2aSaRInHf5QZVk8EHZHg3TXjUXGMkv/du24qOVD1K9aLt34pAGR0Zcx6
	Y4zEKRL2Lw2m8mKin5b6chcyrwaRKHadlnxPaIEWAW3KIWpYOp9mVYnYst3/gPfIK+/M
	dbVNiJKgD1mqBL+Iu+COdAptDs15lifo+lYzvMgVRQRBAAkf5ANafgUCe7qG1VLnZkpb
	zRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LQo9XPQoo0xXUfh6IBJX+ucXtLKU3gstfqGu4rYndF4=;
	b=W3mD26U3xkBGx71EqJBHzrBbNkUoJ0N4tj3g9xkrXyoIqGx+9uOzkjQMVOYhw5IgEe
	JiVQu+C4zVYF1YKx05DaCr8PrmlEtGeOzgCen01sdH308cZEbSXw6XGuu5TjniWELigL
	OJn3yvZDu9B7UHQpctjWBb969Aay7bvCb+/UEObS3BbzB6KByjLcMUPRgMQg3aM66pim
	uDmZ6ZpmVWszG/lHImlsZ1M44fiXCXlzSYwEuQIJYp1csUDeycZ9CCpKUzFTK4NgSbiA
	XG/6QE5Y3mfH/oenaUFyaiyY1a5qyKHfhPypp213rCjVrbnY+NnX7AVJBiKKpTU+la0K
	4O2Q==
X-Gm-Message-State: APf1xPC1rxYhGfSmtNT+IGvRZ3nIzxfKQeCy1CzVmzUjTDZh88HH9IPN
	SB/rh4io9QdA3yd7fmuV1KnqHp/sR/+MvvJF13QOeQ==
X-Google-Smtp-Source: AG47ELuaNqfra0b0I3SNW/Q0PNrEgsiBiiPgYZw4kosZ59LWWWMIQEQJ6LWKtgWwjfB1hoXv4MSQdBF2uPcKxcPjPOU=
X-Received: by 10.223.152.73 with SMTP id v67mr1962002wrb.19.1519915145304;
	Thu, 01 Mar 2018 06:39:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.153.48 with HTTP; Thu, 1 Mar 2018 06:39:04 -0800 (PST)
In-Reply-To: <CALbNGRS9Ve6VYycqWscWxi+aOD_4Ucm5LbZ=4e7V8f_jP-LczQ@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CALw8SCVP_pE=yyJcO0gULT+1J1T1E_pF0y3nQuShWi3feKBFdQ@mail.gmail.com>
	<CALbNGRTXT084ZC3cD4URao28SWTo0E-Lkr6FLjici5Pb9MppJg@mail.gmail.com>
	<CAK18fxFrW4LDvxneQv1VEcB6anirbtYgfGuWHQSzxQTC4Oo0CQ@mail.gmail.com>
	<CALbNGRR4GVLtkE+AjVwv0BRvPUnXSduibbjB9qkM9awZn+LEJw@mail.gmail.com>
	<CAK18fxF5=v4fJsRG7Kkcmu10UEeDecjJKatVw+Z5kwZ8qdn_Qg@mail.gmail.com>
	<CALbNGRRwt8c_QkPnEsTiVFssaqnUUH9inAzjXrK=Pi80t_sGmQ@mail.gmail.com>
	<CAPyrkgyJRsHEe9PrQ8nvE66D7wixfv760QaM0pbVoOreHdfbuw@mail.gmail.com>
	<CALbNGRSckHk37r9QqKXuQ3TGqA_oBPoEu4eFxDoM-5ZG9N2XWQ@mail.gmail.com>
	<e6dcc7ba-cc7e-2e98-7bcb-0fc21dc06415@gmail.com>
	<b4c91bca-5d86-7a02-c1b0-e53a41ff3d45@prevas.dk>
	<CAHUNapRYzSZpzzJghmWDG5o2MDJVC=dDO8Gf=M1U52EX0DU4Xw@mail.gmail.com>
	<CALbNGRS9Ve6VYycqWscWxi+aOD_4Ucm5LbZ=4e7V8f_jP-LczQ@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 1 Mar 2018 14:39:04 +0000
Message-ID: <CAPyrkgwBJDDN9tupuk32-Z5s6AQJkpBSBjVYZNzQOjrXY8qh7Q@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: =?UTF-8?Q?Martin_Hundeb=C3=B8ll?= <martin.hundeboll@prevas.dk>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 01 Mar 2018 14:39:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 1, 2018 at 1:59 PM, Andreas M=C3=BCller <schnitzeltony@gmail.co=
m> wrote:
> Seems RPi.org made some progress on this[1].
>
> If I only had some time left to give this a try...
>
> [1] https://github.com/raspberrypi/linux/issues/2244#issuecomment-3695973=
57
>

This looks great! I'd love to see a recipe for this added to
meta-raspberrypi. Let me know if you need any help and I'll see what I
can do.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

