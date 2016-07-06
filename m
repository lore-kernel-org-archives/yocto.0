Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8D86E00DEB; Wed,  6 Jul 2016 10:53:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 223BCE00DA2
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 10:53:45 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id n132so40822152qka.0
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 10:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eSr2hFUYyKT8MzcNiUmFEiHs9U5E0iU6wuW2tJaPGJg=;
	b=OzsCijyX2Tx+UOneDJEmC64jSi3cfmEG9Y0U5TIScgKiJQre1vJZOWk6jOGfxpCEh/
	Rs5FzgbTwUoD8JU/TyK5lh8XpURoiWq24N5pfnGSTeT3cqq+siq00s84HVa0EiPNv6c1
	Eyqj5eFH+y3VJti5FIV2zhKagn8dO9pLDWHAUtKFCHGArPVdniTvVQtSbFmjTuWOyM+v
	0mP43u4UyQCTkZuV2OMNUkOi3NdHQV7VQKxqpQNtrBKSVUd/WTrA0O6481bF+TxGMSOH
	yMh76xl084pzSQMNHJARr93+BbddRF2LgSoenbgvXllPrwJEd9fbWeSPsJzEvvrQG1m6
	6xxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eSr2hFUYyKT8MzcNiUmFEiHs9U5E0iU6wuW2tJaPGJg=;
	b=Z9178IAPmRCxr88MQVJRjUzgYpwuYWo5mCr5q1T6FH4JIvNZ2kCWFPgVpiwRk5S3AM
	Ew5wyqQ1425MVyONubOw0z0lwfyWl1E11QzeIcDJ2fJQ0fdIkE30+QMpHyugEONu0ewQ
	5Jje+PCK0UEU5E2Vlx9C8Zj+RbD0G1aVLCY5NSBzb3PwKQZ39Xb9Ns1IquZslaSfP+vk
	DQ+/cSF+wTVdOWZ6cx66cv0Ct2uW0PKDAE6oQDAnY66/fG4+QNynE5AEmPbxew+JbKVh
	742Q+4pq4AQORTYcXHKyepZjMAv237OvUcCk2Fxk+ehL5g5922R+CkQ5wXqDDA3CgUoY
	zBwA==
X-Gm-Message-State: ALyK8tLWuK7qdfBzKTYVPCOwKP3JSly+ejk983MY3XpVkDtt0gmADfRPndUjX6o3n77k0fpULZmAtxioyXqn4A==
X-Received: by 10.55.16.232 with SMTP id 101mr33253548qkq.151.1467827624926;
	Wed, 06 Jul 2016 10:53:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Wed, 6 Jul 2016 10:53:15 -0700 (PDT)
In-Reply-To: <CALf_N3Yd-h21rBw2U_v_Qr3=J4SHDrBS75i7TyS=sLrJv7c54A@mail.gmail.com>
References: <CALf_N3Yd-h21rBw2U_v_Qr3=J4SHDrBS75i7TyS=sLrJv7c54A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Jul 2016 10:53:15 -0700
Message-ID: <CAMKF1srVd7qAGrG=3W55+MHqgOu-Wdhvu5ANRnRy+yz30Sczdw@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How do I select the kernel version in Dizzy ? ( 3.10 | 3.14 | 3.17 )
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
X-List-Received-Date: Wed, 06 Jul 2016 17:53:46 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 6, 2016 at 10:40 AM, Mark T <mtl1nuxd3v@gmail.com> wrote:
> Hi,
>
> The Dizzy revision looks to support 3 kernel versions ( 3.10 | 3.14 | 3.17
> ).
>
> If I chose Dizzy 1.7.3 - how do I ensure  the 3.10 kernel is used for the
> build ?

usually you would set that in your machine conf file.

PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
PREFERRED_VERSION_linux-yocto ?= "3.10%"

>
> Thanks,
>
> Mark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

