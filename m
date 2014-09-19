Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37586E00576; Fri, 19 Sep 2014 14:33:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC611E00566
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 14:33:50 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id v10so3227667qac.21
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 14:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JHLIwiuHv70HH8hJWiv1MfAdnvIefMnCoWOTpMzt8rI=;
	b=PZYqgz9l6dUD2xTL0fygijxYUOg/MZxOYLwctWU0uj2nY3YfJPkvBeLJUZIAM1Q9dm
	kms5zGGBqOIJoL+OF6YkINlfxske0nZSEy30bNHYUuxa8eaOkjqGeHTjb7chhoRcuoFk
	mLnYULK6sGfN4ZnVy7vbAyY6v7YZPdm0tcb5COiXq+Vi71eB5hwF1N3T/PJ2AgJImSk8
	Q7DwISbNRq7yUlTD6bNLHyL+dc2eyHdpbgdvOC0fsU06YY0mOklcOuD0YlnpkpY+VlCQ
	r5UfrmhIrull7zZPcbKLSlST20iSLar88LoErrVqjuGhEo90S4mxNFoX8klHki9xrfkI
	wrIw==
X-Gm-Message-State: ALoCoQlNVwfHaC+62YUTCR+9dmqKBkE0YA2MntR1/P9JHfu75OpQ+mad0kRmq9kIEikjeWQV1r0x
X-Received: by 10.224.79.139 with SMTP id p11mr4155496qak.93.1411162429578;
	Fri, 19 Sep 2014 14:33:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Fri, 19 Sep 2014 14:33:29 -0700 (PDT)
In-Reply-To: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
References: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 19 Sep 2014 22:33:29 +0100
Message-ID: <CAJTo0LZv+ee0DRnfGXtrtx6Q3Pa17pA3TiLmqPvcyf8rBNL16w@mail.gmail.com>
To: Simon Andrieu <sandrieu@greenflex.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky/Yocto drivers for cellular modem
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
X-List-Received-Date: Fri, 19 Sep 2014 21:33:56 -0000
Content-Type: text/plain; charset=UTF-8

On 18 September 2014 17:39, Simon Andrieu <sandrieu@greenflex.com> wrote:
> Using some Linux distribution, it exists drivers that help recognizing a
> cellular modem USB stick and to raise a corresponding network interface.
>
> Would you know please if such a generic cellular modem driver exists in
> Poky/Yocto distribution please?

Would connman + ofono be suitable?

Ross

