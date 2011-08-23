Return-Path: <tom.rini@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52DBDE0071A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 12:35:23 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyn35 with SMTP id 35so783295iyn.21
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 12:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=F9w7+TMYCH3DKmKcCnnIeOtM/M6Ci/a1MNwE358VAVg=;
	b=M5MITW0iBW2tmzR01YBvjlLWYAdQgzFF2iPi4V0Uf/cI8iq3DmTzkZdHaJGlARBj43
	WrVqNircwgDxRPXbp6RajiuQVnbIab4GxgMYh6EBJaGzi5Q0kTtleduHCD1+OE1cYso9
	g1p3vtaSgTZ8HYaPgPhXUi5KRZNp8TNQ9VHX8=
MIME-Version: 1.0
Received: by 10.42.161.71 with SMTP id s7mr3847903icx.372.1314128122682; Tue,
	23 Aug 2011 12:35:22 -0700 (PDT)
Received: by 10.42.220.70 with HTTP; Tue, 23 Aug 2011 12:35:22 -0700 (PDT)
In-Reply-To: <99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
References: <cover.1314124511.git.sgw@linux.intel.com>
	<99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
Date: Tue, 23 Aug 2011 14:35:22 -0500
Message-ID: <CA+M6bX=vjB5gV572LVemMdeiO3TuFFUK_L6xTA2pDrVu-0ZZvw@mail.gmail.com>
From: Tom Rini <tom.rini@gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard.conf: set DEFAULT_TUNE to cortexa8
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
X-List-Received-Date: Tue, 23 Aug 2011 19:35:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 23, 2011 at 1:36 PM, Saul Wold <sgw@linux.intel.com> wrote:
> =A0 =A0[YOCTO #1381]
>
> =A0 =A0lttng-ust generates an ICE when building for armv7, so change it t=
o armv5
> =A0 =A0| vfprintf.c:956:1: error: unrecognizable insn:
> =A0 =A0| (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]=
) 0)
> =A0 =A0| =A0 =A0 =A0 =A0 (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v=
:SI 166 [ nextarg ])
> =A0 =A0| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (const_int 8 [0x=
8]))
> =A0 =A0| =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 (reg/f:SI 370 [ argtable=
.7 ])) [0 *D.6937_569+0 S1
> =A0 =A0A32]))) vfprintf.c:555 -1
> =A0 =A0| =A0 =A0 =A0(nil))
> =A0 =A0| vfprintf.c:956:1: internal compiler error: in extract_insn, at r=
ecog.c:2109

Which version of lttng-ust is this exactly?  In addition to what
Darren is saying about how this should be papered-over at the recipe
level until gcc itself is fixed...

--=20
Tom

