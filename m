Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D454C7EE23
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 13:21:13 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.58386.1686576065697495604
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 06:21:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=zTFmma+H;
 spf=pass (domain: baylibre.com, ip: 209.85.222.176, mailfrom: tgamblin@baylibre.com)
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-75e4497597cso365636585a.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 06:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686576064; x=1689168064;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t5Gdkl86Zap0yHdlqBmbWbqZYkpv1pvEH0w0bpkQWPM=;
        b=zTFmma+HJWcShFC50jmliQ/WpbL5rTfmxsl+cyH8Q00q0VAdbZuxS4MGYPobNnUHL7
         XlPeIzLxxxuMv0hSiL2LnIsNsI0JqEakfZ6gq5Kbvb6p3jrxXB+51/04svqQno5fyGj7
         5mzysJbdmXXrWobCCTV+HlD3Q25NmLTlH+MRFxOM4mQ3N6I2pBT5IY8ICj18WDOyjYlz
         mZ7PoH2xwKx8cd9Aw1gXikqmJjAayVyD22x5mXanvbllMA9c25F8rkSq6OAi6sW/ESUN
         MdAaueDmv6EeZVb3OM3bVV4ClLQgN1IDC0gb/syXSR0qD16t96/++tnP4hFKOTRUBsiC
         ALTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686576064; x=1689168064;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=t5Gdkl86Zap0yHdlqBmbWbqZYkpv1pvEH0w0bpkQWPM=;
        b=inVsOtnpaeYu7k/X98GKHcJLkMBUSzxhJWkLNeNvAMW/vwA/HMKeeAC2z+LHM8QVtb
         iz6Ju2WveSxLePVfFSJdW053hneNoFuv5CxqRCAx+SeRzZeE5Cmyu69eMpQ4lkEfsLqd
         VtU4EzPo8ZvaWG9ZH9cpYKDJBKNmZrZ3SGpsm80eybG4pOej+cZ8+R0TCzmEOeBOD9vn
         pEuVWv66sSoxyvqExexkNGIlfXBfRLEs5cEYmefZNCEWPlqcwr6KiR5WOTHVFVGSatuU
         gdmi3MFam7Z/fZk3vLw9mbEq/rrFQHnNkGqWfCG+cW86AbROqN0oLxdrcGh0D+pnqE7/
         UkCQ==
X-Gm-Message-State: AC+VfDzBTLGcyERDWJcjIxxfDmsDvh3+bhCkAvW+JPw+mN96gV0mm7Ag
	pDLwB8p5qFo9loe51RROYEVw8A==
X-Google-Smtp-Source: ACHHUZ5favrBiwtQcKoSF/9iT7QfmcrY+C4fvP7SyYK7qEW9RQUg1UTlgbBxmuvjNUMIn0MubohCAw==
X-Received: by 2002:a05:6214:ccc:b0:628:2d00:5301 with SMTP id 12-20020a0562140ccc00b006282d005301mr11493736qvx.39.1686576064370;
        Mon, 12 Jun 2023 06:21:04 -0700 (PDT)
Received: from ?IPV6:2001:1970:5b1f:ab00:d875:6297:4e81:e577? ([2001:1970:5b1f:ab00:d875:6297:4e81:e577])
        by smtp.gmail.com with ESMTPSA id h2-20020a0cf442000000b00623927281c2sm3192489qvm.40.2023.06.12.06.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 06:21:03 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------VMMHswEP824gvXzATtEXb7Xt"
Message-ID: <d01aa6a4-41ef-dbae-e009-1bf427a1e0f9@baylibre.com>
Date: Mon, 12 Jun 2023 09:21:02 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: AW: [yocto] Snort 2.9 into Snort 3 recipe
Content-Language: en-US
To: Rostanin Gleb SBR DIRCS <Gleb.Rostanin@zf.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <DB6PR0801MB178439F9D29338400F8910349951A@DB6PR0801MB1784.eurprd08.prod.outlook.com>
 <3e376dc9-eba2-349e-79ae-f364b7acdcc9@baylibre.com>
 <DB6PR0801MB1784F72924A0EFBF9006D1989954A@DB6PR0801MB1784.eurprd08.prod.outlook.com>
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <DB6PR0801MB1784F72924A0EFBF9006D1989954A@DB6PR0801MB1784.eurprd08.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 13:21:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60258

