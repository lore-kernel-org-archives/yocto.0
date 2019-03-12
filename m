Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 548DFE009A0; Tue, 12 Mar 2019 14:58:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B009E0097C
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 14:58:58 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id w18so7028750itj.4
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 14:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TI+t06oXk43+tjKUhxM2kIbNfbKM6sWhShYgZt+rtJA=;
	b=M1EUPcUEgZJXYIlc+NsrBkltPjCVsGBfeS/QZLQTpYFieeiYbi/jUeRajf6lJnD0sV
	F0My1+FN4UOlgDg0WUOntk5un2IuW/LmgHxg/YeZjqTcD+hX3gU5ZZes4212NWFJSF+r
	jFpxAYdWc1XBk8zVCs/Pxp1/fmfUQAuHlmzHna6VvvxmpLImEfYzlimhrSEQ0qebjWuS
	0gg8vcp/zUe921eEBTlZ/ytTKGPoHBai0nxQWWsu8aIBfsnlxkW7u3nELDLj+dWI5wJT
	JodUXupGnYRbyStNRX3A86UdNmnZsrucgvpCLUobUW6wKdHjCUQZ6hYUeVyatTBaJSvt
	FuJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TI+t06oXk43+tjKUhxM2kIbNfbKM6sWhShYgZt+rtJA=;
	b=cOAYy6tNgqB9bGehOCmwihFRloYjl85aVBQ3yK/EMx7SjacNV4vH9Ti1c/xrkdBTh1
	U4KpCu9IoWADBt5BGRZnpGiNlyY/8HWMb6eQyQ8S4M/C0d32MkfGl4sUR+1WTTY5EiAk
	83iXMCfdl2Pd3n+mnKrkFseAaZybNjbRPi4B3EDQdvYqNPjYvfkXjySbcq1siKL6CpYS
	mABuHVaOP5rgHXlfUSzQIccACpkFqQgMs5LUVxPPh4wkabIn/Zak5BwYJLQne87UGSKc
	QAuFSi4zNCsuWDZCoZhasmWJEkT/Az/hqz1xg1rQOxg5tmv4N4XU99vM9KMLT2wtzu49
	tUow==
X-Gm-Message-State: APjAAAVLqG1KEa2LjzY3s2oZwspdkF7p1eEwxctjVpAl1MRRUtnjVh6v
	w2Bp8j8A2z/R72TrNvdfGXvSa45yE54oJp/44eiX7yGA
X-Google-Smtp-Source: APXvYqwGFUcPBiouZhI+ecPfFtXPREo3GAJAJ+AMv3H0yAC8VxlkgxElO/NBHrLF01qc2ZwCJoCx7rqbDq6spXKcxJQ=
X-Received: by 2002:a24:1394:: with SMTP id 142mr10669itz.54.1552427937267;
	Tue, 12 Mar 2019 14:58:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
	<CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
In-Reply-To: <CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
From: Emily S <easmith5555@gmail.com>
Date: Tue, 12 Mar 2019 16:58:47 -0500
Message-ID: <CAAV2bM2QGuTSc9F_DRfw1P_T0NYtb_1c2GyTKWgDB6KYM1OqaQ@mail.gmail.com>
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 21:58:59 -0000
Content-Type: multipart/alternative; boundary="000000000000bd875e0583eccba9"

--000000000000bd875e0583eccba9
Content-Type: text/plain; charset="UTF-8"

Hi Leon -

The full error is below, but essentially:
nothing provides /usr/bin/env needed by init-clock-1.0.0-r0.aarch64

Thanks!
Emily

ERROR: core-image-gfex-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/oe-rootfs-repo
--installroot=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/rootfs
--setopt=logdir=/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/temp
--nogpgcheck install init-clock run-postinsts locale-base-en-us
locale-base-en-gb' returned 1:
Added oe-repo repo from
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Tue 12 Mar 2019 09:57:18 PM
UTC.
Error:
 Problem: conflicting requests
  - nothing provides /usr/bin/env needed by init-clock-1.0.0-r0.aarch64

