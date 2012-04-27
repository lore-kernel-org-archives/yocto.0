Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED4F1E0044D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 13:25:05 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1SNrix-0000IQ-Sx
	for yocto@yoctoproject.org; Fri, 27 Apr 2012 22:25:03 +0200
Received: from tfitzsim-lnx.cisco.com ([161.44.225.6])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 22:25:03 +0200
Received: from fitzsim by tfitzsim-lnx.cisco.com with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 22:25:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Thomas Fitzsimmons <fitzsim@cisco.com>
Date: Fri, 27 Apr 2012 16:18:48 -0400
Message-ID: <m6pgwr51yllj.fsf@tfitzsim-lnx.cisco.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: tfitzsim-lnx.cisco.com
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1.50 (gnu/linux)
Cancel-Lock: sha1:qu3l838/BdxqHQ+hN5LWm6diTFg=
Subject: Experimenting with kgit-scc
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
X-List-Received-Date: Fri, 27 Apr 2012 20:25:06 -0000
Content-Type: text/plain

Hi,

Are there plans in the Yocto roadmap to make the meta/scripts/kgit tools
generally usable?

I like the organization of the Yocto kernel repository and for my
embedded project I'm considering using the Yocto build system along with
a Yocto-style kernel tree instead of maintaining my kernel patches as
recipe add-ons.  The Yocto-style kernel repo could be either a local
clone of Yocto's kernel repo with extra machine-specific branches, or a
kernel.org tree locally post-processed by kgit-scc.

I experimented with meta/scripts/kgit-scc from linux-yocto-dev but the
kgit tools don't seem to be intended for general use yet (e.g. the -meta
files contain hard-coded home directory paths, and guilt-push complains
that guilt-init must be run first).  The official Yocto documentation
says as much, but I was wondering if there are future plans to
generalize these tools.

Thanks,
Thomas


