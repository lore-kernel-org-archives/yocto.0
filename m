Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 131EEE00D30; Thu, 31 Jan 2019 02:50:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65C3E00546
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:50:10 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id z7so3084071iti.0
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fi7WhYksclo14mfu3N9mQTEPkb8GVzZw8g2JaHq9KZk=;
	b=V50ag1i+pfqQsJBJxkkkf3vnrjtY+m6M78QIDQocYjumtAGU/PkA/UoBicKh8ZHk84
	FN52y46n952WeWn3oTZWOjiVNOG31QWeFnnb6Xy99yT2TucTtBuItSUvp6AhxhWS+Z0j
	O2JIgNw4Ju70YvGdAEBYWOC9wLbClgOPhotz0985d2iGPVmUiQdv8OmjwIfPGmPfZj6V
	7Uy9M00G1nYr4Z6ZNP313Lz83TwzWkBUBeTQ7jYV3C4yP4ruGe+hTCdT3SPPWu5cT6cC
	6/44W3F1ITB4WSdTqn8VN1XFiWNtYQVP7XtcY8fZt7PD0ThcGgN/6ecadZv+my/bGE75
	jxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fi7WhYksclo14mfu3N9mQTEPkb8GVzZw8g2JaHq9KZk=;
	b=VAxI5WhZO98pWIVGmuhzJsbma31T3ot9Undc8UOGtcdKcbJhzHbfhY9LUuSM5sne8c
	oKrNTMh5KwnmVcb7dCyhortUANIFdmzYOwCQGbefOxNE3t8wqTjEX5hy0dnEs5ecT8nQ
	xc7b80Q4wTcK5wjZHV6FlQ9L87J6DPNzjJnDlLwc9Jw+mZMgcFhnybqXEf7V7K3Slcmq
	C4UGgh2gv8ckBPozQVCmkI7LnZJINYYObj/xEfy0OkMX7Ty8hD0h/5i1tLAGsKLMUvu5
	YrB7WoNER1aSLfDhWDfe4UV/kf/47V+7QQiuKvaFqPqHL0uVQhHZ759ivKumrFr3M2GQ
	E+uw==
X-Gm-Message-State: AJcUukeRBKce8a1BuZJtz5Kqc/XYIhBLpCquK7tNGjon/as0+iu9/bm+
	15YTgBNcqf5ZGWfMKhppxxFVCR6dgCpo5Uc9D6m0Eg==
X-Google-Smtp-Source: ALg8bN66HX4WXI2cD19GdbhYqK2CBbiCraoiQrDeT8jB8HAvAGpWpjWq+wcCAL061ZJIsb21mo20y4erWi4RH7iFghs=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr22043254jal.31.1548931810031; 
	Thu, 31 Jan 2019 02:50:10 -0800 (PST)
MIME-Version: 1.0
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
	<0EACE12BE5CA844DB512EF10CAC5B840448B4FD5@DEFRVAI0013.vaillant.vhgroup.lan>
In-Reply-To: <0EACE12BE5CA844DB512EF10CAC5B840448B4FD5@DEFRVAI0013.vaillant.vhgroup.lan>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 10:49:59 +0000
Message-ID: <CAJTo0LYbhDrrEZy56YYV6KOMRVdKtYkW54Sgf8YgJSi1kuFC2A@mail.gmail.com>
To: "Hopp, Denis" <Denis.Hopp@vaillant-group.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 10:50:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 31 Jan 2019 at 07:01, Hopp, Denis <Denis.Hopp@vaillant-group.com> wrote:
> I cannot assure you of that specific case but to my understanding you could find out with the taskexp:
>
> bitbake -g -u taskexp <your_package_B>
> There you will have a graphical interface to explore your package dependencies and which task will be executed before another. Hope that helps.

Those are bitbake's build-time dependencies and don't have any impact
on the install order by the package manager.

Ross

