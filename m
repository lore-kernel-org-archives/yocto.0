Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web09.24687.1577658490060408304
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Dec 2019 14:28:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICvtg63m;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id r67so7075351pjb.0
        for <yocto@lists.yoctoproject.org>; Sun, 29 Dec 2019 14:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=2bvnhyvm0VCEVq1Yzb7a6hGDxg9dXBXUWw04vzUFLqo=;
        b=ICvtg63mFRkTCkS5WinaXzZ/L3R7YIPAjfKZkYH3F5tdLxs9FNtya6nNig+vbmA3fM
         OZDztJydEpS4Ejt170+sNRI6j4WS4ROOxsp3eUKlhvPydLZrRQE3aPFf4ZNwC21wk8T6
         C0tytYv/F5RDcz1sNtmKQws9IQdZftjheRkar0LToRlJU99akSU9sWpIM+5zl89kKHss
         NaN1+RtZA0NtOQ7RsAU4EPfdKskJAoHzeLYd90JfSDkEQBs9Tg/as8IYLm3gDEf+q0kh
         pQxlcAE8fR8bGCWMulifSuLKMkWcoFc0kIjAQBTNzJryUuoi6n4T6mSS5+vqBaWok8+n
         U50Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=2bvnhyvm0VCEVq1Yzb7a6hGDxg9dXBXUWw04vzUFLqo=;
        b=Y3GX1aiAZeO/hyCMwA1Mpa/692GEuaNYmmDECmGc0rgZK3Q58RyuQA3VMxRqfMeb0j
         jpkmzwUrRljhk6wSZ7P7ojh1hOPDoVVW7YnS4cUgx7skjYxH1KnEPQUtF5Wge/cb/Nt3
         5U4MyybXA84tjaH6uEjos53IqpSd0tETGgmKcr/Qj/L9KXvAm7mfMNnl8tHtACZs2T/A
         HMlXPNFInjRm4avXuqCEikb6pKrTo/rZz9F8/ydRpapHQgpGyKjJCv0myyFvjqIH4uQP
         u+ZSHzkHNqErYybTtag5+0oRwuhJBSBjvS5SzemLwz5GBjH5iz1HPqQiJtdivpux1kWk
         qUog==
X-Gm-Message-State: APjAAAVjb3TeK4jo8e+RxUZbp2zNnt+skb/dViXGI4i+DTEN91zN74Mc
	Z1pi+flyLoOkDmfZXrq/kEeuzJR4fuk=
X-Google-Smtp-Source: APXvYqwFZdkJKhQJRMPXQVqYNS+NhSLbLEzysZ2XnnPYyNBjDw+HhLW2q3l92IPLrql7W16dA7KjLg==
X-Received: by 2002:a17:902:bc45:: with SMTP id t5mr63898343plz.163.1577658489207;
        Sun, 29 Dec 2019 14:28:09 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:20cf:8050:623b:d06d? ([2601:202:4180:a5c0:20cf:8050:623b:d06d])
        by smtp.gmail.com with ESMTPSA id 189sm50135618pfw.73.2019.12.29.14.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2019 14:28:08 -0800 (PST)
Subject: Re: [yocto] #yocto devtool option -S seems broken
To: Thilo Graf <dbt@novatux.de>, yocto@lists.yoctoproject.org
References: <A8Hx.1577653562917559597.Z5Hs@lists.yoctoproject.org>
From: "Armpit" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <d719fa46-bea7-c870-2e74-62b070e73c59@gmail.com>
Date: Sun, 29 Dec 2019 14:28:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <A8Hx.1577653562917559597.Z5Hs@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------D2C5911AF97826ED21629A24"
Content-Language: en-US

--------------D2C5911AF97826ED21629A24
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 12/29/19 1:06 PM, Thilo Graf wrote:
> Hi
>
> I 've used the devtool option -S to upload striped binaries to my test
> hardware but binaries are not executable. The rights were only set to 644.
> Without -S it works fine. Can anybody verifiy this issue? I'm using
> the current yocto zeus branch.

Can you verify Master please.

- armin
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47834): https://lists.yoctoproject.org/g/yocto/message/47834
> Mute This Topic: https://lists.yoctoproject.org/mt/69321704/1024635
> Mute #yocto: https://lists.yoctoproject.org/mk?hashtag=yocto&subid=6691541
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------D2C5911AF97826ED21629A24
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/29/19 1:06 PM, Thilo Graf wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:A8Hx.1577653562917559597.Z5Hs@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hi<br>
      <br>
      I 've used the devtool option -S to upload striped binaries to my
      test hardware but binaries are not executable. The rights were
      only set to 644.<br>
      Without -S it works fine. Can anybody verifiy this issue? I'm
      using the current yocto zeus branch.
      <br>
    </blockquote>
    <br>
    Can you verify Master please.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:A8Hx.1577653562917559597.Z5Hs@lists.yoctoproject.org">
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47834): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47834">https://lists.yoctoproject.org/g/yocto/message/47834</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/69321704/1024635">https://lists.yoctoproject.org/mt/69321704/1024635</a>
Mute #yocto: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mk?hashtag=yocto&amp;subid=6691541">https://lists.yoctoproject.org/mk?hashtag=yocto&amp;subid=6691541</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------D2C5911AF97826ED21629A24--
