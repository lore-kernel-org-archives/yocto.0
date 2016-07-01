Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FF71E00931; Fri,  1 Jul 2016 08:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA995E006D2
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 08:34:04 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id g127so20701760ith.0
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 08:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JifQdx1wg4i1HHa1zop67mdxNqTrMzIuPNDrh6Wzt3Y=;
	b=0B889FJ8k0J8CH4YFTXih4Lry4Gy7KXNA2XfMXQFejDISFrx4oIW/KQiR5ytFXBYdf
	9T98K3SOgndfMTS/s3WtNL4BjnGvLoj2bmm2Zeb6+qa5BiRol4VQuJm4GxVmvCbOtxQY
	xzOvzd/EQ3ysLDYYnYn4cXnfoz9RKva+CExXnhaWIW9ICw33ktKCW2Ao38Cf8JS0doTK
	bRKZmJOZAiPJf7TVzL5esBscJSai2r/7MTWXoMYhhYxcqTBe0iPr+HUDyjfsKmFYhBFJ
	sHb2FJtXh6FQP9AXAONyTgGZYPsr9I8D1iQsII2e8O/W7LAoF9fwXCIl1KWMwawdPjGU
	R6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JifQdx1wg4i1HHa1zop67mdxNqTrMzIuPNDrh6Wzt3Y=;
	b=g1WBKK61uxshRVMeZ3aujokPU0z5tij4bnMxVz03ob8vuMODakKStat9XkMzUPirSV
	UWkiJV7Y/tXlvvJ5jp1iXRxG3UibAH1TnhP2NphA/U0uwvr5O2xi+XX22fxExqhRWhAO
	oYHreu91juGFfL8rdwbOAYs9oGx2THucYUYxq9ZSnWukqJPLDoGakh65dvi3+3wzZYSy
	PxisOPGH/pGPk00Qw8qb3fKezgCImIDqpOxeMmRAIsgZuJzSlx2fBiYOJGMYqJBaHrF3
	fULjgi/7SByzgFgUmpnRNXZUuezHH5PlkpRcCpkcT/DfQ0LB3MWOuMPUP5ybERLB1Gsh
	QTvQ==
X-Gm-Message-State: ALyK8tL6lVzvnIYwkRp4otr1d4f2cOhpp82mzPMtPNoKXW0vgIQ+lfv0ALwv/srg/COyWMq2d0epv04DvQRPp/R2
X-Received: by 10.36.48.80 with SMTP id q77mr129384itq.83.1467387243801; Fri,
	01 Jul 2016 08:34:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Fri, 1 Jul 2016 08:33:44 -0700 (PDT)
In-Reply-To: <1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Jul 2016 16:33:44 +0100
Message-ID: <CAJTo0LaU3YyCtR=DebH+D9PVSvk+aLMuCvCZ6qZjNZhLWKyv9A@mail.gmail.com>
To: Mathieu Allard <mathieu.allard@evalan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Fri, 01 Jul 2016 15:34:06 -0000
Content-Type: multipart/alternative; boundary=001a11c007d86a4dc7053694b787

--001a11c007d86a4dc7053694b787
Content-Type: text/plain; charset=UTF-8

On 1 July 2016 at 15:03, Mathieu Allard <mathieu.allard@evalan.com> wrote:

> I think that the main issue here is that the pkg_postinst function runs
> its action at the rootfs creation time, and not on the target as advised by
> Ross.
>

Yes, as I said in the first suggestion you'll need to ensure this runs on
the target (check $D and exit 1 if its set).

Ross

--001a11c007d86a4dc7053694b787
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 July 2016 at 15:03, Mathieu Allard <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mathieu.allard@evalan.com" target=3D"_blank">mathieu.allard@evalan.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":f8j" c=
lass=3D"a3s aXjCH m155a6ce7803b13fb">I think that the main issue here is th=
at the pkg_postinst function runs its action at the rootfs creation time, a=
nd not on the target as advised by Ross.<br></div></blockquote></div><br>Ye=
s, as I said in the first suggestion you&#39;ll need to ensure this runs on=
 the target (check $D and exit 1 if its set).</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c007d86a4dc7053694b787--
