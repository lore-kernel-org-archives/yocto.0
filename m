Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29656C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 01:13:04 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.49182.1702602780074638200
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 17:13:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=zW+O93Bp;
 spf=pass (domain: mistywest.com, ip: 209.85.210.180, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6d26dabc560so123950b3a.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 17:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1702602779; x=1703207579; darn=lists.yoctoproject.org;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7Bqfzz/9ebC2KOFCKexEAPumIsY2S0zfO2NpKN8PfM=;
        b=zW+O93Bpith4/h1Hk7mRp5Xn7SDY4hFOpvhtcifUh6KBbHJcUU0WWkQgpgrjPlW5o9
         VVc22xwYf6+D/sk9gNSz1kdW2GKpzZWBvFzFVNydoFUKcj6wcFXdxJ0hJGOLMS9OgDeI
         +ZBPWU2s3VQ9LdisKV5ohrP+/mJCVDI+lJML+RURCEU+zWdmQS9dQzsGarEPk3hf+Tvx
         4zDWaDX5lYZN52qezMHcHD69JSD+uXI9TXFAUJpBv35tD5x946szrJosaciKIWxNjvpG
         Nu5OcU8FUusqRAkNVsdsSah+T/fHsw3ONt44cNcvuS+yv0FAVlKPsbl0VXYxA4E0jvVo
         EiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702602779; x=1703207579;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u7Bqfzz/9ebC2KOFCKexEAPumIsY2S0zfO2NpKN8PfM=;
        b=GDuNPJg8Fh2/Gy7zlb9OU4z+NMbVPzGRq+3ymBut9eVDR6iqH9WQsG88pBONsxE887
         lfdMwAd0dajD0JEC+w408L034lQ6pJq7/P8ObpazaP8Z3gVvy0Y3hBQfX7UCMqSWTIGf
         4v2TboKftJ9+l+FtDVztFSHMuVfnxZ7skKXDh6FGY3xeGmqan3Y79LDVwRVh8hUfYcwm
         E40gzjNeNsA+AmXPTMTQg4TuxHZ7o3BULTRZpC2fyT0nQc8PxXCFBTZrFqI/hr2JmUaX
         kIX6Na+Ui8zYGBPyR3TNurS5qH6TCn3h+ckx7z1H9MNpotL2JPk4RIIY7JRng276NHcd
         +LZw==
X-Gm-Message-State: AOJu0YzDZ95cQW6+e+cOevEA8r1DIuXt+lqWzJu/l1LLBHTt8+MaigvH
	Bq46TP3mvhbj0eZ+Z7rO+9cgnA==
X-Google-Smtp-Source: AGHT+IHacLQlB1/PM80Vl6SGUVMc+RtS3FneHY4qMqpudkTouUAkT4eLgICzzcJdOOSzWpN4iJ27cw==
X-Received: by 2002:a05:6a00:1388:b0:6ce:fa73:a046 with SMTP id t8-20020a056a00138800b006cefa73a046mr12482748pfg.50.1702602779397;
        Thu, 14 Dec 2023 17:12:59 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id d3-20020a056a0010c300b006c0316485f9sm12305337pfu.64.2023.12.14.17.12.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 17:12:59 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------UarD0UF0MJ4wrmiY1IJnY4Kw"
Message-ID: <0c6d9ef6-daa1-42cf-ba50-ac4ff5465456@mistywest.com>
Date: Thu, 14 Dec 2023 17:12:58 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] how to create symlink in dunfell after compilation of
 library file
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
References: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
 <CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 01:13:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61895

