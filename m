Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D42DDE00BA1; Wed, 21 Mar 2018 09:06:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD9BE00744
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 09:06:17 -0700 (PDT)
Received: by mail-pl0-f46.google.com with SMTP id k22-v6so3385230pls.6
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 09:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=cbeAOrLjBWlK5AWUurpdBKt6V5iAEw2uPewExNo4kIE=;
	b=EJdsLxmx92wBRNBibuqEgYD72ewyo5fznHqLdTHAYHNaSGnfiVnlTaLDdB79RtxvTn
	5kFEH3rg7jD9XxIj3U47ZWJTfU4wgJiN8k4oxlJ1961j3ShRrIqxSNYh3J0+8KzUd1WS
	w5d0vNLUiQZHunR9S4yWqBzgoJnuXGg2bAHpdja7vncHXVjh6QiO8LxX+A60a1ktx2jX
	5k/WpZfwVMX/WJ1KHoA4A3BwNg3ysw7pcrqucoQsdSOQoYvpOAy/T+RB0D/GEURmPLfd
	y12yrHGZCQUc43rPIZCm2osuCauj+NQqkp2xTMu9ZgJVu4sOlrGezmCgAxtmR5j/OS3J
	cvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=cbeAOrLjBWlK5AWUurpdBKt6V5iAEw2uPewExNo4kIE=;
	b=hj5fAyVMnL3+2ZKj6bbREwcAfG52MFWIiM7lzjNDl3LYwpWEU87qGY7gO+inBmKuOr
	7qkr+94Tu93NcgzGm782SGGQy9+QnUXgvepGLC96uiEEhpSq6a5NLc18fGuRTOzv0Fa8
	C0kuKQHLG0h+ikkrMTAr+Tt4ZqjA9QzNH33tDHL3ApKZPLTXnzTmIg6TZsiENEpccrL5
	9/SlWzMrxzSLHeoZaColr2tLxKVBYXbSUcphYuLcTK0qG+qdvqkRtaRVM++EenLghvpY
	KuTZKDcE+l0J5bHVbasz7fdcAyAefnyY2H1XO33tx/JUXWGJjhT3M0v/84HWEcD/zcCt
	kFGQ==
X-Gm-Message-State: AElRT7H8OhqtQIz2+tUQxacHIF9GaGF/ZHFgCoGVgHkF65AtW5jAijnX
	PvUJDPSVU4XbDBCUUBwTkYsrTxsJFyw=
X-Google-Smtp-Source: AG47ELulxovBFVM+oReiMRt209BaafKjs4LJGxFuylt5YzfJySAC2ZGVmaqgIJGcgCoKXc1RKPm0cw==
X-Received: by 2002:a17:902:680c:: with SMTP id
	h12-v6mr21918800plk.46.1521648376226; 
	Wed, 21 Mar 2018 09:06:16 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:a1c1:eb3f:f249:aed1?
	([2601:202:4000:1184:a1c1:eb3f:f249:aed1])
	by smtp.gmail.com with ESMTPSA id
	z85sm9707312pfd.104.2018.03.21.09.06.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Mar 2018 09:06:14 -0700 (PDT)
To: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>,
	yocto@yoctoproject.org
References: <1521528644-4341-1-git-send-email-jkrishnanjanappa@mvista.com>
	<CAD3vsf5X5Pe4wP-31XhszNwsO19YWW2FTZuHu5r8ZptyXcWg=A@mail.gmail.com>
From: akuster <akuster@mvista.com>
Message-ID: <6b281e5c-3845-0e30-3f3a-054bd8ae3eb7@mvista.com>
Date: Wed, 21 Mar 2018 09:06:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAD3vsf5X5Pe4wP-31XhszNwsO19YWW2FTZuHu5r8ZptyXcWg=A@mail.gmail.com>
Subject: Re: [meta-security][rocko][PATCH] clamav: Add missing clamav.service file to SRC_URI
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
X-List-Received-Date: Wed, 21 Mar 2018 16:06:18 -0000
Content-Type: multipart/alternative;
	boundary="------------24D9D5226C30768933B882E3"
Content-Language: en-US

