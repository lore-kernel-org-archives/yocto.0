Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ACBBE00B5A; Mon,  2 Nov 2015 23:05:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281EFE00B54
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 23:05:43 -0800 (PST)
Received: by lfbn126 with SMTP id n126so7190273lfb.2
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 23:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm_se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:organization:user-agent;
	bh=CpDz1RxAeXh/o7zrmH0lN2dxT2CqkyJWwGb7Xi2K88A=;
	b=bHm3qa7vJu2+Iod2a6VroY5g0mqYDwQwsG03q3jZ+OUR9XkLWF7Or7PG2ZXmc5r1sO
	9buuKhIcf13PVYjM3H82ehWR04xzH22j8xY+Mrk8qTI3gY3CWXbR8r+2hZ4hr9nc0F3r
	fizoBg4HdYem5qAjYYgC7qdWldNwPvU6K38fKkkjiz5heEcirSgcGoFeeU+ziGfDtjrV
	fSG5Q3l7t/q/+C5XBOpmUOgrDRZEKTcz9olURFzD0sDUUxKKqJtrp+/Ozu3h2fum0yW1
	HkAnaCzOetLd4RTQVvkYOuD0Bz0RdE6Eui2V0u4uI14ogAsoR3V/DRllQWHbY7NpqKq3
	5wpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-type:content-disposition
	:in-reply-to:organization:user-agent;
	bh=CpDz1RxAeXh/o7zrmH0lN2dxT2CqkyJWwGb7Xi2K88A=;
	b=Xv2H66iDjCqoqEVifkkTJrmKZfKkAn+pvlbxQYbd4O/kbHLeMsZnRxus6raP0vb3D2
	OhqA7Iq5Q/qohvysFgMn0j/bPgOMU5Gww0AGOmyKQESgSj3PI5DziIjAQ+smcTcZeNCD
	6dyl/qJws/ZVtEp6ZM/S5ogmd7HAKQXYyvA33LfG3ydyvIUJ/KrwJMFQMZTV3U7ncHtR
	ynXdlPQIJAGehGNiBkVAHtLQlYcPNIYIXYzqKeb+pKf3JJTGA8X8yqnrWTgAREfZamrn
	z98Uk1t6XvTB4UZYeDF6afKXzph4HUj+emP61khTy//SY2raLNOTfLunSULBoMa9HPdl
	hM/w==
X-Gm-Message-State: ALoCoQnweWskWB8sFgRD9XmLVJKBjdhdrwkKVKRsQYYbht2XwU7eP31tUOXr9Mf8C8i6zIaa2oU5
X-Received: by 10.112.140.4 with SMTP id rc4mr12060384lbb.26.1446534341499;
	Mon, 02 Nov 2015 23:05:41 -0800 (PST)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235])
	by smtp.gmail.com with ESMTPSA id ds2sm461738lbc.33.2015.11.02.23.05.40
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Nov 2015 23:05:40 -0800 (PST)
Date: Tue, 3 Nov 2015 08:05:38 +0100
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20151103070538.GA5867@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
	<CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: Create uncompressed rootfs
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
X-List-Received-Date: Tue, 03 Nov 2015 07:05:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Andre McCurdy <armccurdy@gmail.com> [151102 20:35]:

> See the "IMAGE_TYPES" variable for a list of rootfs types which are
> supported. There's support for creating an uncompressed .tar file, but
> I don't see any support for creating a rootfs directory under
> tmp/deploy.

No, the usual workflow here is to unpack the tar'ed rootfs at a suitable
location.

> Depending on your work flow there are a few different solutions
> though. You could extend
> openembedded-core/meta/classes/image_types.bbclass to do what you want
> (e.g. define a new image type or hack "IMAGE_CMD_tar" so that it also
> untars rootfs.tar right after creating it). 

Well, there's some issues with this approach. In order to uncompress the
tarball and be able to set owner, group, and permissions on all files,
you need to untar the rootfs with root privileges. The same is true when
it comes to creating device nodes.

Thus, I think it really do make a lot more sense to untar the rootfs in
an external step, which very well could be scripted.

> Or you could ignore OE's
> image creation and manually copy or rsync your image's rootfs ( under
> tmp/work/<MACHINE>.../<IMAGE>/.../rootfs ) to the directory exported
> by your NFS server. Note that you probably shouldn't export
> tmp/work/.../rootfs directly since when the target boots it will
> create files owned by root, which will cause problems later if you try
> to rebuild or modify the rootfs.

No, avoid doing this. The reasons are the same as why you shouldn't
unpack the tarball using a new image type; you're not allowed to set the
correct owner, group, and permissions on files, nor are you allowed to
create device nodes.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

