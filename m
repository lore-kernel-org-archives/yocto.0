Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5917E009A3; Wed, 29 Apr 2015 07:06:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E91E00998
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 07:06:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 91F8827E242;
	Wed, 29 Apr 2015 14:06:11 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id RXRVqNeWIw0Z; Wed, 29 Apr 2015 14:06:10 +0000 (UTC)
Received: from [192.168.1.16] (AMarseille-651-1-40-127.w92-150.abo.wanadoo.fr
	[92.150.31.127])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 4C79F27E224;
	Wed, 29 Apr 2015 14:06:07 +0000 (UTC)
Message-ID: <5540E546.9020606@dynamicdevices.co.uk>
Date: Wed, 29 Apr 2015 16:05:58 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Oliver <urnen81@yahoo.es>
References: <17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] meta-ivi & meta-raspberrypi
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
X-List-Received-Date: Wed, 29 Apr 2015 14:06:19 -0000
Content-Type: multipart/alternative;
	boundary="------------010900010201010908090109"

--------------010900010201010908090109
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 29/04/2015 15:30, Oliver wrote:
> Hello
>
> I have been working building together the meta-raspberrypi & the meta-ivi layers.
> I have been stuck with configuration/compilation of weston(from mata-ivi layer):
>
> 1)
>
> You can check the intial thread http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html
>
>
> egl provided by userlad is not detected as the *.pc files are not deployed
> Someone has faced similar problems:
>
>    http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624
>
> 2)
> With this I am able to reach the do_compile stage but there are errors related to the undefined type
>
> PFNEGLQUERYWAYLANDBUFFERWL
> Hacked this one forcing the inclusion of <weston-egl-ext.h> :-S
>
>
> 3)
> At linking time the next trouble is:
>
> /home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld: cannot find -lwayland-egl
>
> IIRC this lib is provided by mesa-gl, but in my build, mesa is configured(--disable-egl (is this ok being provided by userlad?)) which might be the reason why libwayland-egl is not getting deployed in the image?
>
> Any correction to my statements or hint to go further would be appreciated
>
> Best Regards & thanks for your time
>
> Oliver

Hi Oliver,

I was looking at wayland/weston last year.  I can't remember exactly
where I was at with it I am afraid, but I think I had it building and
have pushed some of the code I was playing with to GitHub

I think this was related to the .pc issue

https://github.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddacb1f15065257

And this was what I was doing with weston. Looks like I was disabling EGL.

https://github.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d41745c17d7d6e1

Sorry I can't be more help but perhaps there's something in there that
might be of use.

Regards,

Alex

--------------010900010201010908090109
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
    <link href="chrome://translator/skin/floatingPanel.css"
      type="text/css" rel="stylesheet">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    <div class="moz-cite-prefix">On 29/04/2015 15:30, Oliver wrote:<br>
    </div>
    <blockquote
      cite="mid:17420222.681949.1430314213894.JavaMail.yahoo@mail.yahoo.com"
      type="cite">
      <pre wrap="">Hello

I have been working building together the meta-raspberrypi &amp; the meta-ivi layers.
I have been stuck with configuration/compilation of weston(from mata-ivi layer):

1)

You can check the intial thread <a class="moz-txt-link-freetext" href="http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html">http://lists.genivi.org/pipermail/genivi-meta-ivi/2015-April/000508.html</a>


egl provided by userlad is not detected as the *.pc files are not deployed
Someone has faced similar problems:

   <a class="moz-txt-link-freetext" href="http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624">http://git.buildroot.net/buildroot/commit/?id=2282b93f4248a32de84805456efa352f69b28624</a>

2)
With this I am able to reach the do_compile stage but there are errors related to the undefined type

PFNEGLQUERYWAYLANDBUFFERWL
Hacked this one forcing the inclusion of &lt;weston-egl-ext.h&gt; :-S


3)
At linking time the next trouble is:

/home/oliver/raspberry/build-rpi-ivi/tmp/sysroots/i686-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/ld: cannot find -lwayland-egl

IIRC this lib is provided by mesa-gl, but in my build, mesa is configured(--disable-egl (is this ok being provided by userlad?)) which might be the reason why libwayland-egl is not getting deployed in the image?

Any correction to my statements or hint to go further would be appreciated

Best Regards &amp; thanks for your time

Oliver
</pre>
    </blockquote>
    <br>
    Hi Oliver,<br>
    <br>
    I was looking at wayland/weston last year.  I can't remember exactly
    where I was at with it I am afraid, but I think I had it building
    and have pushed some of the code I was playing with to GitHub<br>
    <br>
    I think this was related to the .pc issue<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddacb1f15065257">https://github.com/DynamicDevices/meta-raspberrypi/commit/491dd14585efdb52378a57fa6ddacb1f15065257</a><br>
    <br>
    And this was what I was doing with weston. Looks like I was
    disabling EGL.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://github.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d41745c17d7d6e1">https://github.com/DynamicDevices/meta-raspberrypi/commit/c657f69deb57035fc43319dd7d41745c17d7d6e1</a><br>
    <br>
    Sorry I can't be more help but perhaps there's something in there
    that might be of use.<br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <div style="bottom: auto; left: 180px; right: auto; top: 701px;
      display: none;" class="translator-theme-default"
      id="translator-floating-panel">
      <div title="Click to translate"
        id="translator-floating-panel-button"></div>
    </div>
  </body>
</html>

--------------010900010201010908090109--
