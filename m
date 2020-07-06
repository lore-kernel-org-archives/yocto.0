Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com [209.85.216.66])
 by mx.groups.io with SMTP id smtpd.web11.60403.1594049417986732833
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 08:30:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UZpI6SnB;
 spf=pass (domain: gmail.com, ip: 209.85.216.66, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f66.google.com with SMTP id k71so13456616pje.0
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jul 2020 08:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=gNWoxF1PI2ZNnjphVbk0t2kvGffDltqeaCKtb3b57FQ=;
        b=UZpI6SnBAiihevh9AJm5d6rCk4mBME878eo95PVRgbdpcpgod/JZO+IfVeR7nxELQC
         GgkDDnX5+2jhGDjP6givJq1fQHWX9ZDWVDSVTOppjwI0DxGl+WJxZMA/CubWuJf1dup5
         Q5EC2LjFIi/ZlQYYQIlwGb4VbgPoktnQn39THVivbK+zRX8PQh9sZuPRcLBMOQ0UDEZO
         GNQcKG+e53oIQEof2P7/GnieOh8BM9+KIvr3Yq6BpoIo2VRccfB26ECK/9yaXVN/aHR6
         0Oe027m3roM4AtmuARAPJANd7tTbsgNn0LSl4tPXDL68+fUM9Wu9Aoe3i5/tIW86GYn8
         cs5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language;
        bh=gNWoxF1PI2ZNnjphVbk0t2kvGffDltqeaCKtb3b57FQ=;
        b=fzFhXPeQJMYaFULxPJgBCe7Sc4/2oq9CNpGFgUxVkSHqnOazR1dvRApT4yAK514gTU
         d4KIb2jIQBilsVuPBh2tJaV/GoeCzRRUWuVq2Lrbj5WQYtW2q43YggoN7GBxuxNPpMle
         AIips7LWlv2MWcxpWMmIRfQKNyHFSnEzjKgevhXpowVhdyfAScuQWDNZIlx1Fyv2MubG
         kkoENuhAsWNEuZpa6BvZl+Lcl0xdha/YTN3CISYFvwoYUvAirJ8ysfNwHo52E38ZtH3/
         nmRplXrlB3bsxAeuMF9PTyp8RCsosaHuLJURTThFb0H+stCzQmULRsUQJmExEWYU0hRf
         n/uw==
X-Gm-Message-State: AOAM531W4JHXb4KPZGCqnU1DTE6/XBh/o8zz5ClQJhYZ5oNAuaieZ5H0
	POY0LuVFPpzOIC0tLFu8hD7y31hlfuk=
X-Google-Smtp-Source: ABdhPJxniDS7wdhLHK+cR5Kg6Bl6DIXR4QFgeSqxWmtAnF16JXyTtrNXtmTSQ/epma//JuND/PO6eA==
X-Received: by 2002:a17:90a:2e85:: with SMTP id r5mr22048873pjd.232.1594049417280;
        Mon, 06 Jul 2020 08:30:17 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:4da7:8833:1925:8aef? ([2601:202:4180:a5c0:4da7:8833:1925:8aef])
        by smtp.gmail.com with ESMTPSA id g19sm19101411pfu.183.2020.07.06.08.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 08:30:16 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 1/5] python3-oauth2client: add recipe
To: Konrad Weihmann <kweihmann@outlook.com>, yocto@lists.yoctoproject.org
References: <20200705185808.3912-1-akuster808@gmail.com>
 <AM7PR05MB6881A44FE679236AE94C9FBCA8680@AM7PR05MB6881.eurprd05.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <7a96d2e4-63e6-a729-e226-dfe55bcf2a6c@gmail.com>
Date: Mon, 6 Jul 2020 08:30:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <AM7PR05MB6881A44FE679236AE94C9FBCA8680@AM7PR05MB6881.eurprd05.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------470862C19BCB7892D246E2B7"
Content-Language: en-US

--------------470862C19BCB7892D246E2B7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



