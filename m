Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69DD9E00BB3; Fri, 13 Jun 2014 13:49:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A4F9E00AFD
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 13:49:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id CB56F27E02B;
	Fri, 13 Jun 2014 20:49:15 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id cduNetw60pDD; Fri, 13 Jun 2014 20:49:15 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CBBBC27E02A;
	Fri, 13 Jun 2014 20:49:14 +0000 (UTC)
Message-ID: <539B63C4.1030309@dynamicdevices.co.uk>
Date: Fri, 13 Jun 2014 21:49:08 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Morgan <chmorgan@gmail.com>
References: <CAAPegz2DCZGTKfyJBGMytu_zofk2K9CSJMbVtiKHdS2eysZgrQ@mail.gmail.com>
	<CAMKF1sr_LaaVnd8U_7XP3QmAn6Q7OTuVmkb+G3zxz3edXEkRkw@mail.gmail.com>
	<539B54CF.90603@dynamicdevices.co.uk>
	<CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com>
In-Reply-To: <CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: virtual/mesa, virtual/libgl provided by multiple packages
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
X-List-Received-Date: Fri, 13 Jun 2014 20:49:32 -0000
Content-Type: multipart/alternative;
	boundary="------------050203000101040609090305"

--------------050203000101040609090305
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 13/06/2014 21:27, Chris Morgan wrote:
> On Fri, Jun 13, 2014 at 3:45 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
>
>
>     On 28/05/2014 21:31, Khem Raj wrote:
>     > On Tue, May 27, 2014 at 3:44 PM, Chris Morgan
>     <chmorgan@gmail.com <mailto:chmorgan@gmail.com>> wrote:
>     >> Building a custom image with wayland and weston based on
>     core-image,
>     >> seeing issues with virtual/mesa and virtual/libgl being provided by
>     >> multiple packages. Not sure if I'm doing something wrong here, like
>     >> not specifying packages that provide those virtual targets?
>     >>
>     >>
>     > you got to set PREFERRED_PROVIDERS for jpeg and virtual/libgl to be
>     > either mesa or mesa-gl
>
>     Did you find a solution to this Chris? I'm seeing the same thing
>     with a
>     meta-raspberrypi build of core-image-weston.
>
>     The preferred provider seems set correctly by the RPi layer though
>
>     (rpi-default-providers.inc)
>     PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>
>     Thanks,
>
>     Alex
>
>
>
> Hi Alex.
>
> I haven't actually gotten back to this but I (or someone else I work
> with) is going to be getting back to it in the next few weeks as we
> try to get accelerated graphics on the bbb.
>
> Chris
>  
>

I think I'm getting there with it now.

core-image-weston pulls in clutter which wants cogl.

I think these two lines in cogl-1.0.inc are causing mesa to be pulled in
incorrectly, but I'm not sure what ERDEPENDS does...

# Extra RDEPENDS for PACKAGECONFIG
# This has to be explictly listed, because cogl dlopens the backends
ERDEPENDS_GL    = "libgl"
ERDEPENDS_GLES2 = "libgles2"

Regards,

Alex




--------------050203000101040609090305
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 13/06/2014 21:27, Chris Morgan
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAAPegz0HCvT9fNMfp0smuuLLTf0XU0zeD0G=picxNNbquEA5og@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra">
          <div class="gmail_quote">On Fri, Jun 13, 2014 at 3:45 PM, Alex
            J Lennon <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:ajlennon@dynamicdevices.co.uk"
                target="_blank">ajlennon@dynamicdevices.co.uk</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div class=""><br>
                On 28/05/2014 21:31, Khem Raj wrote:<br>
                &gt; On Tue, May 27, 2014 at 3:44 PM, Chris Morgan &lt;<a
                  moz-do-not-send="true"
                  href="mailto:chmorgan@gmail.com">chmorgan@gmail.com</a>&gt;
                wrote:<br>
                &gt;&gt; Building a custom image with wayland and weston
                based on core-image,<br>
                &gt;&gt; seeing issues with virtual/mesa and
                virtual/libgl being provided by<br>
                &gt;&gt; multiple packages. Not sure if I'm doing
                something wrong here, like<br>
                &gt;&gt; not specifying packages that provide those
                virtual targets?<br>
                &gt;&gt;<br>
                &gt;&gt;<br>
                &gt; you got to set PREFERRED_PROVIDERS for jpeg and
                virtual/libgl to be<br>
                &gt; either mesa or mesa-gl<br>
                <br>
              </div>
              Did you find a solution to this Chris? I'm seeing the same
              thing with a<br>
              meta-raspberrypi build of core-image-weston.<br>
              <br>
              The preferred provider seems set correctly by the RPi
              layer though<br>
              <br>
              (rpi-default-providers.inc)<br>
              PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"<br>
              <br>
              Thanks,<br>
              <br>
              Alex<br>
              <br>
            </blockquote>
            <div><br>
            </div>
            <div><br>
            </div>
            <div>Hi Alex.</div>
            <div><br>
            </div>
            <div>I haven't actually gotten back to this but I (or
              someone else I work with) is going to be getting back to
              it in the next few weeks as we try to get accelerated
              graphics on the bbb.</div>
            <div><br>
            </div>
            <div>Chris</div>
            <div> </div>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    <br>
    <div class="moz-signature">I think I'm getting there with it now.<br>
      <br>
      core-image-weston pulls in clutter which wants cogl. <br>
      <br>
      I think these two lines in cogl-1.0.inc are causing mesa to be
      pulled in incorrectly, but I'm not sure what ERDEPENDS does...<br>
      <br>
      # Extra RDEPENDS for PACKAGECONFIG<br>
      # This has to be explictly listed, because cogl dlopens the
      backends<br>
      ERDEPENDS_GL    = "libgl"<br>
      ERDEPENDS_GLES2 = "libgles2"<br>
      <br>
      Regards,<br>
      <br>
      Alex<br>
      <br>
      <br>
      <br>
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------050203000101040609090305--
