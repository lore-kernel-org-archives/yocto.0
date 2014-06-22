Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55ECFE0044F; Sun, 22 Jun 2014 06:24:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE1F1E002A7
	for <yocto@yoctoproject.org>; Sun, 22 Jun 2014 06:24:04 -0700 (PDT)
Received: from [99.240.204.5] (port=60476 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WyhkX-0005AS-Ed
	for yocto@yoctoproject.org; Sun, 22 Jun 2014 09:24:01 -0400
Date: Sun, 22 Jun 2014 09:20:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1406220901500.2299@localhost>
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
Subject: the apparent need for docbook <replaceable> tag in manual examples
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
X-List-Received-Date: Sun, 22 Jun 2014 13:24:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  something poor scott rifenbark can ponder in his copious free time
:-), but i think some of the current examples in the various manuals
need to be enhanced with the use of the docbook <replaceable> tag to
emphasize that they are generic references meant to be replaced by
specific values; otherwise, there's potential confusion.

  as a concrete example, i remember *way* back when i was reading
about conditional metadata in the bitbake user manual, particularly
this verbatim example:

  OVERRIDES = "architecture:os:machine"
  TEST = "default"
  TEST_os = "osspecific"
  TEST_nooverride = "othercondvalue"

  because all of the above is currently rendered in the same (courier)
font in the generated manual, i mistakenly thought that all of the
above was to somehow be typed exactly that way, and i was completely
baffled as to what the qualifiers "_os" and "_nooverride" would do. it
was only after searching for examples in the codebase that it dawned
that those strings were meant to be replaced by actual examples of the
current architecture, os, machine and so on.

  duh.

  this can be made more obvious fairly simply with the following
tweak of using the docbook <replaceable> tag:

diff --git a/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
b/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
index a9f5072..f8be373 100644
--- a/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
+++ b/doc/bitbake-user-manual/bitbake-user-manual-metadata.xml
@@ -359,7 +359,7 @@
                         version.
                         Here is an example:
                         <literallayout class='monospaced'>
-     OVERRIDES = "architecture:os:machine"
+     OVERRIDES = "<replaceable>architecture</replaceable>:<replaceable>os</replaceable>:<replaceable>machine</replaceable>"
      TEST = "default"
      TEST_os = "osspecific"
      TEST_nooverride = "othercondvalue"

i've confirmed that that tag is processed properly within a
<literallayout>, and renders in italicized courier font, which is the
visual clue that it's not meant to be read literally.

  oh, and one more related point ... i think it would be more useful
to replace generic manual examples that use meaningless phrases such
as "foo" and "bar" with specific examples yanked from the actual OE
codebase.

  as i said, it took me a few minutes to figure out what the
conditional metadata example above was trying to demonstrate, but as
soon as i saw a real example in the codebase, it was perfectly clear.
to this end, i'm creating wiki pages that show stuff like that
exactly, like this one for conditional overrides:

http://www.crashcourse.ca/wiki/index.php/BitBake_Overrides

so rather than try to explain the generic concept, i can just bring up
the wiki page and say, "see? that's how it works." and everyone
understands immediately.

  anyway, just my $0.02. back to work ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

