Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13CB4E0174E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 07:51:10 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id wp4so7121508obc.26
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 07:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=jOcMr77fd/18mVMzwqPNVZS5CVWArfDY0smnBVLToZY=;
	b=MsodUbhZxawx516axw8l0FZuZzNWK+9XReu68lsFzarRa6sI6tP/63W2/D/aZ2q3Td
	ydTZMzf8/HiBso093GuWXIOPgRSeMSc1gjdqJCazk03KdcPXcbCC5Y/8n14rXZwJqYrY
	yEGo6COEyWeGewvA0gQxaqqvHH5FZc46Oaj+DpwZ7D/w38vdgn8NIEOwSQV13QiLTn9y
	pp5wB+500/QMmqW4yp69k2hJ2jDx7rOo95n0E0XafiMlI4/EY4etFgq4ufVJ2gghbjjO
	eyH/t7zLlJIb/ILYcnq3Se4tiYqqVh5vaHiwFlwwT/f01gsZA786OUXrhTN4wqW8CZgb
	AjMw==
MIME-Version: 1.0
X-Received: by 10.60.144.230 with SMTP id sp6mr14885880oeb.29.1383580269577;
	Mon, 04 Nov 2013 07:51:09 -0800 (PST)
Received: by 10.182.44.8 with HTTP; Mon, 4 Nov 2013 07:51:09 -0800 (PST)
In-Reply-To: <CAFyqS9pZg6sAQ3ucvq9YJ9dce43DK2uWcP9vqyFWcAndnMr8dQ@mail.gmail.com>
References: <CAFyqS9pZg6sAQ3ucvq9YJ9dce43DK2uWcP9vqyFWcAndnMr8dQ@mail.gmail.com>
Date: Mon, 4 Nov 2013 16:51:09 +0100
Message-ID: <CAFyqS9pKewyq=bV9MrPgh5HU7gjW7QGD=XRP=Z9OvPJKLcfEJw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 1.5: busybox instead of tinylogin, need some help
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
X-List-Received-Date: Mon, 04 Nov 2013 15:51:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2013 at 3:50 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> w=
rote:
> Hello. I am currently working on moving from Yocto 1.4 to 1.5 and
> instantly stumbled into a few minor problems (this being one of them).
> In 1.5 tinylogin is replaced by busybox. What we had before in our
> distro conf (it require poky.conf) was:
>
> # Use tmpdevfs and the busybox runtime services
> VIRTUAL-RUNTIME_dev_manager =3D ""
> VIRTUAL-RUNTIME_login_manager =3D "tinylogin"
> #VIRTUAL-RUNTIME_init_manager =3D ""
> VIRTUAL-RUNTIME_keymaps =3D ""
>
> Obviously this does no longer work. Is it as easy as simply commenting
> out VIRTUAL-RUNTIME_login_manager and leave it at the default from
> packagegroup-core-boot?
> Will our old init-manager also be compatible? I believe we used
> tiny-init before?
> Another thing, since this will require a new set of busybox options to
> be enabled, and we need to modify it slightly, is there some concept
> similar to configuration fragments also available for busybox? Was
> thinking about how clumsy it is right now since our .bbappend for
> busybox basically copied the config from the poky base meta. Using
> configuration fragments would make it easier for us to migrate in the
> future.
>
Ignore the last question. I just found the .cfg file residing in the
busybox recipe folder. From that I can tell that configuration
fragments are supported also for busybox :)

> Thanks.
> Hans

