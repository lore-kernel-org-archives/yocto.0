Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B5BBE0138D
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:51:41 -0800 (PST)
Received: by pbcc11 with SMTP id c11so5172596pbc.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 13:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bruce.ashfield@gmail.com designates
	10.68.72.70 as permitted sender) client-ip=10.68.72.70; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	bruce.ashfield@gmail.com designates 10.68.72.70 as permitted
	sender) smtp.mail=bruce.ashfield@gmail.com;
	dkim=pass header.i=bruce.ashfield@gmail.com
Received: from mr.google.com ([10.68.72.70])
	by 10.68.72.70 with SMTP id b6mr54624574pbv.58.1327960301116 (num_hops
	= 1); Mon, 30 Jan 2012 13:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=xZ43rh9oea/zObZ9NVUnRppESL3qpX2egCgD2nmO9xo=;
	b=YFXuCcDCwKXiDosTsYZaiJdanzUIS5bsHpvUctx6HdsYibIXz8bCrJUg3mq46+hjbY
	d4BQab9/QaqbBZ5Fk+4qFMZMWq2fK1YG98mAA9Y/lxc32znusmO9C5chJ3VTFtxOosQB
	2C4k95WsE0bio9jF7LBXKM91487tBRdhJXEvc=
MIME-Version: 1.0
Received: by 10.68.72.70 with SMTP id b6mr44772316pbv.58.1327960300878; Mon,
	30 Jan 2012 13:51:40 -0800 (PST)
Received: by 10.143.7.11 with HTTP; Mon, 30 Jan 2012 13:51:40 -0800 (PST)
In-Reply-To: <4F270FF5.6040909@gmail.com>
References: <4F270FF5.6040909@gmail.com>
Date: Mon, 30 Jan 2012 16:51:40 -0500
Message-ID: <CADkTA4O03RT7eSmeK+8QypxnyZzP=+izogzq6c2ywY=80oZd9Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: So what happened to Edison??
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
X-List-Received-Date: Mon, 30 Jan 2012 21:51:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 30, 2012 at 4:47 PM, jfabernathy <jfabernathy@gmail.com> wrote:
> It seems that something happened today. I could not complete a build on
> edison branch for meta-cedartrail. =A0I copied it to meta-mycdv, but othe=
r
> than that same, old same old. I tried the =A0standard unchanged SRCREV an=
d
> also tried the latest.

I changed the main yocto 1.2 3.0 kernel repository to 3.0, and pushed
some other kernel
changes. But if you are purely on edison, and aren't using meta-kernel-dev =
there
shouldn't have been any fallout from those changes. (I built 3.0
several times today
myself).

Perhaps Josh knows if anything was pushed to edison ?

Cheers,

Bruce

>
> Error below:
>
> ERROR: Function 'do_validate_branches' failed (see
> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314=
a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063c=
cbf-r3/temp/log.do_validate_branches.26787
> for further information)
> ERROR: Logfile of failure stored in:
> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314=
a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063c=
cbf-r3/temp/log.do_validate_branches.26787
> Log data follows:
> | ERROR: Function 'do_validate_branches' failed (see
> /build/mycdv-poky/tmp/work/mycdv-poky-linux/linux-yocto-3.0.18+git2+59314=
a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bde053589ca1f8cca8d740c902b06063c=
cbf-r3/temp/log.do_validate_branches.26787
> for further information)
> NOTE: package
> linux-yocto-3.0.18+git2+59314a3523e360796419d76d78c6f7d8c5ef2593_2+0d19bd=
e053589ca1f8cca8d740c902b06063ccbf-r3:
> task do_validate_branches: Failed
> ERROR: Task 720
> (/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb,
> do_validate_branches) failed with exit code '1'
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

