Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A0A8E00C37; Mon,  3 Oct 2016 06:02:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f169.google.com (mail-yw0-f169.google.com
	[209.85.161.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF249E00C08
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 06:02:19 -0700 (PDT)
Received: by mail-yw0-f169.google.com with SMTP id t193so28010645ywc.2
	for <yocto@yoctoproject.org>; Mon, 03 Oct 2016 06:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yWm1yPnJXwetU9E58VvefttF6mXrfVJ9odx/KNyu/4g=;
	b=qlRwY6zq7A2NN0+5K9WGDC+b+DHlRsLpw2t3R+D+1UqmfFmQv5F/gWM+4yt8tiGUpH
	VarPUUyxHGvq+NKBBc3+M6+yfIoUWnMsERYgI6/5Z6t5CAqf94G6TcV11LpCIgQ7NbSD
	J3+fTC19ZT6N8Mx7LoMkGVqWxuyeZ8VhA/bRxWjVCDzXqEaCH3h7F++U7O4vjG6mTuTL
	ckpVXZdoW/EHgPBmdFBLi86PDdiBSmAfosy7D5c0sMF/BMU2jSwoXnral0o2tjvP9OML
	zgREkAUrbEu1KUzoSffRaoCWuKv/iNzmi0Cw9GxT+cPyyeHQBjRm07gtjJCofVZgQkKO
	/cDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yWm1yPnJXwetU9E58VvefttF6mXrfVJ9odx/KNyu/4g=;
	b=NOKCTgw2zLgcNmnXPV4tRHomtfBQKdfMfJDuTsxry+yOohYCFwUSbENQII1kkzJA8o
	y5A/EZstpghvK95B4bJOvYFOnGzWEXLYIdQMG8eVEdepfSrlMGyAOphYRtIA0FRXZTV2
	f+Nf5me4Plf1dli+KpS0lAOnCpdy4kQq5+PtePbPC84KXetaLbmXiZILKghO5kr4IDnf
	0eS0ezL+VBcHyP9OYd/W/AD10Ijn0JKwd4vWxJvC2KvU3UwacpO566pRk+b/bKktuQl+
	ZZHERbWJr7wwESkrNhteCjA+m/sqcXFie6Syan+8qR90J5iukqvLVYOtxNXSIn2XXyO7
	Fhsg==
X-Gm-Message-State: AA6/9RmzyqDvaS9K5oBg06/VWZG3IJNd5S1U/v8kAEOR/SqJaHdndqnWD0taG3bNlfqSnoZ0UlDC6f1WQ2yWR+fu
X-Received: by 10.13.225.201 with SMTP id k192mr13134807ywe.322.1475499738982; 
	Mon, 03 Oct 2016 06:02:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.206.3 with HTTP; Mon, 3 Oct 2016 06:00:47 -0700 (PDT)
In-Reply-To: <957653759.75997381.1475496128451.JavaMail.root@spooler3-g27.priv.proxad.net>
References: <27911148.75947347.1475495383943.JavaMail.root@spooler3-g27.priv.proxad.net>
	<957653759.75997381.1475496128451.JavaMail.root@spooler3-g27.priv.proxad.net>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 3 Oct 2016 16:00:47 +0300
Message-ID: <CAHiDW_FNaUWqrEsBTD79g8PdD560gqvs8Ze29wtxLpQG16p3hw@mail.gmail.com>
To: "Michel D'HOOGE" <michel.dhooge@free.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [pseudo-native] No real function for mknod
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
X-List-Received-Date: Mon, 03 Oct 2016 13:02:24 -0000
Content-Type: multipart/alternative; boundary=94eb2c0774a4cf1b1a053df58d75

--94eb2c0774a4cf1b1a053df58d75
Content-Type: text/plain; charset=UTF-8

On 3 October 2016 at 15:02, Michel D'HOOGE <michel.dhooge@free.fr> wrote:
>
> Dear all,
>
> Since the end of last week, I try to produce any kind of images, with no
success :-(
>
> Note that even though I'm not a seasoned Yocto user, in more than a year
I managed many times to produce images & SDKs. And this time, I tried
several configs, erased everything and restarted from scratch, etc., but
with always the same problem.
>
> I have the following logs (in grey, so I guess not a warning nor an
error) when running bitbake:
> No real function for mknod:
/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so:
undefined symbol: mknod
> No real function for mknodat:
/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/../lib/pseudo/lib64/libpseudo.so:
undefined symbol: mknodat

I believe this issue was fixed with a patch in poky master with
commit e090775f7e in May (and later in an upstream pseudo release). Are you
sure you are seeing this with poky master?

 - Jussi

> And at the end, this crashes with:
> ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: Unable to install
packages. Command
'/mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/bin/smart
--log-level=warning
--data-dir=/mnt/Yocto/Fabric-x64/build/tmp/work/genericx86_64-poky-linux/core-image-minimal-initramfs/1.0-r0/rootfs/var/lib/smart
install --attempt -y ' returned 1:
>
>
> I tried the poky git repo with krogoth (HEAD & mid-september) and master;
with recipes core-image-minima & core-image-sato.
>
> I know that I always have a warning from bitbake about "Debian-unstable"
not being validated, but so far, it worked.
>
>
> So if any of you has an idea, I'd be most grateful!
> Michel
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--94eb2c0774a4cf1b1a053df58d75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 3 October 2016 at 15:02, Michel D&#39;HOOGE &lt;<a href=
=3D"mailto:michel.dhooge@free.fr">michel.dhooge@free.fr</a>&gt; wrote:<br>&=
gt;<br>&gt; Dear all,<br>&gt;<br>&gt; Since the end of last week, I try to =
produce any kind of images, with no success :-(<br>&gt;<br>&gt; Note that e=
ven though I&#39;m not a seasoned Yocto user, in more than a year I managed=
 many times to produce images &amp; SDKs. And this time, I tried several co=
nfigs, erased everything and restarted from scratch, etc., but with always =
the same problem.<br>&gt;<br>&gt; I have the following logs (in grey, so I =
guess not a warning nor an error) when running bitbake:<br>&gt; No real fun=
ction for mknod: /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-linux/usr/=
bin/../lib/pseudo/lib64/libpseudo.so: undefined symbol: mknod<br>&gt; No re=
al function for mknodat: /mnt/Yocto/Fabric-x64/build/tmp/sysroots/x86_64-li=
nux/usr/bin/../lib/pseudo/lib64/libpseudo.so: undefined symbol: mknodat<br>=
<div><br></div><div>I believe this issue was fixed with a patch in poky mas=
ter with commit=C2=A0e090775f7e in May (and later in an upstream pseudo rel=
ease). Are you sure you are seeing this with poky master?=C2=A0</div><div><=
br></div><div>=C2=A0- Jussi</div><div><br>&gt; And at the end, this crashes=
 with:<br>&gt; ERROR: core-image-minimal-initramfs-1.0-r0 do_rootfs: Unable=
 to install packages. Command &#39;/mnt/Yocto/Fabric-x64/build/tmp/sysroots=
/x86_64-linux/usr/bin/smart --log-level=3Dwarning --data-dir=3D/mnt/Yocto/F=
abric-x64/build/tmp/work/genericx86_64-poky-linux/core-image-minimal-initra=
mfs/1.0-r0/rootfs/var/lib/smart install --attempt -y &#39; returned 1:<br>&=
gt;<br>&gt;<br>&gt; I tried the poky git repo with krogoth (HEAD &amp; mid-=
september) and master; with recipes core-image-minima &amp; core-image-sato=
.<br>&gt;<br>&gt; I know that I always have a warning from bitbake about &q=
uot;Debian-unstable&quot; not being validated, but so far, it worked.<br>&g=
t;<br>&gt;<br>&gt; So if any of you has an idea, I&#39;d be most grateful!<=
br>&gt; Michel<br>&gt; --<br>&gt; _________________________________________=
______<br>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoctop=
roject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a=
></div></div>

--94eb2c0774a4cf1b1a053df58d75--
