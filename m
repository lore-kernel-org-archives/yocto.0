Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6A48C77B7A
	for <webhook@archiver.kernel.org>; Wed, 31 May 2023 12:39:13 +0000 (UTC)
Received: from 16.mo581.mail-out.ovh.net (16.mo581.mail-out.ovh.net [46.105.72.216])
 by mx.groups.io with SMTP id smtpd.web10.13024.1685536743751456362
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 May 2023 05:39:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@faresoftware.it header.s=20210817 header.b=LVkDiIlc;
 spf=permerror, err=too many SPF records (domain: faresoftware.it, ip: 46.105.72.216, mailfrom: mauro@faresoftware.it)
Received: from director1.ghost.mail-out.ovh.net (unknown [10.109.138.245])
	by mo581.mail-out.ovh.net (Postfix) with ESMTP id 6FEC52319B
	for <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:39:01 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-r2nsk (unknown [10.110.103.209])
	by director1.ghost.mail-out.ovh.net (Postfix) with ESMTPS id E718F1FEBC
	for <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:39:00 +0000 (UTC)
Received: from faresoftware.it ([37.59.142.108])
	by ghost-submission-6684bf9d7b-r2nsk with ESMTPSA
	id zGAKJ+Q/d2Q/8AkAb3YnaQ
	(envelope-from <mauro@faresoftware.it>)
	for <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:39:00 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-108S00289a3d76e-8dd2-4120-8359-600792cddf20,
                    7369D5F4BAE8289B75C76E5406D568256AE8E0F0) smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Received: from [172.26.1.10] (unknown [172.26.1.10])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by posta.faresoftware.it (Postfix) with ESMTPSA id 904AB5175636
	for <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 14:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1685536738;
	bh=WlP8ivZJqbDEm7li4o2towvNdPJfkXVi1opv6CSqKnM=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=LVkDiIlcyQ54BXtdaMDqgKkju/B94OvAiSizm3CKhVLX34BRZMy7zev5n+Gk6OIfa
	 uUURBLMdjaX3TTuEUtg6mqhxYzMcKKUsBhYktzvstXTViMALYxwPuVvmWdtSvcNGG6
	 NY9l4hupjR5kxF8bEV4MjqNg6omrVKO2HSvZQcKE=
Content-Type: multipart/alternative;
 boundary="------------WXuv9p5QR4g0s00iNMIVE6cO"
Message-ID: <3a3290e7-cb26-f305-a10c-88d6914a9448@faresoftware.it>
Date: Wed, 31 May 2023 14:38:56 +0200
MIME-Version: 1.0
Subject: Re: [yocto] Inquiry Regarding Kernel GPL License and UI App Source
 Code Requirement in Yocto Base Image #yocto #qt5 #bitbake #gplv3 #kernel
 #kernelmodule
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <Myxh.1685523853230201596.T1Si@lists.yoctoproject.org>
 <9b228005-a895-fe69-5bd1-76734bdacd31@bootlin.com>
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <9b228005-a895-fe69-5bd1-76734bdacd31@bootlin.com>
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Synology-Spam-Status: score=-3.1, required 8, autolearn=ham, T_SCC_BODY_TEXT_LINE 0, __THREADED 0, TO_DN_NONE 0, HTML_MESSAGE 0.001, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0, MID_RHS_MATCH_FROM 0, BAYES_HAM -3, NO_RECEIVED -0.001, ARC_NA 0, FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0, HTML_MISSING_CTYPE 0, __NOT_A_PERSON 0
X-Ovh-Tracer-Id: 4604086198340355113
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrfeekledgheegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpegtkfffggfuvfhfhffpjgesrgdtreertddtjeenucfhrhhomhepofgruhhrohcukghilhhirghnihcuoehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtqeenucggtffrrghtthgvrhhnpefhheehtdejhfeltdfhhfeffefgfeeflefhieejiefhudeikeehtdehjeduvdetteenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhgnhhurdhorhhgpdhlihhnkhgvughinhdrtghomhenucfkphepuddvjedrtddrtddruddpleefrdefkedrudduledrudefiedpfeejrdehledrudegvddruddtkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdpoffvtefjohhsthepmhhoheekuddpmhhouggvpehsmhhtphhouhht
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 May 2023 12:39:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60153

This is a multi-part message in MIME format.
--------------WXuv9p5QR4g0s00iNMIVE6cO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all.

