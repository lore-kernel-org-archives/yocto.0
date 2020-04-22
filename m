Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3938.1587568153874940243
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 08:09:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=umYMVjlm;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: limit exceeded (domain: mvista.com, ip: 140.211.169.56, mailfrom: akuster@mvista.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD1DE01A4C; Wed, 22 Apr 2020 08:09:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF40E01A4A
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 08:09:11 -0700 (PDT)
Received: by mail-pj1-f43.google.com with SMTP id e6so1098983pjt.4
        for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 08:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=xKG1cUs+DxG3gAzEkhtGSZWBCkcjDFXwg0uEWd7K+us=;
        b=umYMVjlmPRTV+UThAuJlvMLEqK3Nutiobu37Dg6zpL5Pfyho5yHkAcFH2BFxy9VlMp
         eqceiQhHM5NTkcCaTOi5Wh6tD6lrVBovT+TLTe9mUpGp22W/0ZNW10viCeVqpkMKLB0o
         eDmnIJlRkdcxjonTtaXKiXWRJpEyMWC+YMCfDtGVFZ418FnAZ2e08Ft6OKvLFpFzD0u3
         hKzljM3QiVDPuvDKKjT/s/kMJHQMlcyKx7RxrgNhadxaxV2isrytLHkugbc9fmMCoSFh
         mnSCgJmqsJDE9nYHS7B5NQW2L6YJF6nVTierDJp5mOly++GkVUSH9NTmkeL4AVFqqFqp
         nGNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=xKG1cUs+DxG3gAzEkhtGSZWBCkcjDFXwg0uEWd7K+us=;
        b=Cj+JUIJTj5ncfemSVY091vT0PEBRPRmzLZtI361gk5Th/0aAYiFXtXpsv7RtWS1c/+
         7xUnZp8RoGROSyE0GXnoZ5t8WiE2W620BxKom1dCuzgu2rXDrPRN8XyEuuLIOBGNrK7k
         T8e8ng2t+2wHAk6Y7EocO+38Gx3gactIhE+MgiH0nvb6z9gVtf6lEBBcMl+R3tk+uyso
         TxYVwvJL4lfkFv2AYd8sKDXnnOm3LD/tEAB6Kxiage/rTLvjJN3Gq0tuMggrt73IXH/g
         KU16Y0baojQa1PIHIQb7X19VcJxElxJbNrB7bGWT7GuqYwuOH92Ro9He7lQZ1UPdFJgK
         sPuw==
X-Gm-Message-State: AGi0PuZ00c6IVYervEY3kLfrrD67+DItiSB/7gVOv75ZwqLIOwhMDl4t
	zuJm+rZTsx+wQXO23wxVRbdRHtyvIKfhyg==
X-Google-Smtp-Source: APiQypLIa2eOCFFNAE5WmWAeo7WuBYrIgLwnTDTHd4DR3EjL6p6G424yfTIS8f4U3ZnB1vFQilQAwg==
X-Received: by 2002:a17:90a:aa0e:: with SMTP id k14mr12333882pjq.74.1587568150023;
        Wed, 22 Apr 2020 08:09:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:503a:d0d7:51f9:c1bb? ([2601:202:4180:a5c0:503a:d0d7:51f9:c1bb])
        by smtp.gmail.com with ESMTPSA id a12sm5743252pfr.28.2020.04.22.08.09.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 08:09:08 -0700 (PDT)
Subject: Re: [yocto] FYI: "which" program is broken by default on centos-8
To: Joel A Cohen <aaron@assonance.org>,
 Yocto list discussion <yocto@yoctoproject.org>
References: <CAFSZm+jNAuR=8ppSb7b9aMddFdXA_VJNjF1oKHgLssmoiqA0dA@mail.gmail.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 xsFNBFnlUP4BEADpKf+FQdLykenQXKk8i6xJNxDow+ypFeVAy8iFJp7Dsev+BtwUFo8VG7hx
 Jmd71vHMw+coBetWC3lk+IKjX815Ox0puYXQVRRtI+yMCgd6ib3oGxoQ8tCMwhf9c9/aKjaz
 mP97lWgGHbiEVsDpjzmMZGlJ6pDVZzxykkJExKaosE46AcA8KvfhRQg5zRyYBtinzs8Zu8AP
 aquZVHNXxPwjKPaSEEYqQjFeiNgFTavV+AhM2dmPmGUWCX9RZisrqA4slGwEB0srMdFf12Zg
 mD35Y9jZ80qpu5LPtJCFcsaAlebqR+dg36pIpiRR+olhN1wmC6LYP1vw6uMEYBjkTa2Rnb6+
 C4FDzCJD4UCrUvLMNeTW810DY0bjMMj3SfmSGSfQUssaaaTXCVlLGuGxyCr/kza1rHaXMKum
 Ek4EFj1fyn7AfkSLEHfJfY4sO1tpgigvs4eD/4ZSQEXSu/TjVvyKx4EvUbhlGMRyH2CPwD/H
 7DFF8tcVtJvCwUUW+zKtjxjSSLrhniNMXAOQJZ6CdaqCe4OyJQT5aRdr+FWbBRjpaRCCf5nf
 dTc88NMU9PrBT3vu0QJ5WNPO6MJpnb+d8iMNLZAz8tv8JMm2l+sMcNKSJ6lhX8peoBsfMVqc
 FgiykEO0fUt7DCbUYR5tLjM/3E5tHvTjMooVJyOxoufVLYtTtQARAQABzSFha3VzdGVyODA4
 IDxha3VzdGVyODA4QGdtYWlsLmNvbT7CwX0EEwEIACcFAlnlUP4CGyMFCQlmAYAFCwkIBwIG
 FQgJCgsCBBYCAwECHgECF4AACgkQ7ou0mfRW5/kuhRAAlR2FTq5572jrX5nnPR7AqI2bvSVb
 vqGLlvv739WhghvagbC+tu05QguopAhWW1/DcHK2+QtfIoC9UZrSW4RaO0CCo5sPjqK7l1KT
 ngWX/rGjF6xTF2QN0U/btcpMyVN2CNtVLwsDF9e+GHKoUcnFkP+JP8vHGokN9k6E/c97hLaL
 IJPeKl8LZXc2Efk+MaW1NXkfDJdcp/p+voajbihSQO6OZ/o+x9d2I3ZybKfTZ71+ek5Hxzjz
 g6KkMOI7KJjlmBlrQFAtVbS+CFAKrwkYznE6ggkcmGv3N7DeUBTUR78hf+EZEAM+ajeLMtrG
 rXE00pIb+gLGYPZxba5pCdQ+qWUW38qi9UnIRPm6fq7Ypx1r6XwJvbgCOkhbxo3D4YUdyC0b
 FE9lgrg8htbc9in4j2+hVI6ALswNjLprzXdzdKrd+T3Egx36o3Z/qrYsW2o5/A5sVvvASVKi
 wRPuEKhEhfmiHUPLvuKqhMoymHaz3fg5D2Q8G0gSDkLgeEpAjiWqf4+AGLx+MSDai7DSOsmI
 t61kWxs7cFTB32UrB/TDoVNn3Fm88ZFQpA/bngikE9jgEm045mSY86fNlbFj2mcCd0Ha1i1n
 aYc97RpgfjNMWyHDVHOGrNg/hJjkGa5RsAXkfyBwltHRw0Hj4urUQ3rr8um8PLe43SezPwXA
 oRoyDxDOwU0EWeVQ/gEQALNHwj5VSPdnvXy1RXUuH+rclMx4x8zaqDyY0YqHfA7b/d8Y0VAt
 Y6YpzDeFTwD8A0Wfb7kZ2mlDIE6ODCB71uT/E3C6b+FiiN+lgzslznjUW+9l8ddDhRrC8HMG
 37vrXF5h++PTXUKEKUlkDib1w093tu3mlJXUvIAzl8CEHkptF6Br0L9XxFwuWoNUfjT9IorQ
 0SVIhvq5PhVAITXUD5fD7/N8B4TYegmHFRo1UaaKSnSHwlJJkzKpeWOH8QTYrP0RHxX86Obv
 IZuwbAo3F3oojcvLJt9NxWnbEmEALkleklLZnukgu7q5Wp1VDwhUbMFTLb6qmnBa/Xi30uOk
 0l1TMHDbeQswvQDOZBAMukSRqyBetKxQ3iTfZ/3z1ubQRcVDbVlMDScSHQq0LK3F9yMOMM/6
 0QPqJjl13xn/+Bn7WJiAIXXwzAV7uo6i0khFfjDtCDQ40aeffqOLxp1yMLkc3EKJGcQ5F6O2
 ycEf4QXCYUbMXjxB0EJB8y7z+xOi5Mmd/pPlVmZ2gQK84NAL90p7n7jRlyf3gOUY+JOl4c5e
 UFiIhOzmuqNrvPOiZ02GXh6SGUU5y7IgSoIKvXSFgHAn2OG/tcspBmkyv6IuNVpmbmEgYn4I
 Rnt40UXVQkxTh0dENFhk2cjunMYozV/OqYCgmZLFSeJd8kAo4yn+yOtNABEBAAHCwWUEGAEI
 AA8FAlnlUP4CGwwFCQlmAYAACgkQ7ou0mfRW5/nNcg//R63cbOS6zLtvdnPub3Ssp1Ft8Wmv
 mni+kccuNApuDV7d63QckYxjAfUv2zYMLpbh87gVbLyCq9ASn552EbfRhTvHdk44CgbHBVcI
 ZBEdZWgRR5ViJakQSYHpP2e5AGNFnx9gSIuRTaa5rvZM+4xeoZ2vJiq93TtaYPr7UFNfK+c4
 vv4C66lkt9l95/I10eSc3RqbOKZW47emlg4X3ygEoB9k2lPrpspyf6sUuSEi0WrlSxoLAr6p
 JG8rTUErYNeXe6JCdL31odDx1Dh5sdKIj2RicUYZNilxu9f1M7jZwf2ra1FGAlKj2ybqmgpZ
 EFteaiCinEYsvDyZyOiWHjAFI+RZIPQQL3AnVp4l7wYD3r9hnqYPww0slyMDcb9262RoFkHq
 dDwxPYarrNjWUpOzxB6bFxOgNRdCTgvQl8Ftk8a/yXB6vHeUSm1vPFCBxQPZytyfOLhEWm0J
 /mkVL0Z6iRK3p1LKnpLYCS4/esL2u7RrhPyCs2SsL58YcQF/g+PpeT9geZ+oyZ/4IQ+TWJoU
 PNHndk8VBTpzrmOaJxrebNL/W6C8JCmbLM11TAUMmHYi9JDytN8Au78hWpDbIdKwg1LeSxpw
 ZZD/OqOc0DBvHOpQhzkSrtR1lVlDV/+9E8J1T4uDhrGmZwYV+4xQetypHax8aAHisYbjXdVa
 8CS2NxU=
Message-ID: <cfb4f002-7a40-e5d9-93dd-e68da0ce783d@mvista.com>
Date: Wed, 22 Apr 2020 08:09:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAFSZm+jNAuR=8ppSb7b9aMddFdXA_VJNjF1oKHgLssmoiqA0dA@mail.gmail.com>
Content-Type: multipart/alternative;
 boundary="------------56055B4CDB7AAB6AD6790883"
Content-Language: en-US

--------------56055B4CDB7AAB6AD6790883
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit



On 4/21/20 5:42 PM, Joel A Cohen wrote:
> Centos 8 'which' installs an alias by default: alias which='(alias;
> typeset -f) | /usr/bin/which --tty-only --read-alias --read-functions
> --show-tilde --show-dot'
>
> This comes from the which rpm, in /etc/profile.d/which.sh
>
> This breaks in OE, I'm guessing because the shell used doesn't support
> whatever is going on there. You get a mystifying message about
> unexpected parentheses.

