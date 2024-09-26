Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1EDECCF9E9
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 06:13:54 +0000 (UTC)
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
 by mx.groups.io with SMTP id smtpd.web10.36449.1727331226808486597
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Sep 2024 23:13:47 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.81, mailfrom: f_l_k@t-online.de)
Received: from fwd82.aul.t-online.de (fwd82.aul.t-online.de [10.223.144.108])
	by mailout03.t-online.de (Postfix) with SMTP id D4B7013049;
	Thu, 26 Sep 2024 08:13:44 +0200 (CEST)
Received: from [192.168.178.67] ([84.154.160.113]) by fwd82.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1sthl2-0pkDbM0; Thu, 26 Sep 2024 08:13:44 +0200
Date: Thu, 26 Sep 2024 08:15:36 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Screen recording on wayland display server #yocto
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
Cc: "Poornesh G ( India - Bangalore ) via lists.yoctoproject.org"
	<poornesh.g=mindteck.com@lists.yoctoproject.org>
Message-Id: <0EPEKS.7R268RZ9JKCH2@t-online.de>
In-Reply-To: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
References: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-cZBoBYr8AatWDcTkjr0T"
X-TOI-EXPURGATEID: 150726::1727331224-CCFF757C-4F544C69/0/0 CLEAN NORMAL
X-TOI-MSGID: 2eb77be6-96cb-4666-be28-2e343938cd07
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 06:13:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63890

--=-cZBoBYr8AatWDcTkjr0T
Content-Type: text/plain; charset=us-ascii; format=flowed

Hi,
if you have libportal available and dont mind including kde framework 
you can probably use
<https://layers.openembedded.org/layerindex/recipe/183973/>

if you want a simple solution without using portals you might succeed 
with wf-recorder from wayfire project
<https://layers.openembedded.org/layerindex/recipe/188465/>

On Wed, Sep 25 2024 at 10:19:26 PM -07:00:00, Poornesh G ( India - 
Bangalore ) via lists.yoctoproject.org 
<poornesh.g=mindteck.com@lists.yoctoproject.org> wrote:
> Hi Everyone,
> 
> We have a medical device with LCD & HDMI interface running with yocto 
> (kirkstone). I have Qt application running  on wayland display server 
> from yocto.
> Now I have a requirement of recording the entire Qt screen , as of 
> now due to security features of wayland I could not able to able to 
> capture screen using Qt . Please anyone help me with 
> alternatives/suggestions to achieve this.
> Even I have included  ffmpeg, gstreamer  as well.
> 
> Thanks


--=-cZBoBYr8AatWDcTkjr0T
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto"><div>Hi,</div><div>if you have libportal available and dont mind including kde framework you can probably use&nbsp;</div><div><a href="https://layers.openembedded.org/layerindex/recipe/183973/">https://layers.openembedded.org/layerindex/recipe/183973/</a></div><div><br></div><div>if you want a simple solution without using portals you might succeed with wf-recorder from wayfire project</div><div><a href="https://layers.openembedded.org/layerindex/recipe/188465/">https://layers.openembedded.org/layerindex/recipe/188465/</a></div></div><div id="geary-quote" dir="auto"><br>On Wed, Sep 25 2024 at 10:19:26 PM -07:00:00, Poornesh G ( India - Bangalore ) via lists.yoctoproject.org &lt;poornesh.g=mindteck.com@lists.yoctoproject.org&gt; wrote:<br><blockquote type="cite"><div>Hi Everyone,</div>
<div>&nbsp;</div>
<div>We have a medical device with LCD &amp; HDMI interface running with yocto (kirkstone). I have Qt application running&nbsp; on wayland display server from yocto.&nbsp;<br>Now I have a requirement of recording the entire Qt screen , as of now due to security features of wayland I could not able to able to capture screen using Qt . Please anyone help me with alternatives/suggestions to achieve this.</div>
<div>Even I have included&nbsp; ffmpeg, gstreamer&nbsp; as well.</div>
<div>&nbsp;</div>
<div>Thanks</div>
</blockquote></div>
--=-cZBoBYr8AatWDcTkjr0T--


