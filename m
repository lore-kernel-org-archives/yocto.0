Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CBBBE011C0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:07:47 -0700 (PDT)
Received: by lboi15 with SMTP id i15so2522624lbo.35
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2012 11:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=yiS28eEuupfOQZSpmMEyLVefIo2dZE7tb5w5VggVLX4=;
	b=eb/6GquGLF0Ev1UVIaLLWXgleK/25hx7Cyjf5DrSFYozf85auz9MYUE0xHo5Zp3d5S
	y4jZ0l+Pd7EC74Urjxs7E4SaZ2+O08pr/2Nz5b+IzxcbTMUUVN0K3vhaeglUcUcxnhSl
	7Fe2rsifjHu2rb/Q8MlPlb97+htW+wyHi1KnTph3QFxAZAzoT71qVLvlCCL3RnblCEyu
	n6sAhwMT2hYmj99AdYwSOp5wDf7yweauzv8aeaAaaeAXSFFsxFNgt4tg5jb5783ODGWP
	IHillnKigZEDtd7MAJtKiOOrI2R/C6ANjU8E3+lEDlh9Ou05QstuHgtbXIwc25PjrecC
	rn3A==
MIME-Version: 1.0
Received: by 10.152.112.233 with SMTP id it9mr35721lab.40.1347559664095; Thu,
	13 Sep 2012 11:07:44 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Thu, 13 Sep 2012 11:07:44 -0700 (PDT)
In-Reply-To: <CAHUNapQ9aLCbiEG2eyLzTsBe3k9vaBen4Hfm3E0L85JQJ_j1Kg@mail.gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<AA2F4F97-00C8-48C3-90E8-5AF084D508B8@gmail.com>
	<CAHUNapStNAw21FiO6vFgBPLPfeqnoFjAtuuUuzun+6FuzLfspg@mail.gmail.com>
	<CAHUNapT5HfC+dbzjmuYiQ4ic4m71=iBaaJtygfrhht+JsqMyHA@mail.gmail.com>
	<CAMKF1sozZMQFS4kSbqGGnzzJ9K0O_3NCyujknFpJUZvZ4jOLBA@mail.gmail.com>
	<00209F5B-F153-4F07-BA14-54FF7D6E5762@gmail.com>
	<CAMKF1soXwQXyVo4_p_ufGHAM63qitE67tQ9Fg3pLDCZNk5N+nw@mail.gmail.com>
	<CAHUNapQ9aLCbiEG2eyLzTsBe3k9vaBen4Hfm3E0L85JQJ_j1Kg@mail.gmail.com>
Date: Thu, 13 Sep 2012 14:07:44 -0400
Message-ID: <CAHUNapScRtp4hTW2z1_wMNJA6AKVYvsHLNu+kzTzUQgQpvVBkA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, Elvis Dowson <elvis.dowson@gmail.com>, 
	Adrian Alonso <aalonso00@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Thu, 13 Sep 2012 18:07:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

PS simply BBMASK'ing out libffi doesn't help as too many things...
require(?) it (depend on it, rdepend on it...?)

ERROR: Nothing PROVIDES 'libffi' (but
/home/trevor/devel/yocto/gitrepo-method/poky/meta/recipes-core/glib-2.0/glib-2.0_2.32.4.bb
DEPENDS on or otherwise requires it)
NOTE: Runtime target 'udev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['udev', 'glib-2.0', 'libffi']
NOTE: Runtime target 'packagegroup-core-boot' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-core-boot', 'udev', 'glib-2.0', 'libffi']
ERROR: Required build target 'core-image-minimal' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-minimal',
'packagegroup-core-boot', 'udev', 'glib-2.0', 'libffi']

