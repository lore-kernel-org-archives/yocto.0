Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2161.1578609867172785044
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 14:44:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GvO4U4vd;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF61DE0142F; Thu,  9 Jan 2020 14:44:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DFF1E00782
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2020 14:44:25 -0800 (PST)
Received: by mail-pj1-f44.google.com with SMTP id j11so119981pjs.1
        for <yocto@yoctoproject.org>; Thu, 09 Jan 2020 14:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=rLHVi4n7UjKu8G+Xds0zyJEX+LCMEUEYSbzR0YBeMXs=;
        b=GvO4U4vdZhToE/4wABnpIFbNFpkTAg3n7VeN4MfJefHupCaIkEKLjKNPCuomNHau4B
         Qn87ze+D1lottNDiZrfqcEvWm7RcrF5tQ/KAYi9E5KKQU0W2ENQCmFS6HK+O3B+UBTU3
         k5HZW7fYTd+00qLrmxrM23n3lfn3ApJHJ6LJe3HyuQJOebKFhI75+Z70Kto0Q01Qf3kZ
         2YjFSDwgNMts/hiCJJE5NW1pD6D5KRknfwaKk5aQzAe0/E2xL1z59qYq0jTZx0XpHGnu
         XFnDvlm+i34nRusQmBHgWKOib+fTleCACWOS8Ug6NiKv5bBKObmkCyOC+c1cRmzb+tte
         BS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=rLHVi4n7UjKu8G+Xds0zyJEX+LCMEUEYSbzR0YBeMXs=;
        b=CNsHMbL7qjnbfaqu8uZN8DA04ctT2Obvot2IqljEmdKC3QyUEgjzGQcDrDOS16C2wZ
         otPZE5/k2HMfOSxnI/MuoYSY17fo67WWv7FYv4bVeAnHCl7Emq6Tjve5vGIAWKvF2ceO
         MFf36Ogs16LdqanYlGyAnLQcjOiEJGmIkGpy05xaXTjzQ5hXTIvZY+0MfzNaL5K0qB/l
         An2yEmigb4Zq6qKeSW5F0lO5qhEYFwwMjJ8r92shohBB1BmtEWm/2BQDw5MJ4a3P/R8A
         HOE4eO+FrTnelBSjw+yrluPSTu8GeeAYXth07qtDzR4vy7Qn+7cYWDbJo1qkNxoWkxID
         Yjlw==
X-Gm-Message-State: APjAAAWgHdrqCg/sj/Adwe0N517iEISOSHa9sBFWHCd0mC/V5QLX2oxX
	nNCXjNER77Nus1Q2+7fBqYv/RhZc
X-Google-Smtp-Source: APXvYqzt/PhCMDTaLi8joQlwrdizrG/GeiHkzk3okjmoYzGgF/T9L/d7lMmI9hyEtRXJbgxdfiVjPA==
X-Received: by 2002:a17:90a:b30b:: with SMTP id d11mr575706pjr.22.1578609865354;
        Thu, 09 Jan 2020 14:44:25 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:304b:2b9c:bcb7:ff1a? ([2601:202:4180:a5c0:304b:2b9c:bcb7:ff1a])
        by smtp.gmail.com with ESMTPSA id z26sm7999702pgu.80.2020.01.09.14.44.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 14:44:24 -0800 (PST)
Subject: Re: [yocto] Recall: [meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in tpm2-abrmd-init.sh
To: Daniel <daniel.wang@intusurg.com>,
 Yocto Project Discussion <yocto@yoctoproject.org>
References: <CY4PR01MB23285D287043F2C030A26F4C9A390@CY4PR01MB2328.prod.exchangelabs.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <4a362c81-c8bb-fc14-af08-d27d20274cc2@gmail.com>
Date: Thu, 9 Jan 2020 14:44:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CY4PR01MB23285D287043F2C030A26F4C9A390@CY4PR01MB2328.prod.exchangelabs.com>
Content-Type: multipart/alternative;
 boundary="------------11D3E86FAA8CD042EBDAF1B3"
Content-Language: en-US

--------------11D3E86FAA8CD042EBDAF1B3
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

thank you for letting me know.

kind regards,
Armin

On 1/9/20 1:15 PM, Daniel wrote:
> Daniel Wang would like to recall the message, "[meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in  tpm2-abrmd-init.sh".
>
> 


--------------11D3E86FAA8CD042EBDAF1B3
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    thank you for letting me know.<br>
    <br>
    kind regards,<br>
    Armin<br>
    <br>
    <div class="moz-cite-prefix">On 1/9/20 1:15 PM, Daniel wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR01MB23285D287043F2C030A26F4C9A390@CY4PR01MB2328.prod.exchangelabs.com">
      <pre class="moz-quote-pre" wrap="">Daniel Wang would like to recall the message, "[meta-security][PATCH 1/3] Updates tpm2-abrmd.default and fix indentation in  tpm2-abrmd-init.sh".</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------11D3E86FAA8CD042EBDAF1B3--
