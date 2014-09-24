Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 418F4E0034C; Wed, 24 Sep 2014 02:20:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABAE9E0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:20:46 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id q107so5576632qgd.8
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DdcHajGEp79k/aRvcOctGJSRLCOXf5AZcc/9e1uomjM=;
	b=YkR5YIubbYIX/4+I5eM7nVYUOqFlyyjCw2e2kBeUcCRxxqCvoUPifjuxnERQiH8znz
	1e/01fmxjW/KjSETTTZYkfVlNzVmqlOymkzoW2ASH0X1fikZ7QJi8Qn8maVI8SLcYZEm
	iL0yLzZyvN8OEhyhQnvrcupa15l6cRtXpPZn4APBQM/s01aCRYTXoQanw80nUGHmiMNw
	YBb/nPDlflcgxkGkQ5ApUu0wOFt6n2lyIGZhrdAIvnGJpikNn16rIpv76Q6ut52TryBG
	19YHcyEUjI8DpufT03uE3URosUsRNX12Y8nhm8R0FrbAtdXp7lHLtavSXex/I08JGJVv
	JVOQ==
X-Gm-Message-State: ALoCoQkjiq5Ks2S+HcjWk0yMI7pcKF+jt3ZKRzWO/cBxWjdJnPzzf3y0b9GDr+Et4j5lnj6c2OuZ
X-Received: by 10.140.27.139 with SMTP id 11mr6474640qgx.59.1411550445767;
	Wed, 24 Sep 2014 02:20:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 02:20:25 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F07213426778F97@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213426778F97@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 10:20:25 +0100
Message-ID: <CAJTo0LZNcjzcD-4heWDDnXeTJWpK+Aj8g9JJXK522XuLg7ruqg@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"sreerenj.balachandran@intel.com" <sreerenj.balachandran@intel.com>
Subject: Re: Waylandsink creating new video window and not destroying previous open window.
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
X-List-Received-Date: Wed, 24 Sep 2014 09:20:52 -0000
Content-Type: text/plain; charset=UTF-8

On 24 September 2014 07:44, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> Gstreamer constructed Video Pipe is working with waylandsink but every time
> waylandsink is creating new video window also waylandsink is not destroying
> the existing video windows.

It's probably beset to speak to the wayland and/or gstreamer community
about this.

Ross

