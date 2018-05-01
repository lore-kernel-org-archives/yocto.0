Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F192DE00C54; Tue,  1 May 2018 05:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E91E00C40
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 05:08:03 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id 186-v6so12868364itu.0
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 05:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=a+1ielOwVev6D5B6Xo9HlAUBX7bohf17re4GW6Ps+qU=;
	b=xHS+v60RtTWGExVeMcPNmZdaiiQ/C/ADrhiT0OBq60QrHPrf5/lMr/WeIlVnhIENzy
	05w2uoI0RkXfyxLnr+dZ1P1HeFhDHAp7Zs9peQqeX3VHab7d0blY4JsUdmimaxoUskDx
	igSPx57cBoksnKwwYYWlVe9PnUWI0enbY13WOPyxOeG4aUpqeXXmnUKS6j2SDld63vkt
	TaNcjyCOyE0bKPdwfqjvV9y8ucLLMhwr00FwLZPENibQouS+fV9BZZ1W5ZJoOaokWHf5
	fjmSOkGF+0+G5/Jzdc2LA6Jt0cspxsQ3dVqRYBRqy8AxU0UoBUvynPcAThIo7LKKM025
	6faQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=a+1ielOwVev6D5B6Xo9HlAUBX7bohf17re4GW6Ps+qU=;
	b=WoM8+dtN/wXpU8y5VTvHbh5ZB3QZyLFYIRN8s5bgGWXw8j3osUD0K0YtD5ZTSzLrt4
	MkscNpxa3SYLo6zHJcb5QZ5CuGvH01YZhM/AqoYRBxuAln4Ip8ku9QLAfFwB+nKbhsH/
	KTYXhn4oDE3LFvdnWTfg4BG+m/Wn39yLmki0h/fXzD9cnRt402TPpV87M0mu0RpHN+rK
	VXZYt8gPSOac42GJGCE2Ktbn4Ph4nL/Fk36QG2MveP5yq751c/bh+DGzbUGNEQHYyRZg
	LldQ61p06qWUxJZhledUg5NTB724e9JeKR0gNFrlKtIWNErHtSPDXTdOyd/m0rIO/3Hn
	o3wg==
X-Gm-Message-State: ALQs6tCdXuM52DaX5dcS3qK1k4k8T3pCBcRrucdnvSFxxXv9KbREFyQp
	KU6QCOnBSGYRqoA4257jJFKlgSvWBfxpml0hyCv1iw==
X-Google-Smtp-Source: AB8JxZqsxYUtVZIPuoY/ggns7U3ia5jsPl0r/vNebDZdS0GANBNkLaMPW2bDeK3gKXJNDfzGkVAKskHgBMiQ+IdBR8w=
X-Received: by 2002:a24:b803:: with SMTP id
	m3-v6mr15226306ite.131.1525176482854; 
	Tue, 01 May 2018 05:08:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Tue, 1 May 2018 05:07:42 -0700 (PDT)
In-Reply-To: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 1 May 2018 13:07:42 +0100
Message-ID: <CAJTo0Lbj6sHszYxRwix4nQRADm6WvMkU0bxgaVorAH3xEuQ0gw@mail.gmail.com>
To: Irving ST <irving@ssfivy.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Tue, 01 May 2018 12:08:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The make dependencies come from the ptest packages, so if you disable
ptest in your DISTRO_FEATURES then those should disappear.

Essentially doing a full build without any GPLv3 software *and* not
using old releases which are still GPLv2 is tricky.  I can only
suggest you don't use the meta-gpl2 layer (as you don't want the
recipes to be used) and use bbappends to disable pieces where
required.

Ross

On 1 May 2018 at 11:58, Irving ST <irving@ssfivy.com> wrote:
> Hello,
>
> First time posting, apologies if I miss anything in the community guideli=
nes.
>
> I had some problems trying to make an image that contains no GPLv3
> (due to corporate requirement) nor old GPLv2 software in meta-gplv2
> (due to lack of support).
>
> I tried getting a fresh checkout of poky and adding
> INCOMPATIBLE_LICENSE in conf/local.conf , but I got the following
> error:
>
> ERROR: Nothing RPROVIDES 'make' (but
> /home/irving/srcgit/poky/meta/recipes-core/zlib/zlib_1.2.11.bb,
> /home/irving/srcgit/poky/meta/recipes-connectivity/openssl/openssl_1.0.2o=
.bb
> RDEPENDS on or otherwise requires it)
> make was skipped: it has an incompatible license: GPLv3 & LGPLv2
>
> I tried adding meta-gplv2 layer to bblayer.conf and the error
> disappears. I was expecting the license restriction to apply to the
> final image only, but my guess is I am also restricted from building
> the cross compilation tools (which seems weird to me).
>
> Is this layer required when building without GPLv3?
> Is there any alternative I can try, or is my choice limited to either
> using GPLv3 code vs outdated GPLv2 code?
> If I have to use the meta-gplv2 layer, is there a way to restrict
> anything inside this layer from being built into the image?
>
> I tried to look for information on building a busybox-based image (vs
> a GNU coreutils-based image) in the mega manual but didn=E2=80=99t find
> anything specific.
>
> Regards,
> Irving
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

