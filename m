Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web10.13206.1575909677194141109
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 08:41:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XxrmidRw;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id s35so6124790pjb.7
        for <yocto@lists.yoctoproject.org>; Mon, 09 Dec 2019 08:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=sQzwVMrAVeQzDeAvjeOZeW7zCYataZaS0npfIoRrptk=;
        b=XxrmidRwZxisI4sGffr1XU035dzywr6l+oip4+NAnoWZuZb/Q6MJmgpAam0HZFIYd/
         UuDk5qhXupkpMmqDIzjP0E01LLGGWmihDf1Qo1QCCR8CXrjwBY+Tyqo1dgnpK/DTYGiv
         xNIEPH0Y2wdyLlC3JBYT1fIKKRZ2Cg2YxgWWWdgLyxmRMR2PdFyvS246MPug2eda0nPF
         DNLxnSUSOUyASvBKFuMBRv1t9UEf1iuzoYSWsgB1prCySo8eGCrcXjEIrdKbLjk0ehbr
         eAHFzyceKVbvr7EoumwtSHv4TNev1t6jk8lPAFWFTk7ytwJuyNzKAOJra2zWrmw4a6Cb
         tjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=sQzwVMrAVeQzDeAvjeOZeW7zCYataZaS0npfIoRrptk=;
        b=JJRoDR0cHME8nlYbFoCF2SwwE3mdt6JU07X2pbKrEJwsWP6afGL2C32nw0Zia/MmBg
         GdAhSrwZhuxF+s23HfLAaeuWEteD/3T87RfJpuUEnES0FZuCFc1GhRweeN9AEb34UBHn
         1/Cm2AnqKV/0EaG2rlli7M1oq8vbTuDHCt6gAAmSsWPCotxXWd/oyOzJa5fSmG+UA0a3
         FKcUJ63rGVD2ZKqJVYZFAr1Ex0PEkLoIcl4s7eDV4fO79NGyGQe6gFrqLadOFZF+hb5G
         YKJ88Pc9GO8NBnpIfeEc0bf+GXopO4VMVO2CuEAmiSLUOxml3QTYLh6IULXZYEm9W5sf
         GiFg==
X-Gm-Message-State: APjAAAVPC+zLnFIBV2V0FIhk0yRJoKy4b4md0RJujPOHunFenpl80OlI
	5HfBFtawtP5frV43+UPIRZ8ziZeAqOY=
X-Google-Smtp-Source: APXvYqylBT5EJd8YEzTkZ79FnN2IlFn8xkDC9duTjk6IUGjwrSvANDw3B23K7hUdPmoLz8vpNwH3nA==
X-Received: by 2002:a17:902:868f:: with SMTP id g15mr29790118plo.294.1575909676285;
        Mon, 09 Dec 2019 08:41:16 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:1527:dedf:f05:266c? ([2601:202:4180:a5c0:1527:dedf:f05:266c])
        by smtp.gmail.com with ESMTPSA id x11sm27276873pfn.53.2019.12.09.08.41.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 08:41:15 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] meta-security: add layer index callouts
To: diego.santacruz@spinetix.com, "akuster808@gmail.com"
 <akuster808@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20191206173731.2563-1-akuster808@gmail.com>
 <VI1PR01MB5167EFB04ADDF84335E36AA688580@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <a9db8b5f-f794-7907-540f-40d769302109@gmail.com>
Date: Mon, 9 Dec 2019 08:41:14 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR01MB5167EFB04ADDF84335E36AA688580@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
Content-Type: multipart/alternative;
 boundary="------------0AEA74A52324014405A43CC1"
Content-Language: en-US

