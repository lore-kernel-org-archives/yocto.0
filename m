Return-Path: <diego.gonzalez@horus.es>
Received: from correo.horus.es (correo.horus.es [2.139.157.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6656E01655
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 02:28:49 -0700 (PDT)
Received: from [172.30.250.16] (172.30.250.254) by horus27 (Axigen)
	with (CAMELLIA256-SHA encrypted) ESMTPSA id 00E4C2;
	Fri, 27 Sep 2013 11:28:45 +0200
Message-ID: <52454FD1.4010002@horus.es>
Date: Fri, 27 Sep 2013 11:28:49 +0200
From: diego <diego.gonzalez@horus.es>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:17.0)
	Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1380183255689466500@horus.es>
In-Reply-To: <1380183255689466500@horus.es>
X-AxigenVirus-Level: 1
X-AxigenSpam-Level: 4
Subject: Re: Gstreamer mfw_isink
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
X-List-Received-Date: Fri, 27 Sep 2013 09:28:50 -0000
Content-Type: multipart/alternative;
	boundary="------------010808020301060907000901"

--------------010808020301060907000901
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

El 26/09/2013 10:14, Diego Gonzalez escribió:
> Hello,
>
> I'm working with gstreamer using fsl-image-gui  and I tried  the next 
> tutorial (Multi-Overlay) 
> https://community.freescale.com/docs/DOC-93788  . However when I try 
> to use *mfw_isink, *gstreamer tells me :
>
> WARNING: erroneous pipeline: no element "mfw_isink"
>
> So if I inspect (gst-inspect | grep "isink"), you'll see this element 
> is not installed:
>
> alsa:  alsasink: Audio sink (ALSA)
> soup:  souphttpclientsink: HTTP client sink
> xvimagesink:  xvimagesink: Video sink
> playback:  playsink: Player Sink
> gio:  giosink: GIO sink
> gio:  giostreamsink: GIO stream sink
> autodetect:  autovideosink: Auto video sink
> autodetect:  autoaudiosink: Auto audio sink
> v4lsink.imx:  mfw_v4lsink: v4l2 video sink
> coreelements:  fakesink: Fake Sink
> coreelements:  fdsink: Filedescriptor Sink
> coreelements:  filesink: File Sink
> tcp:  tcpclientsink: TCP client sink
> tcp:  tcpserversink: TCP server sink
> tcp:  multifdsink: Multi filedescriptor sink
> fbdevsink:  fbdevsink: fbdev video sink
>
> How can I add it ?
> **
>
> Regards,
>
> Diego González González
>
> diego.gonzalez@horus.es <mailto:enrique.fernandez@horus.es>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Hello everybody,

I didn't specified my branch and hardware in the last e-mail, but we're 
usingdylan branch for iMX6Q SabreLite board.

We discovered that gst-fsl-plugin is not including the sink in the next 
directory : 
~/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plugin/3.0.5-r9.3/gst-fsl-plugins-3.0.5/src/misc/

The v4lsink folder is compiled , however isink folderis not compiled.

Any clues how to add it?


-- 
Diego González González
Dpto. de Control Industrial
  
HORUS HARDWARE S.A.
Pol Ind Europolis C/Berna nº4
28232 Las Rozas de Madrid
diego.gonzalez@horus.es


--------------010808020301060907000901
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">El 26/09/2013 10:14, Diego Gonzalez
      escribi&oacute;:<br>
    </div>
    <blockquote cite="mid:1380183255689466500@horus.es" type="cite">
      <style id="axi-htmleditor-style" type="text/css">p { margin: 0px; }</style>Hello,<br>
      <br>
      I'm working with gstreamer using fsl-image-gui&nbsp; and I tried&nbsp; the
      next tutorial (Multi-Overlay)
      <a class="moz-txt-link-freetext" href="https://community.freescale.com/docs/DOC-93788">https://community.freescale.com/docs/DOC-93788</a>&nbsp; . However when I
      try to use <span style="color: #000000;"><strong>mfw_isink,&nbsp; </strong>gstreamer
        tells me :<br>
        <br>
        WARNING: erroneous pipeline: no element "mfw_isink"<br>
        <br>
        So if I inspect (gst-inspect | grep "isink"), you'll see this
        element is not installed:<br>
        <br>
      </span>
      <div class="x-axi-signature">alsa:&nbsp; alsasink: Audio sink (ALSA)<br>
        soup:&nbsp; souphttpclientsink: HTTP client sink<br>
        xvimagesink:&nbsp; xvimagesink: Video sink<br>
        playback:&nbsp; playsink: Player Sink<br>
        gio:&nbsp; giosink: GIO sink<br>
        gio:&nbsp; giostreamsink: GIO stream sink<br>
        autodetect:&nbsp; autovideosink: Auto video sink<br>
        autodetect:&nbsp; autoaudiosink: Auto audio sink<br>
        v4lsink.imx:&nbsp; mfw_v4lsink: v4l2 video sink<br>
        coreelements:&nbsp; fakesink: Fake Sink<br>
        coreelements:&nbsp; fdsink: Filedescriptor Sink<br>
        coreelements:&nbsp; filesink: File Sink<br>
        tcp:&nbsp; tcpclientsink: TCP client sink<br>
        tcp:&nbsp; tcpserversink: TCP server sink<br>
        tcp:&nbsp; multifdsink: Multi filedescriptor sink<br>
        fbdevsink:&nbsp; fbdevsink: fbdev video sink<br>
        <br>
        How can I add it ?&nbsp; <br>
        <strong></strong>
        <div class="x-axi-signature" style="; font-size: 10pt;
          font-family: Arial;"><br>
          Regards,<br>
          <br>
          Diego Gonz&aacute;lez Gonz&aacute;lez<br>
          <br>
          <div style="text-align: left;"><a moz-do-not-send="true"
              id="ext-gen5000" href="mailto:enrique.fernandez@horus.es">diego.gonzalez@horus.es</a></div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
    </blockquote>
    <span style="mso-ansi-language:EN-US" lang="EN-US">Hello everybody,<o:p></o:p></span><br>
    <br>
    <span style="mso-ansi-language:EN-US" lang="EN-US">I didn&#8217;t
      specified my branch and hardware <span style="mso-spacerun:yes">&nbsp;</span>in
      the last e-mail, but we&#8217;re using<span style="mso-spacerun:yes">&nbsp; </span>dylan
      branch for iMX6Q SabreLite board.<o:p></o:p></span><br>
    <br>
    <span style="mso-ansi-language:EN-US" lang="EN-US">We discovered
      that gst-fsl-plugin is not including the sink in the next
      directory <span style="mso-spacerun:yes">&nbsp;</span>:
~/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/gst-fsl-plugin/3.0.5-r9.3/gst-fsl-plugins-3.0.5/src/misc/<o:p></o:p></span><br>
    <br>
    <span style="mso-ansi-language:EN-US" lang="EN-US">The v4lsink
      folder is compiled , however isink folder<span
        style="mso-spacerun:yes">&nbsp; </span>is not compiled.<o:p></o:p></span><br>
    <br>
    <span style="mso-ansi-language:EN-US" lang="EN-US">Any clues how to
      add it?<o:p></o:p></span><br>
    <div class="moz-text-html" lang="x-western">
      <link rel="File-List"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C05%5Cclip_filelist.xml">
      <link rel="themeData"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C05%5Cclip_themedata.thmx">
      <link rel="colorSchemeMapping"
href="file:///C:%5CUsers%5CHorusHP%5CAppData%5CLocal%5CTemp%5Cmsohtmlclip1%5C05%5Cclip_colorschememapping.xml">
    </div>
    <br>
    <br>
    <pre class="moz-signature" cols="72">-- 
Diego Gonz&aacute;lez Gonz&aacute;lez
Dpto. de Control Industrial
 
HORUS HARDWARE S.A.
Pol Ind Europolis C/Berna n&ordm;4
28232 Las Rozas de Madrid
<a class="moz-txt-link-abbreviated" href="mailto:diego.gonzalez@horus.es">diego.gonzalez@horus.es</a></pre>
  </body>
</html>

--------------010808020301060907000901--
