Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.2318.1581986232749615116
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 16:37:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=WGNt1+qh;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.182, mailfrom: akuster@mvista.com)
Received: by mail-pg1-f182.google.com with SMTP id u12so9695480pgb.10
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 16:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=BmTHPal9CT5eumikEEFNUerUxilb4XdHzXsLjCcw+aA=;
        b=WGNt1+qhuk1NnNpB929IpIeaQns1xBeNyPsXcZzycHHg9rXBv+AAV4O3vV1KszAsOF
         sOqPBpSxGvt7brNPXMHLlCaSelJUvLhIJWNL00Hzlx/NV0zD8I43E5FnTuDqFeFWZ1C0
         LP9WkQ51tbdzIaF7PTde/NKKoYphjvilGpVs0EfLuLx5d6fs4Ys0bA+mNCit3gA9LSO8
         kgvcKi99dU7iFKQWQhFdZVIwminLqJSBMrrU6Jky9C45+AmOr+8E1tqrDvqwrOZ0iV8D
         iqMs1hBO9LpJYdagdswoIxypg6mr8LhjGEq3w81Bh/LzVwKCp+RPItQ4moUWcbvPD6ir
         6cXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=BmTHPal9CT5eumikEEFNUerUxilb4XdHzXsLjCcw+aA=;
        b=VMnNE+B77njoEszzS61uMg4uDhq782qWa+QguRFJ87jqC/U8Dag6hkpTZlhZ0n5vvP
         SJgwdyDhWGlA4olcsO0paiB0fhtDj1jvRKAvJBs/HcE2RtqX82XbA8VxX7MAfqGcLpu5
         QL6ft83xbfS0kXxK6r6lbCPBgV1WpBuPceFucJlVr/mFvWBPlsEsOAmAZZCRUvBRyCK3
         +4qmVNtYYvb8rCh79bK0KX8h2ke0axNlEA93jes0ZtPZXlYnBZUsCGTzBOyKpGhEuQpP
         mKxEbQ6cSJUZqrP5wF4a464mEsEr2quKp7kxrQTOglw8WnIsjG9ksb/0DCjWRWQccmua
         WJBw==
X-Gm-Message-State: APjAAAWMltJKy9viBe5VbYZRxqBsTEbIhEBZdyfk4qd46YVNs/bqCi26
	WYby9aO11uB6H42WXkeMp1vmGspeGOU=
X-Google-Smtp-Source: APXvYqzcF7362SYcb2xixx9dHYMcxXp+9Nu2H5WpcOQDfnukQidy2SyCf9WSbY73mkgU/NHVkuFV1Q==
X-Received: by 2002:a63:1a21:: with SMTP id a33mr20806028pga.421.1581986231566;
        Mon, 17 Feb 2020 16:37:11 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:103:47a6:6829:8136? ([2601:202:4180:a5c0:103:47a6:6829:8136])
        by smtp.gmail.com with ESMTPSA id l29sm1978569pgb.86.2020.02.17.16.37.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 16:37:10 -0800 (PST)
Subject: Re: [yocto] master/master-next missing from poky repo?
To: Michael Halstead <mhalstead@linuxfoundation.org>,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
References: <CANNYZj8ux3H3-17eb1MFGFhG_vQDThxV+_gn4BEFH-PRjWUdsA@mail.gmail.com>
 <18b267a0b9ca83560766ef1c3cd8d1db77744128.camel@linuxfoundation.org>
 <CADfgfobQUSu3xSqCmimLgD+DBB598GJsnC4w+tzbn9djWWRmaw@mail.gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <450b5173-ff5a-f8ca-1601-9a76343c5b3c@mvista.com>
Date: Mon, 17 Feb 2020 16:37:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CADfgfobQUSu3xSqCmimLgD+DBB598GJsnC4w+tzbn9djWWRmaw@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------8CBFEF109171C7A0715F2B90"
Content-Language: en-US

--------------8CBFEF109171C7A0715F2B90
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Thanks for working on a holiday Micheal.

- armin

On 2/17/20 2:49 PM, Michael Halstead wrote:
> The caching issues are resolved as well as a tricky permissions issue.
> These repositories are operating correctly again.
>
> Please let me know if issues persist.
>
> -- 
> Michael Halstead
>
> On Sat, Feb 15, 2020 at 2:44 AM Richard Purdie
> <richard.purdie@linuxfoundation.org
> <mailto:richard.purdie@linuxfoundation.org>> wrote:
>
>     On Sat, 2020-02-15 at 11:41 +0100, Alexander Kanavin wrote:
>     > Something is wrong, as master and master-next are missing here?
>     > http://git.yoctoproject.org/cgit/cgit.cgi/poky/
>
>     There is something wrong with the http caching on the git server. The
>     branches are there, they're just not appearing immediately in the web
>     protocol. I know Michael is aware and has been working on it.
>
>     You can access them using the git protocol if that helps.
>
>     Cheers,
>
>     Richard
>
>
> 


--------------8CBFEF109171C7A0715F2B90
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Thanks for working on a holiday Micheal.<br>
    <br>
    - armin<br>
    <br>
    <div class="moz-cite-prefix">On 2/17/20 2:49 PM, Michael Halstead
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CADfgfobQUSu3xSqCmimLgD+DBB598GJsnC4w+tzbn9djWWRmaw@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">The caching issues are resolved as well as a tricky
        permissions issue. These repositories are operating correctly
        again.
        <div><br>
        </div>
        <div>Please let me know if issues persist.</div>
        <div><br>
        </div>
        <div>-- </div>
        <div>Michael Halstead</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sat, Feb 15, 2020 at 2:44
          AM Richard Purdie &lt;<a
            href="mailto:richard.purdie@linuxfoundation.org"
            moz-do-not-send="true">richard.purdie@linuxfoundation.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Sat, 2020-02-15 at 11:41 +0100, Alexander Kanavin wrote:<br>
          &gt; Something is wrong, as master and master-next are missing
          here?<br>
          &gt; <a
            href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://git.yoctoproject.org/cgit/cgit.cgi/poky/</a><br>
          <br>
          There is something wrong with the http caching on the git
          server. The<br>
          branches are there, they're just not appearing immediately in
          the web<br>
          protocol. I know Michael is aware and has been working on it.<br>
          <br>
          You can access them using the git protocol if that helps.<br>
          <br>
          Cheers,<br>
          <br>
          Richard<br>
          <br>
        </blockquote>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------8CBFEF109171C7A0715F2B90--