On 7/5/20 12:03 PM, Konrad Weihmann wrote:
> I think some RDEPENDS entries are missing, by looking at
> https://github.com/googleapis/oauth2client/blob/master/setup.py
>
> install_requires = [
>     'httplib2>=0.9.1',
>     'pyasn1>=0.1.7',
>     'pyasn1-modules>=0.0.5',
>     'rsa>=3.1.4',
>     'six>=1.6.1',
> ]
>
> same applies to the other added recipes of this series
hmm, OK. I did not run into issues for the main app I am after
supporting.  Thanks for the feedback.

-armin
>
> On 05.07.20 20:58, akuster wrote:
>> diff --git a/recipes-python/python/python3-oauth2client_4.1.3.bb
>> b/recipes-python/python/python3-oauth2client_4.1.3.bb
>> new file mode 100644
>> index 0000000..b84b4ca
>> --- /dev/null
>> +++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
>> @@ -0,0 +1,9 @@
>> +SUMMARY = "Add version info to file paths."
>> +SECTION = "devel/python"
>> +LICENSE = "Apache-2.0"
>> +LIC_FILES_CHKSUM =
>> "file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc"
>> +
>> +PYPI_PACKAGE = "oauth2client"
>> +SRC_URI[sha256sum] =
>> "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
>> +
>> +inherit pypi setuptools3
>>
>>
>>
>>
>
> 


--------------470862C19BCB7892D246E2B7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <br>
    <br>
    <div class="moz-cite-prefix">On 7/5/20 12:03 PM, Konrad Weihmann
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881A44FE679236AE94C9FBCA8680@AM7PR05MB6881.eurprd05.prod.outlook.com">I
      think some RDEPENDS entries are missing, by looking at
      <a class="moz-txt-link-freetext" href="https://github.com/googleapis/oauth2client/blob/master/setup.py">https://github.com/googleapis/oauth2client/blob/master/setup.py</a>
      <br>
      <br>
      install_requires = [
      <br>
          'httplib2&gt;=0.9.1',
      <br>
          'pyasn1&gt;=0.1.7',
      <br>
          'pyasn1-modules&gt;=0.0.5',
      <br>
          'rsa&gt;=3.1.4',
      <br>
          'six&gt;=1.6.1',
      <br>
      ]
      <br>
      <br>
      same applies to the other added recipes of this series
      <br>
    </blockquote>
    hmm, OK. I did not run into issues for the main app I am after
    supporting.  Thanks for the feedback.<br>
    <br>
    -armin<br>
    <blockquote type="cite"
cite="mid:AM7PR05MB6881A44FE679236AE94C9FBCA8680@AM7PR05MB6881.eurprd05.prod.outlook.com"><br>
      On 05.07.20 20:58, akuster wrote:
      <br>
      <blockquote type="cite">diff --git
        a/recipes-python/python/python3-oauth2client_4.1.3.bb
        b/recipes-python/python/python3-oauth2client_4.1.3.bb
        <br>
        new file mode 100644
        <br>
        index 0000000..b84b4ca
        <br>
        --- /dev/null
        <br>
        +++ b/recipes-python/python/python3-oauth2client_4.1.3.bb
        <br>
        @@ -0,0 +1,9 @@
        <br>
        +SUMMARY = "Add version info to file paths."
        <br>
        +SECTION = "devel/python"
        <br>
        +LICENSE = "Apache-2.0"
        <br>
        +LIC_FILES_CHKSUM =
        <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc">"file://LICENSE;md5=038e1390e94fe637991fa5569daa62bc"</a>
        <br>
        +
        <br>
        +PYPI_PACKAGE = "oauth2client"
        <br>
        +SRC_URI[sha256sum] =
        "d486741e451287f69568a4d26d70d9acd73a2bbfa275746c535b4209891cccc6"
        <br>
        +
        <br>
        +inherit pypi setuptools3
        <br>
        <br>
        <br>
        <br>
        <br>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------470862C19BCB7892D246E2B7--
