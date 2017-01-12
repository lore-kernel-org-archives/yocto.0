Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46E9FE003C1; Thu, 12 Jan 2017 13:55:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AFDFE0033D
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 13:55:39 -0800 (PST)
Received: by mail-it0-f68.google.com with SMTP id o138so3253035ito.3
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2017 13:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xFFrPkXIvZ05G2+ZdGRcR6gX/V99302XBedIzeCehIE=;
	b=CGVpqY5WObhP6BzAK7HZuywapH7bpL2FqduMkfgLOAN5UdEO1mqxZGjhWiiJsLjdPP
	KQ0GLrIsK0g8e63cbXSDX6mI/TqB9VbkDDpRs9X9uOUJKq1WuCbTnq1xmC6+iSaxz5rk
	BLgnABwmtpzxVF3aLBL/yufwXe1kVV0LI6TpLYodEekjrkWeJOTn4AcRp+8E4rlMG86M
	yjNYK2LIVlc3TY4PwcnD0qeDm5jya13vgsF7w3GisSuu/Ff2L1KUJS148lNSRu8x6TpB
	uVlfryo8sXdKU2YAFjd0t3+ijWp8pmewYoRbZWR+pvYj4Wn0exlu6MpP/xUBrjHUjwX6
	7Bcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xFFrPkXIvZ05G2+ZdGRcR6gX/V99302XBedIzeCehIE=;
	b=tv/JcDbg/Frf/pBwsL/R+r4n/K4F8Asa+CjQbA0cg0S6kzPg4RFeuVz0vdGkOdwg3R
	WJ9BgS25408wo2KqYoOHTld6fPf9i7PG3WrxMoDrCciRifc4+5p9eXOROsTn/tDT8JD0
	Qpi1ifPb5z5NwMnA8FZmtam6tECNqJCAzorUAg3Er84uYdTuM+gEF5HxNGTHZbUUu2k0
	Zl1Zfa/oUh8OjOHSGEl/gFGisCKblYOcBXcsjyzsNXsRkQVaWYH8f73FwKWoG565mVQF
	XXlbIOqmfRNVfUjjEMgM5J90LrSvOyJqP7f3qQjMFK6JdNjl2yDlwYt6295VwbWZ02Mk
	dtTw==
X-Gm-Message-State: AIkVDXJN2A4qaSioxfhiZNlGcXQqpKOTbzmUdT8XFR6xxH1qRiHfg8sTktJ5x/DNim8oEo6pKMfNkII9b8Uz8w==
X-Received: by 10.36.149.196 with SMTP id m187mr307107itd.34.1484258138788;
	Thu, 12 Jan 2017 13:55:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.195.69 with HTTP; Thu, 12 Jan 2017 13:54:58 -0800 (PST)
X-Originating-IP: [86.186.202.142]
In-Reply-To: <20170112182905.15203-1-raj.khem@gmail.com>
References: <20170112182905.15203-1-raj.khem@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 12 Jan 2017 21:54:58 +0000
Message-ID: <CAK18fxEs0UGdhSZ18yiEB5s2fDe3zExHX88Gv-DYt=VJheDWow@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] linux-raspberrypi_4.8.bb: Upgrade to 4.8.16
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
X-List-Received-Date: Thu, 12 Jan 2017 21:55:52 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 12, 2017 at 6:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> index 7511f93..be25e65 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> -LINUX_VERSION ?= "4.8.15"
> +LINUX_VERSION ?= "4.8.16"
>
> -SRCREV = "c8af0c2f515556ef052913d552b6b11501c71996"
> +SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>  "
>  require linux-raspberrypi.inc
> --
> 2.11.0
>

Merged both to master.


--
Andrei Gherzan

