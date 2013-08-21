Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F9DEE00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 23:06:55 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VC1ZF-0000we-Lp
	for yocto@yoctoproject.org; Wed, 21 Aug 2013 08:06:53 +0200
Received: from 213.249.12.21 ([213.249.12.21])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:06:53 +0200
Received: from gmane by 213.249.12.21 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 08:06:53 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 21 Aug 2013 09:06:41 +0300
Message-ID: <521458F1.7000900@reliableembeddedsystems.com>
References: <ku083q$oa8$1@ger.gmane.org>
	<CABcZAN=mQ-LOVPeEoi5CUDndj2Xyi1BVq8J7deby+fZQxMFKSw@mail.gmail.com>
	<5203B0D7.809@mlbassoc.com>
	<5203B4AC.2030609@reliableembeddedsystems.com>
	<5203B7F9.20001@mlbassoc.com>
	<5203D594.8090400@reliableembeddedsystems.com>
	<5203DAD9.9080101@mlbassoc.com>
	<52040611.8020106@reliableembeddedsystems.com>
	<52041846.8010201@mlbassoc.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.21
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <52041846.8010201@mlbassoc.com>
Cc: public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: can not build yocto on NFS mounted NAS
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
X-List-Received-Date: Wed, 21 Aug 2013 06:06:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

Gary is, as usual, right ;)

Now I have the following test setup:

nfs server:

Ubuntu 12.04.2 LTS server

<export_dir> *(sync,insecure,rw,no_root_squash)

client:

<nfs_server>:<export_dir> <mount_point>  nfs
auto,noatime,nolock,intr,tcp,actimeo=1800 0 0

mkdir -p <mount_point>/${HOSTNAME}/manual-build/

source oe-init-build-env <mount_point>/${HOSTNAME}/manual-build/<board>

I build there happily (no patch to remove hard links):

bitbake core-image-minimal-dev
bitbake core-image-sato-sdk

Regards,

Robert
..."It is practically impossible to teach good programming style to
students that have had prior exposure to BASIC; as potential programmers
they are mentally mutilated beyond hope of regeneration." - Edsger Dijkstra

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



