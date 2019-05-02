Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F7B6E00CDF; Thu,  2 May 2019 05:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C2A0E00A1C
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 05:59:43 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id q19so3181826itk.3
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 05:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tuyBLWYysFFqDR23ngjuJqiQJRagyX+2orBnIvQLqgY=;
	b=ECKqVGSFCTiXh1L3/8g0etCRaycyae2fSMNA0ZNi+8lCPhQphvx2n1oauFgrbkF572
	aYejKT9DeVkk7J7qVe7xXmI+ztkZ4VmznMtmwxIb5T3RXJcc4IOzcxJ3cBur1jumLpeY
	dgYzJLr/nR0zOzzRgTNJ9bry7nkvnOklTFZvWT8neVGCgZa/0WSxt0LncqbzOjTjSo6i
	r7eXWZIHtRIF2C+WsGorhWf/2XNlNuw3XQULXr/LFusegyDCZO2SxzFH9yIB5ssVYl2Q
	HT9sIeO187RLy9PGCLBjZE9O4jlhhPi2viKXyHDUCTk4ZX3Np8iLe5wcSsSHrfzC09Ft
	5VpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tuyBLWYysFFqDR23ngjuJqiQJRagyX+2orBnIvQLqgY=;
	b=Gnn2jUvm2oKwy3Qc0wNbiLNc2+luzH91XyJTr8/FwqEJ2KBu2u0opXOUCtPDzv7PBP
	jzI94rAZgJwp3Th3IzNk5ibkJcQmvpWcFC6ng9kcJjSALoGMQz3Oec6NEc0NMIfUcC+Y
	IwbLRmakkt1uFEAJ83n3+8O1A8Gg3PQUazABWI6HrxoT75SKdOy54UrLA/BVRB9hyV2/
	ozxOwwgT3mDfwDBkybVC/m1qOVVr9mFfWtNYBMMWU7n2MCG3rJEDXPb+Rx0LR/aWM5d4
	siI0EfjpyOALltmlLqgGNh4GH8ndzqHyN0MXzWayH7AqLtKOBtIJ+GeL5ZnFc+eVnIvm
	+k8A==
X-Gm-Message-State: APjAAAU46XHMMH5og24xLp4gBmbxRB51vwEd32lyyUUAmAhZxQjDu0Kx
	uSkLv8kdkpIf/J/30MbSCVOzqK89igPNZzgLhe7HKi72
X-Google-Smtp-Source: APXvYqy5GWf+9O2IgxZUlYnTSCPZkHsqwe7JOD/I+xGoaHNOeFsvCq2zP2nyYVDyrXqmb/UaIATHdEocM/0N7EwpPAk=
X-Received: by 2002:a24:4145:: with SMTP id x66mr2369442ita.130.1556801983035; 
	Thu, 02 May 2019 05:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1905020850390.9757@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1905020850390.9757@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 May 2019 13:59:32 +0100
Message-ID: <CAJTo0LZ4UZ=wJog44=-m-wpCOo0+NTA3-NEh6oWgtbO0nN02pg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "meta-intel" layer bad example of a "container layer"
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
X-List-Received-Date: Thu, 02 May 2019 12:59:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Right, meta-intel isn't a container layer.  It just has two MACHINES.

Ross

On Thu, 2 May 2019 at 13:54, Robert P. J. Day <rpjday@crashcourse.ca> wrote=
:
>
>
>   catching up with all the YP stuff i've missed over the last while
> and, in the BSP guide in the layers section:
>
> https://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#bsp-lay=
ers
>
> one reads:
>
> "Some layers function as a layer to hold other BSP layers. These
> layers are knows as "container layers". An example of this type of
> layer is the meta-intel layer. This layer contains BSP layers for the
> Intel-core2-32 Intel=C2=AE Common Core (Intel-core2-32) and the
> Intel-corei7-64 Intel=C2=AE Common Core (Intel-corei7-64). the meta-intel
> layer also contains the common/ directory, which contains common
> content across those layers. "
>
>   pretty sure meta-intel has been a regular BSP layer for a while now,
> so another example should be used. off the top of my head, i'd suggest
> meta-xilinx:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-xilinx/
>
> unless anyone has strong objections, i can send in a patch.
>
> rday
>
> --
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                          http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

