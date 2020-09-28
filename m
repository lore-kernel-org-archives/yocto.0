Received: from cpsmtpb-ews02.kpnxchange.com (cpsmtpb-ews02.kpnxchange.com [213.75.39.5])
 by mx.groups.io with SMTP id smtpd.web10.41652.1601312421454210908
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 10:00:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpnmail.nl header.s=kpnmail01 header.b=szNEOAV4;
 spf=none, err=permanent DNS error (domain: iae.nl, ip: 213.75.39.5, mailfrom: pwr@iae.nl)
Received: from cpsps-ews06.kpnxchange.com ([10.94.84.173]) by cpsmtpb-ews02.kpnxchange.com with Microsoft SMTPSVC(8.5.9600.16384);
	 Mon, 28 Sep 2020 19:00:20 +0200
X-Brand: /q/rzKX13g==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.4 cv=AfEPo1bG c=1 sm=1 tr=0 ts=5f7216a4
	 cx=a_idp_e a=ShNidqeCEQB33TAKUUzslw==:117
	 a=xRGMmYaI5WpIYOJh0XI+dg==:17 a=8SZ6bD3cDFYA:10 a=reM5J-MqmosA:10
	 a=r77TgQKjGQsHNAKrUKIA:9 a=ag1SF4gXAAAA:8 a=iGHA9ds3AAAA:8
	 a=kRv5r8a0sMTu49lv2_gA:9 a=QEXdDO2ut3YA:10 a=pGLkceISAAAA:8
	 a=JOt566P0vwDK0lubDaEA:9 a=epOQBjIpjK_1C6Ob:21 a=_W_S_7VecoQA:10
	 a=Yupwre4RP9_Eg_Bd0iYG:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.11]) by cpsps-ews06.kpnxchange.com over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	 Mon, 28 Sep 2020 19:00:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:from:to:subject;
	bh=O8D1UKZnab2t5/OCQE6NoStpM6OM2p3vnG+sZAopzFo=;
	b=szNEOAV4/QqO3Gxzt0740I8TbzdL2qbX5bqE7/Lgos1Xds0CNK1lBPd4hZmV3xhMUYNbL7D9C1UNV
	 JJUVPvf1VyyEF9CFFnANb3o232K93KezAdF3VUbhqAkmdBl61h4Tz1jNDFA+UKerbgUqpbfd24xzPu
	 zB0GxwE4fYUmt/no=
X-Originating-IP: 86.89.1.39
Received: from [192.168.3.42] (86-89-1-39.fixed.kpn.net [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id 1736e8b9-01ac-11eb-811f-00505699b758;
	Mon, 28 Sep 2020 19:00:20 +0200 (CEST)
Subject: Re: [yocto] poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
To: yocto@lists.yoctoproject.org
References: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
 <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
 <7cf9c1af-ac0c-4178-df9d-5d7a76d89821@iae.nl>
 <9d39a91d32658aa446ae91840d64536f9b78a781.camel@linuxfoundation.org>
 <CA+chaQc+8=k8wbpddwzdwfv_TC3Nn+aWdzmOf_prv096h7KzeQ@mail.gmail.com>
Reply-To: yocto@lists.yoctoproject.org
From: "Robert" <pwr@iae.nl>
Message-ID: <24cfc432-cd47-961e-a686-6701a98b364d@iae.nl>
Date: Mon, 28 Sep 2020 19:00:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQc+8=k8wbpddwzdwfv_TC3Nn+aWdzmOf_prv096h7KzeQ@mail.gmail.com>
Return-Path: pwr@iae.nl
X-OriginalArrivalTime: 28 Sep 2020 17:00:20.0087 (UTC) FILETIME=[D8FB3070:01D695B8]
X-RcptDomain: lists.yoctoproject.org
Content-Type: multipart/alternative;
 boundary="------------58AEE9EABACBBF1CD1F7B90B"
Content-Language: en-GB

--------------58AEE9EABACBBF1CD1F7B90B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Correct, I can also confirm the backport works in getting it compiled.
Thanks.

On 28-09-2020 18:53, Martin Jansa wrote:
> I was able to reproduce this in one of my build setups and confirm 
> that backporting this commit helps (and haven't found any other issues 
> while building our images).
>
> I've sent the backport request now.
>
> On Mon, Sep 28, 2020 at 1:46 PM Richard Purdie 
> <richard.purdie@linuxfoundation.org 
> <mailto:richard.purdie@linuxfoundation.org>> wrote:
>
>     On Mon, 2020-09-28 at 10:34 +0200, Robert wrote:
>     > I tried the latest uninative from the same link, it will remove the
>     > warning but it doesn't solve the problem.
>     > If something else is wrong/different I would very much like a
>     > suggestion where to start looking for this difference.
>     > Finding something that isn't there is not easy :-\
>
>     You could try backporting:
>
>     http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=94b1d77472ad335f26ca4ea6ec8c5b399368c06e
>
>     Cheers,
>
>     Richard
>
>
>
>
>
> 
>


--------------58AEE9EABACBBF1CD1F7B90B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">Correct, I can also confirm the
      backport works in getting it compiled.<br>
      Thanks.<br>
      <br>
      On 28-09-2020 18:53, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+chaQc+8=k8wbpddwzdwfv_TC3Nn+aWdzmOf_prv096h7KzeQ@mail.gmail.com">
      <div dir="ltr">I was able to reproduce this in one of my build
        setups and confirm that backporting this commit helps (and
        haven't found any other issues while building our images).
        <div><br>
        </div>
        <div>I've sent the backport request now.</div>
      </div>
      <br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Mon, Sep 28, 2020 at 1:46
          PM Richard Purdie &lt;<a
            href="mailto:richard.purdie@linuxfoundation.org"
            moz-do-not-send="true">richard.purdie@linuxfoundation.org</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote">On Mon, 2020-09-28 at 10:34
          +0200, Robert wrote:<br>
          &gt; I tried the latest uninative from the same link, it will
          remove the<br>
          &gt; warning but it doesn't solve the problem.<br>
          &gt; If something else is wrong/different I would very much
          like a<br>
          &gt; suggestion where to start looking for this difference.<br>
          &gt; Finding something that isn't there is not easy :-\<br>
          <br>
          You could try backporting:<br>
          <br>
          <a
href="http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=94b1d77472ad335f26ca4ea6ec8c5b399368c06e"
            rel="noreferrer" target="_blank" moz-do-not-send="true">http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=94b1d77472ad335f26ca4ea6ec8c5b399368c06e</a><br>
          <br>
          Cheers,<br>
          <br>
          Richard<br>
          <br>
          <br>
          <br>
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

--------------58AEE9EABACBBF1CD1F7B90B--
