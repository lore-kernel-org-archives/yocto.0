Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.332.1592337585580893018
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2020 12:59:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0uLc/jE;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: jpewhacker@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id j4so5626136plk.3
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2020 12:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=L+CC7uP1B/KtMl7Os8DgfHbJy7+r0XZmPjgKY7xPbvQ=;
        b=W0uLc/jE/KWt36+H0K6TEbvwxJwxU4Y8xDY0oLtzuvP/JDfGZZHmxq+mHy8X/rmk6u
         XWeFSA6elq41kLDcrUmVqLlpYDfrJgqKNNYRBHbiJe1IoCZMTtNcrcwpZ84ytkoAgGLA
         hszNyta6Nm88+kXheVCcqI7Amd9UQ7TCfF8yNlB1ZATdOu5pkwWy9dwDQ6el8Qnk3GRh
         XfrSJzGR9ibL+ieqH9WFrHcXvXhQn8wRZGrwkhSMGCNku3iZSqczHNW0ZC1aQZmBPXYP
         SijYxTm73MKkwm/+/Ybedo8j4duudg+p25keauq8PSD6ZVjl/nDBj1OEMHRFDiUHhkEA
         s7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=L+CC7uP1B/KtMl7Os8DgfHbJy7+r0XZmPjgKY7xPbvQ=;
        b=PjyIzK76QdYIMspRH3yllBkA1dhh+FhgjVmLqiTbLx3ZDQ75YdBV0I6er/fez2PgPB
         5aHG5LBWMGGaVdS7YYgdCNI7QCRbGvo6z72NzrfDj1yIOue83yB4Uczh7fg5OBzLB1Hf
         aFSEPoPMVWokCuZO+mgxLuy3z3/hW56UY/NSjtYT5IY81Tiy2/CfkRqFmRTiYiMmRfWV
         jA4f9mdMdfuLSGDawzRsYuphEux4lzb1AXVv/Mo10ft8ez0eKJvaasz3idHIm6Xc5nuY
         kuidBSGQWMy6VAw54MVCcG+KZyEqzCPRfNmOla4HSgHWbi/RV5QNaCi1dMGExGxT0vgM
         gB6A==
X-Gm-Message-State: AOAM530Q58sIPGuBdQLacxWIQRYcTi9lUWxuEriG4D3/zc1rgBfIz7r9
	4HQq2u+SWN3B7MBXEWb9i8etR4hN
X-Google-Smtp-Source: ABdhPJxtPhW7W8EWx0c5J9IRXw9YzsFVToKdWXSwVOxkDkkuHO/ax75cbWSaZCgjAhFViL6GjlovnA==
X-Received: by 2002:a17:90a:247:: with SMTP id t7mr4280866pje.33.1592337584799;
        Tue, 16 Jun 2020 12:59:44 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:28e0:c236:d6c3:296a? ([2605:a601:ac3d:c100:28e0:c236:d6c3:296a])
        by smtp.gmail.com with ESMTPSA id e78sm17917780pfh.50.2020.06.16.12.59.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 12:59:44 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [meta-mingw]: Static libraries
To: Edgar Chaves <edgarchvs11@gmail.com>
References: <CAK6d4ekRt99dBF=d4_nc_C2aRCWcLQG=hyxfLyz4qd_gZXqMSw@mail.gmail.com>
 <a4309ce9-b4d2-afd5-49e2-a65c463c34a6@gmail.com>
 <CAK6d4ekjJdq4nGF9GeCT5DwZS5G8neuJAe4vUV+6jMGq6RCFFw@mail.gmail.com>
 <CAK6d4ekda-LrmyHtgFgBC1SSafCXb6HmKOYWOd0W2f28JUA_pA@mail.gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <467fc7f8-d447-d85b-511a-4cc103f94b7a@gmail.com>
Date: Tue, 16 Jun 2020 14:59:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAK6d4ekda-LrmyHtgFgBC1SSafCXb6HmKOYWOd0W2f28JUA_pA@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------E24ECF1B1CCB62946742DBD1"
Content-Language: en-US

--------------E24ECF1B1CCB62946742DBD1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Please "Reply-All" to keep the discussion on the mailing list

On 6/16/20 1:05 PM, Edgar Chaves wrote:
> Hi, do you have thoughts about this?
>
> My concern is that *-staticdev part of nativesdk-* providers is not 
> deployed correctly.


nativesdk-*-staticdev packages shouldn't be included in the SDK. 
nativesdk- recipes are intended to run on the host where the SDK is 
extracted, and that SDK will be used to compile software for some 
target. The SDK isn't intended to be able to compile more software for 
running on the SDK host itself, so none of the development files for 
nativesdk recipes are included in SDK iteself.

Practically speaking, this means that the SDK will not include a package 
like nativesdk-curl-staticdev (which is used to build SDK host 
software), but it could include curl-staticdev (which is used by the SDK 
to build target software).


