Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C144E00B1B; Fri,  8 Sep 2017 09:02:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC500E00970
	for <yocto@yoctoproject.org>; Fri,  8 Sep 2017 09:02:04 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id q68so5537647pgq.1
	for <yocto@yoctoproject.org>; Fri, 08 Sep 2017 09:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0xL8VCFqwEjqjq+E7ruEGw/y1aGZCXGtaCYiuf95mvo=;
	b=KyYs7fLWnPhvgn4xTZe3bMDZDFU0k2vU5TK7sXXAqLT/fiA3ZgSrobX7CVA7eijfHQ
	lXH5lk2ihXySOvDaq5QUXQk2dEvuH8FX1JwQO5HJJtrIlkHw1zmGKPCj4z4WNZLRQA41
	0jDmZH7Gxl0r5Jf8OcR9dshAQQEmjr0ilNrasswqPyQqyGXbQy8b+++EfzYr05oon4Jx
	jzKKjyB+LGN1hTmhrOTfF4s0GTghSf+zDya/QRckpL+XyaO5kP7tx0RR+Kq5hkbam2tu
	med6rGPF1OY2VNKNzbkrggjVTHU73lFt8qWYQCWZv5feq/yA2hZEjooklDkJXl+BDEo1
	AdBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0xL8VCFqwEjqjq+E7ruEGw/y1aGZCXGtaCYiuf95mvo=;
	b=DfBhVgrOlibTql/n/thg30ZomaMTU0neyWkgaF/3lHbW6m1xiO2kRadpq7IhvlEgsw
	UhRQP3C7q/MAIRtueGHMAUpE228sZmrJ46ZrbkidZGRB8cHJWLi1VOCwKLcfUrUdVJiZ
	NDP5VBNFgHWsUinQVHuM6zZscKZY5zhjCpAwvzWWMAqcL4bXKoYM/V9s4jTKq8EhVK8s
	RcGcVtnuR+qI7KwNeLJKAtgaMMAKh9+VcwpNPVOmxbWQfmoVD0bHQlza/nTGf/Mb0tP4
	jQjKtkA4tKcMxd1LFK2ZEsEbQ4Le7zJv47Cf5WYpAZe0gUcCMuank1Bl+63a3927LUM7
	IZGA==
X-Gm-Message-State: AHPjjUjItn4uJS+emD15w9YIwt2+uTKuZf43WEVPCA36Lixb+/CYaaA7
	MnK5F/9Is6Rz1nhjIYamTYfK4hNU9tO7lNB3fF8=
X-Google-Smtp-Source: ADKCNb5iqm6Z9kFShjJivVasHM9fof9B50oJDBCBEL7RXkTPM4D/OixFijPGL+kRlOVTMYlknG7Y+aeDyLFGXjqMc18=
X-Received: by 10.98.157.74 with SMTP id i71mr3726357pfd.168.1504886523625;
	Fri, 08 Sep 2017 09:02:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.189.8 with HTTP; Fri, 8 Sep 2017 09:01:33 -0700 (PDT)
In-Reply-To: <d0148a6a-9eac-1f8a-6bd5-d7bd967c82eb@vitheia.com>
References: <d0148a6a-9eac-1f8a-6bd5-d7bd967c82eb@vitheia.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Sep 2017 09:01:33 -0700
Message-ID: <CAMKF1sqhKZvkhsywsFq63F-MXb0CKXShJP2ACWKnneaRf4xqew@mail.gmail.com>
To: Mircea Gliga <mircea.gliga@vitheia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dnsmasq init script typo
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
X-List-Received-Date: Fri, 08 Sep 2017 16:02:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 12:47 AM, Mircea Gliga <mircea.gliga@vitheia.com> wrote:
> Hi
>
> I think there is a problem in the dnsmasq init script related to the pidfile
>
>  test -z "${PIDFILE}" && PIFILE="/run/dnsmasq.pid"
>
>
> The script defines a variable PIFILE, notice the missing "D" from PID. And
> then it doesn't use that variable anymore.
> It only uses the PIDFILE one.

this is a typo so please submit a patch to fix it if you can.

> So, if you run /etc/init.d/dnsmasq status you get in trouble because of this
> line:
>
>   PID=`cat ${PIDFILE}`
>
> Also the script doesn't handle the situation when the the pidfile is also
> specified in the dnsmasq.conf file - the daemon creates the pidfile in the
> location specified in the dnsmaq.conf file.
> But, this is done for the `no-resolv` entry in the conf file.
>
> This is the script in question:
> http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-support/dnsmasq/files/init?h=krogoth#n19
>
> Best regards
> Mircea
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

