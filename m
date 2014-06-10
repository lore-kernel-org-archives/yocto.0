Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B839AE00BBA; Tue, 10 Jun 2014 02:00:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53574E00B0B
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 01:59:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 69D9D27E036;
	Tue, 10 Jun 2014 08:59:53 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 3ut6AQxpBdy0; Tue, 10 Jun 2014 08:58:51 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 2462A27E02F;
	Tue, 10 Jun 2014 08:58:51 +0000 (UTC)
Message-ID: <5396C8C8.4060303@dynamicdevices.co.uk>
Date: Tue, 10 Jun 2014 09:58:48 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Jim Rafert <jimr@spectralogic.com>
References: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I create a recipe for laying down post-build config files?
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
X-List-Received-Date: Tue, 10 Jun 2014 09:00:06 -0000
Content-Type: multipart/alternative;
	boundary="------------040601000204000009000703"

--------------040601000204000009000703
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 09/06/2014 22:44, Jim Rafert wrote:
> I'm trying to gather all my post-build tweaks into a recipe that will
> be built as part of an upper-level layer, so that they are installed
> after the meta layer is processed.  Many of these could be
> accomplished as part of .bbappend files for the recipes that
> originally supply the config files, but I wanted to gather all my
> customizations in one spot, so that they're easy to find.
>
> The recipe doesn't actually build anything, so there's no do_build task.
>
> This is surely something that is commonly wanted.
>
> Here's my current recipe, in spectra-postbuild_0.1.bb.
>
> When I try to build an image, the build fails with
> ERROR: QA Issue: spectra-postbuild: Files/directories were installed
> but not shipped
>   /RELEASE-NOTES.txt
>
> When I disable the installed-vs-shipped QA test,  it fails later when
> it can't find a package file.
>
> I must be missing something critical here?
> SUMMARY = "Post processing of configuration files for SpectraOS"
> SECTION = "base"
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"
> RDEPENDS_${PN} = "initscripts"
> PR = "r0"
>
> SRC_URI = "file://inittab \
>        file://fstab \
>        file://rsyslog.conf \
>        file://grub.cfg \
>        file://mount.sh \
>        file://RELEASE-NOTES.txt \

FILES_${PN} =  "/RELEASE_NOTES.txt /Spectra-OS-Version "

RELEASE-NOTES vs RELEASE_NOTES

Cheers,

Alex

--------------040601000204000009000703
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 09/06/2014 22:44, Jim Rafert wrote:<br>
    </div>
    <blockquote
      cite="mid:86196249137E0843B2E0673D4F731E0CAB521799@reactor.sldomain.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">I'm trying to gather all my post-build
        tweaks into a recipe that will be built as part of an
        upper-level layer, so that they are installed after the meta
        layer is processed.&nbsp; Many of these could be accomplished as part
        of .bbappend files for the recipes that originally supply the
        config files, but I wanted to gather all my customizations in
        one spot, so that they're easy to find.<br>
        <br>
        The recipe doesn't actually build anything, so there's no
        do_build task.<br>
        <br>
        This is surely something that is commonly wanted.<br>
        <br>
        Here's my current recipe, in spectra-postbuild_0.1.bb.<br>
        <br>
        When I try to build an image, the build fails with <br>
        ERROR: QA Issue: spectra-postbuild: Files/directories were
        installed but not shipped<br>
        &nbsp; /RELEASE-NOTES.txt<br>
        <br>
        When I disable the installed-vs-shipped QA test,&nbsp; it fails later
        when it can't find a package file.<br>
        <br>
        I must be missing something critical here?<br>
        <div>SUMMARY = "Post processing of configuration files for
          SpectraOS"<br>
          SECTION = "base"<br>
          LICENSE = "GPLv2"<br>
          LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4">"file://${WORKDIR}/COPYRIGHT;md5=349c872e0066155e1818b786938876a4"</a><br>
          RDEPENDS_${PN} = "initscripts"<br>
          PR = "r0"<br>
          <br>
          SRC_URI = "<a class="moz-txt-link-freetext" href="file://inittab">file://inittab</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://fstab">file://fstab</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://rsyslog.conf">file://rsyslog.conf</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://grub.cfg">file://grub.cfg</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://mount.sh">file://mount.sh</a> \<br>
          &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <a class="moz-txt-link-freetext" href="file://RELEASE-NOTES.txt">file://RELEASE-NOTES.txt</a> \<br>
        </div>
      </div>
    </blockquote>
    <br>
    FILES_${PN} =&nbsp; "/RELEASE_NOTES.txt /Spectra-OS-Version "<br>
    <br>
    RELEASE-NOTES vs RELEASE_NOTES<br>
    <br>
    Cheers,<br>
    <br>
    Alex
  </body>
</html>

--------------040601000204000009000703--
