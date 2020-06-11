Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2713.1591861817816288990
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 00:50:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@aruba.it header.s=a1 header.b=H4UWyEhb;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 140.211.169.56, mailfrom: mauro@faresoftware.it)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BAB1E01CC1; Thu, 11 Jun 2020 00:50:17 -0700 (PDT)
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
	*      [62.149.156.71 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd0871.aruba.it (smtpcmd0871.aruba.it [62.149.156.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 924DAE01C86
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2020 00:50:14 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd08.ad.aruba.it with bizsmtp
	id pjqC2200v2wfazh01jqDXy; Thu, 11 Jun 2020 09:50:13 +0200
Subject: Re: [yocto] Strange error
To: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@yoctoproject.org
References: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
 <ec409c35-de63-4099-b184-8b36cdcb0d5d@ibeeto.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <b7c56abf-9b46-42f6-a640-9a7b0399bf3d@faresoftware.it>
Date: Thu, 11 Jun 2020 09:50:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <ec409c35-de63-4099-b184-8b36cdcb0d5d@ibeeto.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1591861813; bh=dayGhjWJyBEf5G8HktFY8FmqG40cZgwHtkLS5kvC2aw=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=H4UWyEhb3M/OdS80D203tzRHIp0Tdzcx/idCIAZquZELzrrPIe/osr0IxAhTbOV3g
	 XtjeNnX35u65WT8tln2DtvU0HtuBZHDaniUPS/APfmhPUmB56QBe28iY0LrYgkLYNR
	 ijXrovp6lwnAb4zCk6eiUJo1BVw/htEAkL30gusUTbTnlsigR6DTQL+w6NYO57rW+u
	 3zpjkIsItLtfPy/z9Bflklg0OcEGLq0x0qxHFnV/PUWO+jJfOO27hIiSuoSL9Ni4ZL
	 LQ3/PQw68PpMQi8C84s+ba2A6kVcRYG5aNfc6XfKryiJQ2IdqdKhj/A0Su3w6pEcbE
	 bVc6c2j3A7j7A==
Content-Type: multipart/alternative;
 boundary="------------CEEFF1E8B226877E52A3E4C1"
Content-Language: it

--------------CEEFF1E8B226877E52A3E4C1
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks.

No i edit the recipes before build.

Il 10/06/20 19:50, Rudolf J Streif ha scritto:
>
> Did you edit the recipe while a build was running?
>
> :rjs
>
> On 6/10/20 10:48 AM, Mauro Ziliani wrote:
>> Hi all.
>>
>> This error
>>
>> NOTE: Executing RunQueue Tasks
>> ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash value=
=20
>> changed from 7419bfc242fa2eee9ce87b18ebf40d25 to=20
>> 5b2654046d2ac406f3484b3286de0acd. The metadata is not deterministic=20
>> and this needs to be fixed.
>>
>>
>> Why?
>>
>>
>> Best regards,
>>
>> =A0 MZ
>>
>>
>>=20
> --=20
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700

--------------CEEFF1E8B226877E52A3E4C1
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html;
      charset=3DISO-8859-15">
  </head>
  <body>
    <p>Thanks.</p>
    <p>No i edit the recipes before build.<br>
    </p>
    <div class=3D"moz-cite-prefix">Il 10/06/20 19:50, Rudolf J Streif ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:ec409c35-de63-4099-b184-8b36cdcb0d5d@ibeeto.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3DISO-8859-15">
      <p>Did you edit the recipe while a build was running?</p>
      <p>:rjs<br>
      </p>
      <div class=3D"moz-cite-prefix">On 6/10/20 10:48 AM, Mauro Ziliani
        wrote:<br>
      </div>
      <blockquote type=3D"cite"
        cite=3D"mid:6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it">=
Hi
        all. <br>
        <br>
        This error <br>
        <br>
        NOTE: Executing RunQueue Tasks <br>
        ERROR: When reparsing &lt;recipe_of_image&gt;.do_rootfs, the
        basehash value changed from 7419bfc242fa2eee9ce87b18ebf40d25 to
        5b2654046d2ac406f3484b3286de0acd. The metadata is not
        deterministic and this needs to be fixed. <br>
        <br>
        <br>
        Why? <br>
        <br>
        <br>
        Best regards, <br>
        <br>
        =A0 MZ <br>
        <br>
        <br>
        <fieldset class=3D"mimeAttachmentHeader"></fieldset>
        <pre class=3D"moz-quote-pre" wrap=3D"">
</pre>
      </blockquote>
      <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
    </blockquote>
  </body>
</html>

--------------CEEFF1E8B226877E52A3E4C1--
