Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78953E014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:29:57 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w15so5563684vbb.23
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 02:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=JIG98zGYC5YUmyIu8rNvt0GKIyVpsLTIBRAnyXH/kB8=;
	b=czc04HCR0+7YobZHlwLIfcq7f9eRACz9aGzmVMH4Bk4yDqbNl5T8JSvgk5uAlmbYjM
	1XqxrvEraWVoQe1LzwGu0KEG6rKipSLOJ8LKsYp/tmg0Gu2ADynUWmz50X3/sroY1mpw
	xv4TFWI2iApvvonRTFn9+6lxQxWgAw8cI6vFuiW5rIpkzSNRLwH7Op7g6cD2jf/HzQvi
	QCej+GcmtmEwIb7QWQ0PwBio1Gys9IYpr4Ml3Rce5JMWRw97e/j0GDqILE86FkQoEUwg
	FGxFlmLPncQislAHCsvx7w4nJ8GEahwAO1xy2kt2inF04eAujcmW80QC+ju/xou3o73H
	pb2A==
X-Received: by 10.220.147.79 with SMTP id k15mr4315068vcv.38.1366622996525;
	Mon, 22 Apr 2013 02:29:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Mon, 22 Apr 2013 02:29:36 -0700 (PDT)
In-Reply-To: <CAAGt+t3dy7C1-gGdypOY4heYF8angEx1S9HZaFCW+WgkfNnnZA@mail.gmail.com>
References: <CAAGt+t3dy7C1-gGdypOY4heYF8angEx1S9HZaFCW+WgkfNnnZA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Apr 2013 10:29:36 +0100
Message-ID: <CAJTo0LbiaSH8HZmPM5PebFU8FRiDJtFDaCUQihQqoOv1UXXd7w@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
X-Gm-Message-State: ALoCoQnCunhiUCo3QQHUcfwRRpU5Aj0IsQq4pe13Ldp7/HsVAyBCj7SfO+4bBonqXJ45vr8N4X2L
Cc: yocto@yoctoproject.org
Subject: Re: Error: runqemu: command not found
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
X-List-Received-Date: Mon, 22 Apr 2013 09:29:57 -0000
Content-Type: text/plain; charset=UTF-8

On 22 April 2013 10:25, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> I downloaded poky-danny-8.0, after editing conf file, i made a build(bitbake
> core-image-minimal), after the build completed. When I try to boot the image
> it throws  runqemu: command not found. Any Ideas?

That script is in poky/scripts, so you are probably running in a
terminal where you didn't run oe-init-build-env.

Ross