--------------0AEA74A52324014405A43CC1
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 12/9/19 1:47 AM, Diego Santa Cruz via Lists.Yoctoproject.Org wrote:
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of Armpit via Lists.Yoctoproject.Org
>> Sent: 06 December 2019 18:38
>> To: yocto@lists.yoctoproject.org
>> Cc: yocto@lists.yoctoproject.org
>> Subject: [yocto] [meta-security][PATCH] meta-security: add layer index callouts
>>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  meta-integrity/conf/layer.conf           | 2 ++
>>  meta-security-compliance/conf/layer.conf | 2 ++
>>  meta-tpm/conf/layer.conf                 | 1 +
>>  3 files changed, 5 insertions(+)
>>
>> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
>> index 962424c..bfc9c6f 100644
>> --- a/meta-integrity/conf/layer.conf
>> +++ b/meta-integrity/conf/layer.conf
>> @@ -24,3 +24,5 @@ OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
>>  LAYERSERIES_COMPAT_integrity = "zeus"
>>  # ima-evm-utils depends on keyutils from meta-oe
>>  LAYERDEPENDS_integrity = "core openembedded-layer"
>> +
>> +BBLAYERS_LAYERINDEX_NAME_integrity = "meta-integrity"
>> diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-
>> compliance/conf/layer.conf
>> index 0e93bd0..e346bf3 100644
>> --- a/meta-security-compliance/conf/layer.conf
>> +++ b/meta-security-compliance/conf/layer.conf
>> @@ -11,3 +11,5 @@ BBFILE_PRIORITY_scanners-layer = "10"
>>  LAYERSERIES_COMPAT_scanners-layer = "zeus"
>>
>>  LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
>> +
>> +BBLAYERS_LAYERINDEX_NAME_integrity = "meta-security-compliance"
> This looks like a copy & paste typo, shouldn't this be
>
> +BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"
nice catch.

patch do out shortly

-armin
>
>> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
>> index 3af2d95..175eba8 100644
>> --- a/meta-tpm/conf/layer.conf
>> +++ b/meta-tpm/conf/layer.conf
>> @@ -14,3 +14,4 @@ LAYERDEPENDS_tpm-layer = " \
>>      core \
>>      openembedded-layer \
>>  "
>> +BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
>> --
>> 2.17.1
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#47598): https://lists.yoctoproject.org/g/yocto/message/47598
>> Mute This Topic: https://lists.yoctoproject.org/mt/67516326/1024635
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
>> -=-=-=-=-=-=-=-=-=-=-=-


--------------0AEA74A52324014405A43CC1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/9/19 1:47 AM, Diego Santa Cruz
      via Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:VI1PR01MB5167EFB04ADDF84335E36AA688580@VI1PR01MB5167.eurprd01.prod.exchangelabs.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a> <a class="moz-txt-link-rfc2396E" href="mailto:yocto@lists.yoctoproject.org">&lt;yocto@lists.yoctoproject.org&gt;</a> On Behalf
Of Armpit via Lists.Yoctoproject.Org
Sent: 06 December 2019 18:38
To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Subject: [yocto] [meta-security][PATCH] meta-security: add layer index callouts

Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
 meta-integrity/conf/layer.conf           | 2 ++
 meta-security-compliance/conf/layer.conf | 2 ++
 meta-tpm/conf/layer.conf                 | 1 +
 3 files changed, 5 insertions(+)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 962424c..bfc9c6f 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -24,3 +24,5 @@ OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 LAYERSERIES_COMPAT_integrity = "zeus"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
+
+BBLAYERS_LAYERINDEX_NAME_integrity = "meta-integrity"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-
compliance/conf/layer.conf
index 0e93bd0..e346bf3 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -11,3 +11,5 @@ BBFILE_PRIORITY_scanners-layer = "10"
 LAYERSERIES_COMPAT_scanners-layer = "zeus"

 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
+
+BBLAYERS_LAYERINDEX_NAME_integrity = "meta-security-compliance"
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
This looks like a copy &amp; paste typo, shouldn't this be

+BBLAYERS_LAYERINDEX_NAME_scanners-layer = "meta-security-compliance"</pre>
    </blockquote>
    nice catch.<br>
    <br>
    patch do out shortly<br>
    <br>
    -armin<br>
    <blockquote type="cite"
cite="mid:VI1PR01MB5167EFB04ADDF84335E36AA688580@VI1PR01MB5167.eurprd01.prod.exchangelabs.com">
      <pre class="moz-quote-pre" wrap="">

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 3af2d95..175eba8 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -14,3 +14,4 @@ LAYERDEPENDS_tpm-layer = " \
     core \
     openembedded-layer \
 "
+BBLAYERS_LAYERINDEX_NAME_tpm-layer = "meta-tpm"
--
2.17.1
</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47598): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47598">https://lists.yoctoproject.org/g/yocto/message/47598</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/67516326/1024635">https://lists.yoctoproject.org/mt/67516326/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------0AEA74A52324014405A43CC1--