Can you provide some way to reproduce this as Centos8 is one of the OS's
used to build on for Dunfell and Master. Maybe we are missing a corner
case. Would you mind opening a defect in the Yocto Bugzilla with all the
information?
https://bugzilla.yoctoproject.org/

- Armin

> To fix for the moment, I just got rid of the alias, but is it worth
> adding a check or something?
>
> Thanks,
> Aaron
>
>
>
> 


--------------56055B4CDB7AAB6AD6790883
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 4/21/20 5:42 PM, Joel A Cohen wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAFSZm+jNAuR=8ppSb7b9aMddFdXA_VJNjF1oKHgLssmoiqA0dA@mail.gmail.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div dir="ltr">Centos 8 'which' installs an alias by default:
        alias which='(alias; typeset -f) | /usr/bin/which --tty-only
        --read-alias --read-functions --show-tilde --show-dot'<br>
        <div><br>
        </div>
        <div>This comes from the which rpm, in /etc/profile.d/which.sh</div>
        <div><br>
        </div>
        <div>This breaks in OE, I'm guessing because the shell used
          doesn't support whatever is going on there. You get a
          mystifying message about unexpected parentheses.</div>
      </div>
    </blockquote>
    <br>
    Can you provide some way to reproduce this as Centos8 is one of the
    OS's used to build on for Dunfell and Master. Maybe we are missing a
    corner case. Would you mind opening a defect in the Yocto Bugzilla
    with all the information?<br>
    <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/</a><br>
    <br>
    - Armin<br>
    <br>
    <blockquote type="cite"
cite="mid:CAFSZm+jNAuR=8ppSb7b9aMddFdXA_VJNjF1oKHgLssmoiqA0dA@mail.gmail.com">
      <div dir="ltr">
        <div>To fix for the moment, I just got rid of the alias, but is
          it worth adding a check or something?</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Aaron</div>
        <div><br>
        </div>
        <div><br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------56055B4CDB7AAB6AD6790883--
