Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CE9DE00AC5; Mon, 11 Mar 2019 13:28:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5484E00872
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 13:28:38 -0700 (PDT)
Received: by mail-it1-f169.google.com with SMTP id l139so797403ita.5
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 13:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=udxWzx/V6vxtdkRwMo/YLBRVzHefYGJOTePaEZFd1Gg=;
	b=eOi1fCvXgbvaBc5E3rZqa6ntU042jETIT6FCc8Wng+Us4TKxPSZwMSvDmoGmSwsy6H
	Hun65vug5MOLMOItkhBXuvS9rgeyCjwm7MxhgQJrIi/ZvDjsjskD5BihFDH+Xz09pmMU
	ckHfPbdXjaBbgi9gVQVGnTa5FK63meD7O1ogy3JbNTgdD+EVfvfaR5O89Utn+NS8E2sh
	kw/3IZ/jyVKSZo2x0dmICd1SIZy2kcvsIruMG1LQPeNQs4UEZZXlH7KH5RnEZAdLyeX0
	Vg2nNebUOunppPSYn6NjRVCE2q+IET+Kv5V52Ft5subB/IhRejJMDV4RA4p+5LiNGXUA
	XobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=udxWzx/V6vxtdkRwMo/YLBRVzHefYGJOTePaEZFd1Gg=;
	b=bU9vdSEyK9dPLkys81hH6Q8m74fNkZu2FNeM88orxAMTXgg/xqNxgqdMF0dpGL4iRK
	KjjbKITSB3hoipvkxkGBXYpPaRqA2yMZC5FPeKxr/y+evF1s4+q2LNW7iYRWmYfB5tHl
	r91Q0ToKB8j4qNkOyu8Lgb5NCw42gW6D2vqfe/K6EYyQikoVUd0z/eyjZnKhfhMq66L1
	03ZIzzKO0RRtGxzzOKqJzh3lo7F3A5pwpUBK7r5fgGSfa9vPNi7mDL+P1XCQa7j771hS
	ntz8wwQHd+aa27MWNAmIaIo4ALZX/SQiUkgF3pHFcEIZtWqMuUVy+VVESvKn83g058qw
	qqxQ==
X-Gm-Message-State: APjAAAXpp8YipUFMAKSxN6yObd1X2idQLU/oNfWcWIKdTxwruwooTWsV
	rOaMS/xEKNI0z6iuotBzADE16n9Dw8UL1gnAuVBWlA==
X-Google-Smtp-Source: APXvYqzv5Is+tGZnuDV+Mwp0XkA4v/KkrTLL57x2PgsTnbUbN8fsJVPwkrePPkdORIErwpm5PTvk/jCi8MW8QyI1nAs=
X-Received: by 2002:a05:6638:285:: with SMTP id
	c5mr17986927jaq.36.1552336117952; 
	Mon, 11 Mar 2019 13:28:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM2jFrH426UPxyKTk6whFry_J0VD_E5C-Gsi-CwYDL=wHQ@mail.gmail.com>
	<1210025179.154688.1552335389580@ox.hosteurope.de>
In-Reply-To: <1210025179.154688.1552335389580@ox.hosteurope.de>
From: Emily S <easmith5555@gmail.com>
Date: Mon, 11 Mar 2019 15:28:28 -0500
Message-ID: <CAAV2bM2w5cxuZL-Be_E1SfPJNst_392sb1QNR2KBNpLsLHzbsA@mail.gmail.com>
To: =?UTF-8?B?TG/Dr2MgRG9tYWlnbsOp?= <tech@domaigne.com>
Cc: yocto@yoctoproject.org
Subject: Re: devtmpfs failing to mount
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
X-List-Received-Date: Mon, 11 Mar 2019 20:28:39 -0000
Content-Type: multipart/alternative; boundary="000000000000e1f4b40583d76aea"

