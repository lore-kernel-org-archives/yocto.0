Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECC6DE00C49; Sun,  6 Aug 2017 02:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F057E00C33
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 02:21:09 -0700 (PDT)
Received: by mail-vk0-f45.google.com with SMTP id j189so1159464vka.0
	for <yocto@yoctoproject.org>; Sun, 06 Aug 2017 02:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WxF5K4fsaVvOcNAOlS9pzlbZaLDnFZVIyfwuJ7WJdgc=;
	b=C4WpXbA+jwcMZHgjX8mlNN6S8dp+e0XScyr1u/S54f2c+bLEmdGm2IYi/P0IWtyKAB
	e10nwmj56ovghVCYTLJsNeM98rFSwhwh15oomU/ur/RfVPZlUqMj27WXIFbB3VrzMYG2
	A1M5zhvTkRhdaILuzHU4aqPsQYTlxW6vNUYKj0QHqQRwPuf/V4JHG7ARXgKBfDS7tiw4
	D6qo3vigBeQ0Q6qQX4XTpHyv+ANcuWxWOgZSV0JqD5+oF+9ml9nVXWf4gaiKHcZqa5NY
	fPH74V1vH8I3BYkqN5ZV8i65iy82LruGYe6ERytWVzbNLwoNYOvBJciMlKV8XQXnIJxx
	BfVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WxF5K4fsaVvOcNAOlS9pzlbZaLDnFZVIyfwuJ7WJdgc=;
	b=O3eus9+8HqJvDK/2m5mZSFX4vqFolKLo9I4gIi2M5T+3VSm1E8XUJDwUkLYL9XQ3pj
	6acTckqpSrxaR7I3W6jNB7kf7YAMfzTw60Sym5eTNwAlE8MmW1UXCi7I6sFCD8/2LbYp
	u/CPtjK/RIKLECf0uUNQXXajkgoju4K53iQqyoa4JvZEtTGaFC7lYunr6Qm+sumvAagy
	bJkeIOJ19Y18SOLY/0jgqCyk+F1TvCuDzRC4CuJFTA8ZTVXVHrmOL9KnNrqa9BzSx4ze
	/oR6Qhi+IIiJ+hWjv0bjzOBzGmj3IPqmLUTIcfIwyfhYkFjTSGyqYEgtYLqmAgUpeI8o
	5xZA==
X-Gm-Message-State: AHYfb5g5vWp1AiQzN3c8I05ruAD06xi89+QGjlv/X7xbOIKXubPrnmti
	c/PfAJJPAR6hXlu3/THPKzjQDxEC9A==
X-Received: by 10.31.54.12 with SMTP id d12mr4857525vka.209.1502011269317;
	Sun, 06 Aug 2017 02:21:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.168 with HTTP; Sun, 6 Aug 2017 02:21:08 -0700 (PDT)
Received: by 10.176.26.168 with HTTP; Sun, 6 Aug 2017 02:21:08 -0700 (PDT)
In-Reply-To: <CA+z1-f9MmfRbnc-5zcXtEjjYhLGf6-ENW6nqAgOh46hvxLc44w@mail.gmail.com>
References: <CA+z1-f9MmfRbnc-5zcXtEjjYhLGf6-ENW6nqAgOh46hvxLc44w@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Sun, 6 Aug 2017 11:21:08 +0200
Message-ID: <CAEjjRe+wE4wG0MKjEY-DymWHpCTbY=8H0NbKCMDxeDCONZ8M9Q@mail.gmail.com>
To: "blackthirt33n ." <jjosburn@gmail.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: how do you create a non-read only root file system when making a iso based project
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
X-List-Received-Date: Sun, 06 Aug 2017 09:21:13 -0000
Content-Type: multipart/alternative; boundary="001a1143f63e280fde05561240c5"

--001a1143f63e280fde05561240c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Please search documentation first:
http://www.yoctoproject.org/docs/2.3.1/yocto-project-qs/yocto-project-qs.ht=
ml#building-an-image-for-emulation

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#dev-manu=
al-qemu



Best regards,
Chris Z.

