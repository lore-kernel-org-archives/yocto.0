Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EC22E00A61; Sun, 23 Oct 2016 07:01:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4433EE00997
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 07:01:54 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20161023140143019_0685
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 07:01:43 -0700
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [174.118.92.171] (port=43530 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1byJLE-0003Gt-Up
	for yocto@yoctoproject.org; Sun, 23 Oct 2016 10:01:37 -0400
Date: Sun, 23 Oct 2016 10:00:39 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1610230954280.1388@localhost.localdomain>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: potentially confusing intro to what is in an SDK (SDK manual)
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
X-List-Received-Date: Sun, 23 Oct 2016 14:01:58 -0000
Content-Type: text/plain; charset=US-ASCII


  more of the pedantic nitpickery you've all come to expect from me,
but in section 1.1 of SDK Manual (v. 2.2):

"All SDKs consist of the following:

    Cross-Development Toolchain: This toolchain contains a compiler,
    debugger, and various miscellaneous tools.

    Libraries, Headers, and Symbols: The libraries, headers, and
    symbols are specific to the image (i.e. they match the image).

    Environment Setup Script: This *.sh file, once run, sets up the
    cross-development environment by defining variables and preparing
    for SDK use. "

hang on ... that last reference to an ".sh" file is potentially
misleading. the generated SDK itself is bundled into the installation
script (say,
poky-glibc-x86_64-core-image-minimal-ppce300c3-toolchain-2.2.sh), and
when that's run, what is installed contains, at the top level, the
setup script "environment-setup-ppce300c3-poky-linux" -- there is no
.sh script installed in the SDK installation directory.

  it might be common to create the symlink for convenience:

    environment-setup-ppce300c3-poky-linux -> env.sh

or something like that, but AFAICT, there is no ".sh" setup script in
the SDK installation directory.

  is it possible the author was conflating the installation .sh file,
and the environment setup file?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


