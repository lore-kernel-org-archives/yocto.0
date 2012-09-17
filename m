Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A01E0049B
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 01:29:39 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 17 Sep 2012 01:29:25 -0700
Received: by obbtb18 with SMTP id tb18so11401055obb.35
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 01:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=7u2du6x6V9+vS4G79vjrxWW0SVlHt7QjG8/XLfCP6dY=;
	b=dFhLgaVdg0iDPO5dCkSh4Ve4388r19ylAAOmesNW+WiodA2zdx6YgbLW4oCS3UkhO9
	Nru7D+Hho+8vfnx7t+mQJ+5p4sisTAqR7Z5tXGdeMSwfkL9b4QUFDqqJGEf/zvRDb00G
	GwZc9a4WXMME/lq3TttW+s+TnVmUw1CVVROuVPyX9c4NyCA1BTz4nZkBB48GNMtCtDCZ
	odVi8fPKNoAo/crtQ/OakBXxIqhneLu+XY42rpl0bCr69XDiPEEEWGmovMefq2pDOGLl
	fo9lZx38oelJBhB9CF05eTUTNOMnnroAlPpMABH733uMtafT6+d6LNYvwQRposzx7iNN
	aOnA==
Received: by 10.60.12.106 with SMTP id x10mr10426673oeb.103.1347870564214;
	Mon, 17 Sep 2012 01:29:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Mon, 17 Sep 2012 01:29:03 -0700 (PDT)
In-Reply-To: <9FB2A3C0-3081-424E-BC26-002559D3EA83@keylevel.com>
References: <9FB2A3C0-3081-424E-BC26-002559D3EA83@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Sep 2012 09:29:03 +0100
Message-ID: <CAJTo0LYTX-GODP55NMJWJs5x7BjKeq94zdBVDLHr=Uc4TpvgNA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQn9Ps0FDCveHQt4hv2cXpiQJvIwtf8YK2j9u6zTsM/khN1fKHdYmUndpvucdnU8JihBcwit
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: bbappends for MESA
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
X-List-Received-Date: Mon, 17 Sep 2012 08:29:39 -0000
Content-Type: text/plain; charset=UTF-8

On 17 September 2012 09:09, Chris Tapp <opensource@keylevel.com> wrote:
> I want to enable glut in mesa from within a layer so I can run with an unmodified brach (e.g Denzil). All I need to do is:
>
> 1) Add the SRC_URI to mesa-7.11.inc;
> 2) Add a couple of LIB_DEPS, add a couple of packages and modify EXTRA_OECONF (it has --disable-glut) in mesa-common.inc
>
> Can I do this using .bbappend files? I can see a couple of issues:
>
> 1) The SRC_URI checksum currently in mesa-7.11.inc doesn't specify a filename. I suspect this isn't going to work too well if I add a specific for the glut download. Or will the generic checksum still match against the existing (non-named) file?
>
> 2) How do I modify EXTRA_OECONF to change the --disable-glut in mesa-common to --enable-glut?

GLUT isn't part of Mesa since 6.4 (released 2005), and Mesa recommend
to use freeglut:

"2.3 Where is the GLUT library?

GLUT (OpenGL Utility Toolkit) is no longer in the separate
MesaGLUT-x.y.z.tar.gz file. If you don't already have GLUT installed,
you should grab freeglut."

Freeglut can be build standalone and won't need any bbappends.

Ross

