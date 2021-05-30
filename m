Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.90.20])
 by mx.groups.io with SMTP id smtpd.web09.32336.1622384787687192945
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 May 2021 07:26:28 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=hXkVpRgd;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.90.20, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id c292a857
	for <yocto@lists.yoctoproject.org>;
	Sun, 30 May 2021 16:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=Pf+ZirJlkCOS1KnBs3akQEnpKr
	GJbDlBZ1GFLjd76TE=; b=hXkVpRgdsI9Bazu0wXi8iDdkqd4vlEvGyyYidFrRMX
	U2f42kC80HbyIko+SxxF65f+SymfCqzvtDKTcO5ZOKCblWNL9J/BTTOkJ/OeRxt8
	YzYUcCc7VTDZ3ALE7scZsEnOWnoEz7kXcRFwXn46O72Apsf5zPdwIROZRBfGU6dh
	GMUh4MrABzXSvDhVKJKAbSGS/EWG+AIjfwpPxhGi7k2WOWHR/j9qeN6gC27PqPCY
	7iJeWb87ZPF0ghNvdABD181rlA5lY298dmnfQsufHkUqUJzifMXwrNjggDeHz1l+
	xGoTjIoUMpVl1azSY7mGGFFqg2ePsFR0ycjykGRqQKSw==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=p7Slf0zkC4sPPbEPsGHv+PrJDPWgaweA
	lzjjlWNF4Z7IMEUCi5exeBrtISTgTEEr3Z/EtqnqCcCqr3J/WAww+FsIaZsiMlY2
	0RW/sLFmjOaK3xZN/vThV6cVuhHs1bwKJLALopo5JsEu6K3ISa0A3BqsdegkFkVb
	+get4ZC1e53XtC6lNuSvWgwkJVlPg3BLPTndwjd3pil4YDEeteGwaj2xtyk5e5j7
	CcjsgFYteQybdnWOO1J1F0h7Y94060XgyZRWpwjM9sLMNl+uXgNF6dP7Boss3htv
	zkIUWn4pAXqWPMV6EKQ/ItSWXFAofpNGaZ6bYSjQsBameyZZ4KoSAg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id e9a557b8 (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Sun, 30 May 2021 16:26:24 +0200 (CEST)
Subject: Re: [yocto] #yocto ASUS ROG STRIX Z390-I
To: yocto@lists.yoctoproject.org
References: <nEJx.1622373321581335056.ofA1@lists.yoctoproject.org>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <0b3bac03-b985-ce28-1b6d-c55c168a308f@optimcloud.com>
Date: Sun, 30 May 2021 21:26:15 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <nEJx.1622373321581335056.ofA1@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------37F1A6D4B3D790298DBD549D"
Content-Language: en-US

--------------37F1A6D4B3D790298DBD549D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

use meta-intel build for a core-i7 I also have an ASUS ROG board running 
yocto.

On 5/30/21 6:15 PM, a.elgammal2019@gmail.com wrote:
> Hello,
>
> I have a ROG STRIX Z390-I motherboard with an Intel® Z390 chipset. And 
> I want to create a custom BSP Layer for it. Where should I start? I 
> did not find any yocto community for ASUS. So, Any guides would be 
> helpful. Thank you
>
> 
>

--------------37F1A6D4B3D790298DBD549D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>use meta-intel build for a core-i7 I also have an ASUS ROG board
      running yocto.<br>
    </p>
    <div class="moz-cite-prefix">On 5/30/21 6:15 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:a.elgammal2019@gmail.com">a.elgammal2019@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:nEJx.1622373321581335056.ofA1@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hello,<br>
      <br>
      I have a ROG STRIX Z390-I motherboard with an <span style="color: #202020; font-family: segoeui, 'Microsoft JhengHei', sans-serif; font-size: 16px; white-space: pre-wrap;">Intel® Z390 chipset. And I want to create a custom BSP Layer for it. Where should I start? I did not find any yocto community for ASUS. So, Any guides would be helpful.
Thank you</span>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------37F1A6D4B3D790298DBD549D--
