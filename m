Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE88BE01570
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 00:54:32 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1VEaaC-00037S-N0
	for yocto@yoctoproject.org; Wed, 28 Aug 2013 09:54:28 +0200
Received: from 93-58-90-146.ip157.fastwebnet.it ([93.58.90.146])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:54:28 +0200
Received: from f.deldegan by 93-58-90-146.ip157.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:54:28 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@endian.com>
Date: Wed, 28 Aug 2013 09:54:17 +0200
Message-ID: <87y57m5jyu.fsf@endian.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 93-58-90-146.ip157.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.2 (gnu/linux)
Cancel-Lock: sha1:3eXHgpeeFK5B4kMmtf3zbVnpZW4=
Subject: package-core-buildessential: missing dependency
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
X-List-Received-Date: Wed, 28 Aug 2013 07:54:35 -0000
Content-Type: text/plain

Hi all,

I'm trying to install package-core-buildessential in my target (using
smart in my target) but it complains about:

error: Can't install libc6-dev-2.17-r3@armv7a_vfp_neon: no package
provides eglibc-thread-db-dev

Digging around it, I found that package should provide (eglibc-package.inc):

FILES_eglibc-thread-db = "${base_libdir}/libthread_db.so.*
${base_libdir}/libthread_db-*.so"

but i found that those file are packaged as part of libc6-dev itself.

Do you have any hints?

Thanks very much,
  Francesco


