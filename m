Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web09.9622.1578498254949509288
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Jan 2020 07:44:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=10jFWAz1;
 spf=temperror, err=temporary DNS error (domain: mvista.com, ip: 209.85.210.177, mailfrom: akuster@mvista.com)
Received: by mail-pf1-f177.google.com with SMTP id i23so1832983pfo.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 Jan 2020 07:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=AHm8U2HIWC4QFJbfWCU3a5M3RuDyi/jeSKFa2NRLQ6g=;
        b=10jFWAz1MEJk4eAMpZ598nARsKMymhV5zvi8knXegeH2oJZUtP3vl97YC9L6n7SWUr
         FssZwmOJUEUh05ZZmgrhDhHoQYPbU8Y/smr38CV8nX0mqG2YessKAQccys12rXwMBkBU
         qrO7ItogAAEVFPewd2+cJo0pBDeIt+Mu5oLrmKUBEkdfpcpf/G+Aa77HEu5tgliY7ch1
         PaO17cH4frtdPflN7R9YC3SHFXMww5FGKFA0L6yNRRtdBSobAMij+1mUg2uuAOTBgbJB
         wLC05gOQ91sHaW8CUcipaDHZnB03tbVbTTpYIbpDrsm6nZGDEVqY6jA/vpdJssu2aWmn
         Fzvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=AHm8U2HIWC4QFJbfWCU3a5M3RuDyi/jeSKFa2NRLQ6g=;
        b=eNjElGWbESOfjzLqMtu4+BQc/C5WZXawt7vNmm1I0YoTMWeOhUP+LVaf/8bmjJj6RD
         OJY9UEM3bCsaf/8L9FPJwVFsqHh1pwhrLJiRTsHfLdf231AEfkZmap/7reZIyFS/zcFO
         T1rg28xB+tHpJZxZW3O1gEVITUmi33vQvBKy4lNg87yiL1OPuOZkxQpe/VEm7oRpiF4x
         a5UelnVl3rvUmqbHAehYMkOiInHqjRsi7/yhIm6jLdXot4e5bhiCj0u4qRpuCN3M5nsz
         r69zNYf3NGBLF2DbFXRAoRIRGbBobJjdp5yL3d24h3ikAz/tUd46vENmfnlI+2aBNJzY
         QKMQ==
X-Gm-Message-State: APjAAAW0K9lMJnzfO19HjQ544F6zXIUi6dJTsEvYHqwFpuFB+fQr0gBa
	c0sJrc4+HmUpqLHXhXfsRgDztvDi6JE=
X-Google-Smtp-Source: APXvYqzY2rQPqORVkw3d//qCUN+fYg5evb6/3IiEllDo5+3P8GWIyQ6caNNXW9paeeaQk7zBeBtMCw==
X-Received: by 2002:aa7:8007:: with SMTP id j7mr5687280pfi.71.1578498254124;
        Wed, 08 Jan 2020 07:44:14 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:fda8:efcd:67f0:45fb? ([2601:202:4180:a5c0:fda8:efcd:67f0:45fb])
        by smtp.gmail.com with ESMTPSA id y21sm4157447pfm.136.2020.01.08.07.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 07:44:13 -0800 (PST)
Subject: Re: [yocto] Maintaining patchtest
To: Paul Barker <pbarker@konsulko.com>, yocto@lists.yoctoproject.org
References: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <db3780e1-3a18-9172-42f4-435798468c0d@mvista.com>
Date: Wed, 8 Jan 2020 07:44:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------E6E311881D955B6E40967841"
Content-Language: en-US

--------------E6E311881D955B6E40967841
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Paul,

Thanks for stepping up as the Maintainer.

- Armin

