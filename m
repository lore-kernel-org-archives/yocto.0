Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14ABAE014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 05:57:51 -0700 (PDT)
Received: by mail-ob0-f178.google.com with SMTP id fb19so676628obc.37
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 05:57:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=3tU20yg87/tFLT11QBnVHBodT8M7QPBw/ptxwB/O3xg=;
	b=bMo6KxQN7j+4AyKf4/kN+SC+dHeePh6INTnDZ0nW2H2n+mw//QYmoWWuuIEHjY4uyW
	MT+g7oxaQNob+rAbzLEp+igdsL7XuWmGTodanssl54EXVqf87+an+jxo+qcbGogH0fMU
	+eRjBunDHbZLGqIdf0c/MulMqB98fHhfNkZ/dti/3h4KTBB2VxNX7h1N1JRC9Xif2tff
	etTScQ+Z+U60DnEnNGluDHLzEfqa9tLZIdLg/QzM/Z1IdNwoVjSn9FtmzORFaLIKWSsP
	/7s8xq/1V/ttvC2Js8C2uhJSJExOFVVPhxh/Y4wAxpLzgeTz5bojAd88lWcD5Gn+gGTd
	pSpQ==
X-Received: by 10.182.72.170 with SMTP id e10mr4066654obv.62.1372337870829;
	Thu, 27 Jun 2013 05:57:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.25.133 with HTTP; Thu, 27 Jun 2013 05:57:30 -0700 (PDT)
In-Reply-To: <51CC3174.5020304@mlbassoc.com>
References: <51CC3174.5020304@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 27 Jun 2013 14:57:30 +0200
Message-ID: <CAP71WjxSYZ0gs8bYw8uPsdHZpEbnU8nqCwBf=kpg0Er5efDycg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkFBe/AlE899ogL09E5VS7BalbGw/gSF4KaH9PWysosPSfXr8MgK9QwKiD7hGTg2we0a6sT
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing a package from an image
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
X-List-Received-Date: Thu, 27 Jun 2013 12:57:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jun 27, 2013 at 2:35 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm using one of the machines from meta-fsl-arm (i.MX6) which
> has this setting in the MACHINE.conf:
>   MACHINE_EXTRA_RRECOMMENDS_append_mx6 = " imx-audio"
>
> While this is reasonable for most of these boards, I have one
> which has no audio and I'd like to leave this package (and all
> that it pulls with it) out of my images.
>
> I tried using this in my image recipe with no joy:
>   MACHINE_EXTRA_RRECOMMENDS := "${@oe_filter_out('imx-audio',
> '${MACHINE_EXTRA_RRECOMMENDS}', d)}"
>
> How can I "filter out" this extra/unwanted/setting?

you can use BAD_RECOMMENDATIONS variable to list packages that must be
filtered out during image creation. however BAD_RECOMMENDATIONS does
not work with all IMAGE_FSTYPES. I think it only works with ipk for
now.

