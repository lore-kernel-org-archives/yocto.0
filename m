Return-Path: <raj.khem@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA5074C800B8
	for <yocto@yoctoproject.org>; Sun, 27 Mar 2011 00:31:41 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so480057pxi.28
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2011 22:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=uVagxyNGgdxhHwaJ4zAlG8+M2C6hl6n5+Dng++PhgIw=;
	b=QzBLEpc5adnDkiVW/+/hcNFLzU3pXqc9+T6H9zYtyIFXs9q5HG0of1DLX7hsM6mvo5
	MsVVjulcXStvf8TyQg+z23f1T4yAlMb8bpKkPFbp5q6RQoJrKAKfzcxLwH/FBhJuS9bj
	lnZolUFE+baMMTYHpgF2PP6VfneAH9dnAVHQY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=FHdT0mQJm6XfEVA65EdzN99PWpMgifcubpmvNgW1Klvv1Qwcffa6xU9DDF3rVrWHsC
	5ZyOXplmdtSgqh1I4Oeieka+sEHuD2Myf4dnC1DpFGnhJKMiAWwQn3kcn2j7cQRz31gw
	8gq+dE2O8V/ZEfW3tcu0BG6abABoqcGkG6AcU=
Received: by 10.143.87.3 with SMTP id p3mr2357612wfl.153.1301203901203;
	Sat, 26 Mar 2011 22:31:41 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id s41sm3886112wfc.15.2011.03.26.22.31.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 26 Mar 2011 22:31:39 -0700 (PDT)
Date: Sat, 26 Mar 2011 22:32:22 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Message-ID: <20110327053222.GA22396@sakrah.homelinux.org>
Mail-Followup-To: Robert Berger <gmane@reliableembeddedsystems.com>,
	yocto@yoctoproject.org
References: <iml25p$l8j$1@dough.gmane.org>
MIME-Version: 1.0
In-Reply-To: <iml25p$l8j$1@dough.gmane.org>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Re: internal compiler error with qt building poky-image-lsb-sdk
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
X-List-Received-Date: Sun, 27 Mar 2011 05:31:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (26/03/11 17:53), Robert Berger wrote:
> Hi,
> 
> The short version:
> 
> With commit f8539239bc473279cc475b07c22e1e96514c6d2f Thu Mar 24 13:03:50
> 2011 +0000 both beagleboard and routerstationpro fail to build due to an
> internal compiler error:
> 
> ../../include/QtCore/../../src/corelib/tools/qstring.h:187:17: note: the
> mangling of 'va_list' has changed in GCC 4.4
> graphicsview/qgridlayoutengine.cpp:1553:1: internal compiler error: in
> build_abbrev_table, at dwarf2out.c:9806

Can you try after addding the following to the failing recipe with 

CXXFLAGS := "${@oe_filter_out('-feliminate-dwarf2-dups', '${CXXFLAGS}',
d)}"

-Khem