As my personal experience with yocto and qt5 (and Qt Company) if you 
make an UI application based on Qt5 you have to give the possibility of 
reverse engineering of your application, due to Qt5 is LGPL.

So you are not mandatory to publish the code, but the system must be 
open for reverse engineerig.

A final user can replace your qt5 libraries with its own qt5 libraries 
modified


M


Il 31/05/23 14:32, Michael Opdenacker via lists.yoctoproject.org ha scritto:
> Hi Rohith
>
> On 31.05.23 at 11:04, Rohith wrote:
>> Since the base image of Yocto has the Kernel license type as GPL, if 
>> I include my UI Application binary in the Yocto Base image will I 
>> need to expose my UI App source code?
>
>
> No, the same applies to desktop GNU/Linux distributions. You can 
> develop, use and ship software with the license of your choice 
> (including proprietary), you don't extend GPL software or link with 
> it. Otherwise, only GPL compatible licenses would exist in the Linux 
> world.
>
> The GPL FAQ address this kind of questions: 
> https://www.gnu.org/licenses/gpl-faq.en.html
> Cheers
> Michael.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60152):https://lists.yoctoproject.org/g/yocto/message/60152
> Mute This Topic:https://lists.yoctoproject.org/mt/99238217/3617482
> Mute #qt5:https://lists.yoctoproject.org/g/yocto/mutehashtag/qt5
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #gplv3:https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #kernelmodule:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernelmodule
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [mauro@faresoftware.it]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
linkedin: https://www.linkedin.com/in/mauroziliani
--------------WXuv9p5QR4g0s00iNMIVE6cO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Hi all.</font></p>
    <p><font size="2">As my personal experience with yocto and qt5 (and
        Qt Company) if you make an UI application based on Qt5 you have
        to give the possibility of reverse engineering of your
        application, due to Qt5 is LGPL.</font></p>
    <p><font size="2">So you are not mandatory to publish the code, but
        the system must be open for reverse engineerig.</font></p>
    <p><font size="2">A final user can replace your qt5 libraries with
        its own qt5 libraries modified<br>
      </font></p>
    <p><font size="2"><br>
      </font></p>
    <p><font size="2">M</font></p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">Il 31/05/23 14:32, Michael Opdenacker
      via lists.yoctoproject.org ha scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9b228005-a895-fe69-5bd1-76734bdacd31@bootlin.com">Hi
      Rohith
      <br>
      <br>
      On 31.05.23 at 11:04, Rohith wrote:
      <br>
      <blockquote type="cite">Since the base image of Yocto has the
        Kernel license type as GPL, if I include my UI Application
        binary in the Yocto Base image will I need to expose my UI App
        source code?
        <br>
      </blockquote>
      <br>
      <br>
      No, the same applies to desktop GNU/Linux distributions. You can
      develop, use and ship software with the license of your choice
      (including proprietary), you don't extend GPL software or link
      with it. Otherwise, only GPL compatible licenses would exist in
      the Linux world.
      <br>
      <br>
      The GPL FAQ address this kind of questions:
      <a class="moz-txt-link-freetext" href="https://www.gnu.org/licenses/gpl-faq.en.html">https://www.gnu.org/licenses/gpl-faq.en.html</a>
      <br>
      Cheers
      <br>
      Michael.
      <br>
      <br>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#60152): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/60152">https://lists.yoctoproject.org/g/yocto/message/60152</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/99238217/3617482">https://lists.yoctoproject.org/mt/99238217/3617482</a>
Mute #qt5:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/qt5">https://lists.yoctoproject.org/g/yocto/mutehashtag/qt5</a>
Mute #bitbake:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake">https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake</a>
Mute #gplv3:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3">https://lists.yoctoproject.org/g/yocto/mutehashtag/gplv3</a>
Mute #kernel:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel">https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel</a>
Mute #kernelmodule:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/kernelmodule">https://lists.yoctoproject.org/g/yocto/mutehashtag/kernelmodule</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:mauro@faresoftware.it">mauro@faresoftware.it</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <div class="moz-signature">-- <br>
      linkedin: <a class="moz-txt-link-freetext" href="https://www.linkedin.com/in/mauroziliani">https://www.linkedin.com/in/mauroziliani</a></div>
  </body>
</html>

--------------WXuv9p5QR4g0s00iNMIVE6cO--

