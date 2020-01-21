Received: from smtpcmd14161.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
 by mx.groups.io with SMTP id smtpd.web11.15440.1579626972549064683
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:16:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=YKJ/Q1Di;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.161, mailfrom: mauro@faresoftware.it)
Received: from [10.0.3.142] ([213.213.6.58])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id t5GA2100W1F741R015GBLJ; Tue, 21 Jan 2020 18:16:11 +0100
Subject: Re: [yocto] Remove buildhistory from deb package version
To: yocto@lists.yoctoproject.org
References: <18da5635-d9e0-5f6d-0aac-101008ba6fb6@faresoftware.it>
 <d01da9bf-45ee-11ad-39a2-091c97f21ae5@intel.com>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <846187dd-7f4c-d760-5af6-1e04cdb0465c@faresoftware.it>
Date: Tue, 21 Jan 2020 18:16:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <d01da9bf-45ee-11ad-39a2-091c97f21ae5@intel.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1579626971; bh=A+D+Y/qNgboYKd/63GGi5/JOFSyQg3sTYHmWLS+udyc=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=YKJ/Q1DiawCtS79l6zVkZdNhuSeskRYIJusFqIdgT/aI5GBiPeQa1eHrBdSAiKDJQ
	 beg+gOSbKnQnnryvxSjvqbTlLn6bv5/DwKADEZPOjLPAN0iPVd0wLQ9Nx4ZIvRoDru
	 iVRsNSQSLMMJj/bVhGD/7iYVkspGb7oZ43bB/X2UBJf698qM9ZzgAnVE7BlIjhpuyT
	 ShZSPkzsPQpns8wjqtQJt5AOTeJzMDZIpZn1JP9ylR310y49R7lxwKaFz7VkThvvXD
	 cf/9H7hyDQVOy5a5dFGAi4tBcMkfSy9f7k8+iU6d1jNHsHXBteysINOdopPgKO9qw7
	 mKq5cBdF7u3RQ==
Content-Type: multipart/alternative;
 boundary="------------C982515262EB0EA7E34D7259"
Content-Language: it

--------------C982515262EB0EA7E34D7259
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Thanks,

I commented out the PRSERV_HOST but  all packages keep to have a final .0

All packages have ${PV}-${PR}.0

Only the new packages don't have the final .0 number.

Maybe this value is cached in some file?


MZ


Il 21/01/20 18:04, Ross Burton ha scritto:
> On 21/01/2020 11:58, Mauro Ziliani wrote:
>> Hi all.
>>
>> I need to remove the buildhistory number from final package version
>>
>>
>> Until now I use in local.conf
>>
>> PRSERV_HOST = "localhost:0"
>> BUILDHISTORY_COMMIT = "1"
>> INHERIT += " buildhistory "
>>
>> When the package is built the buildhistory number is appended to the 
>> version.
>>
>> i.e.  1.0.0-r0.3
>
> That's not buildhistory, that's the PR service.
>
> Comment out PRSERV_HOST.
>
> Ross
>
>
> 

--------------C982515262EB0EA7E34D7259
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <font size="-1">Thanks,<br>
      <br>
      I commented out the PRSERV_HOST but  all packages keep to have a
      final .0 <br>
      <br>
      All packages have ${PV}-${PR}.0<br>
      <br>
      Only the new packages don't have the final .0 number.<br>
      <br>
      Maybe this value is cached in some file?<br>
      <br>
      <br>
      MZ</font>
    <p><font size="-1"></font><br>
    </p>
    <div class="moz-cite-prefix">Il 21/01/20 18:04, Ross Burton ha
      scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d01da9bf-45ee-11ad-39a2-091c97f21ae5@intel.com">On
      21/01/2020 11:58, Mauro Ziliani wrote:
      <br>
      <blockquote type="cite">Hi all.
        <br>
        <br>
        I need to remove the buildhistory number from final package
        version
        <br>
        <br>
        <br>
        Until now I use in local.conf
        <br>
        <br>
        PRSERV_HOST = "localhost:0"
        <br>
        BUILDHISTORY_COMMIT = "1"
        <br>
        INHERIT += " buildhistory "
        <br>
        <br>
        When the package is built the buildhistory number is appended to
        the version.
        <br>
        <br>
        i.e.  1.0.0-r0.3
        <br>
      </blockquote>
      <br>
      That's not buildhistory, that's the PR service.
      <br>
      <br>
      Comment out PRSERV_HOST.
      <br>
      <br>
      Ross
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------C982515262EB0EA7E34D7259--
