Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web10.10765.1591105022298019395
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 06:37:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=md2fb7A9;
 spf=pass (domain: gmail.com, ip: 209.85.166.181, mailfrom: jpewhacker@gmail.com)
Received: by mail-il1-f181.google.com with SMTP id p5so11816494ile.6
        for <yocto@lists.yoctoproject.org>; Tue, 02 Jun 2020 06:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=fsqus19xR9uh31w2IyuxeFPcikTGZhFpYOf1rKWEqgE=;
        b=md2fb7A9zCmZGFvGBzrpPf6u8S9pcPHLBl7nQ9sC/6zp1Vy+8hwCnf7k34B3uVWEPm
         +HafOCY8uYByRdBTsSSKEGzE1Ss3RaPVgilk3SA5rWPAZpLVp0iqVMIhSE+lAPzOf6Yw
         xNcMTw8SbweCT+vwFq373VKKPDl1eYqrlrkEUto1GWV5Ml/gUydXKWHWYOMKPVQDTEbn
         4AeLXOqxznogrVRsMRQP9AhFNvK4R5CdjfyCeL1L4yQwLqTSLnCAs9nAAyhmElCdLroD
         mB/bONzzVaNFRfUru8ZQ33rw8O7C2uhigIP/g7whrB8Ha8+SEYSS2gXSLS0D8BnUZEzE
         kgvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=fsqus19xR9uh31w2IyuxeFPcikTGZhFpYOf1rKWEqgE=;
        b=E3GjYiPM44QQiOKq371nWUYrvEsef9iNypwas8F7W/Lkw4xIWM18zT53OGgbkIzRLR
         Bs1R5aeL9UuSA7XUolUhkcb+HqBAuXwTiYHE70yWHWsXOa5gYKhG/jTfja06ZFeG7ue8
         kfKgxJ9SVrO5/YST8Uphnz/Uj/LErjWT435RofcYTdGgfBpjcZNJ50rrZaJDutqEblRY
         JurJPt25nc2dXyNYoZAhvhUIxDFrYwbyizkoSF6R0qRVbIULNw2RnHQIj+gAnQf1imxj
         VIjzs43P5G0uFR6kubMIZOC1PMOM9vpMcfyxwqmh30KBRbvS8nqRWIHwwEheHgCpjDmG
         T7WQ==
X-Gm-Message-State: AOAM531KHeLTtQA3LTyCjIqc2JIBhfXWO+lABHIdXOnW3HM6WrU/ta1A
	5qo02NLFeiOR5saHzQil4MrbQdhA9QM=
X-Google-Smtp-Source: ABdhPJxVgf4U0kjQI5qB2+gCks/bnYQF8RjpsEzfyYr1g8XVTSCy0kQp9cn0mw3cvYvlsj4ZoHp/9A==
X-Received: by 2002:a92:c948:: with SMTP id i8mr26012715ilq.258.1591105021531;
        Tue, 02 Jun 2020 06:37:01 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:b01b:daad:c850:7bb9? ([2605:a601:ac3d:c100:b01b:daad:c850:7bb9])
        by smtp.gmail.com with ESMTPSA id q75sm1070384iod.22.2020.06.02.06.37.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2020 06:37:00 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: [meta-mingw]: Static libraries (was: meta-mingw)
To: Edgar Chaves <edgarchvs11@gmail.com>
References: <CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <a4309ce9-b4d2-afd5-49e2-a65c463c34a6@gmail.com>
Date: Tue, 2 Jun 2020 08:37:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------8F76C3AB1CB461A73D3432D2"
Content-Language: en-US

--------------8F76C3AB1CB461A73D3432D2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

CC'in the mailing list.

On 6/1/20 10:39 PM, Edgar Chaves wrote:
> Hi
>
> I want to ask about meta-mingw static libraries for Windows. The thing 
> is that I don't get ".lib" in the SDK. Do you have any information 
> about that?

meta-mingw is primarily intended to build and SDK that allows you to 
cross compile for a Linux target from a Windows host, so including the 
static libraries for the Windows portions doesn't really make sense. I 
think there has been a little discussions about making and SDK that 
cross compiles for Windows, but I don't recall where that went.

Perhaps you can clarify what your use case is?


>
> Thank you, I'd appreciate your answer.
>
> —Edgar

--------------8F76C3AB1CB461A73D3432D2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>CC'in the mailing list.<br>
    </p>
    <div class="moz-cite-prefix">On 6/1/20 10:39 PM, Edgar Chaves wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>
          <div>
            <div>Hi<br>
              <br>
            </div>
            I want to ask about meta-mingw static libraries for Windows.
            The thing is that I don't get ".lib" in the SDK. Do you have
            any information about that?<br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>meta-mingw is primarily intended to build and SDK that allows you
      to cross compile for a Linux target from a Windows host, so
      including the static libraries for the Windows portions doesn't
      really make sense. I think there has been a little discussions
      about making and SDK that cross compiles for Windows, but I don't
      recall where that went.<br>
    </p>
    <p>Perhaps you can clarify what your use case is?<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com">
      <div dir="ltr">
        <div>
          <div><br>
          </div>
          Thank you, I'd appreciate your answer.<br>
          <br>
        </div>
        <span class="gmail-st">—</span>Edgar<br>
      </div>
    </blockquote>
  </body>
</html>

--------------8F76C3AB1CB461A73D3432D2--
