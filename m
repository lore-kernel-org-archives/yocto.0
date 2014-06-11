Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 721AFE00B83; Wed, 11 Jun 2014 01:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FC62E0082A
	for <yocto@yoctoproject.org>; Wed, 11 Jun 2014 01:19:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 241B227E036;
	Wed, 11 Jun 2014 08:19:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id AZmO1N1rLjtJ; Wed, 11 Jun 2014 08:19:04 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 5FB5B27E02A;
	Wed, 11 Jun 2014 08:19:04 +0000 (UTC)
Message-ID: <539810F4.3090601@dynamicdevices.co.uk>
Date: Wed, 11 Jun 2014 09:19:00 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <cover.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<e68eff99bd1d5efac6eb532a8f0b73ab673fceb7.1402224537.git.ajlennon@dynamicdevices.co.uk>
	<CAK18fxHboa0uRC0YfeGZmuFGUzWHnzTy8F25S6xtpWb+2UdRXw@mail.gmail.com>
	<5397947A.6050605@dynamicdevices.co.uk>
	<CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
In-Reply-To: <CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: ***UNCHECKED*** Re: [meta-raspberrypi][PATCH 1/1] gstreamer1.0-omx: Target Raspberry Pi instead of Bellagio.
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
X-List-Received-Date: Wed, 11 Jun 2014 08:19:36 -0000
Content-Type: multipart/alternative;
	boundary="------------010800020103060803090602"

--------------010800020103060803090602
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 11/06/2014 08:47, Andrei Gherzan wrote:
>
>
>
> On Wed, Jun 11, 2014 at 2:27 AM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>
>     On 10/06/2014 19:59, Andrei Gherzan wrote:
>>     Hello Alex.
>>
>>     On Sun, Jun 8, 2014 at 1:50 PM, Alex J Lennon
>>     <ajlennon@dynamicdevices.co.uk
>>     <mailto:ajlennon@dynamicdevices.co.uk>> wrote:
>>
>>         This changes the build slightly as there are some #ifdefs in
>>         there for Raspberry Pi.
>>
>>         Also the codec configuration file used by gstreamer1.0-omx
>>         codecs, /etc/xdg/gstomx.conf,  is set correctly to
>>         core-name=/usr/lib/libopenmaxil.so
>>
>>         Change-Id: I2352ecabfd053717d9ccd2d22422e7d4b7588ce4
>>         Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk
>>         <mailto:ajlennon@dynamicdevices.co.uk>>
>>         ---
>>          recipes-multimedia/gstreamer/gstreamer1.0-omx.inc          
>>          | 2 ++
>>          recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend
>>         | 1 +
>>
>>
>>     I was thinking we we really need two files for this... I know
>>     that yocto has an inc too. But i don't know if that really makes
>>     sense for one line. What do you think? 
>>      
>
>     I came across Yocto best practice here. This is more or less why I
>     provided a patch for consideration into Poky on this earlier
>     today. It would help me, and I suspect other newbies, to have best
>     practice expectations on how to put patches together somewhere up
>     front, say in the README.
>
>     "Do not merge .inc / .bb files"
>
>     https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating
>     <https://wiki.yoctoproject.org/wiki/Best_Known_Methods_%28BKMs%29_for_Package_Updating>
>
>
> I understand. But I think that this is the case only for bb files. We
> are talking here about a bbappend in which case this would be pretty
> useless. Nobody reuses an inc for a bbappend - never seen something
> like that. 

e.g. I have gstreamer1.0-omx_git.bbappend here which reuses the .inc
file. I didn't contribute it as for some reason the git build breaks and
I need to look at why this is


--------------010800020103060803090602
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 11/06/2014 08:47, Andrei Gherzan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAK18fxGgMPMY_zdtRnr0nHk9Dc4siGWY-dat-tw9uXVZwZW-qA@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Wed, Jun 11, 2014 at 2:27 AM, Alex
            J Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div text="#000000" bgcolor="#FFFFFF">
                <div class=""> <br>
                  <div>On 10/06/2014 19:59, Andrei Gherzan wrote:<br>
                  </div>
                  <blockquote type="cite">
                    <div dir="ltr">
                      <div class="gmail_extra">Hello Alex.</div>
                      <div class="gmail_extra"><br>
                        <div class="gmail_quote">On Sun, Jun 8, 2014 at
                          1:50 PM, Alex J Lennon <span dir="ltr">&lt;<a
                              moz-do-not-send="true"
                              href="mailto:ajlennon@dynamicdevices.co.uk"
                              target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
                          wrote:<br>
                          <blockquote class="gmail_quote"
                            style="margin:0 0 0 .8ex;border-left:1px
                            #ccc solid;padding-left:1ex">This changes
                            the build slightly as there are some #ifdefs
                            in there for Raspberry Pi.<br>
                            <br>
                            Also the codec configuration file used by
                            gstreamer1.0-omx codecs,
                            /etc/xdg/gstomx.conf,  is set correctly to
                            core-name=/usr/lib/libopenmaxil.so<br>
                            <br>
                            Change-Id:
                            I2352ecabfd053717d9ccd2d22422e7d4b7588ce4<br>
                            Signed-off-by: Alex J Lennon &lt;<a
                              moz-do-not-send="true"
                              href="mailto:ajlennon@dynamicdevices.co.uk"
                              target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
                            ---<br>
                            <div> recipes-multimedia/gstreamer/gstreamer1.0-omx.inc

                                         | 2 ++<br>
                               recipes-multimedia/gstreamer/gstreamer1.0-omx_1.0.0.bbappend

                              | 1 +<br>
                            </div>
                          </blockquote>
                          <div><br>
                          </div>
                          <div>I was thinking we we really need two
                            files for this... I know that yocto has an
                            inc too. But i don't know if that really
                            makes sense for one line. What do you
                            think? </div>
                          <div> </div>
                        </div>
                      </div>
                    </div>
                  </blockquote>
                  <br>
                </div>
                I came across Yocto best practice here. This is more or
                less why I provided a patch for consideration into Poky
                on this earlier today. It would help me, and I suspect
                other newbies, to have best practice expectations on how
                to put patches together somewhere up front, say in the
                README.<br>
                <br>
                "Do not merge .inc / .bb files" <br>
                <br>
                <a moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Best_Known_Methods_%28BKMs%29_for_Package_Updating"
                  target="_blank">https://wiki.yoctoproject.org/wiki/Best_Known_Methods_(BKMs)_for_Package_Updating</a></div>
            </blockquote>
            <div><br>
            </div>
            <div>I understand. But I think that this is the case only
              for bb files. We are talking here about a bbappend in
              which case this would be pretty useless. Nobody reuses an
              inc for a bbappend - never seen something like that. </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    e.g. I have gstreamer1.0-omx_git.bbappend here which reuses the .inc
    file. I didn't contribute it as for some reason the git build breaks
    and I need to look at why this is<br>
    <br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------010800020103060803090602--
