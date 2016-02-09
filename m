Return-Path: <nbelfin@radiodata.biz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1630EE00C7E; Tue,  9 Feb 2016 02:26:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.radiodata.biz (smtp.radiodata.biz [78.47.114.250])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A63E00C6E
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 02:26:41 -0800 (PST)
Received: from mail (p578044f8.dip0.t-ipconnect.de [87.128.68.248])
	by smtp.radiodata.biz (Postfix) with ESMTPSA id 5DCEC60303
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 11:26:40 +0100 (CET)
Received: from [192.168.3.173] (WS72.radiodata.xx [192.168.3.173])
	by mail (Postfix) with ESMTPSA id E8DA63FD42
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 11:26:39 +0100 (CET)
To: yocto@yoctoproject.org
References: <56B99D4D.40308@radiodata.biz>
From: Norbert Belfin <nbelfin@radiodata.biz>
Message-ID: <56B9BEDF.7070700@radiodata.biz>
Date: Tue, 9 Feb 2016 11:26:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56B99D4D.40308@radiodata.biz>
Subject: Re: systemd and update-rc.d
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
X-List-Received-Date: Tue, 09 Feb 2016 10:26:45 -0000
X-Groupsio-MsgNum: 28362
Content-Type: multipart/mixed; boundary="------------020808020903000508030204"

--------------020808020903000508030204
Content-Type: multipart/alternative;
 boundary="------------020208050900080000020401"

--------------020208050900080000020401
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Okay, solved it. It turned out that systemd was not in the image package.
This separation between distro.conf and image.conf is little error-prone
to me.
But now it works.
Greetings

Am 09.02.2016 um 09:03 schrieb Norbert Belfin:
> Hello,
>
> I "activated" systemd as described in the development manual
> <http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager>
> .
> My distro.conf (excerpt):
>
>     /DISTRO_FEATURES = "systemd php ${DISTRO_FEATURES_DEFAULT}
>     ${DISTRO_FEATURES_LIBC} $mtd-utils"/
>     /DISTRO_FEATURES_remove = "x11"/
>     /DISTRO_FEATURES_BACKFILL_CONSIDERED += " pulseaudio sysvinit "/
>
>     /VIRTUAL-RUNTIME_init_manager = "systemd"/
>     /VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>     /
>
> When I build my distribution the following error appears while do_rootfs:
>
>     /Collected errors:/
>     / * satisfy_dependencies_for: Cannot satisfy the following
>     dependencies for packagegroup-core-boot:/
>     / *     update-rc.d * /
>
>
> I checked which packages add update-rc.d, and systemd is one of them.
> How can I resolve this issue?
>
>
> Thanks for your help.
>
>
>

-- 

---------------------------------------------------------------------
RADIODATA GmbH
Ringbahnstraße 32-34
12099 Berlin

Telefon Zentrale:      +49 (0)30 756 81 -3
Fax:                   +49 (0)30 756 81 -599
e- Mail:               nbelfin@radiodata.biz
Homepage:              www.radiodata.biz

USt_IdNr.:             DE 195663499
WEEE-Reg.-Nr.:         DE 63967380


Sitz der Gesellschaft: Berlin
Registergericht:       Amtsgericht Charlottenburg HRB  Nr.: 67865
Geschäftsführer:       Hans- Joachim Langermann


--------------020208050900080000020401
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Okay, solved it. It turned out that systemd was not in the image
    package.<br>
    This separation between distro.conf and image.conf is little
    error-prone to me.<br>
    But now it works.<br>
    Greetings<br>
    <br>
    <div class="moz-cite-prefix">Am 09.02.2016 um 09:03 schrieb Norbert
      Belfin:<br>
    </div>
    <blockquote cite="mid:56B99D4D.40308@radiodata.biz" type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      Hello,<br>
      <br>
      I "activated" systemd as described in the <a
        moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#selecting-an-initialization-manager">development

        manual</a> .<br>
      My distro.conf (excerpt):<br>
      <blockquote><i>DISTRO_FEATURES = "systemd php
          ${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} $mtd-utils"</i><br>
        <i>DISTRO_FEATURES_remove = "x11"</i><br>
        <i>DISTRO_FEATURES_BACKFILL_CONSIDERED += " pulseaudio sysvinit
          "</i><br>
        <br>
        <i>VIRTUAL-RUNTIME_init_manager = "systemd"</i><br>
        <i>VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"<br>
        </i></blockquote>
      When I build my distribution the following error appears while
      do_rootfs:
      <blockquote><i>Collected errors:</i><br>
        <i> * satisfy_dependencies_for: Cannot satisfy the following
          dependencies for packagegroup-core-boot:</i><br>
        <i> *     update-rc.d * </i><br>
      </blockquote>
      <br>
      I checked which packages add update-rc.d, and systemd is one of
      them. How can I resolve this issue?<br>
      <br>
      <br>
      Thanks for your help.<br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 

---------------------------------------------------------------------
RADIODATA GmbH
Ringbahnstraße 32-34
12099 Berlin

Telefon Zentrale:      +49 (0)30 756 81 -3
Fax:                   +49 (0)30 756 81 -599
e- Mail:               <a class="moz-txt-link-abbreviated" href="mailto:nbelfin@radiodata.biz">nbelfin@radiodata.biz</a>
Homepage:              <a class="moz-txt-link-abbreviated" href="http://www.radiodata.biz">www.radiodata.biz</a>

USt_IdNr.:             DE 195663499
WEEE-Reg.-Nr.:         DE 63967380


Sitz der Gesellschaft: Berlin
Registergericht:       Amtsgericht Charlottenburg HRB  Nr.: 67865
Geschäftsführer:       Hans- Joachim Langermann
</pre>
  </body>
</html>

--------------020208050900080000020401--

--------------020808020903000508030204
Content-Type: text/x-vcard; charset=utf-8;
 name="nbelfin.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="nbelfin.vcf"

begin:vcard
fn:Norbert Belfin
n:Belfin;Norbert
org:RadioData GmbH;Entwicklung
email;internet:nbelfin@radiodata.biz
version:2.1
end:vcard


--------------020808020903000508030204--