This is a multi-part message in MIME format.
--------------UarD0UF0MJ4wrmiY1IJnY4Kw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 2023-12-14 5:00 p.m., Khem Raj wrote:
> On Thu, Dec 14, 2023 at 4:26 PM Mistyron<ron.eggler@mistywest.com>  wrote:
>> Hi,
>>
>> I'm working with dunfell and want to create a symlink after compilation
>> of the library:
>>
>> I added the following in aziot-keys_%.bbapend:
>>
>> do_install_append() {
>>       install -d ${D}/usr/lib
>>       lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.so
> try using ln -rs instead of lnr.

With ln -rs I get the following error:

ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: QA Issue: 
aziot-keys: Files/directories were installed but not shipped in any 
package: /usr/lib /usr/lib/libaziot_keys.so
Please set FILES such that these items are packaged. Alternatively if 
they are unneeded, avoid installing them or delete them within do_install.
aziot-keys: 2 installed and not shipped files. [installed-vs-shipped]
ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: Fatal QA 
errors found, failing task.
ERROR: Logfile of failure stored in: 
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/aziot-keys/1.4.7.AUTOINC+91e058880c-r0/temp/log.do_package.64055
ERROR: Task 
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-iotedge/recipes-core/aziot-keys/aziot-keys_1.4.7.bb:do_package) 
failed with exit code '1'

I came across a post that read that for dunfell, lnr shoudl be used 
(rather than ln -r for newer versions)

>> }
>>
>> Yet, after building the image,
>> I do not see the symlink in/usr/lib/
>>
>> I did find the recipe for which I created the bbappend with:
>> oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so
>>
>> What is missing?
>>
>> Thank you,
>> Ron
>>
>> --
>> Mistyron
>>
>>
>> --
>> Mistyron
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#61892):https://lists.yoctoproject.org/g/yocto/message/61892
>> Mute This Topic:https://lists.yoctoproject.org/mt/103181952/1997914
>> Group Owner:yocto+owner@lists.yoctoproject.org
>> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
--------------UarD0UF0MJ4wrmiY1IJnY4Kw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2023-12-14 5:00 p.m., Khem Raj
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">On Thu, Dec 14, 2023 at 4:26 PM Mistyron <a class="moz-txt-link-rfc2396E" href="mailto:ron.eggler@mistywest.com">&lt;ron.eggler@mistywest.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Hi,

I'm working with dunfell and want to create a symlink after compilation
of the library:

I added the following in aziot-keys_%.bbapend:

do_install_append() {
     install -d ${D}/usr/lib
     lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.so
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
try using ln -rs instead of lnr.</pre>
    </blockquote>
    <p>With ln -rs I get the following error:<br>
      <br>
      ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: QA
      Issue: aziot-keys: Files/directories were installed but not
      shipped in any
package:                                                                                                                                                                                                                                                                                        
/usr/lib                                                                                                                                                                                                                                                                                                                                                                                                                              
      /usr/lib/libaziot_keys.so<br>
      Please set FILES such that these items are packaged. Alternatively
      if they are unneeded, avoid installing them or delete them within
      do_install.<br>
      aziot-keys: 2 installed and not shipped files.
      [installed-vs-shipped]<br>
      ERROR: aziot-keys-1.4.7.AUTOINC+91e058880c-r0 do_package: Fatal QA
      errors found, failing task.<br>
      ERROR: Logfile of failure stored in:
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/aziot-keys/1.4.7.AUTOINC+91e058880c-r0/temp/log.do_package.64055<br>
      ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-iotedge/recipes-core/aziot-keys/aziot-keys_1.4.7.bb:do_package)
      failed with exit code '1'<span style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">
</span></p>
    <p><span style="white-space: pre-wrap">I came across a post that read that for dunfell, lnr shoudl be used (rather than ln -r for newer versions)
</span><span style="white-space: pre-wrap">
</span></p>
    <blockquote type="cite"
cite="mid:CAMKF1spgfn9YXR5CZONfiD8gQgsPFaD2uMmh+X=-uSS5Y_Ce0w@mail.gmail.com">
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">}

Yet, after building the image,
I do not see the symlink in/usr/lib/

I did find the recipe for which I created the bbappend with:
oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so

What is missing?

Thank you,
Ron

--
Mistyron


--
Mistyron

-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
You automatically follow any topics you start or reply to.
View/Reply Online (#61892): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/61892">https://lists.yoctoproject.org/g/yocto/message/61892</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/103181952/1997914">https://lists.yoctoproject.org/mt/103181952/1997914</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-</pre>
      </blockquote>
    </blockquote>
    <div class="moz-signature"> </div>
  </body>
</html>

--------------UarD0UF0MJ4wrmiY1IJnY4Kw--

