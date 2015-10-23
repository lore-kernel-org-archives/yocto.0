Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81F36E00B36; Fri, 23 Oct 2015 15:23:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE1B6E00B27
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 15:23:04 -0700 (PDT)
Received: by padhk11 with SMTP id hk11so129219285pad.1
	for <yocto@yoctoproject.org>; Fri, 23 Oct 2015 15:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type;
	bh=QzA1fHmXQ/ZMmrElHdbPEn9X8YPVNr66AgKDvtgizks=;
	b=KDnFG3Y7brhZlr7bPhuVV6ZlOz+5U9XVo7zwkyGv6OVXjp0suUXAi56uzZdzuWkoDe
	DmfFwHrIjTwGJGYQR5vpPMX+CUgdfAggGxfkSZ5zuiZq772e9yI2K+LeyEIM8EsYYE7+
	h6+hL893dgTSGVsdrlG3UIZ79JRYBiKW1oye5+rWwZkc4tuoTedC0ATglDkSdruPr64R
	+ITfBmmShss8O+zaB3sXODOtgmQcYjhdBJ32nmb0WXsNzSZ8kIWLi5uqZmpR+BQl31Y+
	G+seTDOEEFq6jIIyYAUrMa+8RFnIeXmCTWhvmzPt/9qH0QVM+ciWgIlrT2JE3Tmx36oN
	RYJQ==
X-Gm-Message-State: ALoCoQnWPyK+uoqZmhZDGbogI9o4UqVPegjanjNgxEsvwjsWd2DHtj0gHFXI+IRVAtQKJTmfimha
X-Received: by 10.68.57.235 with SMTP id l11mr7805799pbq.26.1445638983766;
	Fri, 23 Oct 2015 15:23:03 -0700 (PDT)
Received: from [192.168.1.22] (99-0-9-164.lightspeed.frokca.sbcglobal.net.
	[99.0.9.164]) by smtp.gmail.com with ESMTPSA id
	er1sm10348380pbb.6.2015.10.23.15.23.02 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Oct 2015 15:23:02 -0700 (PDT)
To: yocto@yoctoproject.org
References: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com>
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Message-ID: <562AB33D.9020203@mvista.com>
Date: Fri, 23 Oct 2015 15:22:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com>
Subject: Re: Packaging an externally built library?
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
X-List-Received-Date: Fri, 23 Oct 2015 22:23:07 -0000
Content-Type: multipart/alternative;
	boundary="------------020409000605050202060505"

--------------020409000605050202060505
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

> FILES_${PN} += " ${libdir}/*.so"
>
> If I look through the packaging logs it looks like it attampts to 
> create a bunch of different packages (cdp-fsw, cdp-fsw-dbg, 
> cdp-fsw-dev, cdp-fsw-doc, cdp-fsw-locale) but most of them end up 
> being empty except cdp-fsw-dev.  Then if I look through the RPMs there 
> is no cdp-fsw there is only a cdp-fsw-dev and cdp-fsw-dbg.
>
> Then when do_rootfs is executed it fails because it can’t find a 
> package provider for cdp-fsw.
>
> Why is it automatically creating a <xxxx>-dev package? Can I override 
> this?
>

Because the package list has PN at the end by default:
PACKAGES="${@bb.utils.contains('PTEST_ENABLED', '1', '${PN}-ptest', '', 
d)} ${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale 
${PACKAGE_BEFORE_PN} ${PN}"
and
${PN}-dev lists ${libdir}/*.so
"${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o 
${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal 
${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la"
As part of its files list.

When the packages-split directory is created, it processes the packages 
list in order extracting the files for each package. When ${PN} is 
processes "*.so" files have already been pulled
in to the ${PN}-dev package.

Normally in linux *.so files are symlinks to the actual versioned 
libraries only used for linking. You can fix the binary libraries to 
conform more correctly. If the library is using soname you will likely 
need to do this
anyways to run applications linked against it. To get the soname you 
would do:
<cross prefix>-objdump -x libz.so.1  | grep SONAME
if it gives you something like:
SONAME               libz.so.1

You would need to install the library with the name returned from 
objdump, then create a .so symlink to that library. The versioned 
library would get picked up in ${PN}.

If it is not using soname and the linked applications are really only 
looking for lib<libname>.so, then you can redefine PACKAGES to include 
just ${PN} or a subset of the normally defined
packages.

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com

--------------020409000605050202060505
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
      <o:p></o:p>
    <blockquote
cite="mid:167A17EDB344B047B2D335D8E4C5A2FAA4DE5771@EX2010-CO-02.AERO.BALL.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal">FILES_${PN} += " ${libdir}/*.so"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">If I look through the packaging logs it
          looks like it attampts to create a bunch of different packages
          (cdp-fsw, cdp-fsw-dbg, cdp-fsw-dev, cdp-fsw-doc,
          cdp-fsw-locale) but most of them end up being empty except
          cdp-fsw-dev.  Then if I look through the RPMs there is no
          cdp-fsw there is only a cdp-fsw-dev and cdp-fsw-dbg.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Then when do_rootfs is executed it fails
          because it can’t find a package provider for cdp-fsw.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Why is it automatically creating a
          &lt;xxxx&gt;-dev package? Can I override this?<o:p></o:p></p>
      </div>
    </blockquote>
    <br>
    <div class="WordSection1">Because the package list has PN at the end
      by default:<br>
      PACKAGES=<a class="moz-txt-link-rfc2396E" href="mailto:${@bb.utils.contains('PTEST_ENABLED','1','${PN}-ptest','',d)}${PN}-dbg${PN}-staticdev${PN}-dev${PN}-doc${PN}-locale${PACKAGE_BEFORE_PN}${PN}">"${@bb.utils.contains('PTEST_ENABLED', '1',
      '${PN}-ptest', '', d)} ${PN}-dbg ${PN}-staticdev ${PN}-dev
      ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"</a><br>
      and<br>
      ${PN}-dev lists ${libdir}/*.so<br>
      "${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la ${libdir}/*.o
      ${libdir}/pkgconfig ${datadir}/pkgconfig ${datadir}/aclocal
      ${base_libdir}/*.o ${libdir}/${BPN}/*.la ${base_libdir}/*.la"<br>
      As part of its files list.<br>
      <br>
      When the packages-split directory is created, it processes the
      packages list in order extracting the files for each package. When
      ${PN} is processes "*.so" files have already been pulled<br>
      in to the ${PN}-dev package.<br>
      <br>
      Normally in linux *.so files are symlinks to the actual versioned
      libraries only used for linking. You can fix the binary libraries
      to conform more correctly. If the library is using soname you will
      likely need to do this<br>
      anyways to run applications linked against it. To get the soname
      you would do:<br>
      &lt;cross prefix&gt;-objdump -x libz.so.1  | grep SONAME<br>
      if it gives you something like:<br>
      SONAME               libz.so.1<br>
      <br>
      You would need to install the library with the name returned from
      objdump, then create a .so symlink to that library. The versioned
      library would get picked up in ${PN}.<br>
      <br>
      If it is not using soname and the linked applications are really
      only looking for lib&lt;libname&gt;.so, then you can redefine
      PACKAGES to include just ${PN} or a subset of the normally defined<br>
      packages.<br>
      <br>
      -- <br>
      Jeremy A. Puhlman
      <br>
      <a class="moz-txt-link-abbreviated" href="mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>
    </div>
  </body>
</html>

--------------020409000605050202060505--
