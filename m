Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59ED7E0137A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 05:19:59 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so10494336pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 05:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qKOiqWoyd9MkurAeZzY5Pg5tW/djbPpY40fWz8R/aTI=;
	b=rp74MZGo2tK6FNFRCIs0i5o8BuVt4uRgGGwdaQ5fMXRQloyBqQO5rFUI2Acz8teQlD
	Zzi9ez/jqmvnlJ+Y1azQjrsCHdtcsdiEviSk6UrPB+75RSkbi7gnJSTgbiIQvsMnJC71
	d2oaq+h6/gjFSzO/w4Uw+Si3xRtDUO07hs/RqOf8YBskzsMAJjtGTX/1AR335+CvUfuM
	RZETwiAw1gkkiwfCx9Z8fcs7NZhArRCfD81HrvwIAvZ7cP3cy0LGsnSOxJox1wsy7APe
	dpeqfe5pjFTYHczcRST/4kC1LM4OzgYjS6TAq14ns+ZtPMf+ejOWmuQ/0jFii+BOnCP2
	gccw==
MIME-Version: 1.0
Received: by 10.68.213.162 with SMTP id nt2mr602485pbc.31.1336479599040; Tue,
	08 May 2012 05:19:59 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 05:19:58 -0700 (PDT)
In-Reply-To: <7B5D5B32880342B1A71D5C3F7F7D41F7@halfman.com>
References: <7B5D5B32880342B1A71D5C3F7F7D41F7@halfman.com>
Date: Tue, 8 May 2012 14:19:58 +0200
Message-ID: <CACW_hTaa+SfOoddpi2n+iRcefkq+urokJNfUZ9UXGvDtE2_VWg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Jim Kosem <jim@halfman.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Web Hob 1.3 requirements
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
X-List-Received-Date: Tue, 08 May 2012 12:19:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/8 Jim Kosem <jim@halfman.com>:
> Hi,
>
> We in the Yocto London team have put together user requirements and ideas
> around what we think Web Hob should be.
>
> https://wiki.yoctoproject.org/wiki/Yocto_Webhob_1.3
>
> Any contributions, help and comments are appreciated.
>
> Thanks.
>
> - Jim Kosem

Jim,

I'm leaving it to you if you want to derive some user stories from this.

For me hob seems to do a nice job of assembling images (although I
haven't played very much with it yet).
As a developer I think it would be nice if hob would also allow
- select the output format(s) of my image (e.g. jffs2, tar.gz, ubi etc
etc), probably together with output specific options (like jffs2
eraseblock size etc). Simplest would be a text field, nicest would be
an image type specific form)
- control/select image features
and maybe:
- select machine, libc version etc etc
- select specific versions of a recipe

Hope this is useful for you.
Frans

