Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2040E013AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 03:15:52 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id gq1so5046744obb.17
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 03:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=6/ZHiHWvh60FbbcBjfGBZ+826Pa+LIqlU26w/Je4EPc=;
	b=QT1qKFl8N0OtaVOz1EZM0G1AZ5NTYCNmCEtEmeB1wTs1xVKmaGvA9iQYIeXVkw1eB2
	9AP9Ywy/AhZHLXEGI+azON9YzqdH3JzIxcekk1pzRZbqv3NU0VEjz5hznXj8wJvdodqa
	+vQGKnGP19EZ/iJtEIcUXmYpaKTs1/9Qw5lqmLbJgAmIWMHEFZvfLxNwy4Q9/R3eHbIH
	Df70QGPIzJcAkw3c0U9V0WupxJDmy179kxycbuXBdrLcs3+UvPjPjdiZRGkPbQniqpS2
	Cyk36nWhUtP9DFyK9Yh5SoIBmi1VGzVuaCY3qnu2iA4YwtCCyMehHm3QtJFW2GKRi+7i
	DsGA==
MIME-Version: 1.0
X-Received: by 10.182.246.74 with SMTP id xu10mr4656569obc.23.1379412951294;
	Tue, 17 Sep 2013 03:15:51 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 17 Sep 2013 03:15:51 -0700 (PDT)
In-Reply-To: <CAFyqS9ock8ydDEd0SE5whhWRKuRnQmTKOzq6Ad7rTYHHtosEuA@mail.gmail.com>
References: <CAFyqS9ock8ydDEd0SE5whhWRKuRnQmTKOzq6Ad7rTYHHtosEuA@mail.gmail.com>
Date: Tue, 17 Sep 2013 12:15:51 +0200
Message-ID: <CAFyqS9omDS6s-si0U6WKB-m2BnPZnicd+H8uQg7vp+mo454ZEw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES_append, anyway to override?
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
X-List-Received-Date: Tue, 17 Sep 2013 10:15:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 17, 2013 at 11:04 AM, Hans Beck=E9rus <hans.beckerus@gmail.com>=
 wrote:
> We are using a user defined distro, based on poky-tiny. That is, we
> 'require' poky-tiny.conf.
> It is done this way in order not clutter our distro configuration with
> too much magics and defaults.
> However, one problem now is that poky-tiny also 'require' poky.conf,
> and implicitly is doing
>
> DISTRO_FEATURES_append =3D " largefile opengl multiarch wayland"
>
> In our configuration we do
>
> DISTRO_FEATURES_append =3D "nfs"
>
> The resulting DISTRO_FEATURES (as checked by bitbake -e) shows that
> everything appended by poky is also added to the custom distro.
> Now, we would like to remove everything but the large file support as
> added by poky. How do we do that? Is the only practical way to copy
> everything from poky.conf and poky-tiny.conf into the custom distro? I
> really would like to avoid that if possible.
> I guess that the new feature DISTRO_FEATURES_remove might help us
> here, but unfortunately we can no step up to such a late version in
> a foreseeable future.
>
Maybe this is the patch we need, it seems to adress exactly this problem.
http://www.mail-archive.com/yocto@yoctoproject.org/msg14784.html

> Thanks.
> Hans

