Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3061BE0097C; Fri, 19 Oct 2018 14:42:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com
	[209.85.221.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6BBAE00920
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:42:11 -0700 (PDT)
Received: by mail-vk1-f195.google.com with SMTP id l186so7842391vke.0
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2018 14:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VI5DN4YgviC1rsrVsmBSxJMJFr0Rjyygauqz3vvS5f4=;
	b=VxTlY15Hvo0UMWlJyNDO+sJFQY4pnPfYx10Lon0AUUgOvrfNCKRNsiu/OoDGJig8gU
	tlakYcb6R5DryUkPBy+mNcVz5FlnkgZtulTHaywsc70MaKG7QnT961+++ZbWGo5v0HjV
	ZhhsaGL2HKhbzeDL1nkzxe415jjYlnzG2+FOZvLFC7o4OfuPVydwFrpDiz+YX6gehpqg
	8+aHYrwODpZ2u3jjqL++SNY3kBFd4EsqTazRyj0+YUEhSJnSRhU8AVCNYx1aFUAr9UeH
	t2cWdMd5WgoHjApkscUNwgwkZKIDexAfLh1MHHQs/26d+n7N91TJrHgdtfl2MSgTWh2i
	FX9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VI5DN4YgviC1rsrVsmBSxJMJFr0Rjyygauqz3vvS5f4=;
	b=ZiW/Zg+QrOGthJZxZdfGiC1lcL8SlAqLpgdcWZeGXuosshYY143o8P9NtWogB5ZEhv
	ndsMLP+1nXJRIKQI4vFJnuHI/lRRz3mrdA2LxBFbqIy0arE5JE7dZU7SPYEic3TrglUS
	rG4YxM3z2cgvAA07RyOQqh0VxMQqlhpfkfDQbapKTn7XP1SyFvkZo4LJJH6VEGQD4YDj
	ZWrsOybO4MD5Em0onTL/TQZACGj8x24LrYVm6QJKGrQ1FQYcnZ/uLU8fxgrXItFP6Y3h
	dyRPQKeGjG9XR+y5ejTbAEtJ6YNOm57vjdfKd9r3Gnz5+ynMbh3tZ/odco8Cna4SS3Pv
	j28Q==
X-Gm-Message-State: ABuFfoiYSbdSboQiAUvAT5GwN07WM0vyQpVVpJhd9trexgX0CpNadW0C
	acUgzuybxdWqto096hXHX9Z+nre2/JZa2Y2IniRzew==
X-Google-Smtp-Source: ACcGV61Ra4lVAZDBMnwWivj6b/hE2pu+23isIB8UpU9fGXHqkf9eykyajlRvvvCaxIXxzmuas+90BZe42zEIFEsOoxM=
X-Received: by 2002:a1f:9fcd:: with SMTP id i196mr14854964vke.77.1539985331132;
	Fri, 19 Oct 2018 14:42:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2748:0:0:0:0:0 with HTTP; Fri, 19 Oct 2018 14:42:10
	-0700 (PDT)
In-Reply-To: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
References: <CA+4=ZEM9oFXNUTU8EKb_e2rCzpqZLw6Yc7dQV4mVMH2TbzRiaw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 19 Oct 2018 14:42:10 -0700
Message-ID: <CAJ86T=W0RfP0gbh18r8CX=2-UnpyF6e5z4mbO3N=W5TOTev1hw@mail.gmail.com>
To: Joe Flowers <joe.flowers@nofreewill.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: SUSE SLES target OS
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
X-List-Received-Date: Fri, 19 Oct 2018 21:42:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 19, 2018 at 2:17 PM, Joe Flowers <joe.flowers@nofreewill.com> wrote:
> Hello everyone,
>
> I need to get started on a Yocto set that will build a minimal core for a
> target OS of SUSE Linux Enterprise Server on x64 target hardware like a
> MinnowBoard.

The Yocto project supports building distros based on OpenEmbedded. You
can't use Yocto to build SUSE.

(You can use Yocto to build an OpenEmbedded based distro on a SUSE
host... but if I understand correctly, that's not what you're asking,
right?).

> I have scoured the web, SUSE, and this list's (Yocto Project) archives, but
> have run into no pointers.  My guess is that it is right under my nose that
> can be seen with more experience rather than being hidden behind private
> walls.
>
> Will someone please get me started on the pointers and downloads I need to
> get started?
>
> I have already run through a tutorial on creating a core OS using Yocto for
> a WandBoard target hardware.
>
>
> Thank you !
>
> Joe
> --------------
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

