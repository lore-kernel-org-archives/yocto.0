Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28FB6E00D00; Wed,  6 Nov 2019 08:20:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB7CE00BB5
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 08:20:54 -0800 (PST)
Received: by mail-ed1-f66.google.com with SMTP id r16so5082773edq.2
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 08:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V4QpN7ubW3v0+qixTJe1Th2LoDj2PZpEw8+BlX3isd4=;
	b=ibEaMwoZEK1bJ2FNePI02clawftcWus67Baq7oZk1k5wZxzjalQZHKHBMfHQn2zx9h
	iHAtel7/fnko9gD8gaSsIo2DG0sD48/pUMnMdaqIWosL8gAfq94rddK6FmkdKMGNyx4t
	EOFyPYWip7b6oEq5wI1WulxPVy9wYOaG51B8O3EDHKceu6CgcQx1oKnLe8dNX+gfIjhc
	j+NrJFcEVre8PjZRxlknBDv0O/dK+iIyFCjiJCPUO8PJTUt8abie8RDXldNcAwOZbiIZ
	CTaLlol9bfJXdRqQWSdvJjcr1IGzUlbLJoehF3r0t3APdPvOBthlh2shWEEikOdV4tqj
	t0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V4QpN7ubW3v0+qixTJe1Th2LoDj2PZpEw8+BlX3isd4=;
	b=ATf3iY5bORTj6vqBq+JxINUOQkFnxjK9xgkV15tcvIXr/RBQrl+zbixrj9MWVKd+Xh
	ova1tgVPBZtaLMXFyHVMd5FvqzkFgPi1oNSE/EYUUwS/+dbXjvOnRilZ+xWkP/ONFz8W
	99D+6gxuixR5QRDxArfVPbNYiTZUKkZBjS9Jvs8qObu09AShg5WUm/FMy20DnCaDyK76
	wu6DlYxmqOjnK3qWfHJzKU9AK3pxLK1OCNOmdREDsQBAelKOsJR+UrXDfP2z564VPcNL
	ncBLE87qtIX5UvPPK1LCH1yDBGvQJfbjyv+JQIJMrzCqbZSG7S/UGG3xnINJfHOdMLqp
	hgRQ==
X-Gm-Message-State: APjAAAXcScT1HVBEindhi59d0c38EqUx2PznLgNc3sqGrjjHgtfQcYdW
	K8AMoKzSAC/1ZtuCgPXY8f12djNJT93DXr5RaQsc9YnCuszwgw==
X-Google-Smtp-Source: APXvYqyc2CkPiz7WLpWf1eSipG73p0rXNoYfAl64NGNSqSymAJdarrygvsoi+E9egNn5xO9NVyX/aJj3XkYwjt/Cr9c=
X-Received: by 2002:a50:fe96:: with SMTP id d22mr3644887edt.227.1573057253297; 
	Wed, 06 Nov 2019 08:20:53 -0800 (PST)
MIME-Version: 1.0
References: <CACKFPN0f4eSrq8zjcOU1gdvv9QfMNCx=d2AXHdheCJq1se8SOg@mail.gmail.com>
In-Reply-To: <CACKFPN0f4eSrq8zjcOU1gdvv9QfMNCx=d2AXHdheCJq1se8SOg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 6 Nov 2019 11:20:42 -0500
Message-ID: <CADkTA4MWsXbFPbu2FKN5noOGijuepkde7R6nQtbOUJve6DQR8w@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Kernel modules packaged but not installed
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
X-List-Received-Date: Wed, 06 Nov 2019 16:20:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 6, 2019 at 11:06 AM Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi all. I have a weird issue with the kernel modules not being installed in the image and also not packaged.
> I see the packages for individual "kernel-module-*.ipk" modules but the "kernel-modules_*.ipk" is always
> empty.
>
> I'm also able to see the "modules-${MACHINE}.tgz" in DEPLOYDIR which has all the modules in there, just fine.
>
> In my image file I've also set this:
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"

Have you tried something stronger than the RRECOMMENDS ? i.e. either
adding one of the modules, or the kernel-modules meta package to
IMAGE_INSTALL ?

Bruce

>
> This is the kernel recipe:
> https://gitlab.com/dimtass/meta-allwinner-hx/blob/master/recipes-kernel/linux/linux-stable_4.19.bb
>
> And this is the conf folder
> https://gitlab.com/dimtass/meta-allwinner-hx/tree/master/conf
>
> For some reason I can't figure out why modules are not ending up in the image.
>
> If I do it manually in a do_install_append like this:
> do_install_append() {
>     # Install kernel-modules
> install -d ${D}${nonarch_base_libdir}
>     oe_runmake INSTALL_MOD_PATH=${D} modules_install
> }
>
> then it works, but I guess that shouldn't be the right way.
>
> Any suggestions or ideas?
>
> Thanks!
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

