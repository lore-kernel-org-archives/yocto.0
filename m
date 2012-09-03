Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88912E01370
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 11:58:35 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-116-162.range81-153.btcentralplus.com
	[81.153.116.162]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 674EC9ADE
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 19:58:15 +0100 (BST)
Message-ID: <5044FDC6.8000203@r-finger.com>
Date: Mon, 03 Sep 2012 19:58:14 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANmVirjVWacj1Rn2i1+pgmNZw5LYzBVtcZgmTcqiUOno5ZcKgg@mail.gmail.com>
In-Reply-To: <CANmVirjVWacj1Rn2i1+pgmNZw5LYzBVtcZgmTcqiUOno5ZcKgg@mail.gmail.com>
Subject: Re: netbase_4.47.bbappend
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
X-List-Received-Date: Mon, 03 Sep 2012 18:58:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 03/09/12 19:03, Raul Rosetto Munoz wrote:
> in my netbase_4.47.bbappend file i have this:
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/netbase-4.47"

I think you are missing a trailing ':' here, so your path is getting
merged together with whatever is already there (probably the path added
by the bbappend in meta-yocto, i.e., try

FILESEXTRAPATHS_prepend := "${THISDIR}/netbase-4.47:"


> SRC_URI_append  = "file://interfaces"

You don't need this; the base recipe already has this, simply modifying
the FILESEXTRAPATHS is enough.

> do_install_append () {
>         install -m 644 ${WORKDIR}/interfaces ${D}/${sysconfdir}/network/
> }

Similarly, you do not needs this either, the base do_install() method
already does this.

But if this interfaces file is for a specific machine, you might want to
consider putting your interfaces file into a machine specific location,
i.e.,

   netbase-4.47/<some machine>/interfaces

This will ensure the interfaces file is only used for that specific
machine (you do not need to make any other changes in the bb file, this
happens by some clever magic automatically); see how this is done in
meta/recipes-core/netbase for the various qemu machines.

Tomas

