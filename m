Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 906F4E00BDF; Thu, 12 Jun 2014 09:30:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68081E00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 09:30:07 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id wm4so776809obc.35
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 09:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=+fjybWxNE4nxzJNAQ7ugeibiAopTJcRpMyKSnLN0kHM=;
	b=hN67TYxX1gSiRrunHH2Pd/VOMtkQILK5RV8ZqpKTf/YEhTVO1ejNcg/Tyi0ovrSfNU
	6KBM7LKd8wJ04C2v7B2COr5c3UPhHWU/2GLvwKnljvgBtVZ76+KJBg3KJw1mfttK/fQK
	QoQQzagAJzN22k/L4LqoG7YzWytxgurLItXo5I4yrf0s3tV0E3xnZJFX/oVfdDfTBnYj
	1IVZPnDA01EngefeL4hsy2QFjD4A1WKc2MH9BWXfGHf+YlFPpi65ekemL3IpAYzLF4No
	ir+WzrgrAUlcf+Js/6UcdwZucECC2p6oGsTcXmqUEl8PlLDvDlp7dYERy0+Sq2fsxNRz
	bmjA==
X-Gm-Message-State: ALoCoQlAIluCh5CEvyTwBLNyHD6UesNbOxtg1N73ov+98CR5sc8yJqKZ69wcgsX8xS01+UiCnyQZ
X-Received: by 10.60.34.40 with SMTP id w8mr30595930oei.60.1402590606744; Thu,
	12 Jun 2014 09:30:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.115.164 with HTTP; Thu, 12 Jun 2014 09:29:46 -0700 (PDT)
In-Reply-To: <5399D4D1.1020108@gmail.com>
References: <5399D4D1.1020108@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Jun 2014 18:29:46 +0200
Message-ID: <CAP71WjzjVtp7ALnaw+iOst_PgVUaNFdbshXVnK4vTfwJT4K6Ug@mail.gmail.com>
To: Arun Kumar <arunkr.linux@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: role of sstate-cache
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
X-List-Received-Date: Thu, 12 Jun 2014 16:30:22 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 12, 2014 at 6:26 PM, Arun Kumar <arunkr.linux@gmail.com> wrote:
> I am a newbie to Yocto project...
> I wanted to know.. what is the role of the "sstate-cache" directory?

are you asking for clarifications after reading this
http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#shared-state-cache,
or you haven't seen it yet?

