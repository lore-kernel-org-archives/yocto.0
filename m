Return-Path: <ross.burton@intel.com>
Received: from mail-qe0-f53.google.com (mail-qe0-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF1CCE0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:24:54 -0800 (PST)
Received: by mail-qe0-f53.google.com with SMTP id t7so8481874qeb.26
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 06:24:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=T5i2/hvMFSRxLBjLxYCK9w7vTvMlYOwWJ7N4Ao07OSA=;
	b=Kgk7oDxOLCLAeiFcUH1Ihs+JsnnbDkEbdnbVslhRoLf0a1vNi2YYqc8BYkjerJO+hj
	r1GBCPimhCasth1GwJpeow83+G57gug0dXdq0DJhQPJBwncP3VcpBoI9pQ01RJXgxG72
	1fsJZ9ufF5a9991G5LjAIZzkCVwOcOPTS8dqXq7BIabYj6kATFz8XmKyxux/NmqfBim/
	KXIAMkyklKXuxiv3EHFW6VtWCATenZ0P6ONPWwn0zwJXA1iK0+45XBncQXUVYPbkm1X1
	6yR5m2pQ7jg9C/+GjTeUzLC0E3JSxQe5fNpdTVgufV5QNYD2pO2C1zIpp6lXTDlnQ+Ux
	U+lA==
X-Gm-Message-State: ALoCoQlCTFncDPFrTgPYDFwtLY3nSwUrY4QYMm3nT4lVku6qZ+KJbrlJpQeNBfPxBKQjMyR5jJQs
X-Received: by 10.224.15.74 with SMTP id j10mr3411838qaa.26.1389709493808;
	Tue, 14 Jan 2014 06:24:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Tue, 14 Jan 2014 06:24:33 -0800 (PST)
In-Reply-To: <52D547C9.3070703@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com> <20140114134754.GD3717@jama>
	<52D541E5.3040401@mlbassoc.com>
	<CAP71Wjz3g1kNJHHAMNaf0-rUFDqMtnM5eWUQKRZRMgKJTAJR+w@mail.gmail.com>
	<52D547C9.3070703@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Jan 2014 14:24:33 +0000
Message-ID: <CAJTo0LYizuLdJZHwpbJSDxFWTYiHnHXTL4r2ZrxCPOe==fUF4w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 14:24:55 -0000
Content-Type: text/plain; charset=UTF-8

On 14 January 2014 14:20, Gary Thomas <gary@mlbassoc.com> wrote:
>> pango looks suspicious here. it's not there by default. so something seems
>> to be setting PACKAGECONFIG in your config, and that could be the root cause
>> of your problem...
>
> The error says nothing about pango, is only says that virtual/libx11
> is missing.

Suspicious because it's not a default value in oe-core, so it must be
set by another layer.

> That said, this was a problem of my own doing :-(  I have this in
> gst-plugins-base_0.10.36.bbappend:
>   # Enable extra plugins
>   PACKAGECONFIG += "pango x11"
>
> Sorry for all the noise.  It's still too bad that bitbake didn't really
> help me find this, only spitting out those errors...

This is exactly what bitbake -e is for - if you don't use grep you'll
see all the assignments that are processed and where they come from.
I thought it would be more lenient in the face of errors, but
obviously not in this case.  I wonder if this can be improved.

Ross

