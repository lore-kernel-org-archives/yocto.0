Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17405E00C09; Fri, 18 Aug 2017 13:59:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B645BE008D2
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 13:59:29 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id p8so8246819wrf.2
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 13:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UFW4DJ6NMSQbSb8JWWVDk/vMKcCVVNPo0OpD79n5Kn4=;
	b=W5gjuHOpOJyuRpKOj7fVFcvdulvR8niloMbYpbKT1NDFpYrEuwRtHY9qyWoXe4k9Od
	ldhExFh4t3o3nzgczj6ppJ760+jC76F0ef8Wtnh3DTleGkVk4m6hZkkrwYVc9QzPb2f8
	FGvTJjyKsWHStZbtIb2WL0E1SJnS4/BvGY5lIcOXRdCqo3MiA1oX5lFR22pDotxjHJtD
	v+Q+SUZnkUY0zX3IqEu+3iebxPvVR/CPCkMOCy4W8OpI4+c1AXASj22IFQoMs2lCfRqG
	/g30gSv8F3u4NoKzX8Nrk8+P9cTmnBjSDK1w+ykRehcIpohaRmnLy+9uhw+gpkyZ6+9r
	kEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UFW4DJ6NMSQbSb8JWWVDk/vMKcCVVNPo0OpD79n5Kn4=;
	b=m+vt3IlguDi4n5YdGiKW6fBVWtSo1N5f6wFpo6whHgFq8s2eKavQdsVsVsn4//N0II
	QnMK2KebJ6t39WDIGtCivhPRtbgTjTgcdVJnHklGkBdoqbx9o18xd4xYKg24wOnUzx3k
	LzE+QfDUe+VbHRw6EIQnjqBQdJreZ3CrWwOfR6aRz5s4O2QPefQbf5ACtOH5EwK3HSvw
	0S3QdEwEw03k9+PhT4MsvMxCRjH5BirLRYz6FqbM3akQZ9XljflO/iwZjgormyPrrWfh
	+RSXi/1V0DUbcdM6vMqEOJyONb2illTnV4JzF6u/VM6DWKquwrcLv7X/BHDJaZBnqHAB
	NAOg==
X-Gm-Message-State: AHYfb5hkcRwYQvaEcO6RSRnbZTOZMTS7pUHL/qNsXXgc/1+he5MAfzLO
	jyPqNiN5K4AXfZC676Zv+pjTX1t9c0F4
X-Received: by 10.223.133.206 with SMTP id 14mr6389529wru.6.1503089968316;
	Fri, 18 Aug 2017 13:59:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.128.196 with HTTP; Fri, 18 Aug 2017 13:59:27 -0700 (PDT)
In-Reply-To: <CAP3gWc9wu0_86_QjKQOyKXXOc-5pD4H61sU2i_WMY2=rooCT6g@mail.gmail.com>
References: <CAP3gWc9wu0_86_QjKQOyKXXOc-5pD4H61sU2i_WMY2=rooCT6g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 18 Aug 2017 13:59:27 -0700
Message-ID: <CAJ86T=XJfe_AFQ9MwRCZfMG6cZP9U-gx4WrqTUzk9Bs8YcQD2A@mail.gmail.com>
To: Aaron Schwartz <aaron.schwartz@logicsupply.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Predictable network interface names without systemd?
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
X-List-Received-Date: Fri, 18 Aug 2017 20:59:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 18, 2017 at 9:37 AM, Aaron Schwartz
<aaron.schwartz@logicsupply.com> wrote:
> Does anybody here know of a way to get predictable network interface names
> without systemd?

If you are using eudev, then try commenting out the line below "Use
classic network interface naming scheme" in the eudev recipe.

> I realize I could write a script to do it myself, but I was hoping there's
> an easier solution that's ready to go (or close to it).
>
> Thanks in advance!
> Aaron
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

