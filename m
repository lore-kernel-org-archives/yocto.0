Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
 by mx.groups.io with SMTP id smtpd.web11.612.1577125945801133343
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 10:32:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=OVziCW2K;
 spf=temperror, err=temporary DNS error (domain: mvista.com, ip: 209.85.210.194, mailfrom: akuster@mvista.com)
Received: by mail-pf1-f194.google.com with SMTP id 195so8693323pfw.11
        for <yocto@lists.yoctoproject.org>; Mon, 23 Dec 2019 10:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=brNRAgOklnr5qY1oByeuB0Qfc9nmiuIPmwTlsIhzIxk=;
        b=OVziCW2Kebw/q5zvyN+erbelFngIKie5Fdv6Tez1vUbeEWJtqJZGqqLE3i9I5434d+
         T6aeeV9j9FIU3bQSmaOVabONYraweNn9JiEV5us1sIUKD8Njn0NPyHEmsG+xfCp8B/wD
         wupsbJrgRmgqyJhqIwBF54tvy4eolsHSAUEsEsSAeClyUwFYhDwxKJK7c52O8RcKW7Fo
         GpvBY/B9/khPx8LlthS7uOGRe2XWG4KXFsosNP/L8DwBcAV+weXN+p0uWG6LfJDr4PVd
         hAfI+fXzMwsqPSimcwgn0kAc68JVM1BB6ANuuFhAWk4JAooEKA87oy+33Qse1vGRSpZe
         6+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=brNRAgOklnr5qY1oByeuB0Qfc9nmiuIPmwTlsIhzIxk=;
        b=dWBkV5iCIOIJQ4IPnxDWe8qYd+MoaYUX4PMZ3rlY6vsVDNMBtNhFYsH4K/zFVFDKAc
         d5qRo4aWuiD8f5aY25DL/fZswURz+1Yl25TwDoI8Ly5mxeQIWJ/mOs+Ttg5b1Y7IRwcP
         1vJ0CqkqTBFK0wTcNwRQ+G0Aibv78iPwcbYt2lqzgqc/lhJ0VijRJm2GcoBcyiqHaUBP
         2NOHQgrON7+ifCPpP/n5Nnd8aJBLPiH8gpRBWQJkrkBiqlGiUmnOHthwsWwBYs79U+f6
         sy5k3C6OXftjGkv3ATOWV7miDiut4MBGJx7pfJO18cjCZD6jNJ03ZBLXhH7jz3mdCxyK
         y0hQ==
X-Gm-Message-State: APjAAAULfSFraaJCZ/VIOzTOW0pK/mNmmmfWYYK3osFSCWINAPNUcgSs
	VwEQ2n5kCNfRLyat9IfYH3zofX+ZS10=
X-Google-Smtp-Source: APXvYqyrZFrnYdRYYANfrt5mb1fk0u7p3iTAiD51LLfwXMYs4f29FDnWSgpAPaUVm3yDvs9uoEUFCA==
X-Received: by 2002:a62:7711:: with SMTP id s17mr32613465pfc.157.1577125944854;
        Mon, 23 Dec 2019 10:32:24 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:30f1:af1:c5e0:a746? ([2601:202:4180:a5c0:30f1:af1:c5e0:a746])
        by smtp.gmail.com with ESMTPSA id p21sm25342357pfn.103.2019.12.23.10.32.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Dec 2019 10:32:24 -0800 (PST)
Subject: Re: [yocto] [meta-security][PATCH] meta-integrity/../systemd: fix pollution issue
To: yocto@lists.yoctoproject.org
References: <20191223171834.30244-1-akuster808@gmail.com>
 <DE34DAAB-1CB4-48CD-B51A-F6510C1CA115@iki.fi>
From: "Armin Kuster" <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <36a6851a-8544-6ada-53fc-4b64217ae56d@mvista.com>
Date: Mon, 23 Dec 2019 10:32:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <DE34DAAB-1CB4-48CD-B51A-F6510C1CA115@iki.fi>
Content-Type: multipart/alternative;
 boundary="------------D933117CAC78638A0D35CE19"
Content-Language: en-US

--------------D933117CAC78638A0D35CE19
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 12/23/19 10:18 AM, Anders Montonen wrote:
> Hi,
>
> These look like typos:

thanks.

will fix and send v2

- armin
>
> On 23 Dec 2019, at 19:18, Armpit <akuster808@gmail.com> wrote:
>> only include changes of systemd is enabled.
> of -> if
>
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>> meta-integrity/recipes-core/systemd/systemd_%.bbappend | 6 +++---
>> 1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
>> index 3b45541..f33e563 100644
>> --- a/meta-integrity/recipes-core/systemd/systemd_%.bbappend
>> +++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
>> @@ -1,11 +1,11 @@
>> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>> +FILESEXTRAPATHS_prepend_ima := "${THISDIR}/files:"
>>
>> -SRC_URI += " \
>> +SRC_URI_iam += “ \
> iam -> ima
>
>>     file://machine-id-commit-sync.conf \
>>     file://random-seed-sync.conf \
>> "
>>
>> -do_install_append () {
>> +do_install_append_iam () {
> iam -> ima
>
>>     for i in machine-id-commit random-seed; do
>>         install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
>>         install -m 0644 ${WORKDIR}/$i-sync.conf ${D}/${systemd_system_unitdir}/systemd-$i.service.d
>> -- 
>> 2.17.1
> Regards,
> Anders
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47810): https://lists.yoctoproject.org/g/yocto/message/47810
> Mute This Topic: https://lists.yoctoproject.org/mt/69235591/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------D933117CAC78638A0D35CE19
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/23/19 10:18 AM, Anders Montonen
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:DE34DAAB-1CB4-48CD-B51A-F6510C1CA115@iki.fi">
      <pre class="moz-quote-pre" wrap="">Hi,

These look like typos:</pre>
    </blockquote>
    <br>
    thanks.<br>
    <br>
    will fix and send v2<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:DE34DAAB-1CB4-48CD-B51A-F6510C1CA115@iki.fi">
      <pre class="moz-quote-pre" wrap="">

On 23 Dec 2019, at 19:18, Armpit <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
only include changes of systemd is enabled.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
of -&gt; if

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Signed-off-by: Armin Kuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
meta-integrity/recipes-core/systemd/systemd_%.bbappend | 6 +++---
1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
index 3b45541..f33e563 100644
--- a/meta-integrity/recipes-core/systemd/systemd_%.bbappend
+++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
@@ -1,11 +1,11 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend_ima := "${THISDIR}/files:"

-SRC_URI += " \
+SRC_URI_iam += “ \
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
iam -&gt; ima

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">    <a class="moz-txt-link-freetext" href="file://machine-id-commit-sync.conf">file://machine-id-commit-sync.conf</a> \
    <a class="moz-txt-link-freetext" href="file://random-seed-sync.conf">file://random-seed-sync.conf</a> \
"

-do_install_append () {
+do_install_append_iam () {
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
iam -&gt; ima

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">    for i in machine-id-commit random-seed; do
        install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
        install -m 0644 ${WORKDIR}/$i-sync.conf ${D}/${systemd_system_unitdir}/systemd-$i.service.d
-- 
2.17.1
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Regards,
Anders</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47810): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47810">https://lists.yoctoproject.org/g/yocto/message/47810</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/69235591/1024635">https://lists.yoctoproject.org/mt/69235591/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------D933117CAC78638A0D35CE19--
