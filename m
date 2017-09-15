Return-Path: <pierre-olivier.huard@twiga-web.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3BF1E00CF1; Fri, 15 Sep 2017 07:46:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 892 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Sep 2017 07:46:10 PDT
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD62E00CC0
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 07:46:10 -0700 (PDT)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 699754972FA
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 16:23:34 +0200 (CEST)
X-Originating-IP: 193.251.12.67
Received: from [192.168.1.101] (LNeuilly-656-1-104-67.w193-251.abo.wanadoo.fr
	[193.251.12.67])
	(Authenticated sender: pierre-olivier.huard@twiga-web.com)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id DAA84C5A87
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 16:23:32 +0200 (CEST)
From: Pierre-Olivier Huard <pierre-olivier.huard@twiga-web.com>
To: yocto@yoctoproject.org
Organization: Twiga
Message-ID: <bdedff93-ca9c-2065-2d47-054f1d6723b8@twiga-web.com>
Date: Fri, 15 Sep 2017 16:23:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: gdk-pixbuf does not install libraries
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
X-List-Received-Date: Fri, 15 Sep 2017 14:46:12 -0000
Content-Type: multipart/alternative;
	boundary="------------AF85C61397FB9A4E4F994C34"
Content-Language: en-GB

--------------AF85C61397FB9A4E4F994C34
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I already posted my question on SO, but with no success, so I'll try here.

I'm working on a custom board with iMX6 Quad, on Yocto 2.1.2 (Krogoth 
branch), I tested on a more recent version, 2.3.1, and the result is the 
same.
My main goal is to use gdkpixbufoverlay Gstreamer element on my board. 
This is my error:

gst-launch-1.0 videotestsrc ! gdkpixbufoverlay location=image.png ! fakesink

(gst-launch-1.0:441): GdkPixbuf-WARNING **: Cannot open pixbuf loader 
module file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file 
or directory

This likely means that your installation is broken.
Try running the command
   gdk-pixbuf-query-loaders > /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache
to make things work again for the time being.
Setting pipeline to PAUSED ...
ERROR: Pipeline doesn't want to pause.
ERROR: from element 
/GstPipeline:pipeline0/GstGdkPixbufOverlay:gdkpixbufoverlay0: Could not 
load overlay image.
Additional debug info:
../../../gst-plugins-good-1.6.3/ext/gdk_pixbuf/gstgdkpixbufoverlay.c(508): 
gst_gdk_pixbuf_overlay_start (): 
/GstPipeline:pipeline0/GstGdkPixbufOverlay:gdkpixbufoverlay0:
Couldn't recognize the image file format for file 'image.png'
Setting pipeline to NULL ...
Freeing pipeline ...

So I tried to run the command advised, but I did not work either. I took 
a look at the output:

/usr/lib/gdk-pixbuf-2.0/gdk-pixbuf-query-loaders
# GdkPixbuf Image Loader Modules file
# Automatically generated file, do not edit
# Created by gdk-pixbuf-query-loaders from gdk-pixbuf-2.32.3
#
# LoaderDir = /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders
#

And the output is full of comments.

I checked my configuration on yocto:
# bitbake -e gdk-pixbuf | grep ^PACKAGECONFIG=
PACKAGECONFIG="png jpeg"

So the recipe seems to be correctly configured, but I don't have the 
libraries on the image (eg libpixbufloader-png.so). I've tried to add 
all gtk recipes to my image, but I don't have the lipixbufloader-*.so 
libraries.

Did I miss something on my configuration?

Thank you,
Pierre-Olivier


--------------AF85C61397FB9A4E4F994C34
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <font size="3"><font face="Helvetica, Arial, sans-serif">Hello,<br>
        <br>
        I already posted my question on SO, but with no success, so I'll
        try here.<br>
        <br>
        I'm working on a custom board with iMX6 Quad, on Yocto 2.1.2
        (Krogoth branch), I tested on a more recent version, 2.3.1, and
        the result is the same.<br>
        My main goal is to use gdkpixbufoverlay Gstreamer element on my
        board. This is my error:<br>
        <br>
        <font face="Courier New, Courier, monospace">gst-launch-1.0
          videotestsrc ! gdkpixbufoverlay location=image.png !
          fakesink<br>
          <br>
          (gst-launch-1.0:441): GdkPixbuf-WARNING **: Cannot open pixbuf
          loader module file
          '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file
          or directory<br>
          <br>
          This likely means that your installation is broken.<br>
          Try running the command<br>
            gdk-pixbuf-query-loaders &gt;
          /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache<br>
          to make things work again for the time being.<br>
          Setting pipeline to PAUSED ...<br>
          ERROR: Pipeline doesn't want to pause.<br>
          ERROR: from element
          /GstPipeline:pipeline0/GstGdkPixbufOverlay:gdkpixbufoverlay0:
          Could not load overlay image.<br>
          Additional debug info:<br>
../../../gst-plugins-good-1.6.3/ext/gdk_pixbuf/gstgdkpixbufoverlay.c(508):
          gst_gdk_pixbuf_overlay_start ():
          /GstPipeline:pipeline0/GstGdkPixbufOverlay:gdkpixbufoverlay0:<br>
          Couldn't recognize the image file format for file 'image.png'<br>
          Setting pipeline to NULL ...<br>
          Freeing pipeline ...</font><br>
        <br>
        So I tried to run the command advised, but I did not work
        either. I took a look at the output:<br>
        <br>
        <font face="Courier New, Courier, monospace">/usr/lib/gdk-pixbuf-2.0/gdk-pixbuf-query-loaders
          <br>
          # GdkPixbuf Image Loader Modules file<br>
          # Automatically generated file, do not edit<br>
          # Created by gdk-pixbuf-query-loaders from gdk-pixbuf-2.32.3<br>
          #<br>
          # LoaderDir = /usr/lib/gdk-pixbuf-2.0/2.10.0/loaders<br>
          #</font><br>
        <br>
        And the output is full of comments.<br>
        <br>
        I checked my configuration on yocto:<br>
        <font face="Courier New, Courier, monospace"># bitbake -e
          gdk-pixbuf | grep ^PACKAGECONFIG=<br>
          PACKAGECONFIG="png jpeg"</font><br>
        <br>
        So the recipe seems to be correctly configured, but I don't have
        the libraries on the image (eg libpixbufloader-png.so). I've
        tried to add all gtk recipes to my image, but I don't have the
        lipixbufloader-*.so libraries.<br>
        <br>
        Did I miss something on my configuration? <br>
        <br>
        Thank you, <br>
        Pierre-Olivier<br>
        <br>
      </font></font>
  </body>
</html>

--------------AF85C61397FB9A4E4F994C34--
