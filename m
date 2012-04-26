Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8908EE0044A
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 03:43:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3QAhP1V002308;
	Thu, 26 Apr 2012 11:43:25 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01236-07; Thu, 26 Apr 2012 11:43:21 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3QAhH8d002302
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 26 Apr 2012 11:43:18 +0100
Message-ID: <1335436998.20130.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 26 Apr 2012 11:43:18 +0100
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: Re: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Thu, 26 Apr 2012 10:43:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-30 at 00:21 +0200, Martin Jansa wrote:
> First 5 patches are taken from oe-core.
> 
> Then there are some cleanups and fixes for issues I've found while looking 
> for cause of very long package-index calls.
> 
> Some patches uses compatible changes from 2to3 (tested with python2.7), but
> python3 support is not 100% complete, but were closer.
> 
> And in the end I've found the cause.. printing long fields (e. g. description)
> with opkg.py was producing empty lines in Packages file (which are Packages entry 
> separators) so only first entries till first empty line were processed from old
> Packages file and the rest was always extracted from control files in packaged .ipk.
> 
> And this also fixes Packages.filelist generation.
> 
> I don't use python very much, so please review.
> 
> And the speedup? Almost 60 times :)
> before:
> real    20m10.484s
> user    18m32.335s
> sys     0m11.885s
> 
> after
> real    0m24.492s
> user    0m23.748s
> sys     0m0.565s
> 
> The following changes since commit 002d29bc605d7c2d02e4cf20a43c5277c15f5597:
> 
>   [opkg-utils] fix install fail problem  Thanks for khorben's patch :-)  https://docs.openmoko.org/trac/attachment/ticket/2072/patch-opkg-utils_Makefile_install_path.diff (2008-11-03 03:59:59 +0000)
> 
> are available in the git repository at:
>   git://github.com/shr-project/opkg-utils jansa/pull
>   https://github.com/shr-project/opkg-utils/tree/jansa/pull
> 
> Christopher Larson (1):
>   Use python via the PATH, rather than hardcoding /usr/bin/python
> 
> Enrico Scholz (1):
>   opkg-make-index: convert mtime to int before comparing it
> 
> Khem Raj (1):
>   opkg.py: Add knowledge about License field in ipk headers
> 
> Martin Jansa (17):
>   opkg.py: use hashlib instead of old md5 module
>   opkg.py, arfile.py: report which file has wrong format and use the
>     same test
>   arfile: decode read lines as ascii string before getting fields from
>     it
>   2to3: use subprocess instead of commands
>   2to3: print fixes
>   2to3: dictionary fixes
>   2to3: exception handling fixes
>   opkg-make-index: show OSError/IOError
>   opkg.py: use string funtcions directly on string variable
>   opkg.py: catch TypeError when reading control file, to show which one
>     is failing
>   arfile: fix test
>   opkg-make-index: don't use stdout for Packages output and use __str__
>     instead of __repr__
>   opkg.py: cast lines from controlfile as string
>   opkg.py: computeFileMD5 only when we have fn, otherwise fails to read
>     None file
>   opkg.py: fix write_package when called from main test
>   opkg.py: use textwrap for description writing
>   opkg.py: improve test so it prints temporary control file with long
>     description and then reads it back
> 
> Richard Purdie (1):
>   opkg-make-index: don't error out when some package disappears
> 
> Scott Anderson (1):
>   arfile.py: handle six digit UIDs

I reviewed these and they all look like good improvements. I've merged
it into master, thanks!

Richard


