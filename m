Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57676E009B8; Tue, 23 Jun 2015 11:29:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D839E0096A
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 11:29:46 -0700 (PDT)
Received: by laka10 with SMTP id a10so12063803lak.0
	for <yocto@yoctoproject.org>; Tue, 23 Jun 2015 11:29:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Go7CS6ycJSfPK727Gpfqw00koVqc+WCv7JB3F/7A3NQ=;
	b=hjDHZE6NVay9eRN9Fuo01kniug73Si356zjbrxYS5cKaTfY4a9QOrGe6Zgr6CV4hy/
	xe/giC1lV3T0ZaI8oEYtdXGbIcaqDuof6jlC/9BmC9uBFeoap0GCHftaDAYzMXK7Am0w
	+r7nhjmQlouRF/l0jpB0vFeQeXpXPlqA2bD2uagh6bIGrzbE0FKtHHVKcwudfDNnm6O2
	qGKNWxuNTrAFD1J2Y+GMk/g+1rGb9sNy3mycpfMi8WYkAbXWbpZlFAgJqK2gaWc3/hhW
	pVYEol45/FzUkpDX9buFVOZ+RCvM/CwmiljoJJs8Jj3GLqY1WoZAgEVuJWL5Q7VWNwKX
	QPjw==
X-Gm-Message-State: ALoCoQnbedQCjEJP2V27nh4/ubyn2afK7xIIikzFS1tp/wf2Cbwglm8M2Y3b47OSuadueQQr+gsw
X-Received: by 10.112.185.100 with SMTP id fb4mr18177231lbc.79.1435084184113; 
	Tue, 23 Jun 2015 11:29:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Tue, 23 Jun 2015 11:29:24 -0700 (PDT)
X-Originating-IP: [87.63.77.14]
In-Reply-To: <CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
References: <009101d0a8d9$c460eb40$4d22c1c0$@neuf.fr>
	<CAK18fxEc3T93vKFmRdxhRu5MHOZxM22xyBAfR+cAsnBiptwgUg@mail.gmail.com>
	<02ea01d0a99f$ec37d2c0$c4a77840$@neuf.fr>
	<CAK18fxG+HWcgNYmnspFVHdfi_Pzz5wK-vstJTAxti1pTz0943A@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 23 Jun 2015 20:29:24 +0200
Message-ID: <CAK18fxGtQ=bQZZKK2LyBVhmR1O-L_atYXZnAcVU2-9qf6hzxSA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] [PATCH] ds1307-rtc-overlay.dtb has been removed from the kernel tree, and most overlays have been moved to the dts/overlays directory
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
X-List-Received-Date: Tue, 23 Jun 2015 18:29:51 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On Thu, Jun 18, 2015 at 10:33 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello,
>
> On 18 Jun 2015 10:22, "Herve Jourdain" <herve.jourdain@neuf.fr> wrote:
>>
>> Hi Andrei,
>>
>> Well, it seems that the current meta-raspberrypi is pulling the kernel
>> from github, and the kernel on github already has these "features" in.
>> Which is why I could compile fine with the current meta-raspberrypi 2or 3
>> weeks ago, but it failed 2 days ago when I tried to do a fresh build...
>> Therefore, I believe the change in the meta-raspberrypi is already needed
>> for the 3.18.y branch, because the kernel already has it.
>
> This is interesting. I'll check it tonight.

I re-downloaded and recompiled kernel on the current meta-raspberrypi
master HEAD and had no issues. What meta-raspberrypi revision are you
using?



-- 
Andrei Gherzan
e: andrei@gherzan.ro
w: www.gherzan.ro