>
> El mié., 3 jun. 2020 a las 19:37, Edgar Chaves (<edgarchvs11@gmail.com 
> <mailto:edgarchvs11@gmail.com>>) escribió:
>
>     OK. Let me correct it.
>
>     I believe the layer and recipes are missing some packaging,
>     therefore I'm missing /some/ .a libraries in the SDK.
>
>     Something like this: FILES_${PN} += " ${baselib_dir}"
>
>     El mar., 2 jun. 2020 a las 7:37, Joshua Watt
>     (<jpewhacker@gmail.com <mailto:jpewhacker@gmail.com>>) escribió:
>
>         CC'in the mailing list.
>
>         On 6/1/20 10:39 PM, Edgar Chaves wrote:
>>         Hi
>>
>>         I want to ask about meta-mingw static libraries for Windows.
>>         The thing is that I don't get ".lib" in the SDK. Do you have
>>         any information about that?
>
>         meta-mingw is primarily intended to build and SDK that allows
>         you to cross compile for a Linux target from a Windows host,
>         so including the static libraries for the Windows portions
>         doesn't really make sense. I think there has been a little
>         discussions about making and SDK that cross compiles for
>         Windows, but I don't recall where that went.
>
>         Perhaps you can clarify what your use case is?
>
>
>>
>>         Thank you, I'd appreciate your answer.
>>
>>         —Edgar
>

--------------E24ECF1B1CCB62946742DBD1
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Please "Reply-All" to keep the discussion on the mailing list<br>
    </p>
    <div class="moz-cite-prefix">On 6/16/20 1:05 PM, Edgar Chaves wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAK6d4ekda-LrmyHtgFgBC1SSafCXb6HmKOYWOd0W2f28JUA_pA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">
        <div>Hi, do you have thoughts about this?<br>
          <br>
        </div>
        My concern is that *-staticdev part of nativesdk-* providers is
        not deployed correctly. <br>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>nativesdk-*-staticdev packages shouldn't be included in the SDK.
      nativesdk- recipes are intended to run on the host where the SDK
      is extracted, and that SDK will be used to compile software for
      some target. The SDK isn't intended to be able to compile more
      software for running on the SDK host itself, so none of the
      development files for nativesdk recipes are included in SDK
      iteself.</p>
    <p>Practically speaking, this means that the SDK will not include a
      package like nativesdk-curl-staticdev (which is used to build SDK
      host software), but it could include curl-staticdev (which is used
      by the SDK to build target software).<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:CAK6d4ekda-LrmyHtgFgBC1SSafCXb6HmKOYWOd0W2f28JUA_pA@mail.gmail.com"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">El mié., 3 jun. 2020 a las
          19:37, Edgar Chaves (&lt;<a
            href="mailto:edgarchvs11@gmail.com" moz-do-not-send="true">edgarchvs11@gmail.com</a>&gt;)
          escribió:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">OK. Let me correct it.<br>
            <div><br>
              I believe the layer and recipes are missing some
              packaging, therefore I'm missing <i>some</i> .a libraries
              in the SDK.<br>
              <br>
            </div>
            <div>Something like this: FILES_${PN} += " ${baselib_dir}"<br>
            </div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">El mar., 2 jun. 2020 a las
              7:37, Joshua Watt (&lt;<a
                href="mailto:jpewhacker@gmail.com" target="_blank"
                moz-do-not-send="true">jpewhacker@gmail.com</a>&gt;)
              escribió:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div>
                <p>CC'in the mailing list.<br>
                </p>
                <div>On 6/1/20 10:39 PM, Edgar Chaves wrote:<br>
                </div>
                <blockquote type="cite">
                  <div dir="ltr">
                    <div>
                      <div>
                        <div>Hi<br>
                          <br>
                        </div>
                        I want to ask about meta-mingw static libraries
                        for Windows. The thing is that I don't get
                        ".lib" in the SDK. Do you have any information
                        about that?<br>
                      </div>
                    </div>
                  </div>
                </blockquote>
                <p>meta-mingw is primarily intended to build and SDK
                  that allows you to cross compile for a Linux target
                  from a Windows host, so including the static libraries
                  for the Windows portions doesn't really make sense. I
                  think there has been a little discussions about making
                  and SDK that cross compiles for Windows, but I don't
                  recall where that went.<br>
                </p>
                <p>Perhaps you can clarify what your use case is?<br>
                </p>
                <p><br>
                </p>
                <blockquote type="cite">
                  <div dir="ltr">
                    <div>
                      <div><br>
                      </div>
                      Thank you, I'd appreciate your answer.<br>
                      <br>
                    </div>
                    <span>—</span>Edgar<br>
                  </div>
                </blockquote>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------E24ECF1B1CCB62946742DBD1--