This is a multi-part message in MIME format.
--------------VMMHswEP824gvXzATtEXb7Xt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2023-06-12 07:33, Rostanin Gleb SBR DIRCS wrote:
>
> Hello,
>
> I did the following steps:
>
>   * Rename recipe file name to snort_3.1.62.0.bb
>   * Changed line 9 “SRC_URI = “…/snort/${BP}.tar.gz”” to
>     https://www.snort.org/downloads/snortplus/snort3-3.1.62.0.tar.gz
>   * Added correct snort3 sha256sum in line 17
>   * Added correct MD5 checksum of the snort tar ball in line 5
>
> The following error occurs in “0001-libpcap … headers.patch” file:
>
> /ERROR: Applying patch '0001-libpcap-search-sysroot-for-headers.patch' 
> on target directory 
> '/home/user/fsl-auto-yocto-bsp/build_s32g274ardb2/tmp/work/cortexa53-crypto-fsl-linux/snort/3.1.62.0-r0/snort-3.1.62.0'/
>
> /CmdError('quilt --quiltrc 
> /home/user/fsl-auto-yocto-bsp/build_s32g274ardb2/tmp/work/cortexa53-crypto-fsl-linux/snort/3.1.62.0-r0/recipe-sysroot-native/etc/quiltrc 
> push', 0, "stdout: Applying patch 
> 0001-libpcap-search-sysroot-for-headers.patch/
>
> /can't find file to patch at input line 21/
>
> /Perhaps you used the wrong -p or --strip option?/
>
> //
>
> As the patches are not written for snort 3 I tried again but deleted 
> the patches from the “.bb” file. Now the following error occurs:
>
> /DEBUG: Executing python function autotools_aclocals
> DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', 
> 'common-linux', 'common-glibc', 'aarch64-linux', 'common']
> DEBUG: Python function autotools_aclocals finished
> DEBUG: Executing shell function do_compile
> NOTE: make -j 6
> make: *** No targets specified and no makefile found. Stop.
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.///
>
> Now I am not sure where and at which point the make file should be 
> created and why it is missing. Could you give some tips on how to 
> transfer this recipe to an snort 3 recipe?
>
It looks like snort 2.x uses Autotools for setup, while 3.x uses CMake 
instead. You would have to adjust the recipe so that it uses the latter 
and passes the correct build flags for the "default" snort configuration 
(I'm not sure what those would be). You may also need to spend some time 
making sure that the changes provided by those deleted patches aren't 
still required somewhere in the new source files.

If you do 'grep -r "inherit cmake"' on openembedded-core/meta, you can 
find many examples of other recipes that use CMake for building that you 
could use as references.

> Thank you for reading
>
> G. Rostanin
>
> *Von:*Trevor Gamblin <tgamblin@baylibre.com>
> *Gesendet:* Freitag, 9. Juni 2023 18:25
> *An:* Rostanin Gleb SBR DIRCS <Gleb.Rostanin@zf.com>; 
> yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] Snort 2.9 into Snort 3 recipe
>
> On 2023-06-09 10:05, Rostanin Gleb SBR DIRCS wrote:
>
>     Hello OpenEmbedded Community,
>
>     currently I am working on implementing the Snort IDS on an
>     embedded system with the Yocto Linux OS. As OpenEmbedded already
>     provides a recipe for Snort 2.9 it is easy to install snort into
>     the OS. Unfortunately, it is not easy to change the recipe so that
>     the new Snort 3 version is installed. I tried to change the git
>     repo link and the checksum (as a simple solution try), but
>     unfortunately, I ran into multiple errors, and I am not sure at
>     which point I need to make further changes. As I could understand,
>     also a few changes to the source code of Snort must be done to
>     make it work on the Yocto OS.
>
>     Was someone already successful in implementing a recipe to install
>     the newer Snort 3 version directly on Yocto? What do I have to
>     change in the Snort 2.9 recipe to install the Snort 3 version?
>
> The errors you're seeing when you try to build Snort 3 should provide 
> a clue. If you post those, someone may be able to provide further 
> suggestions.
>
> Trevor
>
>     Of course, another solution could be cross compiling Snort for the
>     embedded system, but maybe there is already a solution for this.
>
>     I happy about any help or comment on this topic!
>
>     Kind regards
>
>     G. Rostanin
>
>
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>
>     Links: You receive all messages sent to this group.
>
>     View/Reply Online (#60239):
>     https://lists.yoctoproject.org/g/yocto/message/60239  <https://lists.yoctoproject.org/g/yocto/message/60239>
>
>     Mute This Topic: https://lists.yoctoproject.org/mt/99428914/7611679  <https://lists.yoctoproject.org/mt/99428914/7611679>
>
>     Group Owner: yocto+owner@lists.yoctoproject.org  <mailto:yocto+owner@lists.yoctoproject.org>
>
>     Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  <https://lists.yoctoproject.org/g/yocto/unsub>[tgamblin@baylibre.com  <mailto:tgamblin@baylibre.com>]
>
>     -=-=-=-=-=-=-=-=-=-=-=-
>
--------------VMMHswEP824gvXzATtEXb7Xt
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-06-12 07:33, Rostanin Gleb SBR
      DIRCS wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:DB6PR0801MB1784F72924A0EFBF9006D1989954A@DB6PR0801MB1784.eurprd08.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:6.0pt;
	margin-left:0cm;
	font-size:10.5pt;
	font-family:"Tahoma",sans-serif;
	mso-fareast-language:EN-US;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert Zchn";
	margin:0cm;
	font-size:10.0pt;
	font-family:"Courier New";}p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:6.0pt;
	margin-left:36.0pt;
	font-size:10.5pt;
	font-family:"Tahoma",sans-serif;
	mso-fareast-language:EN-US;}span.HTMLVorformatiertZchn
	{mso-style-name:"HTML Vorformatiert Zchn";
	mso-style-priority:99;
	mso-style-link:"HTML Vorformatiert";
	font-family:Consolas;
	mso-fareast-language:EN-US;}span.E-MailFormatvorlage22
	{mso-style-type:personal-reply;
	font-family:"Tahoma",sans-serif;
	color:windowtext;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}ol
	{margin-bottom:0cm;}ul
	{margin-bottom:0cm;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Hello,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">I
            did the following steps:<o:p></o:p></span></p>
        <ul style="margin-top:0cm" type="disc">
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l1 level1 lfo3"><span
              style="font-size:11.0pt" lang="EN-US">Rename recipe file
              name to snort_3.1.62.0.bb<o:p></o:p></span></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l1 level1 lfo3"><span
              style="font-size:11.0pt" lang="EN-US">Changed line 9
              “SRC_URI = “…/snort/${BP}.tar.gz”” to
              <a
                href="https://www.snort.org/downloads/snortplus/snort3-3.1.62.0.tar.gz"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://www.snort.org/downloads/snortplus/snort3-3.1.62.0.tar.gz</a><o:p></o:p></span></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l1 level1 lfo3"><span
              style="font-size:11.0pt" lang="EN-US">Added correct snort3
              sha256sum in line 17
              <o:p></o:p></span></li>
          <li class="MsoListParagraph"
            style="margin-left:0cm;mso-list:l1 level1 lfo3"><span
              style="font-size:11.0pt" lang="EN-US">Added correct MD5
              checksum of the snort tar ball in line 5<o:p></o:p></span></li>
        </ul>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">The
            following error occurs in “0001-libpcap … headers.patch”
            file:<o:p></o:p></span></p>
        <p class="MsoNormal"><i><span style="font-size:11.0pt"
              lang="EN-US">ERROR: Applying patch
              '0001-libpcap-search-sysroot-for-headers.patch' on target
              directory
'/home/user/fsl-auto-yocto-bsp/build_s32g274ardb2/tmp/work/cortexa53-crypto-fsl-linux/snort/3.1.62.0-r0/snort-3.1.62.0'<o:p></o:p></span></i></p>
        <p class="MsoNormal"><i><span style="font-size:11.0pt"
              lang="EN-US">CmdError('quilt --quiltrc
/home/user/fsl-auto-yocto-bsp/build_s32g274ardb2/tmp/work/cortexa53-crypto-fsl-linux/snort/3.1.62.0-r0/recipe-sysroot-native/etc/quiltrc
              push', 0, "stdout: Applying patch
              0001-libpcap-search-sysroot-for-headers.patch<o:p></o:p></span></i></p>
        <p class="MsoNormal"><i><span style="font-size:11.0pt"
              lang="EN-US">can't find file to patch at input line 21<o:p></o:p></span></i></p>
        <p class="MsoNormal"><i><span style="font-size:11.0pt"
              lang="EN-US">Perhaps you used the wrong -p or --strip
              option?<o:p></o:p></span></i></p>
        <p class="MsoNormal"><i><span style="font-size:11.0pt"
              lang="EN-US"><o:p> </o:p></span></i></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">As
            the patches are not written for snort 3 I tried again but
            deleted the patches from the “.bb” file. Now the following
            error occurs:<o:p></o:p></span></p>
        <p class="MsoNormal"><i><span lang="EN-US">DEBUG: Executing
              python function autotools_aclocals<br>
              DEBUG: SITE files ['endian-little', 'bit-64',
              'arm-common', 'arm-64', 'common-linux', 'common-glibc',
              'aarch64-linux', 'common']<br>
              DEBUG: Python function autotools_aclocals finished<br>
              DEBUG: Executing shell function do_compile<br>
              NOTE: make -j 6<br>
              make: *** No targets specified and no makefile found. 
              Stop.<br>
              ERROR: oe_runmake failed<br>
              WARNING: exit code 1 from a shell command.</span></i><i><span
              style="font-size:11.0pt;mso-fareast-language:DE"
              lang="EN-US"><o:p></o:p></span></i></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;mso-fareast-language:DE"
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;mso-fareast-language:DE"
            lang="EN-US">Now I am not sure where and at which point the
            make file should be created and why it is missing. Could you
            give some tips on how to transfer this recipe to an snort 3
            recipe? </span></p>
      </div>
    </blockquote>
    <p>It looks like snort 2.x uses Autotools for setup, while 3.x uses
      CMake instead. You would have to adjust the recipe so that it uses
      the latter and passes the correct build flags for the "default"
      snort configuration (I'm not sure what those would be). You may
      also need to spend some time making sure that the changes provided
      by those deleted patches aren't still required somewhere in the
      new source files. <br>
    </p>
    <p>If you do 'grep -r "inherit cmake"' on openembedded-core/meta,
      you can find many examples of other recipes that use CMake for
      building that you could use as references.<br>
    </p>
    <blockquote type="cite"
cite="mid:DB6PR0801MB1784F72924A0EFBF9006D1989954A@DB6PR0801MB1784.eurprd08.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal"><span
            style="font-size:11.0pt;mso-fareast-language:DE"
            lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:11.0pt;mso-fareast-language:DE"
            lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">Thank
            you for reading<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US">G.
            Rostanin<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt" lang="EN-US"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal" style="margin-bottom:0cm"><b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-language:DE">Von:</span></b><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-language:DE">
                Trevor Gamblin <a class="moz-txt-link-rfc2396E" href="mailto:tgamblin@baylibre.com">&lt;tgamblin@baylibre.com&gt;</a> <br>
                <b>Gesendet:</b> Freitag, 9. </span><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-language:DE"
                lang="EN-US">Juni 2023 18:25<br>
                <b>An:</b> Rostanin Gleb SBR DIRCS
                <a class="moz-txt-link-rfc2396E" href="mailto:Gleb.Rostanin@zf.com">&lt;Gleb.Rostanin@zf.com&gt;</a>;
                <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a><br>
                <b>Betreff:</b> Re: [yocto] Snort 2.9 into Snort 3
                recipe<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p><span lang="EN-US"><o:p> </o:p></span></p>
        <div>
          <p class="MsoNormal"><span lang="EN-US">On 2023-06-09 10:05,
              Rostanin Gleb SBR DIRCS wrote:<o:p></o:p></span></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">Hello OpenEmbedded Community,</span><span
              lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US"> </span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">currently I am working on implementing the
              Snort IDS on an embedded system with the Yocto Linux OS.
              As OpenEmbedded already provides a recipe for Snort 2.9 it
              is easy to install snort into the OS. Unfortunately, it is
              not easy to change the recipe so that the new Snort 3
              version is installed. I tried to change the git repo link
              and the checksum (as a simple solution try), but
              unfortunately, I ran into multiple errors, and I am not
              sure at which point I need to make further changes. As I
              could understand, also a few changes to the source code of
              Snort must be done to make it work on the Yocto OS.
            </span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">Was someone already successful in
              implementing a recipe to install the newer Snort 3 version
              directly on Yocto? What do I have to change in the Snort
              2.9 recipe to install the Snort 3 version?</span><span
              lang="EN-US"><o:p></o:p></span></p>
        </blockquote>
        <p><span lang="EN-US">The errors you're seeing when you try to
            build Snort 3 should provide a clue. If you post those,
            someone may be able to provide further suggestions.<o:p></o:p></span></p>
        <p><span lang="EN-US">Trevor<o:p></o:p></span></p>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">Of course, another solution could be cross
              compiling Snort for the embedded system, but maybe there
              is already a solution for this.</span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">I happy about any help or comment on this
              topic!</span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US"> </span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">Kind regards</span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US"> </span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"
              lang="EN-US">G. Rostanin</span><span lang="EN-US"><o:p></o:p></span></p>
          <p class="MsoNormal" style="margin-bottom:0cm"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-language:DE"
              lang="EN-US"><br>
              <br>
              <o:p></o:p></span></p>
          <pre><span lang="EN-US"><o:p> </o:p></span></pre>
          <pre><span lang="EN-US">-=-=-=-=-=-=-=-=-=-=-=-<o:p></o:p></span></pre>
          <pre><span lang="EN-US">Links: You receive all messages sent to this group.<o:p></o:p></span></pre>
          <pre><span lang="EN-US">View/Reply Online (#60239): </span><a href="https://lists.yoctoproject.org/g/yocto/message/60239" moz-do-not-send="true"><span lang="EN-US">https://lists.yoctoproject.org/g/yocto/message/60239</span></a><span lang="EN-US"><o:p></o:p></span></pre>
          <pre><span lang="EN-US">Mute This Topic: </span><a href="https://lists.yoctoproject.org/mt/99428914/7611679" moz-do-not-send="true"><span lang="EN-US">https://lists.yoctoproject.org/mt/99428914/7611679</span></a><span lang="EN-US"><o:p></o:p></span></pre>
          <pre><span lang="EN-US">Group Owner: </span><a href="mailto:yocto+owner@lists.yoctoproject.org" moz-do-not-send="true"><span lang="EN-US">yocto+owner@lists.yoctoproject.org</span></a><span lang="EN-US"><o:p></o:p></span></pre>
          <pre><span lang="EN-US">Unsubscribe: </span><a href="https://lists.yoctoproject.org/g/yocto/unsub" moz-do-not-send="true"><span lang="EN-US">https://lists.yoctoproject.org/g/yocto/unsub</span></a><span lang="EN-US"> [</span><a href="mailto:tgamblin@baylibre.com" moz-do-not-send="true"><span lang="EN-US">tgamblin@baylibre.com</span></a><span lang="EN-US">]<o:p></o:p></span></pre>
          <pre>-=-=-=-=-=-=-=-=-=-=-=-<o:p></o:p></pre>
          <pre><o:p> </o:p></pre>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------VMMHswEP824gvXzATtEXb7Xt--

