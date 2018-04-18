Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 262DFE00831; Wed, 18 Apr 2018 13:07:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66E86E0044F
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:07:30 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id y20-v6so2759234oix.5
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=DtCARqsHcQNVoyNkXXZFdnGX71z8GOBggJAgGSX2N+U=;
	b=eYZ/sJ1MTqNY2lNtQby8cNLlArqzkyQ0+3Vf8a4ciVEXL6HZscuC9jZx4KebXvgdc2
	2XswGf92HSnJIT5o6Z2JNQevOaBkaX/vIOBc03yjWMLbIkOmrzbJIMxQS9sgtIus8Sq6
	qUmICuvdsHMe8ZVFjnvfCTfKOJv68Xmj/fd1hwoTkobhGXZ7hI6uImD/NLqq7a/VCfdQ
	zZ1HPTurfRdMggQa19Nwk75yOwU7q9nQmJF5MKLSUnCXYXuQS6a3EHQhzFXNMn5CQ5/Q
	NOw9uIX8tVr9+cpcIqcZsxQVJhwthZraTwTO/GdAUW6Rt7dTi5wk2sbr44vrHIMCkHC+
	10IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=DtCARqsHcQNVoyNkXXZFdnGX71z8GOBggJAgGSX2N+U=;
	b=hGaLNQmiq6ftweo3eN5nQM51V3rkgnml7Ha0JgSBi43q+HXn+EfDiCFnZEWBI4ZCMN
	LbsuRyDRgoezQSJE/OVl+nCwY5f6R/8iQgt8d7r4qhayP16WcNr5vfCVLFNTXFNRAIUa
	2HWPCAxQwga5DsLvHcXb6trBdtx9CD22xyZ80nS53foOC3X64h/bwYMRtz/aA2SVMRz2
	imvd6G5wrwI86Vi99pEc3TV/GH1UFKVWE5lGrmPE4CoEWG9bDo1ZMCiqyc+nwh5gbX5U
	IhRPyyTJTxB3/PDj/mouJIwWWimcOe/pNkHqrDajUDfXILXp4EhyNv+ZZ12mSg4kAZvu
	jEBQ==
X-Gm-Message-State: ALQs6tB5VGFNJfc2LUNyKun0Lu9fs3SbwMB5eousUYYO3ApV4PFgcKOS
	o/UJKi7g4wOvhdxykDu7G+grybH2qvKyDCD7KLApoQ==
X-Google-Smtp-Source: AB8JxZpXK7MyxLLd3mJvHY/Mo3sA5STT0hyhTZbTP8TiwAJmM4EFWY7fTto6o4gg71G9xSbbI9e4Yg21HO6D7xieGuQ=
X-Received: by 2002:aca:e40b:: with SMTP id
	b11-v6mr2188375oih.70.1524082050552; 
	Wed, 18 Apr 2018 13:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.138.17.198 with HTTP; Wed, 18 Apr 2018 13:07:10 -0700 (PDT)
In-Reply-To: <44c5427e55d84f0a8a9f0eb9aadfcd9f@in.bosch.com>
References: <44c5427e55d84f0a8a9f0eb9aadfcd9f@in.bosch.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Apr 2018 21:07:10 +0100
Message-ID: <CAJTo0LZgDatLD7s0X7dcgwbq_axib+tXLReJCFWgt9EQkT=xUw@mail.gmail.com>
To: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PULL] provide debug sources in externalsrc -dbg packages
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
X-List-Received-Date: Wed, 18 Apr 2018 20:07:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is the wrong list, please submit the patch to
openembedded-core@lists.openembedded.org.  Also the patches, not just
a link to the patches.

Ross

On 18 April 2018 at 05:14, Vignesh Rajendran (RBEI/ECF3)
<Vignesh.Rajendran@in.bosch.com> wrote:
> Hi Yocto,
>
>
>
> I have made some changes to fix missing debug sources in -dbg packages wh=
ile
> using externalsrc.
>
> Please have look and let me know for any changes needed.
>
>
>
> Thanks. :-)
>
>
>
> the changes are available in the git repository at:
>
>
>
> https://git.yoctoproject.org/git/poky-contrib
> vrajendran/externalsrc-debugsrc
>
> http://git.yoctoproject.org/cgit.cgi//log/?h=3Dvrajendran/externalsrc-deb=
ugsrc
>
>
>
> Vignesh Rajendran (1):
>
>   package.bbclass: provide debug sources in externalsrc -dbg packages
>
>
>
> meta/classes/externalsrc.bbclass |  3 +++
>
> meta/classes/package.bbclass     | 14 +++++++++++---
>
> 2 files changed, 14 insertions(+), 3 deletions(-)
>
>
>
> --
>
> 2.7.4
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
> Rajendran Vignesh
> RBEI/ECF33
>
> Tel. +91 422 67-65103
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

