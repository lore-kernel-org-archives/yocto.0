Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BF0B4C800BA
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 17:08:19 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Q29kO-0001od-Bo
	for yocto@yoctoproject.org; Tue, 22 Mar 2011 23:08:16 +0100
Received: from ppp079166106245.dsl.hol.gr ([79.166.106.245])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 23:08:16 +0100
Received: from gmane by ppp079166106245.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 23:08:16 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 23 Mar 2011 00:08:00 +0200
Organization: Reliable Embedded Systems
Message-ID: <imb6k0$551$1@dough.gmane.org>
References: <imb3jt$jfn$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166106245.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <imb3jt$jfn$1@dough.gmane.org>
Subject: Re: build failure 2 - poky-image-lsb-sdk-beagleboard with bernard-5.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Mar 2011 22:08:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I think it boils down to the fact, that

meta/recipes-core/base-files/base-files/sysctl.conf
meta/recipes-extended/procps/procps-3.2.8/sysctl.conf

are different and both should end up at the rootfs.

I guess I could just remove the procps package.

But how to resolve this in a more elegant way and how did the
autobuilder get away with it?

Regards,

Robert


..."it doesn't matter how beautiful your theory is, it doesn't matter
how smart you are -- if it doesn't agree with experiment, it's wrong." -
Richard P. Feynman

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



