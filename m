Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F732E006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 13:27:53 -0700 (PDT)
Received: from localhost ([127.0.0.1])
	by astoria.ccjclearline.com with esmtpa (Exim 4.69)
	(envelope-from <rpjday@crashcourse.ca>) id 1RJWYJ-0001gQ-Vd
	for yocto@yoctoproject.org; Thu, 27 Oct 2011 16:27:51 -0400
Received: from 142.204.141.61 ([142.204.141.61]) by crashcourse.ca (Horde
	MIME library) with HTTP; Thu, 27 Oct 2011 16:27:51 -0400
Message-ID: <20111027162751.fbwguloe84sooggc@crashcourse.ca>
Date: Thu, 27 Oct 2011 16:27:51 -0400
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.1.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: What's the purpose of "BDIR" in oe-buildenv-internal?
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
X-List-Received-Date: Thu, 27 Oct 2011 20:27:53 -0000
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

   prepping to give a yocto talk to my local (ottawa) LUG next week, and
was reviewing the logic of the setup starting with oe-init-build-env,
and noticed in scripts/oe-buildenv-internal a test of the variable
BDIR for the name of the build directory.  but there's no mention of
that variable in the calling oe-init-build-env, and i see no mention
of it in the intro-level docs.

   clearly, one could use that shell env variable if one wanted to name
the build directory to be used, but given that there's absolutely no
explanation of it anywhere for a new user, what exactly is its purpose?

rday


