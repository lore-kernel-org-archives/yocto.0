Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26AB9E00B7B; Wed, 11 Jun 2014 09:53:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6783E0070F
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 09:53:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 206DD27E02B;
	Wed, 11 Jun 2014 16:53:16 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uqQ7mOPce909; Wed, 11 Jun 2014 16:53:11 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CF1C627E02A;
	Wed, 11 Jun 2014 16:53:11 +0000 (UTC)
Message-ID: <53988974.6090409@dynamicdevices.co.uk>
Date: Wed, 11 Jun 2014 17:53:08 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1400594463.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxGb7aYv1f-3qfoJDiNKM4C7FfiKVOUJk5D0JaU7uCEnig@mail.gmail.com>
In-Reply-To: <CAK18fxGb7aYv1f-3qfoJDiNKM4C7FfiKVOUJk5D0JaU7uCEnig@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] pi-blaster: Add recipe
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
X-List-Received-Date: Wed, 11 Jun 2014 16:53:30 -0000
Content-Type: multipart/alternative;
	boundary="------------070804090807080901090900"

--------------070804090807080901090900
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 10/06/2014 20:50, Andrei Gherzan wrote:
> Hi Alex,
>
>
> On Tue, May 20, 2014 at 5:40 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>     Please see following patch for details.
>
>     The following changes since commit
>     f3a8693f08f99893453fd1fe282515b2f222c080:
>
>       omxplayer: Update to remote's HEAD (2014-05-09 14:56:59 +0300)
>
>     are available in the git repository at:
>
>       git://github.com/DynamicDevices/meta-raspberrypi
>     <http://github.com/DynamicDevices/meta-raspberrypi> ajl/pi-blaster
>       https://github.com/DynamicDevices/meta-raspberrypi/tree/master
>
>     Alex J Lennon (1):
>       pi-blaster: Added recipe
>
>      recipes-devtools/pi-blaster/files/initscript.patch | 71
>     ++++++++++++++++++++++
>      recipes-devtools/pi-blaster/pi-blaster.inc         | 36 +++++++++++
>      recipes-devtools/pi-blaster/pi-blaster_git.bb
>     <http://pi-blaster_git.bb>      |  3 +
>      3 files changed, 110 insertions(+)
>      create mode 100644 recipes-devtools/pi-blaster/files/initscript.patch
>      create mode 100644 recipes-devtools/pi-blaster/pi-blaster.inc
>      create mode 100644 recipes-devtools/pi-blaster/pi-blaster_git.bb
>     <http://pi-blaster_git.bb>
>
>
> You missed the actual patch so I will give my feedback listed below:
> 1. Refactor commit log.
> 2. One space left after "oe_runmake".
> 3. Why exactly do you need oe_runmake after all?
> 4. I would replace the do install/configure appends with a patch on
> Makefile (would be useful for the project's maintainer too).
> 5. Please add comments to patches too. Here is an example:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
>

Thanks for the comprehensive response Andrei, and also for the link to
the OpenEmbedded Commit Patch Message Guidelines - very useful.

I've reworked the pi-blaster recipe, hopefully in line with your
comments, and pushed a second patch-set up to the review server.

Regards,

Alex


--------------070804090807080901090900
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 10/06/2014 20:50, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxGb7aYv1f-3qfoJDiNKM4C7FfiKVOUJk5D0JaU7uCEnig@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi Alex,<br>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Tue, May 20, 2014 at 5:40 PM, Alex
            J Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">Please
              see following patch for details.<br>
              <br>
              The following changes since commit
              f3a8693f08f99893453fd1fe282515b2f222c080:<br>
              <br>
                omxplayer: Update to remote's HEAD (2014-05-09 14:56:59
              +0300)<br>
              <br>
              are available in the git repository at:<br>
              <br>
                <a class="moz-txt-link-freetext" href="git://">git://</a><a moz-do-not-send="true"
                href="http://github.com/DynamicDevices/meta-raspberrypi"
                target="_blank">github.com/DynamicDevices/meta-raspberrypi</a>
              ajl/pi-blaster<br>
                <a moz-do-not-send="true"
                href="https://github.com/DynamicDevices/meta-raspberrypi/tree/master"
                target="_blank">https://github.com/DynamicDevices/meta-raspberrypi/tree/master</a><br>
              <br>
              Alex J Lennon (1):<br>
                pi-blaster: Added recipe<br>
              <br>
               recipes-devtools/pi-blaster/files/initscript.patch | 71
              ++++++++++++++++++++++<br>
               recipes-devtools/pi-blaster/pi-blaster.inc         | 36
              +++++++++++<br>
               recipes-devtools/pi-blaster/<a moz-do-not-send="true"
                href="http://pi-blaster_git.bb" target="_blank">pi-blaster_git.bb</a>
                   |  3 +<br>
               3 files changed, 110 insertions(+)<br>
               create mode 100644
              recipes-devtools/pi-blaster/files/initscript.patch<br>
               create mode 100644
              recipes-devtools/pi-blaster/pi-blaster.inc<br>
               create mode 100644 recipes-devtools/pi-blaster/<a
                moz-do-not-send="true" href="http://pi-blaster_git.bb"
                target="_blank">pi-blaster_git.bb</a></blockquote>
            <div><br>
            </div>
            <div>You missed the actual patch so I will give my feedback
              listed below:</div>
            <div>1. Refactor commit log.</div>
            <div>2. One space left after "oe_runmake".</div>
            <div>3. Why exactly do you need oe_runmake after all?</div>
            <div>4. I would replace the do install/configure appends
              with a patch on Makefile (would be useful for the
              project's maintainer too).</div>
            <div>5. Please add comments to patches too. Here is an
              example:</div>
            <div><a moz-do-not-send="true"
href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch</a><br>
            </div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Thanks for the comprehensive response Andrei, and also for the link
    to the OpenEmbedded Commit Patch Message Guidelines - very useful.<br>
    <br>
    I've reworked the pi-blaster recipe, hopefully in line with your
    comments, and pushed a second patch-set up to the review server.<br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <br>
  </body>
</html>

--------------070804090807080901090900--
