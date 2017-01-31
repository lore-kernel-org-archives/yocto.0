Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D5C4E007EB; Tue, 31 Jan 2017 08:53:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout014.mail.hostpoint.ch (mxout014.mail.hostpoint.ch
	[217.26.49.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6748BE00405
	for <yocto@yoctoproject.org>; Tue, 31 Jan 2017 08:53:50 -0800 (PST)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout014.mail.hostpoint.ch with esmtp (Exim 4.88 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cYbgi-000Kue-1O
	for yocto@yoctoproject.org; Tue, 31 Jan 2017 17:53:48 +0100
Received: from [2a02:168:688c:0:b0a1:3976:2784:e50b]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.87_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cYbgh-0006hs-Sm
	for yocto@yoctoproject.org; Tue, 31 Jan 2017 17:53:47 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: Yocto List <yocto@yoctoproject.org>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
	<4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
	<CAPLgG=msOLC7HGUaz3qZSqi_mBn7f9cqng=ZcBZs6B9a6griNQ@mail.gmail.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <a68bf963-cd32-38b1-dbc6-557437b08113@smart-home-technology.ch>
Date: Tue, 31 Jan 2017 17:53:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAPLgG=msOLC7HGUaz3qZSqi_mBn7f9cqng=ZcBZs6B9a6griNQ@mail.gmail.com>
Subject: Empty "normal" package, filled dev and dbg packages, tr-50 lib
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
X-List-Received-Date: Tue, 31 Jan 2017 16:53:54 -0000
Content-Type: multipart/alternative;
	boundary="------------7F667E369B051FDD82EAB6E7"

--------------7F667E369B051FDD82EAB6E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I still try to include the tr-50 library into my build, which is an 
autotools manages library. The code is fetch from git by bitbake.
The good thing: it builds, the compilation of the library itself gives 
no errors and after it I find the .so files several times in the build 
directory.
However, the packaging does not work as intended:
It builds the dev and dbg Versions of the package, but not the "normal" 
version of the package:
ls 
./tmp/work/armv7a-vfp-neon-dey-linux-gnueabi/tr-50/0.1-r0/deploy-rpms/armv7a_vfp_neon/
tr-50-dbg-0.1-r0.armv7a_vfp_neon.rpm tr-50-dev-0.1-r0.armv7a_vfp_neon.rpm

I could make bitbake building that package but that package was empty then.

My recipe:

DESCRIPTION = "the tr-50 (MQTT) library to communicate with the swisscom 
devicewise cloud"
SECTION = "libs"
LICENSE = "Unknown"
LIC_FILES_CHKSUM = "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"
# md5sum only when source is a tar.gz
SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
SRC_URI = "git://github.com/inhedron/libtr50.git;protocol=https"
SRCREV = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"

# tryed the three lines below already, didn't help:
#FILES_${PN}-dev = ""
#FILES_SOLIBSDEV = ""
#ALLOW_EMPTY_${PN} = "1"

#PACKAGES =+ "${PN}"
S = "${WORKDIR}/git"

DEPENDS = "openssl "
# NOTE: if this software is not capable of being built in a separate 
build directory
# from the source, you should replace autotools with autotools-brokensep 
in the
# inherit line
inherit autotools

# Specify any options you want to pass to the configure script using 
EXTRA_OECONF:
EXTRA_OECONF = " --with-examples"

When I append tr-50-dev instead of tr-50 to the IMAGE_INSTALL in 
local.conf, then bitbake (or smart via bitbake) complains, too:
Computing transaction...error: Can't install 
tr-50-dev-0.1-r0@armv7a_vfp_neon: no package provides tr-50 = 0.1-r0

There are also examples that come with the tr-50 lib which cannot 
bebuilt because the library tr-50 is missing (at least bitbake claims that).

As you can see in the recipe, I tryed three workarounds already that I 
found. None of them worked (except for ALLOW_EMPTY, which produced the 
physically intact but empty packet).

Best Regards and thanks in advance for answers,
Jakob

PS: Thanks for the responses I got already for the first description of 
my problem!

On 27.01.2017 19:16, Rick Altherr wrote:
> I hear you asking a lot of reasonable questions that probably seem 
> trivial to most of us who have been using Yocto for a while.  We tend 
> to forget what it was like the first time.
>
> I can't tell what reading and research you've done so far. Have you 
> read both the BitBake User Manual 
> <http://www.yoctoproject.org/docs/2.2/bitbake-user-manual/bitbake-user-manual.html> and 
> Yocto Project Reference Manual 
> <http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html>.  
> Those explain many vital details such as: what many of the variables, 
> like SRC_URI, are used for, the syntax rules for recipes, directory 
> structure of the metadata, and more.  It's a lot to read and some 
> sections are confusing but it's a huge resource that will answer many 
> questions.
>
> As others have mentioned, IRC and this mailing list are both excellent 
> places to ask questions.  I personally get asked a lot of questions 
> that require some research and more lengthy explanations.  I've 
> started writing my responses in an advice column form on my blog at 
> http://www.kc8apf.net/category/dear-brother-yocto/.  (Note to Yocto 
> experts: I'm certain to get things wrong in my explanations.  Please 
> send in corrections as well.  I'm happy to include them.).
>
> Rick
>
> On Fri, Jan 27, 2017 at 6:51 AM, Jakob Hasse 
> <jakob.hasse@smart-home-technology.ch 
> <mailto:jakob.hasse@smart-home-technology.ch>> wrote:
>
>     Hello Leon,
>
>     Thank you for the answer!
>
>     I read the documentation, it doesn't really give me more than
>     general hints what to try (or maybe I read at the wrong place). I
>     also read in  "Embedded Linux Project Using Yocto Project
>     Cookbook". I know that bitbake should use autotools somehow. I set
>     up my directories exactly like the other projects which work
>     without any issues. The other project, however, are simple
>     executables.
>
>     What is unclear to me:
>     To what shall SCR_URI point? The git repo? Downloaded .tar.gz
>     file? The source dir copied into the project directory besided the
>     recipe)? I tried all these ways already, each bringing up a
>     different error, basically.
>
>     Do I need to change do_install() or does the makefile handles it?
>     If I interpret the documentation and the book correctly, I don't
>     need to do anything more in the recipe...
>
>     When I want to fetch from git, it complains about the SRCREF not
>     being set. So I tried to set it to the most recent commit of the
>     repo in the recipe file, but it gave another error. I also tried
>     to "append" it somehow to the git URI which didn't work either.
>
>
>     Note that I need to include the development version of openssl,
>     not openssl itself (on Ubuntu host you do something like apt
>     install openssl-dev).
>
>     The recipe is appended, if it helps:
>
>     # Recipe created by recipetool
>     # This is the basis of a recipe and may need further editing in
>     order to be fully functional.
>     # (Feel free to remove these comments when editing.)
>     #
>     # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are
>     best guesses - it is
>     # your responsibility to verify that the values are complete and
>     correct.
>     LICENSE = "Unknown"
>     LIC_FILES_CHKSUM =
>     "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"
>     SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
>     # No information for SRC_URI yet (only an external source tree was
>     specified)
>     SRC_URI =
>     "/usr/local/dey-2.0/sources/meta-training/recipes-examples/tr-50/tr-50-0.1/"
>     #SRC_URI =
>     "git://https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81
>     <https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81>"
>     #SRC_URI = "file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz"
>     #SRCREF = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
>
>     DEPENDS = "openssl "
>     # NOTE: if this software is not capable of being built in a
>     separate build directory
>     # from the source, you should replace autotools with
>     autotools-brokensep in the
>     # inherit line
>     inherit autotools
>
>     # Specify any options you want to pass to the configure script
>     using EXTRA_OECONF:
>     EXTRA_OECONF = " --with-examples"
>
>     #do_install(){
>     #    eo_runmake install DESTDIR=${D} PREFIX=${D}
>     #}
>
>     Thanks in advance for any answers!
>
>     All the best,
>     Jakob
>
>
>     On 27.01.2017 14:39, Leon Woestenberg wrote:
>>     Hi Jakob,
>>
>>     welcome on-board.
>>
>>     The Yocto community expects you to re-use the available
>>     documentation and online resources (or even offline resources
>>     like books) on Yocto or OpenEmbedded. Then if things remains
>>     unclear you can ask questions here on the mailing list and on IRC
>>     channels yocto.
>>
>>     Your question (and probably a lot of subsequent things you learn
>>     on the way) can be answered by the documentation and existing
>>     resources.
>>
>>     I would recommend to read the documentation, then find an
>>     existing recipe that uses "autotools" and another that DEPENDS on
>>     openssl.
>>
>>     There are a lot of resources online:
>>
>>     http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>>     <http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe>
>>
>>     https://www.yoctoproject.org/tools-resources/community/irc
>>     <https://www.yoctoproject.org/tools-resources/community/irc>
>>
>>     Regards,
>>
>>     Leon.
>>
>>     On Fri, Jan 27, 2017 at 12:43 PM, Jakob Hasse
>>     <jakob.hasse@smart-home-technology.ch
>>     <mailto:jakob.hasse@smart-home-technology.ch>> wrote:
>>
>>         Hello,
>>
>>         I'm beginning with Yocto.
>>         I would like to know where to find general help (like a
>>         forum, or mailing lists) for my Yocto-related technical problems.
>>         Right now I have problems just integrating a library into my
>>         build. Later I will also do system development.
>>
>>         If this helps, a further description of my most urgent problem:
>>
>>         I want to integrate the tr-50 library, available on github:
>>
>>         https://github.com/inhedron/libtr50
>>         <https://github.com/inhedron/libtr50>
>>
>>         It is managed via autotools.
>>         I built a new project subdirectory in my custom layer for the
>>         lib.
>>         I built a basic recipe (with some tool) which, in principle
>>         should somehow recognize the autotools and build the project
>>         then. I changed the SCR_URI to the local .tar.gz file. But
>>         when I build, it comes down to this:
>>         make: *** No rule to make target 'install'. Stop.
>>         I don't know if and which parameters I should change in the
>>         recipe.
>>         Another problem is that the lib needs openssl-dev. I can't
>>         find how to include openssl-dev into the Yocto build.
>>
>>         Looking forward for your answers, best regards,
>>         Jakob
>>
>>         -- 
>>         Jakob Hasse
>>         Software Developement
>>
>>         E: jakob.hasse@smart-home-technology.ch
>>         <mailto:jakob.hasse@smart-home-technology.ch>
>>         T: +41 44 552 02 66 <tel:%2B41%2044%20552%2002%2066>
>>
>>         Smart Home Technology GmbH
>>         www.smart-home-technology.ch
>>         <http://www.smart-home-technology.ch>
>>
>>         -- 
>>         _______________________________________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>         https://lists.yoctoproject.org/listinfo/yocto
>>         <https://lists.yoctoproject.org/listinfo/yocto>
>>
>>
>
>     -- 
>     Jakob Hasse
>     Software Developement
>
>     E:jakob.hasse@smart-home-technology.ch
>     <mailto:jakob.hasse@smart-home-technology.ch>
>     T:+41 44 552 02 66 <tel:+41%2044%20552%2002%2066>  
>
>     Smart Home Technology GmbH
>     www.smart-home-technology.ch <http://www.smart-home-technology.ch>
>
>     -- _______________________________________________ yocto mailing
>     list yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto> 
>
-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch

--------------7F667E369B051FDD82EAB6E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello,<br>
    <br>
    I still try to include the tr-50 library into my build, which is an
    autotools manages library. The code is fetch from git by bitbake.<br>
    The good thing: it builds, the compilation of the library itself
    gives no errors and after it I find the .so files several times in
    the build directory.<br>
    However, the packaging does not work as intended:<br>
    It builds the dev and dbg Versions of the package, but not the
    "normal" version of the package:<br>
    <tt>ls
./tmp/work/armv7a-vfp-neon-dey-linux-gnueabi/tr-50/0.1-r0/deploy-rpms/armv7a_vfp_neon/</tt><tt><br>
    </tt><tt>tr-50-dbg-0.1-r0.armv7a_vfp_neon.rpm 
      tr-50-dev-0.1-r0.armv7a_vfp_neon.rpm</tt><br>
    <br>
    I could make bitbake building that package but that package was
    empty then.<br>
    <br>
    My recipe:<br>
    <tt><br>
    </tt><tt>DESCRIPTION = "the tr-50 (MQTT) library to communicate with
      the swisscom devicewise cloud"</tt><tt><br>
    </tt><tt>SECTION = "libs"</tt><tt><br>
    </tt><tt>LICENSE = "Unknown"</tt><tt><br>
    </tt><tt>LIC_FILES_CHKSUM =
      <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d">"file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"</a></tt><tt><br>
    </tt><tt># md5sum only when source is a tar.gz</tt><tt><br>
    </tt><tt>SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"</tt><tt><br>
    </tt><tt>SRC_URI =
      "git://github.com/inhedron/libtr50.git;protocol=https"</tt><tt><br>
    </tt><tt>SRCREV = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"</tt><tt><br>
    </tt><tt><br>
    </tt><tt># tryed the three lines below already, didn't help:</tt><tt><br>
    </tt><tt>#FILES_${PN}-dev = ""</tt><tt><br>
    </tt><tt>#FILES_SOLIBSDEV = ""</tt><tt><br>
    </tt><tt>#ALLOW_EMPTY_${PN} = "1"</tt><tt><br>
    </tt><tt><br>
    </tt><tt>#PACKAGES =+ "${PN}"</tt><tt><br>
    </tt><tt>S = "${WORKDIR}/git"</tt><tt><br>
    </tt><tt><br>
    </tt><tt>DEPENDS = "openssl "</tt><tt><br>
    </tt><tt># NOTE: if this software is not capable of being built in a
      separate build directory</tt><tt><br>
    </tt><tt># from the source, you should replace autotools with
      autotools-brokensep in the</tt><tt><br>
    </tt><tt># inherit line</tt><tt><br>
    </tt><tt>inherit autotools</tt><tt><br>
    </tt><tt><br>
    </tt><tt># Specify any options you want to pass to the configure
      script using EXTRA_OECONF:</tt><tt><br>
    </tt><tt>EXTRA_OECONF = " --with-examples"</tt><br>
    <br>
    When I append tr-50-dev instead of tr-50 to the IMAGE_INSTALL in
    local.conf, then bitbake (or smart via bitbake) complains, too:<br>
    <tt>Computing transaction...error: Can't install
      tr-50-dev-0.1-r0@armv7a_vfp_neon: no package provides tr-50 =
      0.1-r0</tt><br>
    <br>
    There are also examples that come with the tr-50 lib which cannot
    bebuilt because the library tr-50 is missing (at least bitbake
    claims that).<br>
    <br>
    As you can see in the recipe, I tryed three workarounds already that
    I found. None of them worked (except for ALLOW_EMPTY, which produced
    the physically intact but empty packet).<br>
    <br>
    Best Regards and thanks in advance for answers,<br>
    Jakob<br>
    <br>
    PS: Thanks for the responses I got already for the first description
    of my problem!<br>
    <br>
    <div class="moz-cite-prefix">On 27.01.2017 19:16, Rick Altherr
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAPLgG=msOLC7HGUaz3qZSqi_mBn7f9cqng=ZcBZs6B9a6griNQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">I hear you asking a lot of reasonable questions
        that probably seem trivial to most of us who have been using
        Yocto for a while.  We tend to forget what it was like the first
        time.
        <div><br>
        </div>
        <div>I can't tell what reading and research you've done so far. 
          Have you read both the <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/2.2/bitbake-user-manual/bitbake-user-manual.html">BitBake
            User Manual</a> and <a moz-do-not-send="true"
            href="http://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html">Yocto
            Project Reference Manual</a>.  Those explain many vital
          details such as: what many of the variables, like SRC_URI, are
          used for, the syntax rules for recipes, directory structure of
          the metadata, and more.  It's a lot to read and some sections
          are confusing but it's a huge resource that will answer many
          questions.</div>
        <div><br>
        </div>
        <div>As others have mentioned, IRC and this mailing list are
          both excellent places to ask questions.  I personally get
          asked a lot of questions that require some research and more
          lengthy explanations.  I've started writing my responses in an
          advice column form on my blog at <a moz-do-not-send="true"
            href="http://www.kc8apf.net/category/dear-brother-yocto/">http://www.kc8apf.net/category/dear-brother-yocto/</a>.
           (Note to Yocto experts: I'm certain to get things wrong in my
          explanations.  Please send in corrections as well.  I'm happy
          to include them.).</div>
        <div><br>
        </div>
        <div>Rick</div>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Fri, Jan 27, 2017 at 6:51 AM, Jakob
          Hasse <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:jakob.hasse@smart-home-technology.ch"
              target="_blank">jakob.hasse@smart-home-technology.ch</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div bgcolor="#FFFFFF" text="#000000"> Hello Leon,<br>
              <br>
              Thank you for the answer!<br>
              <br>
              I read the documentation, it doesn't really give me more
              than general hints what to try (or maybe I read at the
              wrong place). I also read in  "Embedded Linux Project
              Using Yocto Project Cookbook". I know that bitbake should
              use autotools somehow. I set up my directories exactly
              like the other projects which work without any issues. The
              other project, however, are simple executables.<br>
              <br>
              What is unclear to me:<br>
              To what shall SCR_URI point? The git repo? Downloaded
              .tar.gz file? The source dir copied into the project
              directory besided the recipe)? I tried all these ways
              already, each bringing up a different error, basically.<br>
              <br>
              Do I need to change do_install() or does the makefile
              handles it? If I interpret the documentation and the book
              correctly, I don't need to do anything more in the
              recipe...<br>
              <br>
              When I want to fetch from git, it complains about the
              SRCREF not being set. So I tried to set it to the most
              recent commit of the repo in the recipe file, but it gave
              another error. I also tried to "append" it somehow to the
              git URI which didn't work either.<br>
              <br>
              <br>
              Note that I need to include the development version of
              openssl, not openssl itself (on Ubuntu host you do
              something like apt install openssl-dev).<br>
              <br>
              The recipe is appended, if it helps:<br>
              <br>
              # Recipe created by recipetool<br>
              # This is the basis of a recipe and may need further
              editing in order to be fully functional.<br>
              # (Feel free to remove these comments when editing.)<br>
              #<br>
              # WARNING: the following LICENSE and LIC_FILES_CHKSUM
              values are best guesses - it is<br>
              # your responsibility to verify that the values are
              complete and correct.<br>
              LICENSE = "Unknown"<br>
              LIC_FILES_CHKSUM = <a moz-do-not-send="true"
                class="m_-2190670712990016913moz-txt-link-rfc2396E">"file://COPYING;md5=<wbr>c8ee358fdf91d887aa014c8712e8c2<wbr>2d"</a><br>
              SRC_URI[md5sum] = "<wbr>da7315f9bc22ff4c24a1cef404b4f3<wbr>a8"<br>
              # No information for SRC_URI yet (only an external source
              tree was specified)<br>
              SRC_URI =
              "/usr/local/dey-2.0/sources/<wbr>meta-training/recipes-<wbr>examples/tr-50/tr-50-0.1/"<br>
              #SRC_URI =
              "git://<a moz-do-not-send="true"
                class="m_-2190670712990016913moz-txt-link-freetext"
