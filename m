Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web09.35343.1605536773944414735
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Nov 2020 06:26:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMXe2kEo;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: jpewhacker@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id w188so18976234oib.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2020 06:26:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=4jKhzcOSOZyPOCvhyFiiTJ9CCmHDAnrRyZjVS6lKGa8=;
        b=JMXe2kEoLJDS406LWFV0t9Kel8eAln3Mcsua9M/SoNLRJ5iGv7eMNTQYek92aufKF4
         RLgJhLZRpqm1B6jAQvCSAKTcovnmj/G1HrfOguUaZ0CQm2hJztfddtzr5cweiUWJLZHf
         1XHTjakSv0qBDlvAHGIVRcnbaFyTBARhynAdhQGCltwLhrmTNH7gFG6NFziSdmexA3YF
         EY87+drrUGTa5W1YAeZc724QPYfIB0JzsMNFAK79r2Okf7LLF6KSiQ2rTehGcHyKK1ku
         qnvFs148pTppnKYtJsaZamDp3x2jRBU27p+DnBclvQsRS2tkrniXBhXGGNBbToXB66TQ
         bh2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=4jKhzcOSOZyPOCvhyFiiTJ9CCmHDAnrRyZjVS6lKGa8=;
        b=lVPRrW/7DQdF7us/IxmjoKL0kTL36Z46xdFQpIhNRDl+3MSPD5z5aIJKdrnZkLNLbO
         fkQywBdKu9hSlW1K3H/QR2YkAue9PrQ3ElcdjZPbGUqjPrRJSebnEMlPG/pQLue4YX2M
         VjDDo3OwQ1q5UUo5YoPzdQl+oi/TInbpbqyuaJ7Nx39Tu04/8vgthRTMhfPCwz0IxCK3
         guKNAfcdCAdF6OZjZnKD+2QmBwO2TQdZz2iHu2ovx4gHXcWqKi8cSbE1AFz0OFYH+Hit
         3bq7MjrDj6AAD3VrGgRm6ktoC6C1IJRYnkAhwLRuUiXgOo6wU4gGr5rHEhHaIgKElKIN
         x72g==
X-Gm-Message-State: AOAM532zN9IuLMFwPIxnzckG2IGjrb/6ABWj5AyGPp93EaH4DQgMQ4WG
	Y4lzLoLIMaXpMTu5vrHDzC3VeF6z0pbXTg==
X-Google-Smtp-Source: ABdhPJy/9i7XbzQS1AjIEvvKJVNFImRrPSiZogjYP6BJil9hhea/gccbzUviK2a94X6CKuwyO76fGA==
X-Received: by 2002:aca:4797:: with SMTP id u145mr10739060oia.0.1605536772944;
        Mon, 16 Nov 2020 06:26:12 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:e3e8:d9:3a56:e27d? ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id x8sm4868054ooc.44.2020.11.16.06.26.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 06:26:12 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] #yocto bbappend question
To: steven.monsees@baesystems.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.164803157796BF81.27635@lists.yoctoproject.org>
Message-ID: <1ce957ae-725b-352e-b403-6aa13b2b690a@gmail.com>
Date: Mon, 16 Nov 2020 08:26:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <MADEUP.164803157796BF81.27635@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------B7D4F18D4A5F9441E3582193"
Content-Language: en-US

--------------B7D4F18D4A5F9441E3582193
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 11/16/20 8:24 AM, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
>
> If a recipe has a “do_install_append” can I create a bbappend file to 
> do a “do_install_append_append” in order to change 1 line in that 
> routine, or do I need to just
>
> replace the “do_install_append” routine entirely with a copy and the 
> modified line?
>
AFAIK, there is no way to replace a do_install_append from another 
.bbappend; you'll have to modify the original.

>
> 
>

--------------B7D4F18D4A5F9441E3582193
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/16/20 8:24 AM, Monsees, Steven C
      (US) via lists.yoctoproject.org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:MADEUP.164803157796BF81.27635@lists.yoctoproject.org">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">If a recipe has a “do_install_append” can I
          create a bbappend file to do a “do_install_append_append” in
          order to change 1 line in that routine, or do I need to just<o:p></o:p></p>
        <p class="MsoNormal">replace the “do_install_append” routine 
          entirely with a copy and the modified line?</p>
      </div>
    </blockquote>
    <p>AFAIK, there is no way to replace a do_install_append from
      another .bbappend; you'll have to modify the original.<br>
    </p>
    <blockquote type="cite"
      cite="mid:MADEUP.164803157796BF81.27635@lists.yoctoproject.org">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------B7D4F18D4A5F9441E3582193--
