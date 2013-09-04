Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7CB7E01206
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 05:23:52 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VHC7h-0005Qy-FD
	for yocto@yoctoproject.org; Wed, 04 Sep 2013 14:23:49 +0200
Received: from 212.50.246.122 ([212.50.246.122])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 14:23:49 +0200
Received: from jackrubby2010 by 212.50.246.122 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 14:23:49 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Wed, 4 Sep 2013 12:23:29 +0000 (UTC)
Message-ID: <loom.20130904T140531-713@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.122 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.62
	Safari/537.36)
Subject: Building an atom-pc image
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
X-List-Received-Date: Wed, 04 Sep 2013 12:23:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi,

I looked at this page https://www.yoctoproject.org/download/intel%C2%AE-
atom%E2%84%A2-based-pcs-and-devices-atom-pc . I downloaded atom-pc-dylan-
9.0.0.tar.bz2 and ran bitbake core-image-minimal. When building process 
finished, I didn't give core-image-minimal-atom-pc with .hddimg. While some 
other extension files like .ext3 and .cpio were built. How can I build an 
image minimal with .hddimg extension?

Thanks.


