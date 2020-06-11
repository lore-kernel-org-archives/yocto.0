Received: from smtpcmd0871.aruba.it (smtpcmd0871.aruba.it [62.149.156.71])
 by mx.groups.io with SMTP id smtpd.web11.2719.1591862206530658007
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jun 2020 00:56:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=nQlsImIr;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.156.71, mailfrom: mauro@faresoftware.it)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd08.ad.aruba.it with bizsmtp
	id pjwj220092wfazh01jwjRi; Thu, 11 Jun 2020 09:56:44 +0200
Subject: Re: [yocto] Strange error
To: yocto@lists.yoctoproject.org
References: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
 <c02ce0d0-d1f8-db8c-0b10-ea26d7cb99f8@rsi-elektrotechnik.de>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <bfff9877-1a93-ced9-54d7-a3be42ac30c9@faresoftware.it>
Date: Thu, 11 Jun 2020 09:56:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <c02ce0d0-d1f8-db8c-0b10-ea26d7cb99f8@rsi-elektrotechnik.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1591862204; bh=wTu7CAdmDnlhTZz364imqYa4rUEu7N3J9aTXTQP3DTk=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=nQlsImIrfBQkk7IoB8umXBV0wVZSq9dlS7SfHOF40FEbGBPGWKysi8ZUxlabGv4Na
	 UDYzjDJ2FDW8eppnjjh+lj8BoFHIGGfU8jNM+jWeRMVwimliMmEkIcoE4NVe1tJ9mn
	 /JoXmuoX6JdYRTAVEhGaRXIDCgxaMrsoeC+Rnsdp5idCzGLk9CPcnyk1OsAZoFE5Om
	 TQ4Jp6AjJ/osI1xmASB5jEE+OD9cZen2+7879rTdGd5eMuJn0m4sYWK0G31nKreOYp
	 S2bG7C+YMJ6bjB6h9zjhIjRQZold4HURlJ7NrYj71h0x5EG4xCJUdBwom0CU/jNILC
	 IDRipWAObnkLg==
Content-Type: multipart/alternative;
 boundary="------------A06B1BCD75549AA2A7C17800"
Content-Language: it

--------------A06B1BCD75549AA2A7C17800
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

In the image recipe i write ${DATETIME} in ${IMAGE_ROOTFS}/etc/buildtime 
by a function.

This is the part of recipe


ROOTFS_POSTPROCESS_COMMAND_append = " \
     mark_os_buildtime; \

"


mark_os_buildtime() {
     echo "${PV} ${DATETIME}" > ${IMAGE_ROOTFS}/etc/buildtime

}



Il 10/06/20 20:44, Josef Holzmayr ha scritto:
> Howdy!
>
> Am 10.06.2020 um 19:48 schrieb Mauro Ziliani:
>> Hi all.
>>
>> This error
>>
>> NOTE: Executing RunQueue Tasks
>> ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash value 
>> changed from 7419bfc242fa2eee9ce87b18ebf40d25 to 
>> 5b2654046d2ac406f3484b3286de0acd. The metadata is not deterministic 
>> and this needs to be fixed.
>>
>>
>> Why?
>
> Maybe some script / part of the recipe is dependent on the execution 
> time or evaluation order? The error basically tells you that your 
> build is not reproducible across runs.
>
> Greetz
>
>
> 

--------------A06B1BCD75549AA2A7C17800
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <p>In the image recipe i write ${DATETIME} in
      ${IMAGE_ROOTFS}/etc/buildtime by a function.</p>
    <p>This is the part of recipe<br>
    </p>
    <p><br>
    </p>
    <tt>ROOTFS_POSTPROCESS_COMMAND_append = " \</tt><tt><br>
    </tt><tt>    mark_os_buildtime; \</tt><tt><br>
    </tt>
    <p><tt>"</tt></p>
    <p><tt><br>
      </tt></p>
    <tt>mark_os_buildtime() {</tt><br>
    <tt>    echo "${PV} ${DATETIME}" &gt; ${IMAGE_ROOTFS}/etc/buildtime</tt><br>
    <p><tt>}</tt></p>
    <p><tt><br>
      </tt></p>
    <p><tt><br>
      </tt></p>
    <div class="moz-cite-prefix">Il 10/06/20 20:44, Josef Holzmayr ha
      scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c02ce0d0-d1f8-db8c-0b10-ea26d7cb99f8@rsi-elektrotechnik.de">Howdy!
      <br>
      <br>
      Am 10.06.2020 um 19:48 schrieb Mauro Ziliani:
      <br>
      <blockquote type="cite">Hi all.
        <br>
        <br>
        This error
        <br>
        <br>
        NOTE: Executing RunQueue Tasks
        <br>
        ERROR: When reparsing &lt;recipe_of_image&gt;.do_rootfs, the
        basehash value changed from 7419bfc242fa2eee9ce87b18ebf40d25 to
        5b2654046d2ac406f3484b3286de0acd. The metadata is not
        deterministic and this needs to be fixed.
        <br>
        <br>
        <br>
        Why?
        <br>
      </blockquote>
      <br>
      Maybe some script / part of the recipe is dependent on the
      execution time or evaluation order? The error basically tells you
      that your build is not reproducible across runs.
      <br>
      <br>
      Greetz
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
  </body>
</html>

--------------A06B1BCD75549AA2A7C17800--
