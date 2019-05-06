Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 841B4E00D11; Mon,  6 May 2019 06:32:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633D9E00C93
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 06:32:02 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id p18so14494871itm.1
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 06:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=QhzSvOK1xV1kxOU9kKrIKtmo6VZy5nG0VGCKNiDdRYQ=;
	b=aeNZISaoA0uySOGNTbo6PorWuF6fvN80LhfLBN+F7SKFHlC573LwMMrAkxvg/N8RgE
	pNHYhfKpO1f1u/YLce9M4vbIZlQw1EdOGtdR5Mz5rIGlTYEgF5FymtO6LALhCNvRr8L/
	J9yTbxpxzti/mYh966K2rQ2+w8ugp0bN/qEJPFWyggkj76KNeTM2aCsdwzmlczuIdLFO
	oUcAOaMadr92aSP8lX3xA4N3yPJ2sgKG3VCSkMfs+EZjpGMqEcye+pu0QIZFb8KJwRpA
	JWf8CjfIq6qBVKMJjFD4ZJRDfwDS3ILZdrLHFeiTrRK05r0SK6SlxiBcZUfAUtqcWzXT
	dr2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=QhzSvOK1xV1kxOU9kKrIKtmo6VZy5nG0VGCKNiDdRYQ=;
	b=YrxFNi3YpHECLN/WzZt/Vw+S2X2rGlXk/Q5E7enqGq4LwBB7la01yHQPHbFcFl63tP
	O5ClVUF6R8XBpTwewEUEOV7wfhkNmYk3LVjpkWkzplPIcGvCWCyvH8JjC64Pgx8F+tPg
	hpZAHifSa6DunqvbFLoN2oXldnfGVrAJfNQPnqkTOpM+JzQ61ctAK5gBnMOSa4jZgwPw
	4RMDKItLvPn9El4dU2wQQSCdLYLp+Jo8znbG8dw6FZrH5oPfBrDGFzzxW591AZuNWsDF
	HwUSkNHOWZ0+OJLkVWqRN9Qc1ho0j52dz/OgmEcIsCMBOy9E2KSdLPSZG22KV5wQZf+j
	VJag==
X-Gm-Message-State: APjAAAX4Z4PRrOuCN/NPxhqCHWfgMyNbDbbZt0VFxQYn4pHQycJWp23l
	cBWZBHDIhv0tgVt2tuIFcCY=
X-Google-Smtp-Source: APXvYqyV6JP8IfcrLYYM1eV4P2/VT1SZ4Zx83/DlWO5AkPWSWxOZPXJUZ6XlOAPOsv0LqS4whmpXiA==
X-Received: by 2002:a24:edcb:: with SMTP id r194mr3885247ith.164.1557149521611;
	Mon, 06 May 2019 06:32:01 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id s10sm659291ioe.3.2019.05.06.06.31.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 May 2019 06:32:00 -0700 (PDT)
Date: Mon, 6 May 2019 09:31:57 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: ayaka <ayaka@soulik.info>
Message-ID: <20190506133157.GA14979@linux-uys3>
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-4-ayaka@soulik.info>
	<20190504030638.GB26588@linux-uys3>
	<15a392f0-fbec-cfce-980b-6904bf7e222c@soulik.info>
MIME-Version: 1.0
In-Reply-To: <15a392f0-fbec-cfce-980b-6904bf7e222c@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Mon, 06 May 2019 13:32:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sat 2019-05-04 @ 06:43:34 PM, ayaka wrote:
> 
> On 5/4/19 11:06 AM, Trevor Woerner wrote:
> > On Wed 2019-04-24 @ 10:59:18 PM, Randy 'ayaka' Li wrote:
> > > From: Randy Li <ayaka@soulik.info>
> > > 
> > > Signed-off-by: Randy Li <ayaka@soulik.info>
> > > ---
> > >   recipes-bsp/u-boot/u-boot-rockchip_git.bb | 18 ++++++++++++++++++
> > >   1 file changed, 18 insertions(+)
> > >   create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
> > > 
> > > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> > > new file mode 100644
> > > index 0000000..aa4b84d
> > > --- /dev/null
> > > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> > > @@ -0,0 +1,18 @@
> > > +# Copyright (C) 2019 SUMOMO Computer Assocation
> > > +# Released under the MIT license (see COPYING.MIT for the terms)
> > > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > > +
> > > +include u-boot-rockchip.inc
> > > +
> > > +DESCRIPTION = "Rockchip U-Boot"
> > > +
> > > +LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
> > > +
> > > +SRC_URI = " \
> > > +	git://github.com/rockchip-linux/u-boot.git;branch=release; \
> > > +	file://binutils-2.28-ld-fix.patch \
> > > +	file://gcc7_fixup.patch \
> > > +	"
> > > +
> > > +S = "${WORKDIR}/git"
> > > +PV = "v2019.01"
> > This doesn't even get past the fetching stage:
> I am sorry, I forget that ssh git protocol only work for those users who
> uploaded their key to the github, I would change it back to https.
> > 
> > 	WARNING: u-boot-rockchip-1_v2019.01-r0 do_fetch: Failed to fetch URL git://github.com/rockchip-linux/u-boot.git;branch=release;, attempting MIRRORS if available
> > 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure: Unable to find revision 3c99166441bf3ea325af2da83cfe65430b49c066 in branch release even from upstream
> > 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure for URL: 'git://github.com/rockchip-linux/u-boot.git;branch=release;'. Unable to fetch URL from any source.
> > 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch:
> > 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Function failed: base_do_fetch
> > 	ERROR: Task (/opt/oe/configs/z/build-master/meta-rockchip/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb:do_fetch) failed with exit code '1'

The problem is that it's trying to fetch commit 3c9916 which doesn't exist on
github.com/rockchip-linux/u-boot.git. That revision is on upstream U-Boot.

