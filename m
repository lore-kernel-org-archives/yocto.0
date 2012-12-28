Return-Path: <otavio.salvador@gmail.com>
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF51E011AB;
	Fri, 28 Dec 2012 09:32:25 -0800 (PST)
Received: by mail-ob0-f179.google.com with SMTP id x4so9945166obh.10
	for <multiple recipients>; Fri, 28 Dec 2012 09:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=dVRXz+BDdh6x9QWlA70qRmZPFA/JURutc8yS5FcnDoQ=;
	b=pgymf5kzGXi8vOakzFE67p7UZtuz7qKK8xtFVMS25sm14jO7sTY7LAJNnKcoFHMDSc
	VJWG16ZyJ8T4lY2dFy3lJ2nXm3YELW+tgtDe6SllIln0tJw+rvXCqohq/ajOryLuzq0I
	fLlbM1+77SX5Rr0NIectTMcTMzSAN1ZgnKjh2wsPNiwbNTVl6ospTnNnR6+aIOqABO4M
	f4A5yNZI8iLVRHr3u7pzWF/ERDbxJJIxCi1Co4oFfujpjpd8/y8NBFNL8q8jUaEE1yTf
	YnKX7VIYNGv7+wu2RpmQ0Sscxev76svEtzdaEsLpbR67Q1PBlD9Ao8jwB6OKUFXXIL59
	rXbQ==
MIME-Version: 1.0
Received: by 10.182.207.3 with SMTP id ls3mr27780435obc.60.1356715945384; Fri,
	28 Dec 2012 09:32:25 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.182.219.130 with HTTP; Fri, 28 Dec 2012 09:32:25 -0800 (PST)
In-Reply-To: <CAOkC3RYPbP=rH-zr9J-vVzWUp9baEzWe=MX7m-+FOjVWhXsg+g@mail.gmail.com>
References: <CAOkC3RaLxgZVNQOB_-o-HKJ=CiS_J8whpAF6gZzk+pYuhoCz=w@mail.gmail.com>
	<20121221182320.0698db75@eb-e6520>
	<CAOkC3RZmx1ph=LKk2n9_oFAD=PjfbG6KCscQheAcRUigOuXiKA@mail.gmail.com>
	<CAOkC3RYPbP=rH-zr9J-vVzWUp9baEzWe=MX7m-+FOjVWhXsg+g@mail.gmail.com>
Date: Fri, 28 Dec 2012 15:32:25 -0200
X-Google-Sender-Auth: ekFuJrd3BwTlRKn2dw1rreJKlGU
Message-ID: <CAP9ODKoS16whN0yp84-Q3qDUF+iEvJbyOnzQ0zur2txJnsdvvg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: GOPIKRISHNAN S <gopikrishnans@pec.edu>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] hiawatha-8.6 using Yocto
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
X-List-Received-Date: Fri, 28 Dec 2012 17:32:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 28, 2012 at 4:30 AM, GOPIKRISHNAN S <gopikrishnans@pec.edu> wrote:
> I am getting some errors while building hiawatha(using recipe from
> openembedded). In investigation I found all return \type and parameter type
> seems to be same & in all /usr/include/*.h files in declared as extern was
> added before to make it visible in global. I wonder no problem was not
> raised while compiling for my host platform (Debian 6 on x86), and getting
> problem only doing it for my freescale board
>
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5:
> error: conflictin
> g types for 'unsetenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:589:12:
> note: previous declaration of 'unsetenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6:
> error: conflictin
> g types for 'clearenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:596:12:
> note: previous declaration of 'clearenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:39:5:
> error: conflictin
> g types for 'unsetenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:589:12:
> note: previous declaration of 'unsetenv' was her
> e
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:
> In function 'strcasecm
> p':/media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/work/ppce500mc-fsl-linux/hiawatha-8.6-r2/hiawatha-8.6/src/alternative.c:49:6:
> error: conflic
> ting types for 'clearenv'
> /media/sdk/3.1/QorIQ-SDK-V1.3-20121114-yocto/build_p2041rdb_release/tmp/sysroots/p2041rdb/usr/include/stdlib.h:596:12:
> note: previous declaration of 'clearenv' was her
> e

Please report this to meta-openembedded mailing list as this is not
BSP specific.

It might be due the newer GCC used in Yocto. Someone in
meta-openembedded mailing list might have a patch for it ready and
then avoid work duplication.

Regards,

--
Otavio Salvador                             O.S. Systems
E-mail: otavio@ossystems.com.br  http://www.ossystems.com.br
Mobile: +55 53 9981-7854              http://projetos.ossystems.com.br

