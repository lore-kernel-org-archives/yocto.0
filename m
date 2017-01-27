Return-Path: <me@herrie.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9659DE00932; Fri, 27 Jan 2017 07:12:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [149.210.149.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 396 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Jan 2017 07:11:57 PST
Received: from outbound1.mail.transip.nl (outbound1.mail.transip.nl
	[149.210.149.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4A4E0052B
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2017 07:11:57 -0800 (PST)
Received: from submission6.mail.transip.nl (submission6.mail.transip.nl
	[149.210.149.10])
	by outbound1.mail.transip.nl (Postfix) with ESMTP id 3v92CM2Xj7zcg7j;
	Fri, 27 Jan 2017 16:05:19 +0100 (CET)
Received: from webmail.frontend (web2.mail.transip.nl [149.210.149.97])
	by submission6.mail.transip.nl (Postfix) with ESMTPA id
	3v92CJ2hTcz12N5c; Fri, 27 Jan 2017 16:05:15 +0100 (CET)
MIME-Version: 1.0
Date: Fri, 27 Jan 2017 16:05:15 +0100
From: Herman van Hazendonk <me@herrie.org>
To: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
References: <4bf25102-0b23-f4dd-7688-bebf892946ab@smart-home-technology.ch>
	<CAMjhiJg__hdSHbKNE8BO68d7WBz-QhtKNKtUGxw6wd68aF_uFQ@mail.gmail.com>
	<4f301547-ca13-69dd-438b-47987c3dd9fe@smart-home-technology.ch>
Message-ID: <dc63dcc2a37f902b0ce5fa0f3326fb2f@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
X-Scanned-By: ClueGetter at submission6.mail.transip.nl
X-Report-Abuse-To: abuse@transip.nl
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Where to find help for yocto application and and system development
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: yoctoproject.org@herrie.org
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jan 2017 15:12:02 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi Jakob,

It's a bit trial & error with Yocto to be fair.

We use it quite extensively in our LuneOS project. There are quite some 
layers available with example recipes as well that you could look into 
for inspiration :)

I think 2 important things to note for you:

SRC_URI can point to a git repo, tar.gz etc
When you point to a git repo you need to include SRCREV (with V not 
F!!).

When you point to a .tar.gz for example you need to add:

SRC_URI[md5sum] = "mymd5sum"
SRC_URI[sha256sum] = "mysha256sum"

For example see:

For using git: 
https://github.com/webOS-ports/meta-webos-ports/blob/b0ca23f27d2496209656b037b113417b0af25480/meta-luneos/recipes-nemomobile/voicecall/voicecall_git.bb#L13

For using a .tar.xz with autotools: 
https://github.com/webOS-ports/meta-webos-ports/blob/b0ca23f27d2496209656b037b113417b0af25480/meta-luneos/recipes-support/pidgin/pidgin-sipe_1.21.1.bb

I hope this helps a bit at least.

Herman



On 2017-01-27 15:51, Jakob Hasse wrote:
> Hello Leon,
> 
> Thank you for the answer!
> 
> I read the documentation, it doesn't really give me more than general
> hints what to try (or maybe I read at the wrong place). I also read in
>  "Embedded Linux Project Using Yocto Project Cookbook". I know that
> bitbake should use autotools somehow. I set up my directories exactly
> like the other projects which work without any issues. The other
> project, however, are simple executables.
> 
> What is unclear to me:
> To what shall SCR_URI point? The git repo? Downloaded .tar.gz file?
> The source dir copied into the project directory besided the recipe)?
> I tried all these ways already, each bringing up a different error,
> basically.
> 
> Do I need to change do_install() or does the makefile handles it? If I
> interpret the documentation and the book correctly, I don't need to do
> anything more in the recipe...
> 
> When I want to fetch from git, it complains about the SRCREF not being
> set. So I tried to set it to the most recent commit of the repo in the
> recipe file, but it gave another error. I also tried to "append" it
> somehow to the git URI which didn't work either.
> 
> Note that I need to include the development version of openssl, not
> openssl itself (on Ubuntu host you do something like apt install
> openssl-dev).
> 
> The recipe is appended, if it helps:
> 
> # Recipe created by recipetool
> # This is the basis of a recipe and may need further editing in order
> to be fully functional.
> # (Feel free to remove these comments when editing.)
> #
> # WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best
> guesses - it is
> # your responsibility to verify that the values are complete and
> correct.
> LICENSE = "Unknown"
> LIC_FILES_CHKSUM =
> "file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d" [5]
> SRC_URI[md5sum] = "da7315f9bc22ff4c24a1cef404b4f3a8"
> # No information for SRC_URI yet (only an external source tree was
> specified)
> SRC_URI =
> "/usr/local/dey-2.0/sources/meta-training/recipes-examples/tr-50/tr-50-0.1/"
> #SRC_URI =
> "git://https://github.com/inhedron/libtr50.git;rev=aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
> #SRC_URI = "file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz" [6]
> #SRCREF = "aedc45c4e9a9a9a3aa301616ad03f07b903d9a81"
> 
> DEPENDS = "openssl "
> # NOTE: if this software is not capable of being built in a separate
> build directory
> # from the source, you should replace autotools with
> autotools-brokensep in the
> # inherit line
> inherit autotools
> 
> # Specify any options you want to pass to the configure script using
> EXTRA_OECONF:
> EXTRA_OECONF = " --with-examples"
> 
> #do_install(){
> #    eo_runmake install DESTDIR=${D} PREFIX=${D}
> #}
> 
> Thanks in advance for any answers!
> 
> All the best,
> Jakob
> 
> On 27.01.2017 14:39, Leon Woestenberg wrote:
> 
>> Hi Jakob,
>> 
>> welcome on-board.
>> 
>> The Yocto community expects you to re-use the available
>> documentation and online resources (or even offline resources like
>> books) on Yocto or OpenEmbedded. Then if things remains unclear you
>> can ask questions here on the mailing list and on IRC channels
>> yocto.
>> 
>> Your question (and probably a lot of subsequent things you learn on
>> the way) can be answered by the documentation and existing
>> resources.
>> 
>> I would recommend to read the documentation, then find an existing
>> recipe that uses "autotools" and another that DEPENDS on openssl.
>> 
>> There are a lot of resources online:
>> 
>> 
> http://www.yoctoproject.org/docs/1.6.1/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>> 
>> https://www.yoctoproject.org/tools-resources/community/irc
>> 
>> Regards,
>> 
>> Leon.
>> 
>> On Fri, Jan 27, 2017 at 12:43 PM, Jakob Hasse
>> <jakob.hasse@smart-home-technology.ch> wrote:
>> 
>>> Hello,
>>> 
>>> I'm beginning with Yocto.
>>> I would like to know where to find general help (like a forum, or
>>> mailing lists) for my Yocto-related technical problems.
>>> Right now I have problems just integrating a library into my
>>> build. Later I will also do system development.
>>> 
>>> If this helps, a further description of my most urgent problem:
>>> 
>>> I want to integrate the tr-50 library, available on github:
>>> 
>>> https://github.com/inhedron/libtr50 [1]
>>> 
>>> It is managed via autotools.
>>> I built a new project subdirectory in my custom layer for the lib.
>>> I built a basic recipe (with some tool) which, in principle should
>>> somehow recognize the autotools and build the project then. I
>>> changed the SCR_URI to the local .tar.gz file. But when I build,
>>> it comes down to this:
>>> make: *** No rule to make target 'install'.  Stop.
>>> I don't know if and which parameters I should change in the
>>> recipe.
>>> Another problem is that the lib needs openssl-dev. I can't find
>>> how to include openssl-dev into the Yocto build.
>>> 
>>> Looking forward for your answers, best regards,
>>> Jakob
>>> 
>>> --
>>> Jakob Hasse
>>> Software Developement
>>> 
>>> E: jakob.hasse@smart-home-technology.ch
>>> T: +41 44 552 02 66 [2]
>>> 
>>> Smart Home Technology GmbH
>>> www.smart-home-technology.ch [3]
>>> 
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto [4]
> 
> --
> Jakob Hasse
> Software Developement
> 
> E: jakob.hasse@smart-home-technology.ch
> T: +41 44 552 02 66
> 
> Smart Home Technology GmbH
> www.smart-home-technology.ch [3]
> 
> 
> Links:
> ------
> [1] https://github.com/inhedron/libtr50
> [2] tel:%2B41%2044%20552%2002%2066
> [3] http://www.smart-home-technology.ch
> [4] https://lists.yoctoproject.org/listinfo/yocto
> [5] file://COPYING;md5=c8ee358fdf91d887aa014c8712e8c22d
> [6] file:///home/jakob/Downloads/libtr50-0.1.0.tar.gz


