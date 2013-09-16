Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8C5E015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 15:05:08 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id oz11so3620224veb.3
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 15:05:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OhFkKNjW5GH3/wwd7d6q62St3odyEfRzLYxsifHwu1M=;
	b=F1nOhvb1ZWiy02s9Ql4rgDt3u4mdZ0bnsYoJHtJUlejD9E8vZq+4Hj2mpqYmWuilT6
	u9HmF61ZGFmeiGoFwDlX1V483RbghXn5Gfe7nCuKjYfw4KR6jCC+uEAJQy4fZsKt6rKJ
	pqcwxN+wTUtXjtZZwct8ABaThMc6AmbhbL08AjhMjW98IbR0PDw08KSqUSV+wmXetcHG
	7apzcHxc95yv/OmvBahs9nw3onzIvr3awGmQ6R0M9ywrZ3t3PE6gzi/NK2YC+baWQj55
	H0atgS0WOjHrYTeRTwpW4knzOxGxxE8bwsDtsOjZ6hdkEdfrWvhl2b0gqtzZvmTmMAjg
	4ejA==
X-Gm-Message-State: ALoCoQmwdzR9m3GcX44ZHttCVVvJFdBWNZ/4zGRfo0tQzcG9a1twFUwE1paHECcWN5TOlGgKvpKK
X-Received: by 10.220.11.7 with SMTP id r7mr29132046vcr.12.1379369107593; Mon,
	16 Sep 2013 15:05:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 16 Sep 2013 15:04:47 -0700 (PDT)
In-Reply-To: <47198CCB330A4B7B87C3B2CD406E94BD@PAULD>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
	<CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
	<A713D66A57B545848DDD45415085C8D0@PAULD>
	<CAJTo0LbPx7Gvg8iSqkfesBr9JKZT3E7GovdxjDen5-UwrQfE+g@mail.gmail.com>
	<E11EA2803F3A48F9A3E9C59006A9E37B@PAULD>
	<47198CCB330A4B7B87C3B2CD406E94BD@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Sep 2013 23:04:47 +0100
Message-ID: <CAJTo0LYJQSXfkMLarV+SJuLzQv966eZ_F7xDRSXVuZW_Tzw19w@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 22:05:10 -0000
Content-Type: text/plain; charset=UTF-8

On 16 September 2013 20:05, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Is this _remove something new? I'm using the Gumstix-provided metadata and
> tools, which are from the Dylan branch. If that's the issue, must I
> explicitly set DISTRO_FEATURES to the big long list in local.conf?

Yes, very new, as I said it's in git master only.

Ross

