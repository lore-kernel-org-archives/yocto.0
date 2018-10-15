Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C842E00A0C; Mon, 15 Oct 2018 11:53:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C765E003D9
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 11:53:47 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id r63-v6so19984639wma.4
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 11:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=wkK8jgNdXeuK1dc5MTy8AZLygKjaqDEqFF5O18p4EjY=;
	b=Qa4LYeND3WrMKBrQBD+/wgv24E1kc1tfhSY4qiOUdBY0/wtLMptnS6D8GnF0uH6ppl
	R9TO/6Xgro2MBLniSzCBpfqIazEYwBrzciJe+Ng3n4nrg8UhVks/Zai3bx00FGvoAWqN
	mJ0hJJcGvASMkh165YALJNE7RHNITiGvCFSI+VnFkD3bOwfQoShinX2rX+8B2fFhg1IC
	xU39G0KTi528EEeP1FJ6ToVxiDk15kU5J6fZJvPuFlbVqrSLmV0DjFtooknKQGu+eAHE
	7VsLgUvG+MhcL1d/wS4pMLJ1DDJ1hQ2Qe23ptPfggCU6DLZ+eOOMvGgO/DoNFbCOy7wP
	/img==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=wkK8jgNdXeuK1dc5MTy8AZLygKjaqDEqFF5O18p4EjY=;
	b=DjL6E26UFTtC4ntdTa1VrtjpjxNpU0RGetV9FtunvfX8nX8qBHQRnQDnHXxVaCa6Cl
	mtjzSzgroa89bdlxIHCEuWTWWmWCwpmut8oz1HXZ89k/39jTN/Dj1Pe97UZcuiJdlIpa
	G+yXOAepbPlPVTMiea30u+lCvKy1wIfHjLnQhk9edDagDmos9pA34+q71jExnORNRLf/
	3kT6EPs++3LuKDDbx69aX0JKz6a7WfvuK75sCJguzi31UYlZpetk5jZ4JewY/1yb5lES
	w9s4+/mjAoh3wc+yYJCXDvL9CgYmrhYsrawA13WfYxditrM9wiD6JWGa5uXNJp0C/zn8
	UdVQ==
X-Gm-Message-State: ABuFfohVaPiXgYEhEQuajTYpyXtk4ZTHDq3RVeEi17sfd76UbCBpqmgy
	kjw3bvYSRQJnnk+M76/vpA5/wtbopDqbsWY4FNo=
X-Google-Smtp-Source: ACcGV62wTEqFalZyxvabzRzUjnHrw2T0MInqur+J3ujdHc8E0llIkuHjeAeFfNp3cme1vhxIGwaQSl9kLOZvzWqSYEo=
X-Received: by 2002:a1c:9947:: with SMTP id
	b68-v6mr13324933wme.22.1539629626484; 
	Mon, 15 Oct 2018 11:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
	<CAJTo0LYbBU4s7w7TEDJwt6Wp8Vr9bsFCxmf1WYM-sX_=5wWkDA@mail.gmail.com>
	<f0a632a1a5264a72d4be11ee371f7d64@basmevissen.nl>
In-Reply-To: <f0a632a1a5264a72d4be11ee371f7d64@basmevissen.nl>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 15 Oct 2018 20:53:34 +0200
Message-ID: <CAAfyv37MtT+VzEu2eHZtE_KSvGO=tE6Ynk2CZmAt2O3fCttE_g@mail.gmail.com>
To: abuse@basmevissen.nl
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: permissions when installing scripts
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
X-List-Received-Date: Mon, 15 Oct 2018 18:53:48 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Bas,

On Mon, Oct 15, 2018 at 8:45 PM Bas Mevissen <abuse@basmevissen.nl> wrote:
>
>
>
> cp -a or --preserve(=<something>) optionally combined with other options
> does the trick. However, using install is the better solution.
But -p will keep current user and not root used when installed in
final rootfs (also QA report warnings about host contamination).
I think I'll stick with install ;). Thanks.
>
>
> -- Bas.
>
> On 2018-10-15 14:35, Burton, Ross wrote:
> > As you've discovered, cp doesn't preserve permissions.  Using install
> > -m755 is the idiom.
> >
> > Ross
> > On Mon, 15 Oct 2018 at 11:12, Belisko Marek <marek.belisko@gmail.com>
> > wrote:
> >>
> >> Hi,
> >>
> >> I have package which contains bunch of scripts (with +x flag for
> >> user). When installed in do_install method (simply by copying them to
> >> destination) they loose +x flag. I know copying directly is not best
> >> approach but there exists better way how to keep scripts permissions
> >> like in repo (except calling install -m 755 for all of them)? Thanks.
> >>
> >> BR,
> >>
> >> marek
> >>
> >> --
> >> as simple and primitive as possible
> >> -------------------------------------------------
> >> Marek Belisko - OPEN-NANDRA
> >> Freelance Developer
> >>
> >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> Tel: +421 915 052 184
> >> skype: marekwhite
> >> twitter: #opennandra
> >> web: http://open-nandra.com
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