06.08.2017 01:07 "blackthirt33n ." <jjosburn@gmail.com> napisa=C5=82(a):

how do you create a non-read only root files system when make an iso based
project.
I had created an iso image by doing the following

bitbake core-image-minimal
wic create directdisk -e core-image-minimal
this created an iso that did boot using qemu

qemu-system-x86_64 -boot d -cdrom ./core-image-minimal-genericx86-64.iso -m
512

But, the root file system was read-only.
What steps would I need to take to make root filesystem that can be
written to?

James

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--001a1143f63e280fde05561240c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Ple=
ase search documentation first:</div><div dir=3D"auto"><a href=3D"http://ww=
w.yoctoproject.org/docs/2.3.1/yocto-project-qs/yocto-project-qs.html#buildi=
ng-an-image-for-emulation">http://www.yoctoproject.org/docs/2.3.1/yocto-pro=
ject-qs/yocto-project-qs.html#building-an-image-for-emulation</a><br></div>=
<div dir=3D"auto"><br></div><div dir=3D"auto"><a href=3D"http://www.yoctopr=
oject.org/docs/latest/dev-manual/dev-manual.html#dev-manual-qemu">http://ww=
w.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#dev-manual-qemu</=
a><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><br><di=
v class=3D"gmail_extra">Best regards,</div><div class=3D"gmail_extra" dir=
=3D"auto">Chris Z.</div><div class=3D"gmail_extra" dir=3D"auto"><br><div cl=
ass=3D"gmail_quote" dir=3D"auto">06.08.2017 01:07 &quot;blackthirt33n .&quo=
t; &lt;<a href=3D"mailto:jjosburn@gmail.com">jjosburn@gmail.com</a>&gt; nap=
isa=C5=82(a):<br type=3D"attribution"><blockquote class=3D"quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr">how do you create a non-read only root files system when make an iso b=
ased project.<div>I had created an iso image by doing the following</div><d=
iv><span style=3D"background-color:transparent;font-family:SFMono-Regular,C=
onsolas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41=
,46)"><br></span></div><div><span style=3D"background-color:transparent;fon=
t-family:SFMono-Regular,Consolas,&quot;Liberation Mono&quot;,Menlo,Courier,=
monospace;color:rgb(36,41,46)">bitbake core-image-minimal</span></div><div>=
<span style=3D"background-color:transparent;font-family:SFMono-Regular,Cons=
olas,&quot;Liberation Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41,46=
)">wic create directdisk -e core-image-minimal</span></div><div><span style=
=3D"background-color:transparent;font-family:SFMono-Regular,Consolas,&quot;=
Liberation Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41,46)">this cre=
ated an iso that did boot using qemu</span></div><div><span style=3D"backgr=
ound-color:transparent;font-family:SFMono-Regular,Consolas,&quot;Liberation=
 Mono&quot;,Menlo,Courier,monospace;color:rgb(36,41,46)"><br></span></div><=
div><span style=3D"background-color:transparent"><font color=3D"#24292e" fa=
ce=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace"=
>qemu-system-x86_64 -boot d -cdrom ./core-image-minimal-<wbr>genericx86-64.=
iso -m 512</font><br></span></div><div><span style=3D"background-color:tran=
sparent"><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberati=
on Mono, Menlo, Courier, monospace"><br></font></span></div><div><span styl=
e=3D"background-color:transparent"><font color=3D"#24292e" face=3D"SFMono-R=
egular, Consolas, Liberation Mono, Menlo, Courier, monospace">But, the root=
 file system was read-only.</font></span></div><div><font color=3D"#24292e"=
 face=3D"SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospa=
ce">What steps would I need to take to make root filesystem that can be<br>=
written to?</font></div><div><font color=3D"#24292e" face=3D"SFMono-Regular=
, Consolas, Liberation Mono, Menlo, Courier, monospace"><br></font></div><d=
iv><font color=3D"#24292e" face=3D"SFMono-Regular, Consolas, Liberation Mon=
o, Menlo, Courier, monospace">James=C2=A0</font></div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div></div>

--001a1143f63e280fde05561240c5--
