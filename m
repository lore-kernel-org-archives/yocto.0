Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC71CE00B4C; Mon, 16 Jun 2014 02:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651A2E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:24:51 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id m20so7263450qcx.41
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PLY+9HoVACY+ctqc6Du13o/1FhthXSnAnEG5TL8/ztY=;
	b=ALgNZB7np7a5WEKCicZgeWC/6my0tMXzdDViQL1Wum7pmfEFhT8VIilYTkYyrLZFzG
	iuZi2Pc0v3Tr6VWbk14cF6lL7I5/GVgR0isfB3NNBSkvk+XFtY29T0zSCHT3si7lJzrO
	MsbFvydmMcTEGLLLIyPae5jhxOeAUUUY8y4y+Blp2ibge/WoUp7Mm5njCdu18S8mwBAg
	AUt/FEljRM7H77wOrT4eM8T7R4C0mMBLcd7i6tRcz7M3QhWJvTqCFcwFHiGqNFXhAXLF
	IxkSAxTeegqOCQWsTvJZLan0XNwu+OBDAjAGWEdMEdJwihi3I4RzCkOmWn4VACJzlRLe
	IRMw==
X-Gm-Message-State: ALoCoQn1OwuWMM2gfsHDYkNIGf3KlKXnZQZqZQIBhnvyOBLr0z3i1fGN87fTDTNsjSNl25pOVgiI
X-Received: by 10.140.25.37 with SMTP id 34mr23540391qgs.60.1402910691179;
	Mon, 16 Jun 2014 02:24:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Mon, 16 Jun 2014 02:24:31 -0700 (PDT)
In-Reply-To: <539EB6DD.4000405@dynamicdevices.co.uk>
References: <539D7379.5000907@dynamicdevices.co.uk>
	<539D74D7.8080809@dynamicdevices.co.uk>
	<CAJTo0LaDMD90f4fNjaf9k8Gn=QAvh54qqUn=gh68HX7=ZNApBA@mail.gmail.com>
	<539EB6DD.4000405@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jun 2014 10:24:31 +0100
Message-ID: <CAJTo0Lbx18UXYPF3Czj_-GQYz-tAg+5mTa8ZJMJ7vJFrkbHheg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Autotools, Init Script templates and configure.ac
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
X-List-Received-Date: Mon, 16 Jun 2014 09:25:04 -0000
Content-Type: text/plain; charset=UTF-8

On 16 June 2014 10:20, Alex J Lennon <ajlennon@dynamicdevices.co.uk> wrote:
> OK. Thanks Ross. I don't suppose you can recommend a "golden initscript"
> somewhere on the interwebs that covers the all bases, including for LSB
> functions present / absent?
>
> It seems to me such a script might be a useful thing to have as a
> reference somewhere on the wiki.

Not off the top of my head, sorry.  initscripts are pretty tricky to
write correctly... :/  there are helpers such as start-stop-daemon
that are useful but because there's no standard way to start a daemon,
whether it should write a PID or not, whether it forks or not, and so
on, there's no "canonical" example.

Ross

