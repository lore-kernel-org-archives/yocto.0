Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6EB0E01757
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 01:04:54 -0800 (PST)
Received: from [173.34.6.101] (port=60011 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdcZA-0006PX-2i
	for yocto@yoctoproject.org; Tue, 05 Nov 2013 04:04:52 -0500
Date: Tue, 5 Nov 2013 04:04:41 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311050359160.8486@oneiric>
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
Subject: ref manual, sections 2.3.[67], ambiguity with "-b" option to bitbake
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
X-List-Received-Date: Tue, 05 Nov 2013 09:04:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  section 2.3.6 of ref manual explains that bitbake "-b" option refers
specifically to a recipe *file*:

"If you really want to build a specific .bb file, you can use the
command form bitbake -b <somepath/somefile.bb>."

but the very next section uses "-b" in the context of a simple recipe
*name* when combining it with "-e":

"You can use the -e BitBake option to display the resulting
environment for a configuration when you do not specify a package or
for a specific package when you do specify the package. If you want to
show the environment resulting from parsing a single recipe, use the
-b recipename form."

  that suggests i could run something like:

$ bitbake -e -b zlib

which seems to work. clarification? is "-b" meant to refer to a simple
recipe *name* when used in the context of "-e"?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

