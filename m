Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 887A2E00AB9; Wed,  4 Nov 2015 01:25:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF67EE00AAA
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 01:25:01 -0800 (PST)
Received: by wikq8 with SMTP id q8so88107810wik.1
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 01:25:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=0kLfulxjHF2eX/JutTZII7jAKNQG1vyih4o1WaoWeCQ=;
	b=h8/4lrIXAS2uK4mPTjdqTQ/Vm2OdutL308C3Fo6Yf1A5F5qih1CoRTRyHMiBi6pbRQ
	vNsuexma7Nn4rUQ/dmvjD8emaClnBIDqdfmAVlj7QFJKN8A/tG7pjByuA/znAzFgfJ/+
	Mv0wmBctMGNx3Vvb3rmPOu8sWIztP5gYzntJLawIKH9vf9DnzICPXlD778dkmUy/h99j
	50Q342QYCEYytsLK+8DEVj7NlJSD/5kOcM8wq78LgkHnnt+OgJQRwe2x1DVQ3jOSccqh
	C0tpLK2o7zjLdxb2zJxfB9V06eYUhkkxWQCEk24nQYuonkBLNVOBRbv7rQJCer1KdgAj
	ZPnQ==
MIME-Version: 1.0
X-Received: by 10.194.90.169 with SMTP id bx9mr690149wjb.1.1446629100193; Wed,
	04 Nov 2015 01:25:00 -0800 (PST)
Received: by 10.194.140.38 with HTTP; Wed, 4 Nov 2015 01:25:00 -0800 (PST)
In-Reply-To: <20151103115426.GC5867@ad.chargestorm.se>
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
	<CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
	<20151103070538.GA5867@ad.chargestorm.se>
	<CAJ86T=UrJ8d=BhKrNuxEHn91BHdDOk6ZYZQ00w789b=-yU897A@mail.gmail.com>
	<20151103115426.GC5867@ad.chargestorm.se>
Date: Wed, 4 Nov 2015 01:25:00 -0800
Message-ID: <CAJ86T=VeHa5-bW5kiiv4gc-kX5psCdXnsC=giZ-eOE8n+BtxpA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 04 Nov 2015 09:25:03 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 3, 2015 at 3:54 AM, Anders Darander <anders@chargestorm.se> wrote:
> * Andre McCurdy <armccurdy@gmail.com> [151103 11:34]:
>
>> On Mon, Nov 2, 2015 at 11:05 PM, Anders Darander <anders@chargestorm.se> wrote:
>> > * Andre McCurdy <armccurdy@gmail.com> [151102 20:35]:
>
>> >> See the "IMAGE_TYPES" variable for a list of rootfs types which are
>> >> supported. There's support for creating an uncompressed .tar file, but
>> >> I don't see any support for creating a rootfs directory under
>> >> tmp/deploy.
>
>> > No, the usual workflow here is to unpack the tar'ed rootfs at a suitable
>> > location.
>
>> Indeed. I don't think it's what Roberto was asking for though...
>
> Well, sure, that wasn't what Roberto explicitly was asking for, though
> that's a safer way to do what he's after...
>
> After all, if you never learn about best practises, you'll never know...
>
>> >> Depending on your work flow there are a few different solutions
>> >> though. You could extend
>> >> openembedded-core/meta/classes/image_types.bbclass to do what you want
>> >> (e.g. define a new image type or hack "IMAGE_CMD_tar" so that it also
>> >> untars rootfs.tar right after creating it).
>
>> > Well, there's some issues with this approach. In order to uncompress the
>> > tarball and be able to set owner, group, and permissions on all files,
>> > you need to untar the rootfs with root privileges. The same is true when
>> > it comes to creating device nodes.
>
>> Enabling CONFIG_DEVTMPFS in the kernel is pretty standard, so for most
>> people there are no device nodes in the rootfs tarfile and /dev is an
>> empty directory.
>
> Sure, devtmpfs is pretty much standard, though it could nonetheless be
> good to know about.
>
>> Extracting rootfs tarfiles as an unprivileged user has always worked
>> fine for me. Do you have a specific example where root privileges are
>> required?
>
> Well, everything that requires a specific user and permissions. When it
> comes to permissions it's likely most if you need to setuid or setgid on
> binaries / files / directories.
>
> When you unpack as an unpriviliged user, every file will belong to you.
>
> Thus, the recommended (and safe) way to do this, is to unpack as a
> priviliged user.

Yes, you're right. If you everything on the target runs as root then
losing setuid flags isn't going to matter much, but it could be a
problem if the target needs to support non-privileged users.

> Cheers,
> Anders
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

