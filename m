Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C76CE00708; Wed, 21 Oct 2015 14:23:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C2AE006D5
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:23:47 -0700 (PDT)
Received: by lffz202 with SMTP id z202so27396313lff.3
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=fUa7g7Y9Q4kl6jXupTu3P1PZuCiOfCdc0nAmN8jvHDg=;
	b=h9/HQqS8XVx/F+z/v0+pg5kV3TmglCk1sFghpSWx5Uu6Pxbgj4GmShaoVKEpFtL/WQ
	nkkHLSeMWPvf9LOJggo4MTHpuXr54yqTDw6G+fIc8Kz4SzGHgfMH7WgiLHAN73LRCWNx
	bFzlsr9tVhvUIHDptCTz33MzpNwYf6qP6LgUNEZPa1Doxb7idA6eYQMkoHFVBlPZ3aUs
	7nO1oQBEwmlQA9dcqhZS0JQcHGtcwL2AfQv0yB+pT/p8EhnnxpdYV0eNQcGMZwkRyfuB
	4PZdizl82E63jk7nQQw0Pe/1bj83Uq4N9gRDboHtQDidjRw4wBt+NML82NqQVqM1IvdY
	dt8g==
X-Gm-Message-State: ALoCoQkonIpvMf2WeI0fO56W0E0XlWcdQf7wrbcW7rkYIx8PGoLBMqT3hhSm+PE7uDf+6OU1eAVJ
X-Received: by 10.25.24.195 with SMTP id 64mr4383827lfy.71.1445462625735; Wed,
	21 Oct 2015 14:23:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.198.71 with HTTP; Wed, 21 Oct 2015 14:23:06 -0700 (PDT)
X-Originating-IP: [88.67.185.162]
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Oct 2015 23:23:06 +0200
Message-ID: <CAK18fxGXquXW74oEHizzoEvWRjhxvnyELqc0is9Ypg0tVivxBg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 01/11] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Wed, 21 Oct 2015 21:23:49 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 11:12 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
>
> This requires some changes to KERNEL_DEVICETREE as the dtb
> layout has changed to support overlays. This change also
> makes us ready to support kernel 4.x series
>
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---

After this series VC4 is next.

--
Andrei Gherzan

