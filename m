Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C4D0E00B56; Tue,  3 Nov 2015 02:33:22 -0800 (PST)
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
	*      [209.85.212.182 listed in list.dnswl.org]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E04E0088C
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 02:33:19 -0800 (PST)
Received: by wikq8 with SMTP id q8so68542811wik.1
	for <yocto@yoctoproject.org>; Tue, 03 Nov 2015 02:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=628mlycTiHRTHgo0iWqmF1CqwahegKXvbLURfLEvIHY=;
	b=sU4NSwF7w5VFZOyy7s+4b0IYRAnNe5nkZ9BbofWdQGt7LYHWmi+FJmtE4zR+NXky/u
	Kj4nqt12zeYw+d3ta7Q7quBq1VoAh2Nn9/QPKy5FH7RNB072qnfT+JXeRwKn7/NlJ79P
	TZaM0sRS8Nf2Wsm/+btJo3NtLSISPIdkh27HowbWk5tYSxti8DSD8Io1ORP9miFj7eLd
	zsxFPCwN2x2f+4x9Vxkc8o1QIiPP97NyTyrsZE75OfDtyBO+rykK5AWoBKJOyh3n5iKB
	N4lZenDWez0mqbSbA5g1wkWg2pioAmd5Yv8vVAYmtU+OWWdYrk3cANWRKUtSOLH9EhQc
	X3nA==
MIME-Version: 1.0
X-Received: by 10.194.134.97 with SMTP id pj1mr16652464wjb.106.1446546798715; 
	Tue, 03 Nov 2015 02:33:18 -0800 (PST)
Received: by 10.194.140.38 with HTTP; Tue, 3 Nov 2015 02:33:18 -0800 (PST)
In-Reply-To: <20151103070538.GA5867@ad.chargestorm.se>
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
	<CAJ86T=U7mmNmTRi5xHpy7C+XOAPuKiRyy=958YsGeQ3cnYap_g@mail.gmail.com>
	<20151103070538.GA5867@ad.chargestorm.se>
Date: Tue, 3 Nov 2015 02:33:18 -0800
Message-ID: <CAJ86T=UrJ8d=BhKrNuxEHn91BHdDOk6ZYZQ00w789b=-yU897A@mail.gmail.com>
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
X-List-Received-Date: Tue, 03 Nov 2015 10:33:22 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 2, 2015 at 11:05 PM, Anders Darander <anders@chargestorm.se> wrote:
> * Andre McCurdy <armccurdy@gmail.com> [151102 20:35]:
>
>> See the "IMAGE_TYPES" variable for a list of rootfs types which are
>> supported. There's support for creating an uncompressed .tar file, but
>> I don't see any support for creating a rootfs directory under
>> tmp/deploy.
>
> No, the usual workflow here is to unpack the tar'ed rootfs at a suitable
> location.

Indeed. I don't think it's what Roberto was asking for though...

>> Depending on your work flow there are a few different solutions
>> though. You could extend
>> openembedded-core/meta/classes/image_types.bbclass to do what you want
>> (e.g. define a new image type or hack "IMAGE_CMD_tar" so that it also
>> untars rootfs.tar right after creating it).
>
> Well, there's some issues with this approach. In order to uncompress the
> tarball and be able to set owner, group, and permissions on all files,
> you need to untar the rootfs with root privileges. The same is true when
> it comes to creating device nodes.

Enabling CONFIG_DEVTMPFS in the kernel is pretty standard, so for most
people there are no device nodes in the rootfs tarfile and /dev is an
empty directory.

Extracting rootfs tarfiles as an unprivileged user has always worked
fine for me. Do you have a specific example where root privileges are
required?

> Thus, I think it really do make a lot more sense to untar the rootfs in
> an external step, which very well could be scripted.
>
>> Or you could ignore OE's
>> image creation and manually copy or rsync your image's rootfs ( under
>> tmp/work/<MACHINE>.../<IMAGE>/.../rootfs ) to the directory exported
>> by your NFS server. Note that you probably shouldn't export
>> tmp/work/.../rootfs directly since when the target boots it will
>> create files owned by root, which will cause problems later if you try
>> to rebuild or modify the rootfs.
>
> No, avoid doing this. The reasons are the same as why you shouldn't
> unpack the tarball using a new image type; you're not allowed to set the
> correct owner, group, and permissions on files, nor are you allowed to
> create device nodes.
>
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

