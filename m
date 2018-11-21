Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BB15E00C7C; Wed, 21 Nov 2018 10:16:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9418E009AA
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 10:16:58 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id v11so10278981itj.0
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 10:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iUEcFQomxusa/KmDtF5KAq0UCHWv8DVDOUm6Hktd+40=;
	b=uc9Ba4qeqg2KPRPamMTbSjFPdVHp5PVfnU9t5svaMqgif/XjKSqAsYKbxJ/06PCZt6
	TdcP2TrvuF4ICklOp2mJN3N1qDmnWkt0ifc50zWlF90zWeNt4UgPucWQAbEO/cAioWFn
	UstMwtDnaQCL8QHWqRhc5pmvY0R72xUR/rpleBnLpzVrYAoXtCkFovRSbY46HoCHlHxQ
	4hWMoclG9asiF1GIr+3foF7T4I7YkCWuLNtAcEZlhapw//5QCjzJeJ1awjmOiQYfMYH3
	Sc+jxzbbJGP5KdlzXFXrpAVuouCrf3uUWFL2gXaZ3OoJpkrN8g+Bbn92A9lr18msZl6D
	jW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iUEcFQomxusa/KmDtF5KAq0UCHWv8DVDOUm6Hktd+40=;
	b=Pz04h6wpHep4/OzGX1gBeCbc0f3ZsWuzxSbN9h2mrS/1E4bZspAAJfOOCCeFuBTRLy
	B4OzWPEJYAXRtltLVnv3qptgtbW0hhbMModN33d8DDAWpcAMuj4ihO6KHlpN9hIXu7KB
	zut9dqvIxzZpqCZqcPCizlNTHql53QnKuddXisLWgRWe77v/BCOSZF7zCVPx+gmSLdX+
	J7NrszGo1IfD8ffeJFm6NDZsTCiJU6B4M+5kv1I1AINmpJRYjEkveZDpMf7xcILUXKcH
	PPKyyvgJFDKnculW5mxGRCmnrAuHWyoDOdwy5JUtFOgxN5IDwXU0FcUCL1JZ5KkhdtEi
	c08g==
X-Gm-Message-State: AA+aEWalWYV+T8UhfPfP2qFRz92Ff3aGLNXK7SD16D047BoSv6G8FrC6
	wsGEh1Rtn4JHcCjZ1d1Tu8h547BHcq5oo8Z7qHwEoSRj7Ig=
X-Google-Smtp-Source: AFSGD/VaDhCspMv1wiUapJ7OyZrkes2qp9Rc0BWVP4PLM14KNXG2Ufqj4u4NcfL06rpwr7Uz8wl73PHevrY4Nb50Dws=
X-Received: by 2002:a02:1bc5:: with SMTP id 66mr6852811jas.105.1542824218019; 
	Wed, 21 Nov 2018 10:16:58 -0800 (PST)
MIME-Version: 1.0
References: <eefa2d0b-7e2f-eb1c-1375-ce151583e545@faresoftware.it>
In-Reply-To: <eefa2d0b-7e2f-eb1c-1375-ce151583e545@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Nov 2018 18:16:43 +0000
Message-ID: <CAJTo0LZna7GaNOr-40iM_2gLJABXNpyrxx-GnZFom=4QEM8teg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Copy tar file without expand it
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
X-List-Received-Date: Wed, 21 Nov 2018 18:16:59 -0000
Content-Type: text/plain; charset="UTF-8"

As per the documentation:

https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#bb-the-unpack

Add unpack=0.

Ross
On Wed, 21 Nov 2018 at 18:12, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I need to copy a tar file from 'files' subdir of my recipe into
> /upgrade_file in the file image.
>
> I don't need to expand it, only copy.
>
>
> How can I do that?
>
>
> in my recipe I put but myfile.tar will be exploded.
>
>
> SRC_URI += " \
>
>     file://myfile.tar \
>
> "
>
> do_install_append() {
>
>     install -m 0644 ${WORKDIR}/myfile.tar ${D}/upgrade_file
>
> }
>
>
> There some options to pass in SRC_URI to avoid tar expansion?
>
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

