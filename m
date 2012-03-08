Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F9A8E0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 14:07:21 -0800 (PST)
Received: by dadp13 with SMTP id p13so1046515dad.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 14:07:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=jdKhhH4PLrjB2Vgk4ZoJXWQJkwAgmCzCL4lIPxPX7YY=;
	b=Ha0ckpOeFH75mVCep3hdb+NXeM4KxR+PQsNxa4XiI/c5V2xyn0+cn7GNLuk9GvuAX1
	ZCHvzeDS1d7NClTysxUA6Vq4gs2bLAQwhxQUYiufdJomT9BUQgxKlG9YRt2LHP6N4KxP
	OGJnP8EPAZVlcN0KdohShwr/djw8FJY7Feb28+vrzC+6UyGDV3kefkMcto66kabu/z66
	pFzh+ig0c1BNQ39DlWl3xbnS+L3Y/3zF2Zz3uyOPDS9jRVav0uifg483kZ4zXkOCYlco
	rbtdcKau2rdZM5e85YnbQQfhnKAoly/YXrKST9EvmiqoLRiXzG/+fsD10blkoyZG5JfZ
	kXDw==
MIME-Version: 1.0
Received: by 10.68.242.135 with SMTP id wq7mr750292pbc.134.1331244441011; Thu,
	08 Mar 2012 14:07:21 -0800 (PST)
Received: by 10.68.20.134 with HTTP; Thu, 8 Mar 2012 14:07:20 -0800 (PST)
In-Reply-To: <4F59280A.9010603@gmail.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
Date: Thu, 8 Mar 2012 17:07:20 -0500
Message-ID: <CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 22:07:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 8, 2012 at 4:43 PM, jfabernathy <jfabernathy@gmail.com> wrote:
> On 03/08/2012 04:33 PM, Rudolf Streif wrote:
>>
>> Jeff,
>>
>> Use hyphen instead of underscore for the subdirectory SRC_URI:
>>
>> SRC_URI =3D "file://myvideos-1.0/myvideos-1.0.tar.gz"
>>
>> and of course for the subdirectory in the subdirectory where the recipe =
is
>> located. The file fetcher copies the entire path
>> myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.
>>
>> Rudi
>
> that didn't solve the problem. I still get file not found errors. =A0The
> videos are unpack to WORKDIR, but the do_install is looking for them in S=
.
>
>
> =A0 =A0 =A0 install -d
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/h=
ome/root/myvideos
> =A0 =A0 =A0 =A0install -m 0644
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideo=
s-1.0/*
> /build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/h=
ome/root/myvideos
>
> I think I need to control where the do_unpack puts the files.
>

Just a dumb thought, but I have been bitten many times by it.

please try bitbake myvideos -c cleansstate

then bitbake myvideos to build the recipe.

Alternatively, you can of course rev up the PR everytime you change
the recipe. But that is cumbersome.

And yes, I forgot to mention in my previous mail that the
mypics-1.0.tar.gz is located in
meta-autif/recipes-autif/mypics/mypics-1.0/mypics-1.0.tar.gz

As Rudolf suggested - bitbake is a bit finickey about '-' and '_'

