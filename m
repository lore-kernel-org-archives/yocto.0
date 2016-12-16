Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BA97E00E17; Fri, 16 Dec 2016 01:22:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D11E00DFF
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 01:22:33 -0800 (PST)
Received: by mail-qt0-f173.google.com with SMTP id w33so81617349qtc.3
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 01:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=16W9JJEE4NqK+6cPU5xeDPmK5I/Ay/AP3/t9umsWmiI=;
	b=oTqIr/lVFgKXh5J/7NHZvTLrIsvIqqr8FLx3lSrhJO0iqL/qhRiAZt3di+2T+ZO5v/
	UR+ZVdoBwZaon/xhj339wmUL+AjQ9NFPe5zKcR883zzFndEQ4M6ICCojDmrrRI+eTNEX
	MUWwYg4mmIXF5NJJ//zPUYXP05uIFGAAGnB6x3l0cRCH/nqI7/EkS5zxWmrPb7h+3/78
	kSWjWuhDm1H5eX80QtMQKwnGz+/50pNigwZjYkc4Ih0NDnMeFW48gh35Ao3ZQrAbOt0n
	OpBwoQeX8bIF6duAOkztqsbdBi8cUnV/Xz0xELZJWbcDP/b7JojubZKFfQjvt440BlJQ
	5oXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=16W9JJEE4NqK+6cPU5xeDPmK5I/Ay/AP3/t9umsWmiI=;
	b=hID+Td6XFLVLA69EB2XeO4vcNewpfKIMmS1nnAZY/g6COTXgUsfqt/jLCJGq2OPnA2
	8bEL5eh3ombPppv6JP7H/TourgluXsCQkVCuoMF6rUXxjrKLyJV/Z27k5N8Gno5JZLND
	EC0IwOD8laNkuCGzqlnHMmIoCj/20jCY1GcZhZDNIqrDzU/DRowrgVabM7IoKufRd5qB
	rfNyjR8sJR160YktGxo8eNGg4FZlIjj8/x0k/hPpauwmcrANE7RzsGCuAhYFqqETUVQy
	4SMUvqPi5qQA3f1n3zhaIfDVAiV6mEFNIcnpCFMdOODoBR9nZfsTREL89ZKJQJ4BlkBJ
	2NWA==
X-Gm-Message-State: AIkVDXImPcrrP2hNjV52oe6vZLovRg0baO3qW4jWcFHbdjTZ3ZX0O/VTu8553kXM/erR8U1Pux+RjImB09DuQ4af
X-Received: by 10.237.60.11 with SMTP id t11mr1563136qte.227.1481880152499;
	Fri, 16 Dec 2016 01:22:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.74 with HTTP; Fri, 16 Dec 2016 01:22:02 -0800 (PST)
In-Reply-To: <CY1PR0101MB15941E53F918A2D5BD56915BD79D0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15941E53F918A2D5BD56915BD79D0@CY1PR0101MB1594.prod.exchangelabs.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 16 Dec 2016 11:22:02 +0200
Message-ID: <CAHiDW_GF8a=QLb0N4QhFWsWtP3YmoeYF-3+=1LzGELcA5tsoag@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: live" image: iso and ext4 artifacts
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
X-List-Received-Date: Fri, 16 Dec 2016 09:22:35 -0000
Content-Type: multipart/alternative; boundary=94eb2c1929681701340543c31c91

--94eb2c1929681701340543c31c91
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 15 December 2016 at 09:30, Takashi Matsuzawa <tmatsuzawa@uievolution.com=
>
wrote:
>
> Hello Yocto.
>
> I am trying x86-64 BSP image (based on jethro version).
> It has following root filesystem type, and it generats xxxx.hddimg file
that I am using.
>
> > IMAGE_FSTYPES =3D "live"
>
> The issue is that in addition to xxxx.hddimg, it produces following image
files and it sometimes cause lack of disk space error on my build PC.
>
> > 2422489088 xxxx-intel-corei7-64-20161215004421.hddimg
> > 2402287616 xxxx-intel-corei7-64-20161215004421.iso
> > 2368578560 xxxx-intel-corei7-64-20161215004421.rootfs.ext4
>
> I do not need xxx.iso and xxxx.ext4 files as final output, though I
understand that xxxx.ext4 file may have been used to produce xxx.hddimg
file.

I think you should be able to define NOISO=3D1.

The rootfs is indeed used to produce the actual images, you could delete it
afterwards... but before you spend valuable time writing shell scripts,
consider a new SSD: 500GB is probably less than 150=E2=82=AC by now.

Jussi

--94eb2c1929681701340543c31c91
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 15 December 2016 at 09:30, Takashi Matsuzawa &lt;<a hre=
f=3D"mailto:tmatsuzawa@uievolution.com">tmatsuzawa@uievolution.com</a>&gt; =
wrote:<br>&gt;<br>&gt; Hello Yocto.<br>&gt;<br>&gt; I am trying x86-64 BSP =
image (based on jethro version).<br>&gt; It has following root filesystem t=
ype, and it generats xxxx.hddimg file that I am using.<br>&gt;<br>&gt; &gt;=
 IMAGE_FSTYPES =3D &quot;live&quot;<br>&gt;<br>&gt; The issue is that in ad=
dition to xxxx.hddimg, it produces following image files and it sometimes c=
ause lack of disk space error on my build PC.<br>&gt;<br>&gt; &gt; 24224890=
88 xxxx-intel-corei7-64-20161215004421.hddimg<br>&gt; &gt; 2402287616 xxxx-=
intel-corei7-64-20161215004421.iso<br>&gt; &gt; 2368578560 xxxx-intel-corei=
7-64-20161215004421.rootfs.ext4<br>&gt;<br>&gt; I do not need xxx.iso and x=
xxx.ext4 files as final output, though I understand that xxxx.ext4 file may=
 have been used to produce xxx.hddimg file.<br><br>I think you should be ab=
le to define NOISO=3D1.<div><br></div><div>The rootfs is indeed used to pro=
duce the actual images, you could delete it afterwards... but before you sp=
end valuable time writing shell scripts, consider a new SSD: 500GB is proba=
bly less than 150=E2=82=AC by now.</div><div><div><br></div></div><div>Juss=
i</div></div>

--94eb2c1929681701340543c31c91--
