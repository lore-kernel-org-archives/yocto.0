Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id A46D34C80FA4
	for <yocto@yoctoproject.org>; Thu, 11 Nov 2010 18:20:05 -0600 (CST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1PGhN6-0000Ra-Ix
	for yocto@yoctoproject.org; Fri, 12 Nov 2010 01:20:04 +0100
Received: from adsl-75-37-22-143.dsl.pltn13.sbcglobal.net ([75.37.22.143])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 01:20:04 +0100
Received: from philip by adsl-75-37-22-143.dsl.pltn13.sbcglobal.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 01:20:04 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Philip Balister <philip@balister.org>
Date: Thu, 11 Nov 2010 16:16:26 -0800
Message-ID: <ibi10q$a68$1@dough.gmane.org>
References: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: adsl-75-37-22-143.dsl.pltn13.sbcglobal.net
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Fedora/3.1.6-1.fc13 Thunderbird/3.1.6
In-Reply-To: <AANLkTi=7yQCQB4=bKYuW3DTx4-psGZPDKkQeum+qdw3=@mail.gmail.com>
Subject: Re: BSPs and duplicate files
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
X-List-Received-Date: Fri, 12 Nov 2010 00:20:06 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 11/11/2010 07:19 AM, João Henrique Freitas wrote:
> Hi,
>
> Two questions:
>
> With some BSPs, like
>
> meta
> meta-myhardware
> meta-mydistro
>
> I need to create a conf/checksums.ini for every BSP or append it to
> meta/conf/checksums.ini ? In other others, checksums.ini is per BSP or
> unique?

Poky still uses checksums.ini? OE moved the checksums to the recipes and 
this seems make things much easier to work with.

Philip

>
> In my meta-myhardware I have a kernel too:
>
> meta-myhardware/recipes-kernel/linux/linux.inc
> meta-myhardware/recipes-kernel/linux/linux_2.6.22.bb
>
> The file meta-myhardware/recipes-kernel/linux/linux.inc is the some of
> meta/recipes-kernel/linux/linux.inc. Is any way to use a unique file
> instead of duplicate it?
>



