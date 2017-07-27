Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73189E00A39; Thu, 27 Jul 2017 09:20:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80F0CE00944
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:20:34 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id t201so103953110wmt.1
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 09:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wf7T99dDnAc87INj9uTYJpgCcnyeEWdM88Im9UP/NwQ=;
	b=fi3/qrb6ZZijQeGWVAL2vX1/ZcCGMRT6IvjYyyIkNaxnKzjfBYkTPoBLmNnxdTm4X1
	hwbj6Jo5EPWC6FoFtdjuuJx5Ix1QtMmKHCRGu3iKY8C0d05WuAorLUg80jGTB1/3pNsL
	8FA9Z3bmAcZxySt0nQhxIrjJGykrVnspGNYm0LGL/I5Hasrod6T2w5RUuXc/aFU4cCbs
	LvVUbdNAyeDXny2mXJrN/+e8l1p1CLewffisVfsNn9V6J/XPkL5oRtCN200sqTIlLf2E
	kunZ5DSkZ1UPTVNjHGrGXQ0uhkD07DHYTrz0nBpkDxLhJVJoPU/cqEkpEDEFVLfE14C8
	eOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wf7T99dDnAc87INj9uTYJpgCcnyeEWdM88Im9UP/NwQ=;
	b=O9OLUxuEIoDPQUJyuz034gztuxAmRh4JPaCvHjE11FVv/nVSWY1JiVtn+81qHSbWOV
	zHJEeOm05/Xtc9Wc2pYYBIfXHPJV/bu+Q3kpeQQGVp82BC+S1wN2USylC4C+nQVs6XUn
	4HunPMgSMHsiFZmijxggxibZLeALs2q8ePeyqfKI3WKviwuhiA/JDf20qOqUNYvjSekb
	Afo847cLxLvmMmYrWZCV8BzkG7N3toqD2UUoM7fJkeAq8TqrMdBkXbNAasiZASdsZH+L
	Sobb4lke5SZBpkdST6wKgyHoc6+WGZg1qlYOCVbCBxiG242GR33EwF8w2zUZwHQRBGtm
	09OA==
X-Gm-Message-State: AIVw113ITgj5EbklLnikLwGMfv/YW1s0bh/9bz6Sblv1drl6Z1oQFj49
	v4aoW1VN0zNW0dwcvN0WqZY2WepADw==
X-Received: by 10.80.159.202 with SMTP id c68mr4020296edf.11.1501172433327;
	Thu, 27 Jul 2017 09:20:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.149.181 with HTTP; Thu, 27 Jul 2017 09:20:02 -0700 (PDT)
In-Reply-To: <907836710.17581.1501171532604@ox1.tophost.ch>
References: <2040571762.17271.1501166601217@ox1.tophost.ch>
	<CAMKF1spMG+h7cbkH-ErYnTeCkfPXsOZZsFLc7+V-7EdthcNJ7A@mail.gmail.com>
	<907836710.17581.1501171532604@ox1.tophost.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Jul 2017 09:20:02 -0700
Message-ID: <CAMKF1srxzdd-ogoce-GVaeVxmAGoK0C09e8G7eg7h=H1ig3Sig@mail.gmail.com>
To: Manuel Geeler <geeler@identech.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompile packages (ipk) based on SDK
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
X-List-Received-Date: Thu, 27 Jul 2017 16:20:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 27, 2017 at 9:05 AM, Manuel Geeler <geeler@identech.ch> wrote:
> Hello Raj,
>
> thank you for your input. This solves the problem of bringing the package=
s
> to the target once I havt the packages. But I'm still challenged with how=
 to
> create the packages in the first place.
>
> Do I need to have my own yocto installation to setup along the SDK? Will
> such a setup be able to build me *ipk packages without knowing the origin=
al
> settings for the image in the first place? Are the information to build t=
he
> buildsystem somwhere hidden in the SDK?

if you are using extensible SDK then it should be able to build ipks. You m=
ight
have to ask the SDK provider on that. Otherwise you will need full yocto bu=
ild
system to generate ipks is the easiest way.

>
> Thank you
>
> Manuel
>
> Khem Raj <raj.khem@gmail.com> hat am 27. Juli 2017 um 17:57 geschrieben:
>
> On Thu, Jul 27, 2017 at 7:43 AM, Manuel Geeler <geeler@identech.ch> wrote=
:
>
> Hello community,
>
> I got an image and the corresponding SDK for a hardware based on an iMX6
> processor. With this setup I was able to crosscompile a simple "Hello Wor=
ld"
> program on the development machine (Ubuntu 16.04.2 LTS), install and run =
it
> on the target.
>
> I then started to look deeper into yocto and realized that there's the op=
kg
> package manager available in the image.
>
> Now comes my question, how can I build *.ipk packages on my development
> machine, which will then run on my target?
>
> yes you can. you can setup a feedserver pointing to tmp/deploy/ipk in
> your workspace
>
> something as simple as cd tmp/deploy/ipk && python3 -m http.server 8000
>
> will do it. Once you have it then setup the feed on your device to
> point to this server
> something like
>
> https://github.com/cbrake/oe-build/blob/master/envsetup.sh#L480-L489
>
> then you can do normal opkg operations
>
> if you are able to rebuild the whole image then step to edit feed
> confs is not needed
> you can add
>
> PACKAGE_FEED_URIS =3D "http://<ip>:<port>/" in local.conf
>
> where ip is the local address of your build machine and port is the
> port on which you
> are starting the http server.
>
>>
>
> The image is based on poky 2.1.
>
> My endgoal is to run node.js and node red on the target.
>
> Can someone please point me to the right direction?
>
> Thanks a lot in advance.
>
> regards
>
> Manuel
>
> Manuel Geeler
> Technischer Leiter
>
> Identech AG
> Lagerstrasse 14, CH-8600 D=C3=BCbendorf
> Tel.: +41 (0) 44 885 22 26
> Mobil: +41 (0) 76 323 65 44
> geeler@identech.ch
> www.identech.ch
>
> --
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

