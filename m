Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AE03E0070B
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 09:40:59 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga11.intel.com with ESMTP/TLS/RC4-MD5; 30 May 2012 09:40:58 -0700
Received: by dano14 with SMTP id o14so11992dan.25
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 09:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=CS84onHri1lpinvYKI2GNGnYhETHwBhB45WLn1d7K90=;
	b=KkHGXeAxTf5Z30JPKoAy2BpYCwoivW7wWIGwln+HkQmtIfJ/fVyv5DojXUpqRmVEU6
	WAVQ25XnnbATvyQc5C2c5l3tDk6VZ8M/y91SGXWxXtHYMuLr+1m82fnmUgPQmGdwKyf2
	u7CBAeAsNxo0yhq7R05ae8VgTdfc2YUa/+amu0Q4qLkxeAEF7vfnb4GpYLU+5JmDA4iX
	gWPq8lexrZePi4xwKMJokoqEB9fjZ8VUyKuV6CSCB3fPVlIyFtK7Tsdb8wxGy8P33KmE
	Svt5LIcCijprQEn9Xa2idZt8UMqKiPo8HcfL1v8oz+qtpYE+kPwVsDbVLlL0pz0CnBrB
	fgdA==
Received: by 10.68.238.68 with SMTP id vi4mr28743758pbc.123.1338396057400;
	Wed, 30 May 2012 09:40:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.142.229.14 with HTTP; Wed, 30 May 2012 09:40:36 -0700 (PDT)
In-Reply-To: <CAJTo0LbN00yBJG29umhXMwkPxkXJbumUmSH8SqMg4w8qiN7s8g@mail.gmail.com>
References: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
	<CAJTo0LbO9isDBoeO-oMf3nR5+57mgJq66Q1njfEsaR1A2whi=g@mail.gmail.com>
	<3142CB09BE468C408BD5916115E8D45F012A0C@G2W2535.americas.hpqcorp.net>
	<CAJTo0LbN00yBJG29umhXMwkPxkXJbumUmSH8SqMg4w8qiN7s8g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 30 May 2012 17:40:36 +0100
Message-ID: <CAJTo0LZF6teAnRO656qfK0NTPaiE21FQHCBRKX-EfHMRLu08Xw@mail.gmail.com>
To: "Racine, Michel" <michel.racine@hp.com>
X-Gm-Message-State: ALoCoQlDqqX2B25IrdbzG6m1SayvaImS0+ULgqxG50u72XM/uaFy99UGLwG3Fk89bp+YFWeKALjg
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
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
X-List-Received-Date: Wed, 30 May 2012 16:40:59 -0000
Content-Type: text/plain; charset=UTF-8

On 30 May 2012 15:44, Burton, Ross <ross.burton@intel.com> wrote:
> On 30 May 2012 15:35, Racine, Michel <michel.racine@hp.com> wrote:
>> I'm currently working from a tar ball release of 6.0.1. Could you please point me to docs/link to obtain a patch? I probably missed it from the docs I looked at...

Small update - this is in the queue for the next point release of
Edison already.

Ross

