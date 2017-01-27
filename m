Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B8EE006EA; Fri, 27 Jan 2017 06:51:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mxout013.mail.hostpoint.ch (mxout013.mail.hostpoint.ch
	[217.26.49.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC7FE00510
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 06:51:18 -0800 (PST)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout013.mail.hostpoint.ch with esmtp (Exim 4.87_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cX7rw-000DNz-Uc
	for yocto@yoctoproject.org; Fri, 27 Jan 2017 15:51:16 +0100
Received: from [2a02:168:6918:0:e8c0:be9b:ce6b:fd88]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.87_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1cX7rw-000L7v-QG
	for yocto@yoctoproject.org; Fri, 27 Jan 2017 15:51:16 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
To: Yocto List <yocto@yoctoproject.org>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
Date: Fri, 27 Jan 2017 15:51:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
Subject: Re: Where to find help for yocto application and and system development
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
X-List-Received-Date: Fri, 27 Jan 2017 14:51:22 -0000
Content-Type: multipart/alternative;
	boundary="------------3AF6F1B7B5C246D25EB00EC7"

--------------3AF6F1B7B5C246D25EB00EC7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Leon,

Thank you for the answer!

I read the documentation, it doesn't really give me more than general 
hints what to try (or maybe I read at the wrong place). I also read in  
"Embedded Linux Project Using Yocto Project Cookbook". I know that 
bitbake should use autotools somehow. I set up my directories exactly 
like the other projects which work without any issues. The other 
project, however, are simple executables.

What is unclear to me:
To what shall SCR_URI point? The git repo? Downloaded .tar.gz file? The 
source dir copied into the project directory besided the recipe)? I 
tried all these ways already, each bringing up a different error, basically.

Do I need to change do_install() or does the makefile handles it? If I 
interpret the documentation and the book correctly, I don't need to do 
anything more in the recipe...

When I want to fetch from git, it complains about the SRCREF not being 
set. So I tried to set it to the most recent commit of the repo in the 
recipe file, but it gave another error. I also tried to "append" it 
somehow to the git URI which didn't work either.


Note that I need to include the development version of openssl, not 
openssl itself (on Ubuntu host you do something like apt install 
openssl-dev).

The recipe is appended, if it helps:

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to 
be fully functional.
# (Feel free to remove these comments when editing.)
#
# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best 
guesses - it is
# your responsibility to verify that the values are complete and correct.
LICENSE = "Unknown"
LIC_FILES_CHKSUM = "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"
SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
# No information for SRC_URI yet (only an external source tree was 
specified)
SRC_URI = 
"/usr/local/dey-2.0/sources/meta-training/recipes-examples/tr-50/tr-50-0.1/"
#SRC_URI = 
"git://https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
#SRC_URI = "file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz"
#SRCREF = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"

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

#do_install(){
#    eo_runmake install DESTDIR=${D} PREFIX=${D}
#}

Thanks in advance for any answers!

All the best,
Jakob

On 27.01.2017 14:39, Leon Woestenberg wrote:
> Hi Jakob,
>
> welcome on-board.
>
> The Yocto community expects you to re-use the available documentation 
> and online resources (or even offline resources like books) on Yocto 
> or OpenEmbedded. Then if things remains unclear you can ask questions 
> here on the mailing list and on IRC channels yocto.
>
> Your question (and probably a lot of subsequent things you learn on 
> the way) can be answered by the documentation and existing resources.
>
> I would recommend to read the documentation, then find an existing 
> recipe that uses "autotools" and another that DEPENDS on openssl.
>
> There are a lot of resources online:
>
> http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>
> https://www.yoctoproject.org/tools-resources/community/irc
>
> Regards,
>
> Leon.
>
> On Fri, Jan 27, 2017 at 12:43 PM, Jakob Hasse 
> <jakob.hasse@smart-home-technology.ch 
> <mailto:jakob.hasse@smart-home-technology.ch>> wrote:
>
>     Hello,
>
>     I'm beginning with Yocto.
>     I would like to know where to find general help (like a forum, or
>     mailing lists) for my Yocto-related technical problems.
>     Right now I have problems just integrating a library into my
>     build. Later I will also do system development.
>
>     If this helps, a further description of my most urgent problem:
>
>     I want to integrate the tr-50 library, available on github:
>
>     https://github.com/inhedron/libtr50
>     <https://github.com/inhedron/libtr50>
>
>     It is managed via autotools.
>     I built a new project subdirectory in my custom layer for the lib.
>     I built a basic recipe (with some tool) which, in principle should
>     somehow recognize the autotools and build the project then. I
>     changed the SCR_URI to the local .tar.gz file. But when I build,
>     it comes down to this:
>     make: *** No rule to make target 'install'.  Stop.
>     I don't know if and which parameters I should change in the recipe.
>     Another problem is that the lib needs openssl-dev. I can't find
>     how to include openssl-dev into the Yocto build.
>
>     Looking forward for your answers, best regards,
>     Jakob
>
>     -- 
>     Jakob Hasse
>     Software Developement
>
>     E: jakob.hasse@smart-home-technology.ch
>     <mailto:jakob.hasse@smart-home-technology.ch>
>     T: +41 44 552 02 66 <tel:%2B41%2044%20552%2002%2066>
>
>     Smart Home Technology GmbH
>     www.smart-home-technology.ch <http://www.smart-home-technology.ch>
>
>     -- 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>
>

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


--------------3AF6F1B7B5C246D25EB00EC7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hello Leon,<br>
    <br>
    Thank you for the answer!<br>
    <br>
    I read the documentation, it doesn't really give me more than
    general hints what to try (or maybe I read at the wrong place). I
    also read in  "Embedded Linux Project Using Yocto Project Cookbook".
    I know that bitbake should use autotools somehow. I set up my
    directories exactly like the other projects which work without any
    issues. The other project, however, are simple executables.<br>
    <br>
    What is unclear to me:<br>
    To what shall SCR_URI point? The git repo? Downloaded .tar.gz file?
    The source dir copied into the project directory besided the
    recipe)? I tried all these ways already, each bringing up a
    different error, basically.<br>
    <br>
    Do I need to change do_install() or does the makefile handles it? If
    I interpret the documentation and the book correctly, I don't need
    to do anything more in the recipe...<br>
    <br>
    When I want to fetch from git, it complains about the SRCREF not
    being set. So I tried to set it to the most recent commit of the
    repo in the recipe file, but it gave another error. I also tried to
    "append" it somehow to the git URI which didn't work either.<br>
    <br>
    <br>
    Note that I need to include the development version of openssl, not
    openssl itself (on Ubuntu host you do something like apt install
    openssl-dev).<br>
    <br>
    The recipe is appended, if it helps:<br>
    <br>
    # Recipe created by recipetool<br>
    # This is the basis of a recipe and may need further editing in
    order to be fully functional.<br>
    # (Feel free to remove these comments when editing.)<br>
    #<br>
    # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are
    best guesses - it is<br>
    # your responsibility to verify that the values are complete and
    correct.<br>
    LICENSE = "Unknown"<br>
    LIC_FILES_CHKSUM =
    <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d">"file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d"</a><br>
    SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"<br>
    # No information for SRC_URI yet (only an external source tree was
    specified)<br>
    SRC_URI =
