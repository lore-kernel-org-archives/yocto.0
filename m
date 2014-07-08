Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2145BE0054C; Tue,  8 Jul 2014 13:20:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601CBE00559
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 13:19:09 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id dc16so5359164qab.29
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 13:19:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=sHMoGAYrjJR1nW9v8ACJ1cBLqWNQdIUntiMzBOxQ5ks=;
	b=McNAwSBDl/caY6CD2gNZvFMusfjoVmiUT7PfYxvvWTUussc9NaANwTfkfP/bVqdUgE
	F0olIRP68+/7znubFrFO+Sv8wTtd0tSlVFXId0GoXkktQ1VFCeh1T5v6F6PK8Yx1Qiq5
	ZWckcb3tDYJ/1zgNkmQxghcbKyv6El/48jiiCHOCDK3NodTuUfVahbbn0353NmInydde
	kQ+CQEjE31IlN6/KuVepHBdaDOjNxGhYKmtzQJpqvY1u9MnwYd/yYkYCV0s4Q5N108vk
	2hrUdaku44JnwATkc55TawHhEJfrTTDZDsGKjUeQOeoLL0h2jJOk4umNYPOrpguOlFVs
	kPXw==
X-Gm-Message-State: ALoCoQlPrweIHzL2n78IrHU5KX4t6+bNXIE85YVgyBhe5d3Ggw6H3z2Ej8HGXO8gn9gJPbz0P8KH
X-Received: by 10.140.81.209 with SMTP id f75mr54001225qgd.60.1404850749185;
	Tue, 08 Jul 2014 13:19:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.40 with HTTP; Tue, 8 Jul 2014 13:18:49 -0700 (PDT)
In-Reply-To: <CA+gsK-ppcQmqUwfJSs1MdzqwBPWkJm=5Ok3mx9Mxnfs7yPowLw@mail.gmail.com>
References: <CA+gsK-ppcQmqUwfJSs1MdzqwBPWkJm=5Ok3mx9Mxnfs7yPowLw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Jul 2014 21:18:49 +0100
Message-ID: <CAJTo0LaKd8t3mDt2N45OOF0C=SNwtGq6dOqHEJNRLSfh4QPuCQ@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: core-image-weston: do_rootfs failure installing libcogl
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
X-List-Received-Date: Tue, 08 Jul 2014 20:20:14 -0000
Content-Type: text/plain; charset=UTF-8

On 8 July 2014 18:28, Rudolf Streif <rstreif@linuxfoundation.org> wrote:
> I am attempting to build core-image-weston with Poky from Master. It fails
> creating the rootfs when smart tries to install libcogl (details at the
> end):
>
> error:     libcogl20-1.18.0-r0@i586 conflicts with
> libcogl-path20-1.18.0-r0@i586

That's interesting, I just built core-image-weston from master and it
worked fine.  Then again looking at the packages generated and their
contents, something very strange is happening :/

Can you file a bug?

Ross