On 1/8/20 4:48 AM, Paul Barker wrote:
> Hi all,
>
> After discussion on the technical call yesterday I'm looking at
> becoming the maintainer of patchtest
> (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/) and
> patchtest-oe (http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/)
> for Yocto Project.
>
> Aside from a few minor issues I think patchtest is working pretty well
> at the moment so I don't want to rock the boat too much. However I do
> want to extend patchtest in a couple of ways:
>
> * Support testing commits on a branch as well as patches in a
> directory. This will allow integration with merge request workflows as
> well as patches-by-email workflows.
>
> * Support testing patches to other layers as well as oe-core. This
> will require splitting the test cases into a "common" set which apply
> to all layers (e.g. "Signed-off-by" must be present in a patch) and an
> "oe-core specific" set (e.g. bugzilla reference validation which may
> not be relevant for third-party layers). Other layers will then be
> able to include their own test cases.
>
> * Make it easier to run patchtest locally before submitting patches to the list.
>
> I also want to simplify future maintenance of patchtest in a couple of ways:
>
> * Move existing test cases from patchtest-oe into oe-core itself.
> Archive off the old patchtest-oe repository.
>
> * Consider if patchtest itself can be moved into oe-core as a script.
> This is desirable but there would be a few issues to overcome, I need
> to look into how patchtest is actually invoked by patchwork on the
> server side first.
>
> * If patchtest is to remain a separate repository then I'll move
> development to GitLab with git.yoctoproject.org becoming a mirror.
> This will allow automation of a few things like the deployment of new
> patchtest versions to the server after committing to the master
> branch.
>
> I've also still got my eye on other ways we can support merge request
> workflows for layers that want to use this but December got busy.
>
> I'll give this a week for people to reply with feedback and then
> submit patches to update the maintainers files in patchtest &
> patchtest-oe.
>
> Thanks,
> Paul
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47886): https://lists.yoctoproject.org/g/yocto/message/47886
> Mute This Topic: https://lists.yoctoproject.org/mt/69526934/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------E6E311881D955B6E40967841
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Paul,<br>
    <br>
    Thanks for stepping up as the Maintainer. <br>
    <br>
    - Armin<br>
    <br>
    <div class="moz-cite-prefix">On 1/8/20 4:48 AM, Paul Barker wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAM9ZRVsXhTJzF11xqTp11f3jFYztg7QhrsRq0DLkAnV9n5+=1g@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">Hi all,

After discussion on the technical call yesterday I'm looking at
becoming the maintainer of patchtest
(<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/">http://git.yoctoproject.org/cgit/cgit.cgi/patchtest/</a>) and
patchtest-oe (<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/">http://git.yoctoproject.org/cgit/cgit.cgi/patchtest-oe/</a>)
for Yocto Project.

Aside from a few minor issues I think patchtest is working pretty well
at the moment so I don't want to rock the boat too much. However I do
want to extend patchtest in a couple of ways:

* Support testing commits on a branch as well as patches in a
directory. This will allow integration with merge request workflows as
well as patches-by-email workflows.

* Support testing patches to other layers as well as oe-core. This
will require splitting the test cases into a "common" set which apply
to all layers (e.g. "Signed-off-by" must be present in a patch) and an
"oe-core specific" set (e.g. bugzilla reference validation which may
not be relevant for third-party layers). Other layers will then be
able to include their own test cases.

* Make it easier to run patchtest locally before submitting patches to the list.

I also want to simplify future maintenance of patchtest in a couple of ways:

* Move existing test cases from patchtest-oe into oe-core itself.
Archive off the old patchtest-oe repository.

* Consider if patchtest itself can be moved into oe-core as a script.
This is desirable but there would be a few issues to overcome, I need
to look into how patchtest is actually invoked by patchwork on the
server side first.

* If patchtest is to remain a separate repository then I'll move
development to GitLab with git.yoctoproject.org becoming a mirror.
This will allow automation of a few things like the deployment of new
patchtest versions to the server after committing to the master
branch.

I've also still got my eye on other ways we can support merge request
workflows for layers that want to use this but December got busy.

I'll give this a week for people to reply with feedback and then
submit patches to update the maintainers files in patchtest &amp;
patchtest-oe.

Thanks,
Paul
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47886): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47886">https://lists.yoctoproject.org/g/yocto/message/47886</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/69526934/1024635">https://lists.yoctoproject.org/mt/69526934/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------E6E311881D955B6E40967841--
