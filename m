Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6F9AE00BD0; Tue, 30 Oct 2018 04:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9ADE00AC5
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 04:03:39 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id q4-v6so6934337iob.8
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 04:03:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=0BQv97GI6HEbNuNJlAsQH7HmVDpfOAR6D1nAS4RKMpU=;
	b=YcyQEfYSJMGPCw2X99qdbQJpZ5hI6Nv3HOVaJa/ooCfkZrR1qlXcBbE2xJyiql3rAc
	5sgQABelIJC44sWToqTc6nyLPglltsQ0pjX9s0cYxXh6QQS2qF6PcPWpXOdI3Z0vHH//
	TpfflX88U4JT/Y9Kt0bEFrSyQ8G47W7fD9L1lu1HOqCQxLJnXRSapKyUh08D9EmhWQ+i
	XxGWPhFnxyMrdmSQVKxAAO915Ib8REFcMmGHokuwGKWhRMUhEYWPRfhgx6m7iQgHTJ1m
	kNVjxOF1YW6IER4J3ZQFW35SH72QhgI6NPI3jNHKFR6FJoaZhBjZqOqUSqFZo/ecyPvq
	g2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=0BQv97GI6HEbNuNJlAsQH7HmVDpfOAR6D1nAS4RKMpU=;
	b=cucPL+8Fncx6DUalA29V6TuuRxVKPkAyJOnMQ/qFaxhn9P0F8u6PhGrlg+YktLGaja
	+WIDqpeo30f8qv8sHVd2DGCR+RZRS2YFUJP19I/1sCY9xb8p8ML0rWjIB4g7/1+PcQB0
	aDd90BGkDqUNwvei6yjW2FcOcG0v35vTNIyYCZh8S6JKFsx8czBqsZ/1rbP3wunFhy8N
	01d49BAwd+c3MWLIaCS06e9zr20lw1F0wRelbfuTcLnbpPmG9tHcxJPLGuYvos4U38Le
	k6xMEYhCFEuBuoTmmTKfwHmbDQNNnHaKqujjpYOhTGF3kWg5QS7kAv+enxJH1jWKP1nR
	rWkw==
X-Gm-Message-State: AGRZ1gKCnMO3S552eFnVsROBoSlHstvNutXSTre1xZHwsQhie/rFBhNT
	PeDzTUsGKFI66LwvaZIffaDmFMeCgrPIq9TAKi/Fmsdo3Mg=
X-Google-Smtp-Source: AJdET5cbwlu7pdLF7Vk7Z2zQUGnvgAX3iUuhT+nC39TQYGs0f7HqZLh0Hw9eITDJ/c6kYxNd2uKuo8pBBthHDr2f50s=
X-Received: by 2002:a6b:fb18:: with SMTP id
	h24-v6mr4089227iog.270.1540897419012; 
	Tue, 30 Oct 2018 04:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
	<CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
	<CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
	<CAJTo0LagPTdQ__2OfiKjwtDhe8=4T7aOqY3EjnAuqwKQdftnmw@mail.gmail.com>
	<CA+4=ZEM-=P=17WC9JCqpana8EwCum3cANGuhUo60ryqbP29hYQ@mail.gmail.com>
In-Reply-To: <CA+4=ZEM-=P=17WC9JCqpana8EwCum3cANGuhUo60ryqbP29hYQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 30 Oct 2018 11:03:27 +0000
Message-ID: <CAJTo0LYaG0=3-qgB0r-87nh-VVvft6YB-OR5kyD7hP22R=aQZw@mail.gmail.com>
To: joe.flowers@nofreewill.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Tue, 30 Oct 2018 11:03:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Oct 2018 at 03:05, Joe Flowers <joe.flowers@nofreewill.com> wrote:
> Below is the output you requested.  gdk-x11-3.0.pc does not seem to exist.
>
> Below, should that be "wandboard" and not "qemux86" ?
>
> joe@ubuntu:/opt/yocto/build$
> joe@ubuntu:/opt/yocto/build$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
> ERROR: Unable to find pkgdata directory /opt/yocto/build/tmp/pkgdata/qemux86
> joe@ubuntu:/opt/yocto/build$ cd ..
> joe@ubuntu:/opt/yocto$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
> ERROR: Unable to find pkgdata directory /opt/yocto/build/tmp/pkgdata/qemux86
> joe@ubuntu:/opt/yocto$
> joe@ubuntu:/opt/yocto$
> joe@ubuntu:/opt/yocto$ find /opt/yocto -name *.pc* 1> ~/find4.txt 2>/dev/null
> joe@ubuntu:/opt/yocto$ cat ~/find4.txt | grep gdk | grep x11
> joe@ubuntu:/opt/yocto$

Yes, the pkgdata directory should be wandaboard but you haven't set
that in local.conf (you should), you've been setting it in the
environment so you need to set it in the environment when calling
oe-pkgdata-util (this is why you should set it in local.conf).

Was this after building gtk+3? If I'm reading your build paths
correctly, what is the content of
/opt/yocto/build/tmp/sysroots-components/cortexa9hf-neon-poky-linux-gnueabi/gtk+3/usr/lib/pkgconfig/

Any file on the host isn't what we're after, they're not used in cross
compilation.

Ross

