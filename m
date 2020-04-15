Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.18294.1586967809918738388
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 09:23:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TL4KeIHx;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id u65so194301pfb.4
        for <yocto@lists.yoctoproject.org>; Wed, 15 Apr 2020 09:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=M/EgzPpCOwcLZwI5DuB8XsmrMgM9p4WHE4KRxTYCqQc=;
        b=TL4KeIHxkMBBnbylCPMhyStf6Bf0NpV2i0fkUcKIVUYNGU+k+kyHifB4aX/Qfa5GKT
         E2zqf/GMgDbdk7wdagxJiY89UGKSly9OO7wkiI3u42vNRWH5sG9QUN1KkZZREYoE2Hbn
         EX29wuzLZ2VfiexRaX4PfyO4D9nrA/JPAZ3EzdTDiBEBU12SsSVM2THxkjJoI/Ret8P7
         0fJziJ65A3PDrqVKKbdfkDx1HJv0Bypfn+eCJcCDCjLNzrjke8agQZHA7g+3dH4fGYkF
         FcdUkFNbJFXnXcI8xM7dZ1Q29HHX4YhY39za7rOMxN3xHmpvTOoqMkdD8i7HGBS6HG1Z
         tk3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=M/EgzPpCOwcLZwI5DuB8XsmrMgM9p4WHE4KRxTYCqQc=;
        b=r35jYvbRaU7uEBv5UkipsNYOxBPqJONAwnxoV5uZDHEiWAY54A+eZmPP6RNoqNY4dZ
         IBtRPwp4LXYSeIWRMZa7XYZuaUDVm585ipEH97hY9egerjWs9YbrCfkhKXh2kbQ03zG8
         lVd0nRS3jJtBlXMeZDXv0OO9azmGCeKXlnntlv/6PCsKlG91CzlarjQVYE6llmkaXWVn
         hb34eMMU7BR8mmuwHSSwvGj4gj7f1w3IU33Elci9CNN0l46Y8pqIfBr9SLpvfnWDl5Rp
         gdY5dg4A++g/Qxi3r0RyNlW70oWrFr4zcOKeiPqWW/OB+DTqGkU1IdVVbR6SlgXiu6nJ
         pdtw==
X-Gm-Message-State: AGi0PuaexseJei5ZA3kDF2ADFjaZWWLZ71NHoiXZvMA65+cazOhWX0w6
	+ys3W28GunZZSwvj5Pwd6LI1fCTHTV0=
X-Google-Smtp-Source: APiQypLYKkRL2zn2xNam7kcA73nUtL9yNPz4bqR/antwwfVNbIyzx6LDmjGlmk38KrcbQyCnmYikYQ==
X-Received: by 2002:aa7:9632:: with SMTP id r18mr1341726pfg.215.1586967809065;
        Wed, 15 Apr 2020 09:23:29 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:c885:40f8:b7ee:f5bd? ([2601:202:4180:a5c0:c885:40f8:b7ee:f5bd])
        by smtp.gmail.com with ESMTPSA id g16sm5508954pgh.30.2020.04.15.09.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Apr 2020 09:23:28 -0700 (PDT)
Subject: Re: [yocto] Guidance Downgrading Python2 in Zeus #python
To: MikeB <mabnhdev@gmail.com>, yocto@lists.yoctoproject.org
References: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <27a5f0a8-25db-839a-64e8-c8481dd3fea5@gmail.com>
Date: Wed, 15 Apr 2020 09:23:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------A7437ABCB9A575B2032AABC3"
Content-Language: en-US

--------------A7437ABCB9A575B2032AABC3
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 4/15/20 9:16 AM, MikeB wrote:
> I'm working on a set of platforms that have a FIPs certified OpenSSL. 
> We are at version 1.0.2l.
>
> I've found that the new version of python in Zeus (2.7.17) requires a
> newer version of OpenSSL (1.1).
>
> We really don't want to go through a new round of certification, so we
> want to keep our current OpenSSL (1.0.2l).
>
> I think the easiest solution is to downgrade python 2 back to the
> version used by Sumo (2.7.15).
>
> I know how to downgrade simple recipes, but python is far from simple.
>
> Can someone give me some guidance on how to approach the downgrade of
> python2 in Zeus?

Have had a chance to look at this layer?
http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102-fips/

- armin
>
> Thanks, Mike
>
> 


--------------A7437ABCB9A575B2032AABC3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/15/20 9:16 AM, MikeB wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:US9q.1586967370403874617.w9z2@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      I'm working on a set of platforms that have a FIPs certified
      OpenSSL.  We are at version 1.0.2l.<br>
      <br>
      I've found that the new version of python in Zeus (2.7.17)
      requires a newer version of OpenSSL (1.1).<br>
      <br>
      We really don't want to go through a new round of certification,
      so we want to keep our current OpenSSL (1.0.2l).<br>
      <br>
      I think the easiest solution is to downgrade python 2 back to the
      version used by Sumo (2.7.15).<br>
      <br>
      I know how to downgrade simple recipes, but python is far from
      simple.<br>
      <br>
      Can someone give me some guidance on how to approach the downgrade
      of python2 in Zeus?<br>
    </blockquote>
    <br>
    Have had a chance to look at this layer?<br>
    <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102-fips/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-openssl102-fips/</a><br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:US9q.1586967370403874617.w9z2@lists.yoctoproject.org"><br>
      Thanks, Mike
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------A7437ABCB9A575B2032AABC3--
