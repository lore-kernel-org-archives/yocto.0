Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66BF3E00294
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:42:57 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 21 Nov 2012 15:42:57 -0800
Received: by mail-ia0-f200.google.com with SMTP id x26so16258999iak.11
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:42:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=HLdvoDXrFkbQFeciJWhRyB9opsFFCj9RSBqWcHBBse8=;
	b=alIt8SfcPfw2ckMbSdsklhbW4r+scwh46L/DBsxObnr6cmNrRHnr3PvT0gvng5XxIH
	ePAl2v/yvM4C12YxBarBIhhzfaTHF7k6zAGkbvhsl+wyAefaF74H4BWnqRlnawuiTSfI
	4WMmbuwM0enj5hP1vSMTMw+U/eLnD/ysOefrGuFTr7jXZkJyGmrJ5nMuKKc9kWeZ+/Pg
	5lzgjHWspwIbAjPPequeT6qK0MVAn2e+u06JMvvKageZwkhC22JWlDlY394uvocPbkhb
	YRW2VAba9yxcehPVbWYO3WaIDYAbeDlYCPbX83tqSd0ibpHBqoKE4aehJobIyAuV0fOG
	2/Cg==
Received: by 10.60.169.76 with SMTP id ac12mr1149351oec.88.1353541376140;
	Wed, 21 Nov 2012 15:42:56 -0800 (PST)
Received: by 10.60.169.76 with SMTP id ac12mr1149343oec.88.1353541376087; Wed,
	21 Nov 2012 15:42:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.154.37 with HTTP; Wed, 21 Nov 2012 15:42:35 -0800 (PST)
In-Reply-To: <CAJTo0LbCWQTs2aBBWvjeqXD-o6n48SfvBgBJCEFLN1kHtCPXiQ@mail.gmail.com>
References: <CAOT3miJ73uAvR0Qij3+-q3B6K46=J5ZoFZDzW79YCSUfPbLeAA@mail.gmail.com>
	<CAJTo0LYLf=296eEZznK7vnFTJZhAS_u1opuXdyJ=MUvRYF1Asw@mail.gmail.com>
	<CAOT3miJf7yh=1c-xxfZ-sxZt4RUvufcgVTMv0Dzw=kSbz5wXaA@mail.gmail.com>
	<CAJTo0LbCWQTs2aBBWvjeqXD-o6n48SfvBgBJCEFLN1kHtCPXiQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Nov 2012 23:42:35 +0000
Message-ID: <CAJTo0LZ5x=sm27TBgieofFebe84edDzUV19wbmVaBZ4ZDdyajw@mail.gmail.com>
To: Nicolas Dechesne <ndec13@gmail.com>
X-Gm-Message-State: ALoCoQkffvIJ+SVJaJApHhVUFMQsdqlu/UHtKSB50DbRW3HP0r657/MgnUBPX18qJRejU2chh+2Nk+u4/r2vs53gQd5u7ZACSTgIraQk0hl/ErY6DcqPlP0ZvlNw0Zb1zO/5F65oNPAoGn32gwAbe1yJgo6QgUGhmg==
Cc: "meta-ti@yoctoproject.org" <meta-ti@yoctoproject.org>, rob@ti.com,
	yocto <yocto@yoctoproject.org>
Subject: Re: build failure with xf86-video-omap
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Nov 2012 23:42:57 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2012 23:33, Burton, Ross <ross.burton@intel.com> wrote:
> fdo - https://bugs.freedesktop.org/show_bug.cgi?id=57386
>
> I started replacing the AC_CHECK_FILE with PKG_CHECK_EXISTS, but now
> I'm wondering why DRI_CFLAGS DRM_CFLAGS are being used without being
> apparently defined.  Is this configure.ac needing a bit of a clean or
> am I misunderstanding something?

Looked a bit more, looks like 99% of the DRI checking code is dead, so
I've attached a patch to FDO #57386 which mostly deletes stuff.

(caveat: untested)

Ross

