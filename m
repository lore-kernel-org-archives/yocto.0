Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AEDE002AB
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 23:50:05 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q7O6ntSY028914
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 24 Aug 2012 08:49:55 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q7O6nsu8028911;
	Fri, 24 Aug 2012 08:49:54 +0200
Date: Fri, 24 Aug 2012 08:49:54 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20120824064954.GA18993@giant>
References: <1345731602-47313-1-git-send-email-bjst@enea.com>
	<CAJTo0La3t2wyiSYWJ=CXskYuL93LkW7wbMYH7-f5Ufei=qD2Dg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0La3t2wyiSYWJ=CXskYuL93LkW7wbMYH7-f5Ufei=qD2Dg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] RFC: Package testing
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
X-List-Received-Date: Fri, 24 Aug 2012 06:50:06 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Burton, Ross wrote:
> What is this generic output format?  From your patch to bash I suspect
> it's at least inspired by the automake "make check" output.

Yes, I used the automake-style "(PASS|FAIL): <testcase>" format.

In addition to that, before/after each package test suite is started, "(BEGIN|END): <package>" is printed. So a typical output looks like this (paraphrased):

BEGIN: bash
PASS: test1
FAIL: test2
PASS: test3
END: bash
BEGIN: busybox
PASS: test1
FAIL: test2
END: busybox

-- 
Björn

