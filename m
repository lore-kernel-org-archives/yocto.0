Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33993E00CE8; Wed,  6 Dec 2017 05:53:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDE7E00B5F
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 05:53:45 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id d16so2712961iob.4
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 05:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/3I/2YkO4gz0uROlN3WJHndTcWsZSdlt6gpmYji0Z+E=;
	b=i5UGcLLBPs6jTqkrdMFDgKgJZj4itiG4s9WC8hl+Z/VUy4mrPhJ2IZPVzwErut7aAJ
	1ZF7j3EzZtOyI55qNtsq5ss/uvMIvQKQOB6ak/bK5p1VcTw2OtbCq1Q8GkZLG5/dPWkB
	BLIuRi8oxm6tHv3MayplRnRUMALCIMmF+X3hDqwFCah4RZcW3MZ5rHNkUlRSf1O0bgXK
	SQ+ORWDQ5rPrNJPdmc9Zny7MSD5eWwVNjKnUJ1dT+xjaN92YxYm5PagAHJDY7MiAm+O1
	91j+ecAAvUCUiKFySIwkByUvIYqxJ/U4vcE/ulo/K49bWk5Ig7IzD2RrFk3vw2LpErY9
	0nrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/3I/2YkO4gz0uROlN3WJHndTcWsZSdlt6gpmYji0Z+E=;
	b=cmFl4iEgYiC3HEL6bwoq0MGBRjs/ENY8ihjyg73jN533Y0IKWtc5/GDNVWamYRumP1
	1zk/1xKy0t4P48UkD0lrIH1yn1c/rzcpWuW8JwztWBYy9O0XOw+op1hXDHfWuqNZSzyU
	HIZLYA8gRVHpQ82V0gNLgLsk6o6xsLan+6M07loGNCMYd9oEJ4j1ZhTMa6iiwwPafbKH
	Q5bXvsnrAHngxPiHbGlhCWH3sovFmcD6kqqeSBD1B8hjh4Jpw7OXJSqLRYyMW+ZKyy0T
	girYMOyiQo3M50lXII+NNuJf9m+qJj513nE8C6liY465TP0/m90juRN/nvw+rfj2nI19
	kiZQ==
X-Gm-Message-State: AJaThX6rUyp7gG+k7IJknTohhSf4zyjFhbshFDHiepwWjazBPssxY85Z
	VqC3snTvYxi/DaUlrCzuwffjALsLhldIbgls39c=
X-Google-Smtp-Source: AGs4zMbgnv2DSnkDdBzSLzglwDVRRgtGdZJG3MBy0MCRvgRSs51FQYPtU0hfrRvTytR5WdOBCrvlkCNCFY4IyhgZGXU=
X-Received: by 10.107.104.18 with SMTP id d18mr30573357ioc.136.1512568425491; 
	Wed, 06 Dec 2017 05:53:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.90.200 with HTTP; Wed, 6 Dec 2017 05:53:25 -0800 (PST)
In-Reply-To: <CAJCDnYaC1ouTS5g_disH5NkPMf_dy_K55G2nX-sqTxgrP+GPLA@mail.gmail.com>
References: <CAJCDnYaC1ouTS5g_disH5NkPMf_dy_K55G2nX-sqTxgrP+GPLA@mail.gmail.com>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 6 Dec 2017 14:53:25 +0100
Message-ID: <CAB2nKc-UcXUFQVsOcnCYStiDM_idm6023WzOb4tGUVE5m49kcg@mail.gmail.com>
To: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to append to image, not machine?
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
X-List-Received-Date: Wed, 06 Dec 2017 13:53:47 -0000
Content-Type: multipart/alternative; boundary="089e0825fdccb33047055fac470c"

--089e0825fdccb33047055fac470c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

One solution is to add a custom action with ROOTFS_POSTPROCESS_COMMAND in
one of the image, that will change interfaces file (with sed for example,
or symlink, etc ...).

Best Regards,
Vincent

2017-12-06 14:43 GMT+01:00 Marek S=C5=82omiany <marekslomiany@gmail.com>:

> Hi,
>
> I'm building system that has 2 cpu's which communicate via CSLIP over
> serial. On both ends it looks similar but the IP's has to be swapped for
> point-to-point communication. For example one will have:
> address 10.10.10.1
> pointopoint 10.10.10.2
>
> and the other one:
> address 10.10.10.2
> pointopoint 10.10.10.1
>
> to replace /etc/network/interfaces file with my own, I have created
> a init-ifupdown_%.bbappend file which contains:
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI_append =3D "\
> file://interfaces \
> "
>
> I could make two interfaces files in separate directories and add to
> SRC_URI_append_machine1 for each one, but I'm using same machine for both
> cpu's, but different images (one with qt, one without). Is there a simila=
r
> method but binding append with image not a machine?
>
> Regards,
> Marek Slomiany
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e0825fdccb33047055fac470c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>One solution is to add a custom act=
ion with ROOTFS_POSTPROCESS_COMMAND in one of the image, that will change i=
nterfaces file (with sed for example, or symlink, etc ...).</div><div><br><=
/div><div>Best Regards,</div><div>Vincent</div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2017-12-06 14:43 GMT+01:00 Marek S=C5=
=82omiany <span dir=3D"ltr">&lt;<a href=3D"mailto:marekslomiany@gmail.com" =
target=3D"_blank">marekslomiany@gmail.com</a>&gt;</span>:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m building s=
ystem that has 2 cpu&#39;s which communicate via CSLIP over serial. On both=
 ends it looks similar but the IP&#39;s has to be swapped for point-to-poin=
t communication. For example one will have:=C2=A0</div><div>address 10.10.1=
0.1</div><div>pointopoint 10.10.10.2</div><div><br></div><div>and the other=
 one:</div><div>address 10.10.10.2</div><div>pointopoint 10.10.10.1</div><d=
iv><br></div><div>to replace /etc/network/interfaces file with my own, I ha=
ve created a=C2=A0init-ifupdown_%.bbappend file which contains:</div><div><=
div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quo=
t;</div><div><br></div><div>SRC_URI_append =3D &quot;\</div><div><span styl=
e=3D"white-space:pre-wrap">	</span>file://interfaces \</div><div>&quot;</di=
v></div><div><br></div><div>I could make two interfaces files in separate d=
irectories and add to SRC_URI_append_machine1 for each one, but I&#39;m usi=
ng same machine for both cpu&#39;s, but different images (one with qt, one =
without). Is there a similar method but binding append with image not a mac=
hine?</div><div><br></div><div>Regards,</div><div>Marek Slomiany</div></div=
>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--089e0825fdccb33047055fac470c--
