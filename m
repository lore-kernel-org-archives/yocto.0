Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8CF22E01470
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 01:54:49 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UCoaP-0000Jx-2G
	for yocto@yoctoproject.org; Tue, 05 Mar 2013 10:55:05 +0100
Received: from 2-227-90-218.ip185.fastwebnet.it ([2.227.90.218])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 10:55:05 +0100
Received: from f.deldegan by 2-227-90-218.ip185.fastwebnet.it with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 10:55:05 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Francesco Del Degan <f.deldegan@pr0gg3d.net>
Date: Tue, 05 Mar 2013 10:50:58 +0100
Message-ID: <87ehfurx8d.fsf@pr0gg3d.net>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 2-227-90-218.ip185.fastwebnet.it
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
Cancel-Lock: sha1:3MgPykzJeZD4buMBD4UUzgLH7Pw=
Subject: distutils.bbclass cherry-pick request
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
X-List-Received-Date: Tue, 05 Mar 2013 09:54:49 -0000
Content-Type: text/plain

Hi all,
  I'm working with yocto from January, and I found it an awesome
  project. We hope to do strong contribution to it in the near future,
  by opening our layer to community and/or contribute to existing
  ones.

  Could you evaluate this cherry-pick into danny?
  
  5cf293b1f94c1c62c1fd7d0a4f7dedbf74add4cb

  distutils: Replacing path to native python by path to python in the
  image to support python packages with console-script setup

We're trying to add some python modules into our layer and we just hit this
issue.

Thanks,
  Francesco "pr0gg3d" Del Degan
  endian.com