--------------24D9D5226C30768933B882E3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 03/20/2018 09:28 PM, Jagadeesh Krishnanjanappa wrote:
> Please ignore this patch, it gives an error as it is unable to
> inherit multilib-alternatives.This class is part of our internal layer.

This patch still has value. it addresses the systemd service file
installation.
- armin
>
> Regards,
> Jagadeesh
>
> On Tue, Mar 20, 2018 at 12:20 PM, Jagadeesh Krishnanjanappa
> <jkrishnanjanappa@mvista.com <mailto:jkrishnanjanappa@mvista.com>> wrote:
>
>     This solves the below error when systemd is used as init manager,
>     -- snip --
>     ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav value
>     clamav.service does not exist
>     ERROR: clamav-0.99.2-r0 do_package: Function failed:
>     systemd_populate_packages
>     -- snip --
>
>     Other issues:
>     1. Ship /lib/systemd/system/clamav-freshclam.service into
>     ${PN}-freshclam
>        package, to solve below warning:
>     -- snip --
>     [10240] WARNING: QA Issue: clamav: Files/directories were
>     installed but not shipped in any package:
>       /lib/systemd/system/clamav-freshclam.service
>     -- snip --
>
>     2. Solve rpm conflict error in do_populate_sdk, when clamav and
>     mlib-clamav
>        are specified using IMAGE_INSTALL.
>     -- snip --
>     do_populate_sdk fails with below error:
>       file /usr/bin/clamav-config conflicts between attempted installs
>     of lib32-clamav-dev-0.99.2-r0.i586 and clamav-dev-0.99.2-r0.corei7_64
>     -- snip --
>
>     Signed-off-by: Jagadeesh Krishnanjanappa
>     <jkrishnanjanappa@mvista.com <mailto:jkrishnanjanappa@mvista.com>>
>     ---
>      recipes-security/clamav/clamav_0.99.2.bb
>     <http://clamav_0.99.2.bb> | 11 +++++++++--
>      1 file changed, 9 insertions(+), 2 deletions(-)
>
>     diff --git a/recipes-security/clamav/clamav_0.99.2.bb
>     <http://clamav_0.99.2.bb>
>     b/recipes-security/clamav/clamav_0.99.2.bb <http://clamav_0.99.2.bb>
>     index 5dfda8f..d7aa6d0 100644
>     --- a/recipes-security/clamav/clamav_0.99.2.bb
>     <http://clamav_0.99.2.bb>
>     +++ b/recipes-security/clamav/clamav_0.99.2.bb
>     <http://clamav_0.99.2.bb>
>     @@ -14,6 +14,7 @@ SRC_URI =
>     "git://github.com/vrtadmin/clamav-devel;branch=${PV}
>     <http://github.com/vrtadmin/clamav-devel;branch=$%7BPV%7D> \
>          file://clamd.conf \
>          file://freshclam.conf \
>          file://volatiles.03_clamav \
>     +    file://${BPN}.service \
>          "
>
>      SRC_URI[md5sum] = "61b51a04619aeafd965892a53f86d192"
>     @@ -26,7 +27,7 @@ SO_VER = "7.1.1"
>
>      EXTRANATIVEPATH += "chrpath-native"
>
>     -inherit autotools-brokensep pkgconfig useradd systemd
>     +inherit autotools-brokensep pkgconfig useradd systemd
>     multilib-alternatives
>
>      UID = "clamav"
>      GID = "clamav"
>     @@ -90,8 +91,13 @@ do_install_append() {
>          install -m 0644 ${WORKDIR}/volatiles.03_clamav 
>     ${D}${sysconfdir}/default/volatiles/volatiles.03_clamav
>          sed -i -e 's#${STAGING_DIR_HOST}##g'
>     ${D}${libdir}/pkgconfig/libclamav.pc
>          rm ${D}/${libdir}/libclamav.so
>     +    if
>     ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};then
>     +       install -D -m 0644 ${WORKDIR}/clamav.service
>     ${D}${systemd_unitdir}/system/clamav.service
>     +    fi
>      }
>
>     +MULTILIB_ALTERNATIVES_${PN}-dev = "${bindir}/clamav-config"
>     +
>      pkg_postinst_${PN} () {
>          if [ -z "$D" ] && [ -e /etc/init.d/populate-volatile.sh ] ; then
>              ${sysconfdir}/init.d/populate-volatile.sh update
>     @@ -126,7 +132,8 @@ FILES_${PN}-freshclam = "${bindir}/freshclam \
>                              ${sysconfdir}/clamav
>     ${sysconfdir}/default/volatiles \
>                              ${localstatedir}/lib/clamav \
>                              ${docdir}/${PN}-freshclam
>     ${mandir}/man1/freshclam.* \
>     -                        ${mandir}/man5/freshclam.conf.*"
>     +                        ${mandir}/man5/freshclam.conf.* \
>     +                       
>     ${systemd_unitdir}/system/clamav-freshclam.service"
>
>      FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la \
>                          ${libdir}/pkgconfig/*.pc \
>     --
>     2.7.4
>
>
>
>


--------------24D9D5226C30768933B882E3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/20/2018 09:28 PM, Jagadeesh
      Krishnanjanappa wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAD3vsf5X5Pe4wP-31XhszNwsO19YWW2FTZuHu5r8ZptyXcWg=A@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div>Please ignore this patch, it gives an error as it is
            unable to <br>
            inherit multilib-alternatives.This class is part of our
            internal layer.<br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    This patch still has value. it addresses the systemd service file
    installation.<br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CAD3vsf5X5Pe4wP-31XhszNwsO19YWW2FTZuHu5r8ZptyXcWg=A@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          Regards,<br>
        </div>
        Jagadeesh<br>
      </div>
      <div class="gmail_extra"><br>
        <div class="gmail_quote">On Tue, Mar 20, 2018 at 12:20 PM,
          Jagadeesh Krishnanjanappa <span dir="ltr">&lt;<a
              href="mailto:jkrishnanjanappa@mvista.com" target="_blank"
              moz-do-not-send="true">jkrishnanjanappa@mvista.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">This
            solves the below error when systemd is used as init manager,<br>
            -- snip --<br>
            ERROR: clamav-0.99.2-r0 do_package: SYSTEMD_SERVICE_clamav
            value clamav.service does not exist<br>
            ERROR: clamav-0.99.2-r0 do_package: Function failed:
            systemd_populate_packages<br>
            -- snip --<br>
            <br>
            Other issues:<br>
            1. Ship /lib/systemd/system/clamav-<wbr>freshclam.service
            into ${PN}-freshclam<br>
               package, to solve below warning:<br>
            -- snip --<br>
            [10240] WARNING: QA Issue: clamav: Files/directories were
            installed but not shipped in any package:<br>
              /lib/systemd/system/clamav-<wbr>freshclam.service<br>
            -- snip --<br>
            <br>
            2. Solve rpm conflict error in do_populate_sdk, when clamav
            and mlib-clamav<br>
               are specified using IMAGE_INSTALL.<br>
            -- snip --<br>
            do_populate_sdk fails with below error:<br>
              file /usr/bin/clamav-config conflicts between attempted
            installs of lib32-clamav-dev-0.99.2-r0.<wbr>i586 and
            clamav-dev-0.99.2-r0.corei7_64<br>
            -- snip --<br>
            <br>
            Signed-off-by: Jagadeesh Krishnanjanappa &lt;<a
              href="mailto:jkrishnanjanappa@mvista.com"
              moz-do-not-send="true">jkrishnanjanappa@mvista.com</a>&gt;<br>
            ---<br>
             recipes-security/clamav/<a href="http://clamav_0.99.2.bb"
              rel="noreferrer" target="_blank" moz-do-not-send="true">clamav<wbr>_0.99.2.bb</a>
            | 11 +++++++++--<br>
             1 file changed, 9 insertions(+), 2 deletions(-)<br>
            <br>
            diff --git a/recipes-security/clamav/<a
              href="http://clamav_0.99.2.bb" rel="noreferrer"
              target="_blank" moz-do-not-send="true">clam<wbr>av_0.99.2.bb</a>
            b/recipes-security/clamav/<a href="http://clamav_0.99.2.bb"
              rel="noreferrer" target="_blank" moz-do-not-send="true">clam<wbr>av_0.99.2.bb</a><br>
            index 5dfda8f..d7aa6d0 100644<br>
            --- a/recipes-security/clamav/<a
              href="http://clamav_0.99.2.bb" rel="noreferrer"
              target="_blank" moz-do-not-send="true">clam<wbr>av_0.99.2.bb</a><br>
            +++ b/recipes-security/clamav/<a
              href="http://clamav_0.99.2.bb" rel="noreferrer"
              target="_blank" moz-do-not-send="true">clam<wbr>av_0.99.2.bb</a><br>
            @@ -14,6 +14,7 @@ SRC_URI = "git://<a
              href="http://github.com/vrtadmin/clamav-devel;branch=$%7BPV%7D"
              rel="noreferrer" target="_blank" moz-do-not-send="true">github.com/vrtadmin/<wbr>clamav-devel;branch=${PV}</a>
            \<br>
                 <a class="moz-txt-link-freetext" href="file://clamd.conf">file://clamd.conf</a> \<br>
                 <a class="moz-txt-link-freetext" href="file://freshclam.conf">file://freshclam.conf</a> \<br>
                 <a class="moz-txt-link-freetext" href="file://volatiles.03_clamav">file://volatiles.03_clamav</a> \<br>
            +    <a class="moz-txt-link-freetext" href="file://$">file://$</a>{BPN}.service \<br>
                 "<br>
            <br>
             SRC_URI[md5sum] = "<wbr>61b51a04619aeafd965892a53f86d1<wbr>92"<br>
            @@ -26,7 +27,7 @@ SO_VER = "7.1.1"<br>
            <br>
             EXTRANATIVEPATH += "chrpath-native"<br>
            <br>
            -inherit autotools-brokensep pkgconfig useradd systemd<br>
            +inherit autotools-brokensep pkgconfig useradd systemd
            multilib-alternatives<br>
            <br>
             UID = "clamav"<br>
             GID = "clamav"<br>
            @@ -90,8 +91,13 @@ do_install_append() {<br>
                 install -m 0644 ${WORKDIR}/volatiles.03_clamav 
            ${D}${sysconfdir}/default/<wbr>volatiles/volatiles.03_clamav<br>
                 sed -i -e 's#${STAGING_DIR_HOST}##g'
            ${D}${libdir}/pkgconfig/<wbr>libclamav.pc<br>
                 rm ${D}/${libdir}/libclamav.so<br>
            +    if ${@bb.utils.contains('DISTRO_<wbr>FEATURES','systemd','true','<wbr>false',d)};then<br>
            +       install -D -m 0644 ${WORKDIR}/clamav.service
            ${D}${systemd_unitdir}/system/<wbr>clamav.service<br>
            +    fi<br>
             }<br>
            <br>
            +MULTILIB_ALTERNATIVES_${PN}-<wbr>dev =
            "${bindir}/clamav-config"<br>
            +<br>
             pkg_postinst_${PN} () {<br>
                 if [ -z "$D" ] &amp;&amp; [ -e
            /etc/init.d/populate-volatile.<wbr>sh ] ; then<br>
                     ${sysconfdir}/init.d/populate-<wbr>volatile.sh
            update<br>
            @@ -126,7 +132,8 @@ FILES_${PN}-freshclam =
            "${bindir}/freshclam \<br>
                                     ${sysconfdir}/clamav
            ${sysconfdir}/default/<wbr>volatiles \<br>
                                     ${localstatedir}/lib/clamav \<br>
                                     ${docdir}/${PN}-freshclam
            ${mandir}/man1/freshclam.* \<br>
            -                        ${mandir}/man5/freshclam.conf.<wbr>*"<br>
            +                        ${mandir}/man5/freshclam.conf.<wbr>*
            \<br>
            +                        ${systemd_unitdir}/system/<wbr>clamav-freshclam.service"<br>
            <br>
             FILES_${PN}-dev = " ${bindir}/clamav-config ${libdir}/*.la
            \<br>
                                 ${libdir}/pkgconfig/*.pc \<br>
            <span class="HOEnZb"><font color="#888888">--<br>
                2.7.4<br>
                <br>
              </font></span></blockquote>
        </div>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------24D9D5226C30768933B882E3--