--000000000000e1f4b40583d76aea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Yes those are both useful things to know. I am booting by flashing an SD
card with a wic image (made using sdimage-bootpart.wks), so the flashing
process takes care of creating the partitions. So the partition should be
of type EXT4. The mounting process is actually what I'm a little fuzzy on
in the first place. In October I had no issues with a mounting error for
devtmpfs, and I've made few changes since, however I can't seem to shake
this error, even when checking out older versions of the yocto
repositories. The mounting process should be mostly taken from the
meta-xilinx repository.

Thanks,
Emily

On Mon, Mar 11, 2019 at 3:16 PM Lo=C3=AFc Domaign=C3=A9 <tech@domaigne.com>=
 wrote:

> Bonsoir Emily,
>
> > I'm using Yocto version rocko with a custom layer to run on the Zynq+ S=
oC
> > on a custom board. When trying to boot I'm getting the following error =
in
> > the boot output:
> > ...
> > [    4.127997] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to featu=
re
> > incompatibilities
> > [    4.183737] EXT4-fs (mmcblk0p2): recovery complete
> > [    4.190840] EXT4-fs (mmcblk0p2): mounted filesystem with ordered dat=
a
> > mode. Opts: (null)
> > [    4.198870] VFS: Mounted root (ext4 filesystem) on device 179:2.
> > [    4.205861] devtmpfs: error mounting -2
> >
> > Are there common reasons for this happening I should check?
>
> Not sure if that helps, but I'd check:
> a) What's the type of the mmcblk0p2 (=3Drootfs?) partition?  and
> b) How is this partition mounted?
>
> Cheers!
> Lo=C3=AFc
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000e1f4b40583d76aea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!=C2=A0<div><br></div><div>Yes those are both useful =
things to know. I am booting by flashing an SD card with a wic image (made =
using sdimage-bootpart.wks), so the flashing process takes care of creating=
 the partitions. So the partition should be of type EXT4. The mounting proc=
ess is actually what I&#39;m a little fuzzy on in the first place. In Octob=
er I had no issues with a mounting error for devtmpfs, and I&#39;ve made fe=
w changes since, however I can&#39;t seem to shake this error, even when ch=
ecking out older versions of the yocto repositories. The mounting process s=
hould be mostly taken from the meta-xilinx repository.=C2=A0</div><div><br>=
</div><div>Thanks,</div><div>Emily</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 11, 2019 at 3:16 PM Lo=
=C3=AFc Domaign=C3=A9 &lt;<a href=3D"mailto:tech@domaigne.com">tech@domaign=
e.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Bonsoir Emily,<br>
<br>
&gt; I&#39;m using Yocto version rocko with a custom layer to run on the Zy=
nq+ SoC<br>
&gt; on a custom board. When trying to boot I&#39;m getting the following e=
rror in<br>
&gt; the boot output:<br>
&gt; ... <br>
&gt; [=C2=A0 =C2=A0 4.127997] EXT4-fs (mmcblk0p2): couldn&#39;t mount as ex=
t3 due to feature<br>
&gt; incompatibilities<br>
&gt; [=C2=A0 =C2=A0 4.183737] EXT4-fs (mmcblk0p2): recovery complete<br>
&gt; [=C2=A0 =C2=A0 4.190840] EXT4-fs (mmcblk0p2): mounted filesystem with =
ordered data<br>
&gt; mode. Opts: (null)<br>
&gt; [=C2=A0 =C2=A0 4.198870] VFS: Mounted root (ext4 filesystem) on device=
 179:2.<br>
&gt; [=C2=A0 =C2=A0 4.205861] devtmpfs: error mounting -2<br>
&gt; <br>
&gt; Are there common reasons for this happening I should check?<br>
<br>
Not sure if that helps, but I&#39;d check:<br>
a) What&#39;s the type of the mmcblk0p2 (=3Drootfs?) partition?=C2=A0 and<b=
r>
b) How is this partition mounted?<br>
<br>
Cheers!<br>
Lo=C3=AFc<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000e1f4b40583d76aea--
