Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web11.633.1587493204911675015
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2020 11:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PYpwX36J;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: jpewhacker@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id j4so11964312otr.11
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2020 11:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=OzxYQu0TlX/LTq1Ofv0YeLtzcY6g+Z+eF4OMkOmTpcU=;
        b=PYpwX36JTac3FxiEuEuuqUQxyjhitn1ZZhtjKHRMw7jEhC5Cj5eT/D9Tr465KAOstx
         Q9vMi5KAAlBzjrNBN496gHf46tbBe0HIuRteVoUWhFg9Bd6Yd+Tuu/N/RJ60yDjPvU1H
         vfD7+xcVvEmCac4f6QyxZNyQl3e19Fx7UZarzUh1NlItqqdLzThpIKy0tCMDfO2tqlW3
         iSbzeqSWijuNjLvmwjdhyWOtPoxkE/7/M3H+RWOzEWrmQdlq0UHpIpciKBy9pTBt0q6Y
         9EBUB2+E/e5HQIRe7NDaBvK4YUqERjZcdaXq9QxBbIwBab378IFct4DeR5/fXnHU7Ypy
         lXyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=OzxYQu0TlX/LTq1Ofv0YeLtzcY6g+Z+eF4OMkOmTpcU=;
        b=hIBkHbGrdtij3pY5ghjEtkgbB3lBpjAqgbkScOtLd979Vg9wp3EWPc2f4e+ddPRhOP
         5pBe9iO7GsEhv6qP26sbTxozw2gs7kArkX45GtSSunJI3HPBuam/1Y24yL3hV/pb2cvl
         d2OZ5TTthDsbAfpOtQ9xDWbcVJl0WaS2mxO0xAhIqgC2nVIJLrHElvOfiYqlei4/rdui
         cabjWdpb4qDo8BipcQnOfvjZIOGSYy4d11viZQ4sJPNSD/R4C9xj0VTion2E7/Iy+5rZ
         5TGeNFT6NFol+0CoEtzzhUenvuFy9wLMdVQv077+CZ+Puowv5+VktrFxgqn/A//JfYRD
         CvRw==
X-Gm-Message-State: AGi0PuZlfaW5UfzKYXm9tQfVyct3LINqELZRsv5mqqurYYHb5B45l1hP
	T0881aivGMU27fNkEHVYQF1K81IFPHU=
X-Google-Smtp-Source: APiQypLmOE8UaVz/SPpd/UGFa54AAIDKZicPwegljAkbnt0Avatcs4hp2q6ZdaJunAkmGdOvNELxEQ==
X-Received: by 2002:a9d:3ee1:: with SMTP id b88mr8646020otc.355.1587493203849;
        Tue, 21 Apr 2020 11:20:03 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:3071:1f06:4ad8:19ff? ([2605:a601:ac3d:c100:3071:1f06:4ad8:19ff])
        by smtp.gmail.com with ESMTPSA id q206sm908220oib.2.2020.04.21.11.20.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 11:20:02 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [Yocto] Building Qt5 toolchain for windows
To: d.fourdrigniez@idplus.org.mx
References: <002301d61806$afd72030$0f856090$@idplus.org.mx>
Cc: Samuli Piippo <samuli.piippo@qt.io>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <085e51b2-4740-e41a-c7df-f0449b5ffb28@gmail.com>
Date: Tue, 21 Apr 2020 13:20:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <002301d61806$afd72030$0f856090$@idplus.org.mx>
Content-Type: multipart/alternative;
 boundary="------------60920F183BEAEB3E890D1F17"
Content-Language: en-US

--------------60920F183BEAEB3E890D1F17
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 4/21/20 1:00 PM, d.fourdrigniez@idplus.org.mx wrote:
>
> Hello,
>
> I知 working on a project and I need to build a Qt5 toolchain for Windows,
>
> I知 using meta-qt5 and meta-mingw and my build machine is an ubuntu 18.04
>
> However I keep having errors when i execute ｫbitbake 
> meta-toolchain-qt5ｻ, very much like the one in below forum thread
>
> https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html
>
> Am I doing something wrong? Could you help sending me some ideas on 
> how I could accomplish what I want?
>

I don't actually know a whole lot about cmake/qt5, so I'm not sure what 
would need to be done (other than what I've already stated in the 
message above). Samuli Piippo (cc'd) recently did some work to get cmake 
to build for MinGW, so he might have some insight.

> Thanks,
>
> Best regards,
>
> David Fourdrigniez.
>

--------------60920F183BEAEB3E890D1F17
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
    <div class="moz-cite-prefix">On 4/21/20 1:00 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:d.fourdrigniez@idplus.org.mx">d.fourdrigniez@idplus.org.mx</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:002301d61806$afd72030$0f856090$@idplus.org.mx">
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
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="FR">Hello,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">I知 working on a project
            and I need to build a Qt5 toolchain for Windows,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">I知 using meta-qt5 and
            meta-mingw and my build machine is an ubuntu 18.04<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">However I keep having
            errors when i execute ｫbitbake meta-toolchain-qt5ｻ, very
            much like the one in below forum thread<o:p></o:p></span></p>
        <p class="MsoNormal"><a
href="https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html"
            moz-do-not-send="true"><span lang="FR">https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><span lang="FR">Am I doing something
            wrong? Could you help sending me some ideas on how I could
            accomplish what I want?</span></p>
      </div>
    </blockquote>
    <br>
    <p>I don't actually know a whole lot about cmake/qt5, so I'm not
      sure what would need to be done (other than what I've already
      stated in the message above). Samuli Piippo (cc'd) recently did
      some work to get cmake to build for MinGW, so he might have some
      insight.</p>
    <blockquote type="cite"
      cite="mid:002301d61806$afd72030$0f856090$@idplus.org.mx">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">Best regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR">David Fourdrigniez.<o:p></o:p></span></p>
      </div>
    </blockquote>
  </body>
</html>

--------------60920F183BEAEB3E890D1F17--
