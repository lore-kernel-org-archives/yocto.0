Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E10E7C3DA7A
	for <webhook@archiver.kernel.org>; Thu, 29 Dec 2022 19:42:47 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.2416.1672342965803400419
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Dec 2022 11:42:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=dvcWbRo4;
 spf=pass (domain: mistywest.com, ip: 209.85.216.52, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f52.google.com with SMTP id o2so14661729pjh.4
        for <yocto@lists.yoctoproject.org>; Thu, 29 Dec 2022 11:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QzARBH9qsnofe5X2Cxj+MqZ9QTxs2A+lugGXOIrPxqk=;
        b=dvcWbRo49l+GbvSWwdPRYYDufyMPIyhAi5iloIPwRILabW4FOP3kqy57IvyGSubKb3
         eSikcpsSnWXpcfxmTxKPbz+b9yDAA9/YqTsMzE29qksqqVEp/i7AguHBDCmISZSgdPdv
         raa151OfhhfrLAEHOfGu37SVfCdFG5Qs0eqeWDwrZhOEy+wXWDQoZkbtugwqHj/dehrw
         hG1NUsQ29GrC3+1o58rnKRBnmNy/wshnwBNI4PGK5IeWznYOjba3AIziAQ5mXw+wMyld
         I2ZJ6+LPaFd8ve4D6XzOW8X8449jgAnolUVzG1ay4CMqQq9FOIIK99Ix0/iLUdJW+66/
         +lpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QzARBH9qsnofe5X2Cxj+MqZ9QTxs2A+lugGXOIrPxqk=;
        b=8QRmDMo5I6+Ulc9zCycvjnwiT55Qh77Y0snizLDknZXHYde1xEszxUoual7lPcJuxo
         HF2bHXYfoSdKxXGUBFBzTSUpi5y2pnPlb33I75aOZs9BtByrSb5JRORlQ1AUDgsoSXnu
         P55KkXK7iNruNIQZTbaVrHf2RjCdQ40Grjy+A83GGr5eCZFYz11OiTwDaYOasyTAsCS3
         0onwt6kijfg5LQRADhDbLcnyldOLHW1D7X3mPEZ/BoW1f1HYzmM3nFEQOF0pC95Nsg6c
         aikzM8SZoiC3L+FnG2KFYNqVWUm31QGipSEBL8f3AJCT2O/8OFasZdAmpfkx1Ky7cKbL
         Txsg==
X-Gm-Message-State: AFqh2koOACdZPGhUZ8IBaljKDDP1GiHUxJ3UAxOSXpLrr23QBYXtYU3H
	l1xwXpzKSfAGNJoCoEzFzf086BG3P0Vdqkc+C18=
X-Google-Smtp-Source: AMrXdXtpxT6K1S+LZ2GlfYJm61L6Gu8cJr2HrzB7usjInHNNrq2S/5CF5RfhoEXzQHk6hxsxEw48zg==
X-Received: by 2002:a05:6a20:138b:b0:a0:462f:8e3e with SMTP id w11-20020a056a20138b00b000a0462f8e3emr45895241pzh.55.1672342964677;
        Thu, 29 Dec 2022 11:42:44 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id b67-20020a621b46000000b0053e38ac0ff4sm12378962pfb.115.2022.12.29.11.42.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 11:42:44 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------UjJFjSjmTKGiwslBTsznAR7y"
Message-ID: <aa191de0-5e19-1791-45cb-04735f0a8b70@mistywest.com>
Date: Thu, 29 Dec 2022 11:42:42 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] unable to resolve x11 dependency
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <1735599E83CC1F4B.25041@lists.yoctoproject.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <1735599E83CC1F4B.25041@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Dec 2022 19:42:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58888

This is a multi-part message in MIME format.
--------------UjJFjSjmTKGiwslBTsznAR7y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Cross posted here: 
https://lists.yoctoproject.org/g/meta-freescale/topic/can_not_find_gbm_version_to/95942625?p=,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,95942625,previd%3D1672342842254330595,nextid%3D1653445797635214658&previd=1672342842254330595&nextid=1653445797635214658 

