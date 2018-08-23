Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A38CDE00474; Thu, 23 Aug 2018 05:49:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DBEAE003C1
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 05:49:06 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id n2-v6so4533493wrw.7
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 05:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YGDS0JcGb2O1zBzQxcf+3KmXVnV1rkSIVFCfIY4ZR1M=;
	b=WoJzI3LbVQzIqqdMtiNQDEFmOQhsMjfRFJRqp5zY/Y+mYJ+GJ6RLvtD+N/7owJxX63
	cqFWwM8+MdPyaZNuGyOPNLpVWSN9ksr01dfHVcysRglMS3OI/LtQ2goN/OHPogA0YlQD
	FeE6HuXpeB4cIuHF97d3f9h5rVH6pusrcrxdaanCfVj/Ze9T5/34c0x/ba1da+BEkLal
	At1uHDNY67WP2Hp2fpuvqkRDIPxpghktpGVagbmNSeaTajoQybcxkzpsTfQZJWjy1JDm
	MqC5Gl7t4pigmagjttkU0kdPKiFhB7kLInSqKZ1ByS7c3nFP8lleuPmNOGsPz2gas/vl
	DnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YGDS0JcGb2O1zBzQxcf+3KmXVnV1rkSIVFCfIY4ZR1M=;
	b=D3CLtNt4EZjx0wiL57aNAbz0eD+Gd+EhD6YBjP8gTEt0Z2b7ku0ljhuI+NgAd4BLOc
	ZqqAB0PM4plQe3ASLlJ5rBIxaPyk8dZuQ0d1LI/JUi7yUnnpJyZ+JhaFOuv1PSbn6oK6
	DkZwWpxYtqqylaELKdPOiQJi72C07LrERoqZGU+gpmapN0mJC+GtJ7OAvb/PMOfUmYvK
	W1gLddqtQbXhEcg/gxWOe1bj8zA44QnSd+wYnioEFsvkgUmfIZHY6BokD4tmlO4iU3GS
	Ik8I3VkKXY0/inHd85ypaGiguBIclFYMdBe0fnVVQvOya91h91w90kHNdfR34ytOn3te
	oZ8w==
X-Gm-Message-State: APzg51DEDpQmfBnpjgBRzU1bfqw0dgOpMpvKf4bG503ZOnSyQkzlz9L/
	rGx1RIEh4V2n+VDWa6Bs6QyWx6WktJ78P3HKYg==
X-Google-Smtp-Source: ANB0VdYwZEKTbqmu+a5di38g2kpqJ0Z7oJlSqEy+8NmHysUG71tMX07ESJBdDd8n3Z7F2rXU6rRP9AhSWUDmF9zOm5I=
X-Received: by 2002:a5d:4a87:: with SMTP id
	o7-v6mr12477923wrq.132.1535028546295; 
	Thu, 23 Aug 2018 05:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAJO0J4i9QqAYO5AJb2qWhwO9yz6PhSr1Q9juGFA63G--Fjm8qw@mail.gmail.com>
	<CAMKF1so_qG7+MLYcGhKVqNqzTa5QgP-KKL4RvJo=Lehw6vgypg@mail.gmail.com>
In-Reply-To: <CAMKF1so_qG7+MLYcGhKVqNqzTa5QgP-KKL4RvJo=Lehw6vgypg@mail.gmail.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Thu, 23 Aug 2018 14:46:21 +0200
Message-ID: <CAJO0J4iZ23BH=Bdoe1mUcwHbfOEUH82-BmbMmJSsJQ_DAZiPgQ@mail.gmail.com>
To: raj.khem@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: nativesdk-gcc tries to link with host
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
X-List-Received-Date: Thu, 23 Aug 2018 12:49:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Raj,

> target sysroot poisoning is naturally not needed we could do that but it is
> not useful, for nativesdk  it behaves like a native gcc except that it prefers
> the libraries from SDK rootfs, now should be limit it to just the
> rootfs and blind
> it from system rootfs .. may be I dont know if thats useful.

In my case it is useful because the machine i use the SDK on, has a
very old glibc 2.12 which misbehaves for a lot of software. An example
is the error I showed you.
I have poisoned the nativesdk-gcc and now I am trying to build an image.

