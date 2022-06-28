Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75DBEC43334
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 13:50:35 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com
 [209.85.160.52])
 by mx.groups.io with SMTP id smtpd.web11.55167.1656424227052053429
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 06:50:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gAIIE09s;
 spf=pass (domain: gmail.com, ip: 209.85.160.52,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-101cdfddfacso17120891fac.7
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 06:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:in-reply-to;
        bh=dYKIkTBF+8zNKWHSlFfld091/Js4go71th/hEuXphpk=;
        b=gAIIE09sEJmhH3qhrX5sZyHErYO33ZG1HuICbrQN1XhE4z3DmM3ffDbpuVfE+aCn/Y
         lucx3N3Ob6uInNMpX7OGDUGKh+XM4qClz1Lws7AEY26FpYVH4aSbvxjztWUCey20hA3H
         Nr0F4PUzp5SJS6aYdu7UyDxoS71m5RYc8udX1FZ91CZw/Iw5l7TngwUBHeChK+Alk6AM
         7GzKeU5lrXvWWNARcQR+vlvSzItiNEmNV6gPjGoNddtgqQfgjUbF1//3KaUZeDqu92hd
         eJ7FbgoQgESiI2dsWvaM3qYA1ynK3CrjtdRbCNaqJlQePaIU0k3UMg0k2D6Ol8iclPjz
         qcuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:date:mime-version:user-agent
         :subject:content-language:to:references:cc:in-reply-to;
        bh=dYKIkTBF+8zNKWHSlFfld091/Js4go71th/hEuXphpk=;
        b=abyUCH/q0bFRoyDClXcHo4+ISyCf8fLtBVQnQU9iJMbSJEfW9quJnjceO1Jy2nvN1u
         9GElbfm1nP+4RcVtTYD21K9VYmG1OJJG8HhoATLuPLMgxMEw5G0810Ka9IHDyObHRpr/
         +IgfvRtq7Zs9m0UX0yLD8er6LbsqC3G23SM131yYDpGjI6eDqwh1nhvmceagaCHkTtXJ
         xa/R181piVgvjgZCqjVKJCpCfizySu4h/ehvbSci8DBDcewRVIrGBSegw9RnlH/ddQkd
         0xVRYRp0WIoSLmceLBbJ6MvL9W2NEg9PBKuN9vMWtYJVXZaQeBiQBmzQn+O2VeOEZ+W9
         vuXQ==
X-Gm-Message-State: AJIora+5DR6eOX2RcepPHqD2zZqncrcpuqMyedCIwJMQxdxE+VL+wB3s
	qOzaMowkx5baVkrJ19YEGjM=
X-Google-Smtp-Source: 
 AGRyM1tFSmGJeh82HHgTG5OHfC+lvp2lJ40DOjj4mgVPyCqJ9epr6A2s866oXd6/QMFS+zXdPG+rJg==
X-Received: by 2002:a05:6870:2f15:b0:108:c28d:3304 with SMTP id
 qj21-20020a0568702f1500b00108c28d3304mr4033500oab.92.1656424226216;
        Tue, 28 Jun 2022 06:50:26 -0700 (PDT)
Received: from ?IPV6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d?
 ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id
 m16-20020a4a9510000000b0041bdf977c6dsm7649804ooi.31.2022.06.28.06.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jun 2022 06:50:24 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Content-Type: multipart/alternative;
 boundary="------------UkThDA9leGvdLyRXHDiKX80w"
Message-ID: <24666665-4e32-215e-dfa3-c8ddf0220d26@gmail.com>
Date: Tue, 28 Jun 2022 08:50:23 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: Yocto Windows SDK with meta-qt6
Content-Language: en-US
To: "Rasool, Ansar" <Ansar_Rasool@mentor.com>
References: <c52f4d74dd874efeb109127d675c9ede@mentor.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
In-Reply-To: <c52f4d74dd874efeb109127d675c9ede@mentor.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 13:50:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57404

This is a multi-part message in MIME format.
--------------UkThDA9leGvdLyRXHDiKX80w
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

CC'd the mailing list


On 6/28/22 01:27, Rasool, Ansar wrote:
>
> Hi,
>
> I am trying to create a Kit in Qt Creator 7.0.2 from an SDK generated 
> for x86_64 arch with mingw support (meta-mingw) for Windows Host. Upon 
> adding qmake.exe file and compilers (C/C++), Kit throws error of "The 
> Compiler GCC cannot produce code for Qt Version". However, the ABIs 
> set in both GCC and Qt versions are same and compatible. Screenshot is 
> attached below.
>
> Upon investigating, i found out that the gcc compiler 
> /x86_64-oe-linux-gcc.exe /doesn't work on cmdline. It throws error of 
> missing libwinpthread-1.dll library which is actually present there 
> but seems like the compiler binary is wrongly placed by meta-mingw 
> layer. Currently, the locations of library and compiler binary is as 
> below:
>
>
> <sdk>/sysroot/x86_64-mingw32/usr/bin/libwinpthread-1.dll
> <sdk>/sysroot/x86_64-mingw32/usr/bin/x86_64-oe-linux/x86_64-oe-linux-gcc.exe
>
> This setup throws error. But if I copy the libwinpthread-1.dll library 
> onto the same directory where the compiler binary is present, it works 
> fine. Which means that, somehow the compiler is expecting the dll to 
> be loaded from current working directory whereas it is present in its 
> parent directory. So, the SDK paths needs to be fixed.


Can you check if it works without any additional layers? Also would it 
be possible to get your local.conf?


>
> Kindly input what could be the proper fix for it.
>
>
> Regards,
> Ansar Rasool
--------------UkThDA9leGvdLyRXHDiKX80w
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>CC'd the mailing list</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/28/22 01:27, Rasool, Ansar wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c52f4d74dd874efeb109127d675c9ede@mentor.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size:12pt;
        color:rgb(0,0,0);
font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple
        Color Emoji&quot;,&quot;Segoe UI
        Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
        Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
        <p>Hi, <br>
          <br>
          <font size="3"
            face="Calibri,Helvetica,sans-serif,EmojiFont,Apple Color
            Emoji,Segoe UI Emoji,NotoColorEmoji,Segoe UI Symbol,Android
            Emoji,EmojiSymbols" color="black"><span
              id="divtagdefaultwrapper" style="font-size:12pt">I am
              trying to create a Kit in Qt Creator 7.0.2 from an SDK
              generated for x86_64 arch with mingw support (meta-mingw)
              for Windows Host. Upon adding qmake.exe file and compilers
              (C/C++), Kit throws error of "The Compiler GCC cannot
              produce code for Qt Version". However, the ABIs set in
              both GCC and Qt versions are same and compatible.
              Screenshot is attached below. <br>
            </span></font></p>
        <p>Upon investigating, i found out that the gcc compiler <i>x86_64-oe-linux-gcc.exe
          </i>doesn't work on cmdline. It throws error of missing
          libwinpthread-1.dll library which is actually present there
          but seems like the compiler binary is wrongly placed by
          meta-mingw layer. Currently, the locations of library and
          compiler binary is as below:<br>
          <span style="font-size:12pt;" id="divtagdefaultwrapper"></span></p>
        <div style="margin-top:0;margin-bottom:0;"><br>
          &lt;sdk&gt;/sysroot/x86_64-mingw32/usr/bin/libwinpthread-1.dll<br>
&lt;sdk&gt;/sysroot/x86_64-mingw32/usr/bin/x86_64-oe-linux/x86_64-oe-linux-gcc.exe<br>
        </div>
        <div style="margin-top:0;margin-bottom:0;"><br>
          This setup throws error. But if I copy the libwinpthread-1.dll
          library onto the same directory where the compiler binary is
          present, it works fine. Which means that, somehow the compiler
          is expecting the dll to be loaded from current working
          directory whereas it is present in its parent directory. So,
          the SDK paths needs to be fixed.</div>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Can you check if it works without any additional layers? Also
      would it be possible to get your local.conf?<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:c52f4d74dd874efeb109127d675c9ede@mentor.com">
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size:12pt;
        color:rgb(0,0,0);
font-family:Calibri,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple
        Color Emoji&quot;,&quot;Segoe UI
        Emoji&quot;,NotoColorEmoji,&quot;Segoe UI
        Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
        <br>
        Kindly input what could be the proper fix for it.<br>
        <p><br>
        </p>
        <div id="Signature">
          <div name="divtagdefaultwrapper"
            style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:; margin:0">
            Regards,<br>
            Ansar Rasool<br>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------UkThDA9leGvdLyRXHDiKX80w--