I will synchronize any answers that I may get between the threads!

On 12/29/22 11:16, Mistyron via lists.yoctoproject.org wrote:
> Hi,
> I need to add X11 to my build (original BSP is based on wayland) but 
> keep running into an issue:
> I keep getting "error: Glamor for Xorg requires gbm >= 10.2.0", the 
> complete message can be seen below:
>
> | checking for GLAMOR... yes
> | checking for GBM... no
> | configure: error: Glamor for Xorg requires gbm >= 10.2.0
> | NOTE: The following config.log files may provide further information.
> | NOTE: 
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/build/config.log
> | ERROR: configure failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of 
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/temp/run.do_configure.143696' 
> failed with exit code 1
> ERROR: Task 
> (/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4840 tasks of which 4796 didn't need to 
> be rerun and 1 failed.
>
> Summary: 1 task failed:
> /home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure 
>
>
>
> I've tried to add dependencies to my image recipe (mesa) that doesn't 
> appear to change anything.
> Any hints would be greatly appreciated!
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58887):https://lists.yoctoproject.org/g/yocto/message/58887
> Mute This Topic:https://lists.yoctoproject.org/mt/95942219/7254380
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [ron.eggler@mistywest.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com
--------------UjJFjSjmTKGiwslBTsznAR7y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><font size="2">Cross posted here:
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/meta-freescale/topic/can_not_find_gbm_version_to/95942625?p=,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,95942625,previd%3D1672342842254330595,nextid%3D1653445797635214658&amp;previd=1672342842254330595&amp;nextid=1653445797635214658">https://lists.yoctoproject.org/g/meta-freescale/topic/can_not_find_gbm_version_to/95942625?p=,,,20,0,0,0::recentpostdate/sticky,,,20,2,0,95942625,previd%3D1672342842254330595,nextid%3D1653445797635214658&amp;previd=1672342842254330595&amp;nextid=1653445797635214658</a>
        <br>
        I will synchronize any answers that I may get between the
        threads!</font></p>
    <div class="moz-cite-prefix">On 12/29/22 11:16, Mistyron via
      lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1735599E83CC1F4B.25041@lists.yoctoproject.org">Hi,
      <br>
      I need to add X11 to my build (original BSP is based on wayland)
      but keep running into an issue:
      <br>
      I keep getting "error: Glamor for Xorg requires gbm &gt;= 10.2.0",
      the complete message can be seen below:
      <br>
      <br>
      | checking for GLAMOR... yes
      <br>
      | checking for GBM... no
      <br>
      | configure: error: Glamor for Xorg requires gbm &gt;= 10.2.0
      <br>
      | NOTE: The following config.log files may provide further
      information.
      <br>
      | NOTE:
/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/build/config.log<br>
      | ERROR: configure failed
      <br>
      | WARNING: exit code 1 from a shell command.
      <br>
      | ERROR: Execution of
'/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-r0/temp/run.do_configure.143696'
      failed with exit code 1
      <br>
      ERROR: Task
(/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure)
      failed with exit code '1'
      <br>
      NOTE: Tasks Summary: Attempted 4840 tasks of which 4796 didn't
      need to be rerun and 1 failed.
      <br>
      <br>
      Summary: 1 task failed:
      <br>
/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xserver/xserver-xorg_1.20.8.bb:do_configure
      <br>
      <br>
      <br>
      I've tried to add dependencies to my image recipe (mesa) that
      doesn't appear to change anything.
      <br>
      Any hints would be greatly appreciated!
      <br>
      <br>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#58887): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/58887">https://lists.yoctoproject.org/g/yocto/message/58887</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/95942219/7254380">https://lists.yoctoproject.org/mt/95942219/7254380</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:ron.eggler@mistywest.com">ron.eggler@mistywest.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <div class="moz-signature">-- <br>
      RON EGGLER
      Firmware Engineer
      (he/him/his)
      <a class="moz-txt-link-abbreviated" href="http://www.mistywest.com">www.mistywest.com</a></div>
  </body>
</html>

--------------UjJFjSjmTKGiwslBTsznAR7y--

