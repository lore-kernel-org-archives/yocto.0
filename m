Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.719.1575761545581664197
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Dec 2019 15:32:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SYEVI/4a;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id j11so3153003pjs.1
        for <yocto@lists.yoctoproject.org>; Sat, 07 Dec 2019 15:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=Pxw6AZi/SYjSnRb++BlQd1RH0NaqG3B7yrxjq9/UQ7Y=;
        b=SYEVI/4akwQaJy2nIMVt1VnKc6T+VnMpBdlSzV1INiXHI0EXBYbkNOUPgxLOWJ9Dd8
         uPw26ZSqQzC19AAdZiT8Kx0RkIpX0tBpyWS+tXbtGzaZ8a4zCCPFHE0kTGO6lTs9LY06
         FZ3f7whOo/4NdUCloRtVD30KXudgsAOlM0GIvNyMcpHlQ3py9tvOXDLMHlEps+AlGDJ6
         dq3o/Ji6ff7zGgxBxi3ZS7644IW1fIXUoLF0e0P0uj6cZ7pEwrL2SujpUkWBnSIA1AVL
         Gx5DKZq+lMEr/T51dZ5icnlP0DNm5hxO/F4+5nElM8+UlNJWLhXBcYyn4gajI0etUrMx
         8uuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=Pxw6AZi/SYjSnRb++BlQd1RH0NaqG3B7yrxjq9/UQ7Y=;
        b=Dq2/8dV5uEy89f/tBfv1alDuZ6REhXJ4qmZpJH6wVQEx51xShY1/P767hqziYviRxT
         XCZAnq+s2c6PgmU3VwZe3SdaJ5ZZVRoByVoDj/DTGCKCIvbKviQW6rnkcImOTx7Oto7A
         jR92xgdsGCrhfjD5kzLrYjttDJlIw4nozIc5iw7N0ffvZs+PX8damAem+fhLBgG3rAXx
         Led3j1/gCDhh5Lh09F1v98bTn/ghR9EUS7X+eKT+Tj5KwbKmEpptk02Vg7J+hrgMr2Nh
         YJ+sztU7xN8HZ5dvDqpSyPpuY2e3KXL7suq6DxmbET0XaryaeTJwQLoF47jxfVBleiFh
         5lcg==
X-Gm-Message-State: APjAAAVfkHcMYSx+CfzPVYLREldfxe/CGthN+TbPLQX6pcGNO/rEpKkk
	qf2bgSDxXPGHkP+0/h0jZVJW2ql+9PU=
X-Google-Smtp-Source: APXvYqxoNb/6JKdjPt7IsjA4FHS/eN66tMNe+2gzbd/seXwcFVtZa9Mc+xZlYbtpCWGdBGvpQ2a+MA==
X-Received: by 2002:a17:902:7102:: with SMTP id a2mr22393635pll.301.1575761544644;
        Sat, 07 Dec 2019 15:32:24 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:3455:774a:6986:fc08? ([2601:202:4180:a5c0:3455:774a:6986:fc08])
        by smtp.gmail.com with ESMTPSA id r62sm22752313pfc.89.2019.12.07.15.32.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Dec 2019 15:32:24 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH 0/2] tpm2-abrmd: startup fixes
To: diego.santacruz@spinetix.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20191206101334.18436-1-Diego.SantaCruz@spinetix.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <fab55f5a-c77d-a9aa-c81b-91f40d279b77@gmail.com>
Date: Sat, 7 Dec 2019 15:32:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191206101334.18436-1-Diego.SantaCruz@spinetix.com>
Content-Type: multipart/alternative;
 boundary="------------9FC6568986A0FB86F7E4FF8B"
Content-Language: en-US

--------------9FC6568986A0FB86F7E4FF8B
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

merged.
thanks,
Armin

On 12/6/19 2:13 AM, Diego Santa Cruz via Lists.Yoctoproject.Org wrote:
> This ports patches from the meta-measured layer that fix tpm2-abrmd
> not starting up.
> The first patch is necessary on kernels 4.12 and later.
> The second patch is necessary after the update to 2.3.0.
>
> Philip Tricca (1):
>   tpm2-abrmd: Port command line options to new version.
>
> Trevor Woerner (1):
>   tpm2-abrmd-init.sh: fix for /dev/tpmrmX
>
>  meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 +-
>  meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47581): https://lists.yoctoproject.org/g/yocto/message/47581
> Mute This Topic: https://lists.yoctoproject.org/mt/67467010/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------9FC6568986A0FB86F7E4FF8B
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    merged.<br>
    thanks,<br>
    Armin<br>
    <br>
    <div class="moz-cite-prefix">On 12/6/19 2:13 AM, Diego Santa Cruz
      via Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20191206101334.18436-1-Diego.SantaCruz@spinetix.com">
      <pre class="moz-quote-pre" wrap="">This ports patches from the meta-measured layer that fix tpm2-abrmd
not starting up.
The first patch is necessary on kernels 4.12 and later.
The second patch is necessary after the update to 2.3.0.

Philip Tricca (1):
  tpm2-abrmd: Port command line options to new version.

Trevor Woerner (1):
  tpm2-abrmd-init.sh: fix for /dev/tpmrmX

 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd-init.sh | 2 +-
 meta-tpm/recipes-tpm2/tpm2-abrmd/files/tpm2-abrmd.default | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47581): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47581">https://lists.yoctoproject.org/g/yocto/message/47581</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/67467010/1024635">https://lists.yoctoproject.org/mt/67467010/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------9FC6568986A0FB86F7E4FF8B--
