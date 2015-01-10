Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82CA7E0084E; Sat, 10 Jan 2015 03:51:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDFADE0070B
	for <yocto@yoctoproject.org>; Sat, 10 Jan 2015 03:51:44 -0800 (PST)
Received: from [70.30.87.145] (port=33290 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9uZy-000079-Em
	for yocto@yoctoproject.org; Sat, 10 Jan 2015 06:51:42 -0500
Date: Sat, 10 Jan 2015 06:51:33 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501100644110.7019@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: distinguish between HTML vs PDF doc generation packages?
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
X-List-Received-Date: Sat, 10 Jan 2015 11:51:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  ref manual, section 1.3.2, breaks out the packages required to build
the documentation. first, i think it would be useful to distinguish
between the (much shorter) list of packages needed for HTML versus the
much longer list for PDF, since that second list is typically way
longer and some folks may have no need for it. (from memory, the list
of packages for PDF generation on fedora is ridiculous.)

  also, the package list for PDF generation (at least for my fedora
rawhide system) seems out of date. the ref manual claims i need to:

$ sudo yum install make docbook-style-dsssl docbook-style-xsl \
     docbook-dtds docbook-utils fop libxslt dblatex xmlto

however, i can build PDF just fine but a quick query shows i don't
have some of the allegedly essential packages:

$ rpm -q make docbook-style-dsssl docbook-style-xsl \
> docbook-dtds docbook-utils fop libxslt dblatex xmlto
make-4.0-3.1.fc22.x86_64
package docbook-style-dsssl is not installed
docbook-style-xsl-1.78.1-3.fc21.noarch
docbook-dtds-1.0-63.fc21.noarch
package docbook-utils is not installed
fop-1.1-8.fc21.noarch
libxslt-1.1.28-8.fc22.x86_64
libxslt-1.1.28-8.fc22.i686
package dblatex is not installed
xmlto-0.0.26-3.fc22.x86_64
$

so it seems i certainly don't need everything suggested by the ref
manual.  again, this is on my fedora *rawhide* system so i don't know
if this has changed since the last supported fedora release.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

