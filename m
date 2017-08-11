Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31DA5E00C52; Fri, 11 Aug 2017 09:31:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94BAFE00B83
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 09:31:54 -0700 (PDT)
Received: by mail-pg0-f48.google.com with SMTP id u5so17545533pgn.0
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 09:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=4rmS9Kqex+btQc/nx2DBY7reTrw1UtGcrvY/X/sNzHU=;
	b=ayvCYp9pYauD/6aq0KF78ZLNFyDYTrNwcd0UGaf6r0MV48g1Px5A0csNya9ztSrLnp
	SdtMGGhzmBA5ckC2hXytJ6O2m2iOycH/4dA4KWW6bg6WZqKuJmocDDDJv2ZVwmBZgXZc
	JkY9yOoMHdBbmHQKkqWt9yStKyiVFfLbKTV36975TxLekJ8T3Pij0LQ6h3UPj5CZpCz/
	JXYp5359P++Sb0+TUuuF7zy5plaAfvbi/icxE7S4nvfboKC27O5Jy1/UEJUWZ6TcXO7l
	Coi+s6vzR4F1GL2IlkViLqyKPlYCJ1fpBV6GTRBK1soOy0ZbSRkziwan5u2BF3bLPDob
	Dz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=4rmS9Kqex+btQc/nx2DBY7reTrw1UtGcrvY/X/sNzHU=;
	b=nTmez0/cPotOVbaxdN/W/ucB3qZ/3JP0Ui+Oh2zxQWWc1bVZNg6oirDdlqw11RypJw
	qw8nckQb7Q/Nf2zo3/xsf10ULKYlQwEJKgyMC6lFRltTitF8Qy1bbE7BVl4oP8fgOKO5
	EaoKq+oZNHwbHl8+LdEzuJjYuQ1Hr0wZLoPBOOd80BsF+buMmjxF59Rhzr6BwhZbPR2h
	ssGwr+O6xUc7zsFEoQivoPM0jBMYpf9Kkcqk7NEzjh6f7CiLTw4MUjP9Dsxy73w3JM1c
	gxSr/Uo/S8xy9RcYBRHoigMJEIg1mDsoSycJew/o3bEQq6p3P33Iww6jh3jluYbACrdB
	iEwg==
X-Gm-Message-State: AHYfb5hrE1O3lB6Q47osnfZpfptgTze+90lGNvnC6NrM7XB0gVbummz6
	EPqzuWvih/YqaRQIznVxzI5XDSdwO4bz
X-Received: by 10.84.239.8 with SMTP id w8mr17763988plk.73.1502469113938; Fri,
	11 Aug 2017 09:31:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Fri, 11 Aug 2017 09:31:23 -0700 (PDT)
In-Reply-To: <1502455978267.42486@ysoft.com>
References: <1502455978267.42486@ysoft.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Aug 2017 09:31:23 -0700
Message-ID: <CAMKF1sq7UyCVO4hW_D0Z==5AVi9Ua-R_bd+NhSj0LHykvY50Xw@mail.gmail.com>
To: =?UTF-8?B?Vm9rw6HEjSBNaWNoYWw=?= <Michal.Vokac@ysoft.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to generate cpio.gz AND cpio.gz.u-boot image from single recipe?
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
X-List-Received-Date: Fri, 11 Aug 2017 16:31:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 11, 2017 at 5:52 AM, Vok=C3=A1=C4=8D Michal <Michal.Vokac@ysoft=
.com> wrote:
> Hi,
>
> I am in a process of upgrading our project from Jethro to Morty.
> For a while I am trying to solve an issue with generating initramfs image=
s.
>
> We have an image recipe that says:
>
> IMAGE_FSTYPES =3D "tar.bz2 cpio.gz cpio.gz.u-boot"
> inherit core-image
> inherit image_types_uboot
>
> With the Jethro branch of the openembedded-core layer all thee defined im=
age types are generated.
>
> After upgrade to Morty, the cpio.gz image is deleted somewhere in the pro=
cess of generating
> the cpio.gz.u-boot image (which is probably the right behavior of image_t=
ypes_uboot.bbclass).
>
> I wonder why it worked before and how to make it work again, properly.

it is intentional. See
https://github.com/01org/luv-yocto/commit/09a5cb0cca109395a4835e25d483019dd=
d5e773c

>
> Thanks in advance for any hints,
> Michal
>
> ________________________________
>
> CONFIDENTIALITY NOTICE
> This message is for the named person's use only. It may contain confident=
ial, proprietary or legally privileged information.
> If you receive this message in error, please immediately delete it and al=
l copies of it from your system, destroy any hard copies of it and notify u=
s by email to info@ysoft.com with a copy of this message. You must not, dir=
ectly or indirectly, use, disclose, distribute, print or copy any part of t=
his message if you are not the intended recipient. Y Soft and any of its su=
bsidiaries each reserves the right to monitor all e-mail communications thr=
ough its networks.
> Y Soft is neither liable for the proper, complete transmission of the inf=
ormation contained in this communication nor any delay in its receipt. This=
 email was scanned for the presence of computer viruses. In the unfortunate=
 event of infection Y Soft does not accept liability.
> Any views expressed in this message are those of the individual sender, e=
xcept where the message states otherwise and the sender is authorised to st=
ate them.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

