Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35096E00AAB; Wed, 22 Jun 2016 07:43:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.195 listed in list.dnswl.org]
Received: from mail-yw0-f195.google.com (mail-yw0-f195.google.com
	[209.85.161.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B23D5E009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:43:35 -0700 (PDT)
Received: by mail-yw0-f195.google.com with SMTP id i12so6367925ywa.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 07:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qw2XZk2LseT51dWjZ7suIKjYcRproIhzV0lkB/+T2v0=;
	b=k1nrXy5GhYZgytid2GwIJ3pqx1BW7h3ENxl0I8gq6hsV8efdcaZPJdqy+FhzYQ9ALB
	3KhX0gi6oh/tXytBpVcJUeCDae3iX1aN56LakvFZu6jdYD51F3OwAHrh/AY0ZZtknkk6
	B30VMwcoRWy6N6r36ny4+FmPVioMX2YY9PMH596Hw2QUWRQSDNqwbgPO/W+nSr+MCbDC
	IRmGTVGpisvKm6skoksnbzVKZRvgcv9JN0saG9P1lEOVy2zP+B4YVTU7XbWhGs4qGmmV
	0y5mIGGcVi1U4QE8NICl20rhVyZSQDnpzqahwLF6kbR53tVp8/vRVYITDzgvpJBwqBU6
	+zKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qw2XZk2LseT51dWjZ7suIKjYcRproIhzV0lkB/+T2v0=;
	b=hHLM0pIOVgQhWI8Tw4YOhPJEbHDRcwgvrglcoqRenKCLwH7wT7/WHtheQhnmz2Q/X9
	/CRlJuGGmPM3Q2AE8Xwo/vE7O/L4RyPmN1d5mVenuWWZdwXgpvMp6lNGCM5NK51dATcW
	4QMDWk93jAt2AsVfhu/Xhu+t5iFnq0GuTAg/c3FCPk3i+tLk1kHkoY/fm8dzVQ7CgdyA
	Z899Db+fNfGO1q9YUDI46P9U5+COKgQVmxYXUesXGL4MV75niqiFTTVh6INJQ2n2YCho
	0MfBwR9T2CL8IFPq0TRH+j89lQRMn6ipwEten7Ht7ceOwhgtacMP/OS02bavEh1nwfcG
	69Rw==
X-Gm-Message-State: ALyK8tJ12Fy/F4GNImkS42S3Hh7LJJ4Eu8u10fU7M9ncLnS6FzvDW9r6Bn5/k6QEfTUzx6WIp8xI5q0b+qoGeg==
X-Received: by 10.37.32.133 with SMTP id g127mr4727954ybg.120.1466606615326;
	Wed, 22 Jun 2016 07:43:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.79.67 with HTTP; Wed, 22 Jun 2016 07:43:34 -0700 (PDT)
In-Reply-To: <CAMKF1srgttuEPAWhNUGeP_nsaK+fEHQa=Xk68TS94ZdzdJGrTw@mail.gmail.com>
References: <CAPYQ8X7beSjV7JhuMBsamZXt_SDV7xNnpka7tzRQDSTg76vAag@mail.gmail.com>
	<CAMKF1srgttuEPAWhNUGeP_nsaK+fEHQa=Xk68TS94ZdzdJGrTw@mail.gmail.com>
From: Michael Hu <pxmyhdev@gmail.com>
Date: Wed, 22 Jun 2016 10:43:34 -0400
Message-ID: <CAPYQ8X46mhSofF9t8HbMtfms_Wbm8dP9oJaYcr-8peeMVWvW7Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_patch through Yocto fails while "git am" succeed
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
X-List-Received-Date: Wed, 22 Jun 2016 14:43:40 -0000
Content-Type: multipart/alternative; boundary=001a1143f4fc54f35f0535def6cb

--001a1143f4fc54f35f0535def6cb
Content-Type: text/plain; charset=UTF-8

Hi Khem,

I'm using Yocto 2.1 Krogoth, and quilt version is 0.64. The workstation is
running Redhat 6.6.

Thanks

On Wed, Jun 15, 2016 at 5:10 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Jun 10, 2016 at 11:12 AM, Michael Hu <pxmyhdev@gmail.com> wrote:
> > Does anyone know what's the difference between using Yocto to apply
> patches
> > and apply patch directly using git command?
> >
> > I am trying to apply patches for arm-trusted-firmware through yocto by
> > extending arm-trusted-firmware.bb file, in .bbappend file, I have:
> >
> > SRC_URI = "file://<some patch name>"
> >
> > I got the following error:
> > ERROR: arm-trusted-firmware-1.2 do_patch: Command Error: 'quilt --quiltrc
> > /build/tmp/sysroots/x86_64-linux/etc/quiltrc push' exited with 1  Output:
> > Applying patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch
> > (Stripping trailing CRs from patch.)
> > ... some files can be patched
> > patching file <failed file>
> > Hunk #1 FAILED at 41.
> > 1 out of 1 hunk FAILED -- rejects in file <failed file>
> > Patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch does not
> apply
> > (enforce with -f)
> >
> > However, if using "git am <patch>" under cloned arm-trusted-firmware git
> > repo, the patches are successfully patched.
> >
> > What could be the difference?
>
> which distro do you use on build host and version of quilt, there were
> similar issues e..g with ubuntu 12.04
> on applying patches that were generated with newer quilt versions.
>
> >
> > Thanks!
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1143f4fc54f35f0535def6cb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<span style=3D"font-size:12.8px;white-space:nowrap=
">Khem,</span><div><span style=3D"font-size:12.8px;font-weight:bold;white-s=
pace:nowrap"><br></span></div><div><span style=3D"font-size:12.8px;white-sp=
ace:nowrap">I&#39;m using Yocto 2.1 Krogoth, and quilt version is 0.64. The=
 workstation is running Redhat 6.6.</span></div><div><span style=3D"font-si=
ze:12.8px;white-space:nowrap"><br></span></div><div><span style=3D"font-siz=
e:12.8px;white-space:nowrap">Thanks</span></div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Wed, Jun 15, 2016 at 5:10 PM, Khem =
Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><span class=3D"">On Fri, Jun 10, 2016 at 11:12 AM, Michael Hu &lt;<a=
 href=3D"mailto:pxmyhdev@gmail.com">pxmyhdev@gmail.com</a>&gt; wrote:<br>
&gt; Does anyone know what&#39;s the difference between using Yocto to appl=
y patches<br>
&gt; and apply patch directly using git command?<br>
&gt;<br>
&gt; I am trying to apply patches for arm-trusted-firmware through yocto by=
<br>
&gt; extending <a href=3D"http://arm-trusted-firmware.bb" rel=3D"noreferrer=
" target=3D"_blank">arm-trusted-firmware.bb</a> file, in .bbappend file, I =
have:<br>
&gt;<br>
&gt; SRC_URI =3D &quot;file://&lt;some patch name&gt;&quot;<br>
&gt;<br>
&gt; I got the following error:<br>
&gt; ERROR: arm-trusted-firmware-1.2 do_patch: Command Error: &#39;quilt --=
quiltrc<br>
&gt; /build/tmp/sysroots/x86_64-linux/etc/quiltrc push&#39; exited with 1=
=C2=A0 Output:<br>
&gt; Applying patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch<b=
r>
&gt; (Stripping trailing CRs from patch.)<br>
&gt; ... some files can be patched<br>
&gt; patching file &lt;failed file&gt;<br>
&gt; Hunk #1 FAILED at 41.<br>
&gt; 1 out of 1 hunk FAILED -- rejects in file &lt;failed file&gt;<br>
&gt; Patch 0002-csu_dma-Added-support-to-load-PL-bitstream.patch does not a=
pply<br>
&gt; (enforce with -f)<br>
&gt;<br>
&gt; However, if using &quot;git am &lt;patch&gt;&quot; under cloned arm-tr=
usted-firmware git<br>
&gt; repo, the patches are successfully patched.<br>
&gt;<br>
&gt; What could be the difference?<br>
<br>
</span>which distro do you use on build host and version of quilt, there we=
re<br>
similar issues e..g with ubuntu 12.04<br>
on applying patches that were generated with newer quilt versions.<br>
<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1143f4fc54f35f0535def6cb--
