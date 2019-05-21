Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E520E00D52; Tue, 21 May 2019 03:00:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CE7E00D46
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:00:54 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id i8so15742229oth.10
	for <yocto@yoctoproject.org>; Tue, 21 May 2019 03:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=vHowSuuIt6rJX7vAjk+veb15JEHiM5Xtw7YYTrvGlEE=;
	b=VXbt3rM6jbfdhFbMitvz2XISX2TFq3VG+DgdMBG8rjN9iUdEdwCJ7FWZALISippC7h
	9IbtI/CTnmJrFkPbTZWW8nxQlU5e1y/Wzxf6Upa/xCfLWFQG1H9Ma2oiBLGV6v1gYiz3
	ATxo95dYCdEJ7f6nPiUEKKT5S/jOFt1sqVaIJZi7O/EA5sjtkuDZnEdal749dVgMvwNY
	EEMyBgIzaxYS3zGgg1fI4IRN7fWe90zIQOlzgOuuTTRISvTXRsI3DPxJod0RjducMORa
	703kaQctVMAIdUtEIASOrrtfSqYKZSyRYwt8HgBtvVNAK+GKM3nNYmhHwysSvevzqQND
	y1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=vHowSuuIt6rJX7vAjk+veb15JEHiM5Xtw7YYTrvGlEE=;
	b=uHmyu8mvZ8Ge/MXYCWjdndhvdzZFMDNq3lyHLu060Rsw6U1f+cu0O/0W4GKpQ+CxcA
	Oo4F8P9nPnruLyDwLMhp+BXcjSdkr8eBYluGU45KGmQKWfDlI408r1OF3PlRB+e75lcG
	tIzPPMbcPeqZLQJNBKKLipJOnyywLsRkGRtWTpr3/qmuP1SPoF0F+YTRriOjR1c6xheb
	QPI8WA5i3EwWQtU8P41ZwN9MFhspQgvkOF2xzjH47PCiJ6laCDrYIGrhMllkn5PGsfbQ
	iiTtl+jFPgNFC2OBIoFsEWqZxjV1+F2vw60l1hRQHCK10KeXBBFRFy9JOvQmOYu40Zn9
	ueyw==
X-Gm-Message-State: APjAAAV+9FWVk0c/CUTvg9cw02tL+d45YDdAxasH6tF26Xq9Ux9nUedr
	l3NnjbmrER+FKo/02GL7ROdSh3Y/A3XK/DmyJ4MZew==
X-Google-Smtp-Source: APXvYqz5FW85ABr1tW/nyk+RsLhTthXaCU+zFcOhDV8QizPUOLz1Z8zjK5ohBNjRi7Vm0JXuX6fadSzSKQcTLGGYvAk=
X-Received: by 2002:a9d:6a15:: with SMTP id g21mr249719otn.28.1558432853852;
	Tue, 21 May 2019 03:00:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
In-Reply-To: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2019 12:00:42 +0200
Message-ID: <CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Tue, 21 May 2019 10:00:55 -0000
Content-Type: text/plain; charset="UTF-8"

If you provide some context for why you want this, we might be able to
suggest a different way.

Alex

On Tue, 21 May 2019 at 08:11, Belisko Marek <marek.belisko@gmail.com> wrote:
>
> Hi,
>
> I have special need to fetch repo which is defined in config file in form (repo and branch):
> git@testrepo.com/myrepo mysuperbranch
>
> Config file is placed in recipe directory. I've tried to add some bits and pieces but it seems it's not doing right. Snippet from recipe:
>
> LICENSE = "CLOSED"
>
> SRCREV = "${AUTOREV}"
> PV = "${SRCPV}"
>
> do_fetch_prepend () {
>
>     src_uri = d.getVar('SRC_URI')
>
>     p = d.getVar("FILE")
>     idx = p.rfind("/")
>     p = p[:idx]
>     p += "/config.txt"
>
>     with open(p) as f:
>         read_data = f.readline().strip().split(" ")
>         d.setVar('SRC_URI', read_data[0])
> }
>
> SRC_URI = ""
>
> S = "${WORKDIR}/git"
>
> It looks like that repo is fetched but unpack doesn't put git directory in $WORKDIR and in build directory I get strange directories like:
>
> !=
> bitbake-cookerdaemon.log
> cache
> conf
> ${@d.getVar('S')
> else
> if
> os.path.join('
> os.path.normpath(d.getVar('S'))
> os.path.normpath(d.getVar('WORKDIR'))
> 'patches')}
> tmp
>
> so there is obviously I'm doing something wrong :). My question is if this is the way or should I stick to some variables set in local.conf and then use it in recipe? Thanks a lot for any pointers.
>
> BR,
>
> marek
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

