Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5433AE00747
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 01:34:31 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id w16so6848433vbb.8
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 01:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=akWHq1YkJHfVCTRHgG1YzU3eDLCMuZf16dYLH2rJYoY=;
	b=kE/lsidViUvDK5eYat7W9uFP7RzWB4FwWzPrVcMseAydfr2Xx66xDeZPCrlugCyz1Q
	KaCpT35vNZf+8wHpwo8buBAfuvisEEWNh4dNpj8PJvYT/M+P6ss0FSwFlVnD0jISGMGe
	tWRQ9aiZlpNj6zEmkrdTM4m/qNPGeEf1f8UtzXZqMtw5WzUuVsfg6nPa0SwoQedjQ9Zp
	kboxNqExgQQGlO0QPSZTSy5xy2/px71VNbXwVJacG7eZzKJxvvXMtJvASxFhpmglPNVz
	S5KjghDlxOqE91cm6qK5vm2/29bf1uxV2HorjPrneNXD0oTS5r7WBPaOvwfvm0CNlvPj
	zQMw==
X-Gm-Message-State: ALoCoQnPn1sour5/9+NWQj9Y0u6mbTAd/0bCi+bqkGWZdFFEx6M4i/hD0d/K1Nwh20JcrAIsl1VY
X-Received: by 10.52.27.243 with SMTP id w19mr1278407vdg.3.1378974870589; Thu,
	12 Sep 2013 01:34:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 12 Sep 2013 01:34:10 -0700 (PDT)
In-Reply-To: <CAPhCmJqpJSYfdx2030bB7CeiaK9Sn07e9MS=KJK2MGQ1xVJguw@mail.gmail.com>
References: <CAPhCmJqpJSYfdx2030bB7CeiaK9Sn07e9MS=KJK2MGQ1xVJguw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Sep 2013 09:34:10 +0100
Message-ID: <CAJTo0Lak-M-A6114e-qd9AmZf4f+pvp1ajBZsZtM=VCZT2SC9w@mail.gmail.com>
To: Jawad Hassan <jawad@emblemtechnologies.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Short Cut Bar HIde
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
X-List-Received-Date: Thu, 12 Sep 2013 08:34:33 -0000
Content-Type: text/plain; charset=UTF-8

On 12 September 2013 09:11, Jawad Hassan <jawad@emblemtechnologies.com> wrote:
> i want to give a brief idea before my question, so what i am doing is, that
> i want to run my java jar file on yocto device in full screen. Right now,
> what i am doing is i right a code for key press f11 to make it full screen
> but that is not a good idea to make it. I am running my jar file on boot
> start-up. Please my question is how i can make a full screen or hide that
> short cut bar while playing that jar file.thanks

Change your application so it goes fullscreen on its own - I believe
this is would be GraphicsDevice.setFullScreenWindow().

Ross