href="https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
                target="_blank">https://github.com/<wbr>inhedron/libtr50.git;rev=<wbr>aedc45c4e9a9a9a3aa301616ad03f0<wbr>7b903d9a81</a>"<br>
              #SRC_URI = <a moz-do-not-send="true"
                class="m_-2190670712990016913moz-txt-link-rfc2396E">"file:///home/jakob/Downloads/<wbr>libtr50-0.1.0.tar.gz"</a><br>
              #SRCREF = "<wbr>aedc45c4e9a9a9a3aa301616ad03f0<wbr>7b903d9a81"<br>
              <br>
              DEPENDS = "openssl "<br>
              # NOTE: if this software is not capable of being built in
              a separate build directory<br>
              # from the source, you should replace autotools with
              autotools-brokensep in the<br>
              # inherit line<br>
              inherit autotools<br>
              <br>
              # Specify any options you want to pass to the configure
              script using EXTRA_OECONF:<br>
              EXTRA_OECONF = " --with-examples"<br>
              <br>
              #do_install(){<br>
              #    eo_runmake install DESTDIR=${D} PREFIX=${D}<br>
              #}<br>
              <br>
              Thanks in advance for any answers!<br>
              <br>
              All the best,<br>
              Jakob
              <div>
                <div class="h5"><br>
                  <br>
                  <div class="m_-2190670712990016913moz-cite-prefix">On
                    27.01.2017 14:39, Leon Woestenberg wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div>Hi Jakob,<br>
                        <br>
                      </div>
                      <div>welcome on-board.<br>
                      </div>
                      <div><br>
                      </div>
                      <div>The Yocto community expects you to re-use the
                        available documentation and online resources (or
                        even offline resources like books) on Yocto or
                        OpenEmbedded. Then if things remains unclear you
                        can ask questions here on the mailing list and
                        on IRC channels yocto.<br>
                        <br>
                      </div>
                      <div>Your question (and probably a lot of
                        subsequent things you learn on the way) can be
                        answered by the documentation and existing
                        resources.<br>
                      </div>
                      <div><br>
                      </div>
                      <div>I would recommend to read the documentation,
                        then find an existing recipe that uses
                        "autotools" and another that DEPENDS on openssl.<br>
                      </div>
                      <div><br>
                      </div>
                      <div>There are a lot of resources online:<br>
                      </div>
                      <div><br>
                        <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe"
                          target="_blank">http://www.yoctoproject.org/<wbr>docs/1.6.1/dev-manual/dev-<wbr>manual.html#new-recipe-<wbr>writing-a-new-recipe</a><br>
                        <br>
                        <a moz-do-not-send="true"
                          href="https://www.yoctoproject.org/tools-resources/community/irc"
                          target="_blank">https://www.yoctoproject.org/<wbr>tools-resources/community/irc</a>
                        <br>
                        <br>
                      </div>
                      <div>Regards,<br>
                        <br>
                      </div>
                      <div>Leon.<br>
                      </div>
                    </div>
                    <div class="gmail_extra"><br>
                      <div class="gmail_quote">On Fri, Jan 27, 2017 at
                        12:43 PM, Jakob Hasse <span dir="ltr">&lt;<a
                            moz-do-not-send="true"
                            href="mailto:jakob.hasse@smart-home-technology.ch"
                            target="_blank">jakob.hasse@smart-home-<wbr>technology.ch</a>&gt;</span>
                        wrote:<br>
                        <blockquote class="gmail_quote" style="margin:0
                          0 0 .8ex;border-left:1px #ccc
                          solid;padding-left:1ex">Hello,<br>
                          <br>
                          I'm beginning with Yocto.<br>
                          I would like to know where to find general
                          help (like a forum, or mailing lists) for my
                          Yocto-related technical problems.<br>
                          Right now I have problems just integrating a
                          library into my build. Later I will also do
                          system development.<br>
                          <br>
                          If this helps, a further description of my
                          most urgent problem:<br>
                          <br>
                          I want to integrate the tr-50 library,
                          available on github:<br>
                          <br>
                          <a moz-do-not-send="true"
                            href="https://github.com/inhedron/libtr50"
                            rel="noreferrer" target="_blank">https://github.com/inhedron/li<wbr>btr50</a><br>
                          <br>
                          It is managed via autotools.<br>
                          I built a new project subdirectory in my
                          custom layer for the lib.<br>
                          I built a basic recipe (with some tool) which,
                          in principle should somehow recognize the
                          autotools and build the project then. I
                          changed the SCR_URI to the local .tar.gz file.
                          But when I build, it comes down to this:<br>
                          make: *** No rule to make target 'install'. 
                          Stop.<br>
                          I don't know if and which parameters I should
                          change in the recipe.<br>
                          Another problem is that the lib needs
                          openssl-dev. I can't find how to include
                          openssl-dev into the Yocto build.<br>
                          <br>
                          Looking forward for your answers, best
                          regards,<br>
                          Jakob<span
                            class="m_-2190670712990016913HOEnZb"><font
                              color="#888888"><br>
                              <br>
                              -- <br>
                              Jakob Hasse<br>
                              Software Developement<br>
                              <br>
                              E: <a moz-do-not-send="true"
                                href="mailto:jakob.hasse@smart-home-technology.ch"
                                target="_blank">jakob.hasse@smart-home-technol<wbr>ogy.ch</a><br>
                              T: <a moz-do-not-send="true"
                                href="tel:%2B41%2044%20552%2002%2066"
                                value="+41445520266" target="_blank">+41
                                44 552 02 66</a><br>
                              <br>
                              Smart Home Technology GmbH<br>
                              <a moz-do-not-send="true"
                                href="http://www.smart-home-technology.ch"
                                rel="noreferrer" target="_blank">www.smart-home-technology.ch</a><br>
                              <br>
                              -- <br>
                              ______________________________<wbr>_________________<br>
                              yocto mailing list<br>
                              <a moz-do-not-send="true"
                                href="mailto:yocto@yoctoproject.org"
                                target="_blank">yocto@yoctoproject.org</a><br>
                              <a moz-do-not-send="true"
                                href="https://lists.yoctoproject.org/listinfo/yocto"
                                rel="noreferrer" target="_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
                            </font></span></blockquote>
                      </div>
                      <br>
                    </div>
                  </blockquote>
                  <br>
                  <pre class="m_-2190670712990016913moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a moz-do-not-send="true" class="m_-2190670712990016913moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch" target="_blank">jakob.hasse@smart-home-<wbr>technology.ch</a>
T: <a moz-do-not-send="true" href="tel:+41%2044%20552%2002%2066" value="+41445520266" target="_blank">+41 44 552 02 66</a> 

Smart Home Technology GmbH
<a moz-do-not-send="true" class="m_-2190670712990016913moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch" target="_blank">www.smart-home-technology.ch</a></pre>
  </div></div></div>


--

______________________________<wbr>_________________

yocto mailing list

<a moz-do-not-send="true" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>

<a moz-do-not-send="true" href="https://lists.yoctoproject.org/listinfo/yocto" rel="noreferrer" target="_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a>


</blockquote></div>
</div>



</blockquote>
<pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a>
T: +41 44 552 02 66 

Smart Home Technology GmbH
<a class="moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch">www.smart-home-technology.ch</a></pre></body></html>

--------------7F667E369B051FDD82EAB6E7--