"/usr/local/dey-2.0/sources/meta-training/recipes-examples/tr-50/tr-50-0.1/"<br>
    #SRC_URI =
"git://<a class="moz-txt-link-freetext" href="https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81">https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81</a>"<br>
    #SRC_URI = <a class="moz-txt-link-rfc2396E" href="file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz">"file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz"</a><br>
    #SRCREF = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"<br>
    <br>
    DEPENDS = "openssl "<br>
    # NOTE: if this software is not capable of being built in a separate
    build directory<br>
    # from the source, you should replace autotools with
    autotools-brokensep in the<br>
    # inherit line<br>
    inherit autotools<br>
    <br>
    # Specify any options you want to pass to the configure script using
    EXTRA_OECONF:<br>
    EXTRA_OECONF = " --with-examples"<br>
    <br>
    #do_install(){<br>
    #    eo_runmake install DESTDIR=${D} PREFIX=${D}<br>
    #}<br>
    <br>
    Thanks in advance for any answers!<br>
    <br>
    All the best,<br>
    Jakob<br>
    <br>
    <div class="moz-cite-prefix">On 27.01.2017 14:39, Leon Woestenberg
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>Hi Jakob,<br>
          <br>
        </div>
        <div>welcome on-board.<br>
        </div>
        <div><br>
        </div>
        <div>The Yocto community expects you to re-use the available
          documentation and online resources (or even offline resources
          like books) on Yocto or OpenEmbedded. Then if things remains
          unclear you can ask questions here on the mailing list and on
          IRC channels yocto.<br>
          <br>
        </div>
        <div>Your question (and probably a lot of subsequent things you
          learn on the way) can be answered by the documentation and
          existing resources.<br>
        </div>
        <div><br>
        </div>
        <div>I would recommend to read the documentation, then find an
          existing recipe that uses "autotools" and another that DEPENDS
          on openssl.<br>
        </div>
        <div><br>
        </div>
        <div>There are a lot of resources online:<br>
        </div>
        <div><br>
          <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe">http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe</a><br>
          <br>
          <a moz-do-not-send="true"
            href="https://www.yoctoproject.org/tools-resources/community/irc">https://www.yoctoproject.org/tools-resources/community/irc</a>
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
        <div class="gmail_quote">On Fri, Jan 27, 2017 at 12:43 PM, Jakob
          Hasse <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:jakob.hasse@smart-home-technology.ch"
              target="_blank">jakob.hasse@smart-home-technology.ch</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
            <br>
            I'm beginning with Yocto.<br>
            I would like to know where to find general help (like a
            forum, or mailing lists) for my Yocto-related technical
            problems.<br>
            Right now I have problems just integrating a library into my
            build. Later I will also do system development.<br>
            <br>
            If this helps, a further description of my most urgent
            problem:<br>
            <br>
            I want to integrate the tr-50 library, available on github:<br>
            <br>
            <a moz-do-not-send="true"
              href="https://github.com/inhedron/libtr50"
              rel="noreferrer" target="_blank">https://github.com/inhedron/li<wbr>btr50</a><br>
            <br>
            It is managed via autotools.<br>
            I built a new project subdirectory in my custom layer for
            the lib.<br>
            I built a basic recipe (with some tool) which, in principle
            should somehow recognize the autotools and build the project
            then. I changed the SCR_URI to the local .tar.gz file. But
            when I build, it comes down to this:<br>
            make: *** No rule to make target 'install'.  Stop.<br>
            I don't know if and which parameters I should change in the
            recipe.<br>
            Another problem is that the lib needs openssl-dev. I can't
            find how to include openssl-dev into the Yocto build.<br>
            <br>
            Looking forward for your answers, best regards,<br>
            Jakob<span class="HOEnZb"><font color="#888888"><br>
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
                  value="+41445520266" target="_blank">+41 44 552 02 66</a><br>
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
                  href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
                <a moz-do-not-send="true"
                  href="https://lists.yoctoproject.org/listinfo/yocto"
                  rel="noreferrer" target="_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
Jakob Hasse
Software Developement

E: <a class="moz-txt-link-abbreviated" href="mailto:jakob.hasse@smart-home-technology.ch">jakob.hasse@smart-home-technology.ch</a>
T: +41 44 552 02 66 

Smart Home Technology GmbH
<a class="moz-txt-link-abbreviated" href="http://www.smart-home-technology.ch">www.smart-home-technology.ch</a></pre>
  </body>
</html>

--------------3AF6F1B7B5C246D25EB00EC7--