ERROR: core-image-gfex-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/temp/log.do_rootfs.16222
ERROR: Task
(/local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/images/core-image-gfex.bb:do_rootfs)
failed with exit code '1'

On Tue, Mar 12, 2019 at 3:02 PM Leon Woestenberg <leon@sidebranch.com>
wrote:

> Hi Emily,
>
> On Tue, Mar 12, 2019 at 7:45 PM Emily S <easmith5555@gmail.com> wrote:
> >
> > It seems like now you need to depend on coreutils to get /usr/bin/env
> working, why is that? Coreutils is a bit big and takes awhile to compile.
> > This wasn't the previous behavior, and I'm wondering why it was changed.
> >
> What issue do you see without core-utils?
>
> Regards, Leon.
>

--000000000000bd875e0583eccba9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Leon -=C2=A0<div><br></div><div>The fu=
ll error is below, but essentially:=C2=A0</div><div>nothing provides /usr/b=
in/env needed by init-clock-1.0.0-r0.aarch64</div><div><br></div><div>Thank=
s!</div><div>Emily</div><div><br></div><div><div>ERROR: core-image-gfex-1.0=
-r0 do_rootfs: Could not invoke dnf. Command &#39;/local/d6/easmith5/rocko_=
bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-=
r0/recipe-sysroot-native/usr/bin/dnf -y -c /local/d6/easmith5/rocko_bitbake=
/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/root=
fs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/local/d6/easmith5/rocko_bitbake/=
poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/rootf=
s/etc/yum.repos.d --repofrompath=3Doe-repo,/local/d6/easmith5/rocko_bitbake=
/poky/build/tmp/work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/oe-r=
ootfs-repo --installroot=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/=
work/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/rootfs --setopt=3Dlo=
gdir=3D/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4=
-poky-linux/core-image-gfex/1.0-r0/temp --nogpgcheck install init-clock run=
-postinsts locale-base-en-us locale-base-en-gb&#39; returned 1:</div><div>A=
dded oe-repo repo from /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work=
/gfex_prototype4-poky-linux/core-image-gfex/1.0-r0/oe-rootfs-repo</div><div=
>Last metadata expiration check: 0:00:00 ago on Tue 12 Mar 2019 09:57:18 PM=
 UTC.</div><div>Error:</div><div>=C2=A0Problem: conflicting requests</div><=
div>=C2=A0 - nothing provides /usr/bin/env needed by init-clock-1.0.0-r0.aa=
rch64</div><div><br></div><div>ERROR: core-image-gfex-1.0-r0 do_rootfs: Fun=
ction failed: do_rootfs</div><div>ERROR: Logfile of failure stored in: /loc=
al/d6/easmith5/rocko_bitbake/poky/build/tmp/work/gfex_prototype4-poky-linux=
/core-image-gfex/1.0-r0/temp/log.do_rootfs.16222</div><div>ERROR: Task (/lo=
cal/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/images/core-image-gf=
ex.bb:do_rootfs) failed with exit code &#39;1&#39;</div></div></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue,=
 Mar 12, 2019 at 3:02 PM Leon Woestenberg &lt;<a href=3D"mailto:leon@sidebr=
anch.com">leon@sidebranch.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi Emily,<br>
<br>
On Tue, Mar 12, 2019 at 7:45 PM Emily S &lt;<a href=3D"mailto:easmith5555@g=
mail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; It seems like now you need to depend on coreutils to get /usr/bin/env =
working, why is that? Coreutils is a bit big and takes awhile to compile.<b=
r>
&gt; This wasn&#39;t the previous behavior, and I&#39;m wondering why it wa=
s changed.<br>
&gt;<br>
What issue do you see without core-utils?<br>
<br>
Regards, Leon.<br>
</blockquote></div>

--000000000000bd875e0583eccba9--
