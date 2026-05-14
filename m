Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70812CD4F25
	for <webhook@archiver.kernel.org>; Thu, 14 May 2026 16:27:36 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15491.1778776054417546077
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2026 09:27:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: key syntax error: missing public key data" header.i=@rootcommit.com header.s=dkim header.b=IZqyfOwc;
 spf=pass (domain: rootcommit.com, ip: 185.171.202.116, mailfrom: michael.opdenacker@rootcommit.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 58C39C5D73A;
	Thu, 14 May 2026 16:28:23 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 42A69606E3;
	Thu, 14 May 2026 16:27:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9762F11AF8483;
	Thu, 14 May 2026 18:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=dkim; t=1778776051;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-language:in-reply-to:references;
	bh=bwmvujVL0gZhC50SRg+Sey7sTx28lJ0szgOTcmNqd8E=;
	b=IZqyfOwc/ixdaIfK6r96FoQfpGdZc9YSzw5Tgx4+L3SHwQ21lPiLHEFJhaKMTbd74gbxdq
	eQi1RAS8LYhkFAOnATempdJW48V7sATrMFyqvsCC2LOClVImQNgR/7J/WPmH3zQ7JVnGGb
	kvnO3RK8Sk/R4b5xMZm2D3EwEW/X5377+gZ2U76NKxbNbPi3osKAyxqYmVPUIbUV5kZ4bY
	J8AqwkLyCTiKh2XBEFXYXtq2bd2a6p2IUyuVSxalrZNUZknCWW7qcpz5GCuls2/VbiYMCI
	5OH7lc1GiTzqCSUpYMopyEeeUgKSK3kSNdEEE94V2GdwWGMvt3/9Jvnhcy5HOw==
Content-Type: multipart/alternative;
 boundary="------------cA8Qhmeycf0H9q6wa6Z1Gldt"
Message-ID: <8eff48cb-20f6-4742-893d-e06d6feb2cb4@rootcommit.com>
Date: Thu, 14 May 2026 18:27:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: Iain Menzies-Runciman <iain@siliconbladeconsultants.com>
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
 <684BE1E8-500C-4169-B5AF-C72E064F28E8@siliconbladeconsultants.com>
 <627ed8e4-0cf9-453a-8b8e-f54e9de564aa@rootcommit.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <627ed8e4-0cf9-453a-8b8e-f54e9de564aa@rootcommit.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 May 2026 16:27:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66560

This is a multi-part message in MIME format.
--------------cA8Qhmeycf0H9q6wa6Z1Gldt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ming

On 5/4/26 3:27 PM, Michael Opdenacker wrote:
>
> Hi Ming
>
> On 5/4/26 3:14 PM, Iain Menzies-Runciman wrote:
>> Hi Michael,
>>
>> If it is any use I have just created an article based on this 
>> concept, as I have had to do similar for one of my clients:
>>
>> Populating a Partition 
>> <https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/>
>> siliconbladeconsultants.com 
>> <https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/>
>> 	favicon.ico 
>> <https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/> 
>>
>>
>> <https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/>
>>
>> In essence, I create an ext4 image in my recipe and then you can do 
>> whatever you need with it (such as for me - write it to my wic file)
>
> What a nice coincidence... You just wrote that article!
> This sounds like a very simple and elegant solution for my needs. I 
> Actually just have a few files and scripts to drop in this filesystem.
>
I eventually used your idea to create a tar archive instead, which I 
then fed to Toradex Easy Installer (that's what the project currently used).
That was a very simple and elegant solution. Thanks again!
Cheers
Michael.

-- 
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com

--------------cA8Qhmeycf0H9q6wa6Z1Gldt
Content-Type: multipart/related;
 boundary="------------B9xcW2c5mslUW2juQv4Rgm0O"

--------------B9xcW2c5mslUW2juQv4Rgm0O
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Ming</p>
    <div class="moz-cite-prefix">On 5/4/26 3:27 PM, Michael Opdenacker
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:627ed8e4-0cf9-453a-8b8e-f54e9de564aa@rootcommit.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Hi Ming</p>
      <div class="moz-cite-prefix">On 5/4/26 3:14 PM, Iain
        Menzies-Runciman wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:684BE1E8-500C-4169-B5AF-C72E064F28E8@siliconbladeconsultants.com">
        <meta http-equiv="content-type"
          content="text/html; charset=UTF-8">
        Hi Michael,
        <div><br>
        </div>
        <div>If it is any use I have just created an article based on
          this concept, as I have had to do similar for one of my
          clients:</div>
        <div><br>
        </div>
        <div>
          <div style="display: block;">
            <div
style="-webkit-user-select: all; -webkit-user-drag: element; display: inline-block;"
              class="apple-rich-link" draggable="true" role="link"
data-url="https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/"><a
style="border-radius:10px;font-family:-apple-system, Helvetica, Arial, sans-serif;display:block;-webkit-user-select:none;width:300px;user-select:none;-webkit-user-modify:read-only;user-modify:read-only;overflow:hidden;text-decoration:none;"
                class="lp-rich-link" rel="nofollow"
href="https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/"
                dir="ltr" role="button" draggable="false" width="300"
                moz-do-not-send="true">
                <table
style="table-layout:fixed;border-collapse:collapse;width:300px;background-color:#E5E6E9;font-family:-apple-system, Helvetica, Arial, sans-serif;"
                  class="lp-rich-link-emailBaseTable" cellpadding="0"
                  cellspacing="0" border="0" width="300">
                  <tbody>
                    <tr>
                      <td vertical-align="center">
                        <table bgcolor="#E5E6E9" cellpadding="0"
                          cellspacing="0" width="300"
style="font-family:-apple-system, Helvetica, Arial, sans-serif;table-layout:fixed;background-color:rgba(229, 230, 233, 1);"
                          class="lp-rich-link-captionBar">
                          <tbody>
                            <tr>
                              <td style="padding:8px 0px 8px 0px;"
class="lp-rich-link-captionBar-textStackItem">
                                <div
style="max-width:100%;margin:0px 16px 0px 16px;overflow:hidden;"
class="lp-rich-link-captionBar-textStack">
                                  <div
style="word-wrap:break-word;font-weight:500;font-size:12px;overflow:hidden;text-overflow:ellipsis;text-align:left;"
class="lp-rich-link-captionBar-textStack-topCaption-leading"><a
                                      rel="nofollow"
href="https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/"
                                      style="text-decoration: none"
                                      draggable="false"
                                      moz-do-not-send="true"><font
                                        color="#272727"
style="color: rgba(0, 0, 0, 0.847059);">Populating a Partition</font></a></div>
                                  <div
style="word-wrap:break-word;font-weight:400;font-size:11px;overflow:hidden;text-overflow:ellipsis;text-align:left;"
class="lp-rich-link-captionBar-textStack-bottomCaption-leading"><a
                                      rel="nofollow"
href="https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/"
                                      style="text-decoration: none"
                                      draggable="false"
                                      moz-do-not-send="true"><font
                                        color="#808080"
style="color: rgba(0, 0, 0, 0.498039);">siliconbladeconsultants.com</font></a></div>
                                </div>
                              </td>
                              <td style="padding:6px 12px 6px 0px;"
class="lp-rich-link-captionBar-rightIconItem" width="36"><a
                                  rel="nofollow"
href="https://www.siliconbladeconsultants.com/articles/20260502-populate-partitions/"
                                  draggable="false"
                                  moz-do-not-send="true"><img
style="pointer-events:none !important;display:inline-block;width:36px;height:36px;border-radius:3px;"
                                    width="36" height="36"
                                    draggable="false"
class="lp-rich-link-captionBar-rightIcon" alt="favicon.ico"
src="cid:part1.IpGYhVqX.NlxIEsid@rootcommit.com"></a></td>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </a></div>
          </div>
          <br id="lineBreakAtBeginningOfMessage">
          <div>In essence, I create an ext4 image in my recipe and then
            you can do whatever you need with it (such as for me - write
            it to my wic file)</div>
        </div>
      </blockquote>
      <p>What a nice coincidence... You just wrote that article!<br>
        This sounds like a very simple and elegant solution for my
        needs. I Actually just have a few files and scripts to drop in
        this filesystem.</p>
    </blockquote>
    <p>I eventually used your idea to create a tar archive instead,
      which I then fed to Toradex Easy Installer (that's what the
      project currently used).<br>
      That was a very simple and elegant solution. Thanks again!<br>
      Cheers<br>
      Michael.</p>
    <pre class="moz-signature" cols="72">-- 
Root Commit
Embedded Linux Training and Consulting
<a class="moz-txt-link-freetext" href="https://rootcommit.com">https://rootcommit.com</a></pre>
  </body>
</html>
--------------B9xcW2c5mslUW2juQv4Rgm0O
Content-Type: image/x-icon; name="favicon.ico"
Content-Disposition: inline; filename="favicon.ico"
Content-Id: <part1.IpGYhVqX.NlxIEsid@rootcommit.com>
Content-Transfer-Encoding: base64

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

--------------B9xcW2c5mslUW2juQv4Rgm0O--

--------------cA8Qhmeycf0H9q6wa6Z1Gldt--

