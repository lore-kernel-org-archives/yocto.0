Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web12.9417.1580541816938132140
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 23:23:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HtQtYD7t;
 spf=pass (domain: gmail.com, ip: 209.85.160.180, mailfrom: xerofoify@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id j5so7314897qtq.9;
        Fri, 31 Jan 2020 23:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=3/3ZUhwepwFh8FTk5HEW7AcJDgx+wQ7p5Oeyg8rfzNk=;
        b=HtQtYD7tr9ey72Ax63pP+ytm5iIjCYqh5m66go4777IqGbvOrRUvurNEpG/AwEUkII
         ZkMsY1NN7VtjCPb9GgBJtDCtQ5Syg+LHjoXruPbVtK6g2OP9AjZnuoufX9b9SMTT/1ji
         COOyxZRUmC9xXbiBv6ZgoGX/VbR8VD8lqzyQ7ZUSN9HLk1Cn95FPAeB26HOhK6GzT/CP
         FJiqpBtrPSTHj8GJIIvbDrh6ZBriS//TZ0/SE3+EmT3/yPIk6QQPiV719qZVO3nWX5nO
         gyi9FMs4WzdaybhFHBUKKrjWmJJtMMeMcrWPtnSkz4okhpvXG2S7flrY/Um3DtWEt0Rh
         U7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=3/3ZUhwepwFh8FTk5HEW7AcJDgx+wQ7p5Oeyg8rfzNk=;
        b=J9HqAHwBV/ZWyU5BxNSUsf0s//lnv5n09duy5Cn9HuPJQ2Nb6d6KKa15w32tskzUJE
         inT3R9wpGuPjpnijSPsWdjNLYkBiPLQgd9a4QNGpHO+Q9StCeaf5LiB4oBmBIkxzo+UB
         O+ug9UMmsRKvZjacDle8zpdN0lwJyKLMRGBx3RCiLLGD2rvXR3VRwPVevlTFYb08yLgV
         x4XLD/h9W4B7Jis0JJbUzOFZI4zqmZAvf6k8pztcX9pAYFgMV1UhURLO69aY0+wkEMcX
         Fr2td1q0SXwGy5PbDSRf4uxJzBb1uB4EUM0eLsU8x8MWPEasxSniWskiX36HOD1zyP5/
         ERWA==
X-Gm-Message-State: APjAAAWe9mIWalaJsErAuhU/goNqp2aH2VLIef4R2RrydIcaUzKdSFCs
	vlJ9Xf6verDfxRSpCeb0e8VZv4R3
X-Google-Smtp-Source: APXvYqyvGB3GvDQBHZzYajRhtq84On1UP4ge9GaDu9jT3hXWVQ7Ut8XtZwRhhUfapu3Iar5yRoeuAg==
X-Received: by 2002:ac8:38c7:: with SMTP id g7mr14321942qtc.229.1580541815839;
        Fri, 31 Jan 2020 23:23:35 -0800 (PST)
Return-Path: <xerofoify@gmail.com>
Received: from [192.168.1.103] (173-230-163-45.cable.teksavvy.com. [173.230.163.45])
        by smtp.gmail.com with ESMTPSA id z8sm6365845qth.16.2020.01.31.23.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 23:23:35 -0800 (PST)
Subject: Re: [yocto] Sad news about Scott Rifenbark
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 docs@lists.yoctoproject.org
References: <8e70536cc06e573ce63f4ac7341545118e62c113.camel@linuxfoundation.org>
From: "Nicholas Krause" <xerofoify@gmail.com>
Message-ID: <51d73395-afb8-9295-e7db-c76066a609ca@gmail.com>
Date: Sat, 1 Feb 2020 02:23:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <8e70536cc06e573ce63f4ac7341545118e62c113.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------3D4F6177DF24ECF42C773631"
Content-Language: en-US

--------------3D4F6177DF24ECF42C773631
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/31/20 4:04 PM, Richard Purdie wrote:
> I'm sorry to have to pass on the sad news that Scott Rifenbark, our
> tech writer for the project passed away on Wednesday after a battle
> with cancer.
>
> I remember interviewing Scott over 10 years ago when forming a team at
> Intel to work on what became the Yocto Project, he was with it from the
> start. He warned me he wasn't an entirely traditional tech writer but I
> warned we weren't aiming to be a traditional project either. It was a
> great match. He stayed with the project ever since in one way or
> another, he enjoyed working on the project and we enjoyed working with
> him.
>
> The concept of having a tech writer as part of the team was a decision
> I'm proud of and it shows in the material supporting the project today
> but that success belongs to Scott and his approach to it. Someone else
> put that best, "He would first try the procedure or instructions before
> documenting it, I was really impressed". He was hands on and wanted
> things to be understandable and correct, a huge challenge with some of
> the complexities we deal with.
>
> Outside of the project he had interesting hobbies and travelled quite a
> bit, those stories were good over beer and I have many fond memories.
>
> Our documentation stands in his memory and its fitting some of his
> character will always be in those words.
>
> Scott will be hugely missed by us all.
>
>
Richard,

As someone who's been on and off with the project I've always found the documentation was
some of the best documentation I've ever seen rivaling that of the compiler manuals and
wikis for LLVM and GCC in terms of being complete technical documents or the ISA manuals.

Sorry to hear one if not the major tech writer behind it has passed and I've been spoiled
by the great documentation or the parts he wrote,
Nick

>
> 


--------------3D4F6177DF24ECF42C773631
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 1/31/20 4:04 PM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:8e70536cc06e573ce63f4ac7341545118e62c113.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">I'm sorry to have to pass on the sad news that Scott Rifenbark, our
tech writer for the project passed away on Wednesday after a battle
with cancer.

I remember interviewing Scott over 10 years ago when forming a team at
Intel to work on what became the Yocto Project, he was with it from the
start. He warned me he wasn't an entirely traditional tech writer but I
warned we weren't aiming to be a traditional project either. It was a
great match. He stayed with the project ever since in one way or
another, he enjoyed working on the project and we enjoyed working with
him.

The concept of having a tech writer as part of the team was a decision
I'm proud of and it shows in the material supporting the project today
but that success belongs to Scott and his approach to it. Someone else
put that best, "He would first try the procedure or instructions before
documenting it, I was really impressed". He was hands on and wanted
things to be understandable and correct, a huge challenge with some of
the complexities we deal with.

Outside of the project he had interesting hobbies and travelled quite a
bit, those stories were good over beer and I have many fond memories.

Our documentation stands in his memory and its fitting some of his
character will always be in those words.

Scott will be hugely missed by us all.


</pre>
    </blockquote>
    Richard,<br>
    <pre class="moz-quote-pre" wrap="">As someone who's been on and off with the project I've always found the documentation was
some of the best documentation I've ever seen rivaling that of the compiler manuals and 
wikis for LLVM and GCC in terms of being complete technical documents or the ISA manuals. 

Sorry to hear one if not the major tech writer behind it has passed and I've been spoiled
by the great documentation or the parts he wrote,
Nick
</pre>
    <blockquote type="cite"
cite="mid:8e70536cc06e573ce63f4ac7341545118e62c113.camel@linuxfoundation.org">
      <pre class="moz-quote-pre" wrap="">
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------3D4F6177DF24ECF42C773631--
