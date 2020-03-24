Received: from smtp-190a.mail.infomaniak.ch (smtp-190a.mail.infomaniak.ch [185.125.25.10])
 by mx.groups.io with SMTP id smtpd.web12.10939.1585067861069747512
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 09:37:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@guy-morand.ch header.s=20191114 header.b=m6VVRdbM;
 spf=pass (domain: guy-morand.ch, ip: 185.125.25.10, mailfrom: guy@guy-morand.ch)
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 48mxkB708bzlj35y
	for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 17:37:38 +0100 (CET)
Received: from [10.10.255.211] (unknown [109.202.196.62])
	by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 48mxkB4L97zlj21Z
	for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 17:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=guy-morand.ch;
	s=20191114; t=1585067858;
	bh=VHdl0gqhwFEmrdcz6sjbEZTjghUxwkzUaNVRK2cHMyg=;
	h=Subject:References:To:From:Date:In-Reply-To:From;
	b=m6VVRdbMuooGKQGB1MGXxtcM0eVNZWtbgX+UhGXqGgZhREVxS6AhLnADaMPe2pqCj
	 xNk3PxlCR1AnocpBTPyz5WHHPiC1SFZ7e1hIwpEdW75vqWSXA2fNvOL9AHGKPyKhzE
	 5r3jQUBAkX5B7IrUd4GtGX2Udapnwz356qqF8POA=
Subject: Re: [yocto] What .c/.h etc files were used to compile?
References: <8a1a6914-5776-c585-ab42-94fa9fa28b28@guy-morand.ch>
To: yocto@lists.yoctoproject.org
From: "Guy Morand" <guy@guy-morand.ch>
X-Forwarded-Message-Id: <8a1a6914-5776-c585-ab42-94fa9fa28b28@guy-morand.ch>
Message-ID: <0d800653-4457-dbd6-e7b6-553de756caed@guy-morand.ch>
Date: Tue, 24 Mar 2020 17:37:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <8a1a6914-5776-c585-ab42-94fa9fa28b28@guy-morand.ch>
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Content-Type: multipart/alternative;
 boundary="------------FFE3188B0D624C8CA2B9C32D"
Content-Language: en-US

--------------FFE3188B0D624C8CA2B9C32D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm not sure what you are trying to achieve but in the build directory, 
you should find the logs of compilation process of a given package in 
<build_dir>/temp/log_do_compile.

 From there you can also start the compilation manually by running the 
<build_dir>/tmp/run_do_compile script, useful for debugging. Replace 
"compile" for the same operation with other build steps.

Best regards,

Guy

On 3/24/20 5:06 PM, FLoraVLogs wrote:
> Hi,
>
> Is there a way to find out what .c/.h files were used to compile?
>
> I am baking and tried using -D --no-setscene options and piped data 
> into the file but don't see the .c/.h that were used to compile.
>
> Regards,
>
> Ripu
>
>
> 

--------------FFE3188B0D624C8CA2B9C32D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Hi,
    <div class="moz-forward-container">
      <p>I'm not sure what you are trying to achieve but in the build
        directory, you should find the logs of compilation process of a
        given package in &lt;build_dir&gt;/temp/log_do_compile.</p>
      <p>From there you can also start the compilation manually by
        running the &lt;build_dir&gt;/tmp/run_do_compile script, useful
        for debugging. Replace "compile" for the same operation with
        other build steps.</p>
      Best regards,
      <p>Guy<br>
      </p>
      <div class="moz-cite-prefix">On 3/24/20 5:06 PM, FLoraVLogs wrote:<br>
      </div>
      <blockquote type="cite"
cite="mid:CAGhBkzwEZYNxLmAdD6PbO_P0_QGLE=FpGOhbtOrDZi5EXtsC2w@mail.gmail.com">
        <meta http-equiv="content-type" content="text/html;
          charset=UTF-8">
        <div dir="ltr"><font face="verdana, sans-serif">Hi,</font>
          <div><font face="verdana, sans-serif"><br>
            </font></div>
          <div><font face="verdana, sans-serif">Is there a way to find
              out what .c/.h files were used to compile?</font></div>
          <div><font face="verdana, sans-serif"><br>
            </font></div>
          <div><font face="verdana, sans-serif">I am baking and tried
              using -D --no-setscene options and piped data into the
              file but don't see the .c/.h that were used to compile.</font></div>
          <div><font face="verdana, sans-serif"><br>
            </font></div>
          <div><font face="verdana, sans-serif">Regards,</font></div>
          <div><font face="verdana, sans-serif"><br>
            </font></div>
          <div><font face="verdana, sans-serif">Ripu</font></div>
          <div><font face="verdana, sans-serif"><br>
            </font></div>
        </div>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
    </div>
  </body>
</html>

--------------FFE3188B0D624C8CA2B9C32D--
