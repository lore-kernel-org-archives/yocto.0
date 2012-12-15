Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 920E5E006CC
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 07:50:41 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so3626780lah.35
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 07:50:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=14P5oKXVK6ndfwdonwW52zq14srM4L/e7wCTiD0eNGw=;
	b=feJRQul59pQFpxpPeG6GpZe16uYi03w8XyG4fIEvOGxdyM/9x3y4wHUGb974ITsZJQ
	yPoUPVkhWyRls2vZrSdgH6Rq0TtOetssvuiWKFccD7ahoKjBxmet1ceHeWAecoyjZ3/V
	7CuWIknju9RMCIsThSRPGF20eucQg6wY2Az6qZiDFYYNqjUNU9yjBHbUzEBlEKJBORbS
	9fVdnLC6N376ZpXm4j7uN/Ca0AGESHCO03hIAkT5R5yCqOMISu4+kohyM/6BwmOkyqQx
	pDh2ZRVp5mDxsVNo1n3u16qyD1/GjnqjxLIzTwq8Rx0uqGkYiwxNXFpIsoqBqg9mivYt
	9SOg==
MIME-Version: 1.0
Received: by 10.152.111.68 with SMTP id ig4mr6035295lab.50.1355586639916; Sat,
	15 Dec 2012 07:50:39 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Sat, 15 Dec 2012 07:50:39 -0800 (PST)
In-Reply-To: <CAC+thW247JHyVxtyeFKyOtv3EHhwPf4JWucx5vDrjVmkfBUg0A@mail.gmail.com>
References: <CAC+thW247JHyVxtyeFKyOtv3EHhwPf4JWucx5vDrjVmkfBUg0A@mail.gmail.com>
Date: Sat, 15 Dec 2012 10:50:39 -0500
Message-ID: <CAHUNapTaY19OchT1kk_+GB4BgzwjNnFZUUtwSyKhX-s1EYzA=g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: AUTOREVing with legacy recipe fetching from cvs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 15:50:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

I apologize if I'm pointing out the obvious and/or something you've
already tried.

On Thu, Dec 13, 2012 at 11:22 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> After reading the manual I understand that the ${AUTOREV} method is
> not working with cvs. Is there an alternative approach to instruct the
> fetcher to always perform an update/checkout from the repository?


According to the bitbake documentation, if you specify a revision of
"now" will cause a fresh checkout on every build. Is that the same as
the "AUTOREV method"?

poky/bitbake/lib/bb/fetch2/cvs.py:

    def need_update(self, url, ud, d):
        if (ud.date == "now"):
            return True
        if not os.path.exists(ud.localpath):
            return True
        return False

