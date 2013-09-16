Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87838E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 02:37:53 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VLVFf-00075d-E2
	for yocto@yoctoproject.org; Mon, 16 Sep 2013 11:37:51 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:37:51 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:37:51 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Mon, 16 Sep 2013 09:37:30 +0000 (UTC)
Message-ID: <loom.20130916T112434-834@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:21.0) Gecko/20100101 Firefox/21.0)
Subject: Add nfs package to image minimal for atom-pc
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
X-List-Received-Date: Mon, 16 Sep 2013 09:37:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

I built a core-image-minimal for atom-pc. Then, I want to add it nfs and ssh
packages. I added IMAGE_INSTALL_append_pn-core-image-minimal = "
packagegroup-core-ssh-openssh packagegroup-core-nfs" line to local.conf
file. Package packagegroup-core-ssh-openssh was built but I got error for
packagegroup-core-nfs. Error is:

Error: packagegroup-core-nfs not found in the base feeds (atom_pc core2 i686
i586 i486 i386 x86 noarch any all).

How can I solve this error ?
Thanks.



