Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EED57E0090F; Fri,  9 Jan 2015 09:19:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71115E0070B
	for <yocto@yoctoproject.org>; Fri,  9 Jan 2015 09:19:36 -0800 (PST)
Received: from [70.30.87.145] (port=59097 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y9dDh-0004El-EI
	for yocto@yoctoproject.org; Fri, 09 Jan 2015 12:19:33 -0500
Date: Fri, 9 Jan 2015 12:19:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1501091212080.30702@localhost>
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
Subject: admittedly simple questions about DISTRO_PN_ALIAS
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
X-List-Received-Date: Fri, 09 Jan 2015 17:19:41 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (i'm in a proofreading mood today ...)

reading dev manual here:

http://www.yoctoproject.org/docs/1.7/dev-manual/dev-manual.html#usingpoky-configuring-DISTRO_PN_ALIAS

and first silly question -- what is the *purpose* of that variable? as
in, what effect will it have on the eventual image? what difference
will it make that, say, in fedora, a recipe would produce a package
with a slightly different name? that section doesn't really explain
that, as far as i can tell.

  next, i can see the collection of those settings in the file
meta-yocto/conf/distro/include/distro_alias.inc, which has some odd
lines. for example:

DISTRO_PN_ALIAS_pn-blktool = "Debian=blktool Mandriva=blktool"

what's the value of defining an alleged alias that simply has the same
name? what is happening here?

  oh, and there's this amusing example:

DISTRO_PN_ALIAS_pn-bjam = "OpenSuSE=boost-jam Debina=bjam"
                                              ^^^^^^

but since the recipe name is the *same*, i'm guessing that doesn't
cause a problem.

  finally, the dev manual doesn't explain the meaning of lines like:

DISTRO_PN_ALIAS_pn-adt-installer = "Intel"
DISTRO_PN_ALIAS_pn-alsa-state = "OE-Core"
DISTRO_PN_ALIAS_pn-bdwgc = "OSPDT"

  in short, i can appreciate the *concept* of what might be happening
in that short section, while still having no idea what value it has or
how a developer might use it.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


