Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 02F4D4C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 11:42:47 -0500 (CDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1QhOzu-0003DM-BI
	for yocto@yoctoproject.org; Thu, 14 Jul 2011 12:42:46 -0400
Date: Thu, 14 Jul 2011 12:42:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1107141240520.8471@localhost6.localdomain6>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [PATCH] DOCS: Tidy up a couple git commands in the kernel manual.
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
X-List-Received-Date: Thu, 14 Jul 2011 16:42:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Fix missing prompt, missing "git" and break overly long command in
two since it disappears off the page in the PDF output.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  these fixes should be self-evident.

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 0cb7154..5a0d975 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -727,7 +727,7 @@ repository.
                     <para>
                         Use this command form to push the changes:
                     <literallayout class='monospaced'>
-     git push ssh://&lt;master server&gt;/&lt;path to repo&gt; &lt;local branch&gt;:&lt;remote branch&gt;
+     &gt; git push ssh://&lt;master server&gt;/&lt;path to repo&gt; &lt;local branch&gt;:&lt;remote branch&gt;
                     </literallayout>
                     </para>

@@ -736,7 +736,8 @@ repository.
                         <filename>yocto/standard/common-pc/base</filename> to the remote branch with the same name
                         in the master repository <filename>//git.mycompany.com/pub/git/kernel-2.6.37</filename>.
                     <literallayout class='monospaced'>
-     &gt; push ssh://git.mycompany.com/pub/git/kernel-2.6.37 yocto/standard/common-pc/base:yocto/standard/common-pc/base
+     &gt; git push ssh://git.mycompany.com/pub/git/kernel-2.6.37 \
+      yocto/standard/common-pc/base:yocto/standard/common-pc/base
                     </literallayout>
                     </para>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

