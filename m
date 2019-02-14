Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6732AE00C77; Thu, 14 Feb 2019 13:02:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E999CE00C59
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 13:02:06 -0800 (PST)
Received: by mail-it1-f173.google.com with SMTP id z7so18810117iti.0
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2019 13:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=rknaZEY8XBZc7B1yiQ/HMU8WosAP6dEyAUTRbPsDSmQ=;
	b=1nzvvf5kUdId++JReZ7FIeGi3OWh4IVRHWhWCLebAF5BIGknKCWMjgR6IsTbuFpFfN
	enYVPpDtpbCbpO57a8/0sZMMOa79HbOCENPRX5Ds5gFkAOsqgV7Ty1I1v6w/PaavBazc
	UqevsEL7NfoDxsh+9Yalbb5ndDo5lY6nPiCSehXjHd5Xxm6q9sIT/x++CFG6Tt5+5/5H
	RuLXmcVatwYV5VLtXz0G64frv7QxF44N3UIlayhbXhi4GLV/aYvTOWZ2iiwyZuNE3lUI
	0tX4qyhj/f48W1idnW8uAQ9hsfU4+2VL/uall9lGXLvJ/jRWDKlWWCdB+pdPaAuhk9ne
	Jfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=rknaZEY8XBZc7B1yiQ/HMU8WosAP6dEyAUTRbPsDSmQ=;
	b=SMwWGfeJH8kAEelTnQ2jkPbuAaviKuboPhSlbZ6EY7CCNKHnyEFC3AOOPz6RpMrFSr
	vQfhPThdNlEGwXbOCrFcFwft5J50D2P1AcOx3BvVfyHS/jyKNdm5BcDwQ/FQL6m+YfKg
	RlY+qSVsj1M46rJNbtP9Y+6sbFUZsFY6/apvmHDd389woD5c5hgQz3onnXdtHCpUD4rY
	gMQtJfG4XB7c8Px8euNnVdZ/GBjiZEp4w1WZJO5yIzsZMlzoNnsdwKIL3RPpJSI6TTdb
	ZsSVd+KGRsWjnIZtOdLO8dh8Kg6JnLr9IKW4Mo5qIHMTRUE4NusMeQzf8B8rI2xzXUiO
	YZfw==
X-Gm-Message-State: AHQUAubPlFVBaKOAd/HSSElW8/SaXk2RxHH7VaCqLyWzsThAZ/GD8eU3
	dvmKu3Wd0mVXYZDZR3U9vTkCztNxs/2JFYRjKaeHkA==
X-Google-Smtp-Source: AHgI3Iay1LUJOmKwDLEeNMu+5zR9kJo0VdzA39Et7EsmwcqptVP9/3YO5XBma5O26Z9rqd9dolEE+vBXoGe+C2PNywk=
X-Received: by 2002:a02:240d:: with SMTP id f13mr3404823jaa.105.1550178125543; 
	Thu, 14 Feb 2019 13:02:05 -0800 (PST)
MIME-Version: 1.0
References: <IwCSBa8UNgIfRzldVTE4xVmfnQsdsbhPhxR3hNKJSg5WGpUoVUnaS-rwOcCQ-oDgZiMhl75IKCl6BTdjUzZQTK0QLtDDFLNOUdX5SgOJezg=@protonmail.com>
	<CAJTo0LYK1DoH16fOcAdv7sxfefpJddWJqcb0oVchAb8sJy_QYw@mail.gmail.com>
	<CAB=6tBTdYm1FHHvYHKax4GB5stWp_+oh1fQA=A692a8eU8RAOQ@mail.gmail.com>
In-Reply-To: <CAB=6tBTdYm1FHHvYHKax4GB5stWp_+oh1fQA=A692a8eU8RAOQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 14 Feb 2019 21:01:54 +0000
Message-ID: <CAJTo0LZ-qgAytRK_J4wM+D6FoMsT0064N9hXVvUTso7EXK8WTg@mail.gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two recipes install the same file
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
X-List-Received-Date: Thu, 14 Feb 2019 21:02:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 Feb 2019 at 20:29, Chuck Wolber <chuckwolber@gmail.com> wrote:
> I have run across this a few times, particularly with man pages, when including upstream packages into my images.
>
> I have to use a bbappend recipe in my meta layer to remove the lower priority version.

If you've two manpages with the same name that suggests that there are
two binaries with the same name, which presumably are already using
update-alternatives.  The correct fix here is to use
update-alternatives for the manpage too.

Ross

