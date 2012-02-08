Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m020-f176.google.com (mail-lpp01m020-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C3EE0044D
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 11:23:59 -0800 (PST)
Received: by lboi15 with SMTP id i15so596401lbo.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 11:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=zZO5aWd/XBJTX6O60l4OIyZjavLaGk4U/dw+smwXtdg=;
	b=twfElWUPiQ8Tp8vsx3mVce8CVw+EDRfQLzRZXulIv0FDdG+wHxK7HE170BaIX4qfCx
	aCwFZqBb6eINfbNMNowXJ92IplG1kLatGAo9qUpX4MJPvOZk/eC3Vh5cK19P/Eob/tjr
	uIABo01SJvS82N2DyJJPWVo4T7EZ6hdfTi63U=
Received: by 10.112.28.169 with SMTP id c9mr8214157lbh.42.1328729038604; Wed,
	08 Feb 2012 11:23:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Wed, 8 Feb 2012 11:23:27 -0800 (PST)
In-Reply-To: <20120208100718.GB8335@giant>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Feb 2012 11:23:27 -0800
Message-ID: <CAMKF1sr+oFgSk-UdTYDt9p_HnRd=8AnV7=LsibF=bC4d9v4sgg@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B6rn_Stenberg?= <bjst@enea.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 19:24:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 8, 2012 at 2:07 AM, Bj=C3=B6rn Stenberg <bjst@enea.com> wrote:
> Who sets the Upstream-Status? Are there guidelines how to do it?
>

patch author importer whoever brings this patch in into oe. Sometimes
there might be judgement error on patches
thats why I said "for most of them it reflects the status of patch
w.r.t. upstream"

> I spoke to the author of curl and mentioned the two patches in Yocto agai=
nst it, both of which are marked as "Upstream-Status: Inappropriate". He sa=
id those patches were never submitted to him.
>
> Are we dismissing patches without even giving upstream a chance to commen=
t?

Thats not the intention at all. All patches should go upstream from
OE's POV it would be cool to have 0 patches locally
If someone had better insights into patches and submit more
appropriate analysis of patches thats welcome
all the time.

