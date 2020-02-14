Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web12.8519.1581697096573482489
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 08:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=ZuxJ5Ab7;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.214.174, mailfrom: akuster@mvista.com)
Received: by mail-pl1-f174.google.com with SMTP id c23so3903285plz.4
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 08:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=958JDkC8lawR0L6BCiXLiExPmMCZ1fx2810KYTYHW1E=;
        b=ZuxJ5Ab7FfYqUhn0/kMMvIJlqkGOh+5/uWu6cLYI7UDsEATPrLagoJRc4CpwnmN9Tg
         C1gFvzKf/U8qSIOnqTcWQvFiW06Zni2UmiL4tdbbI0BVdtwWBhXQSKfU1cwI3MUIsc/z
         JUCPDQDh5UFPNrnbe8t4Roaxcyp1uHz1Y2cBfb6BKx6b4z7M7EqUObg4AYU/jIpzcSxP
         CQii3h24wIatiZW4P4FwhNxwLqMNMW9n14H/3RsXGwoj8jc98pKPZLXrX1KZaLe+SJ8a
         w+uYIR01F+K9nBBXGmNemEfRIDiWPMzXD2HHTsa3d1lQLwD6S407UWans3WwkeTSu/7Q
         oG/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=958JDkC8lawR0L6BCiXLiExPmMCZ1fx2810KYTYHW1E=;
        b=GDqZDGH5VYk76JZoNB7+YkMDagXdI4oHA84ZizkqKTdIVFmm+z7HHqcMqzncy5gQrN
         +h/vPYHEnu1W/CTCJ5IX3Tq0piXn3klBaUpQGPdXuFJ8at32ardrjrI3Q15ObfPihYU5
         2uQAmbUP8vTZw7VaV9MdI58arCaDqRQCB9RVtmwkssjgmDOmUbVBA6wsvtKeT+YGYfxI
         E6mKr1LMj8nvrtAoR4ya+odXrgAUymT2T15IaGKXGKd/2DF3kLKoUmBHZbrPDLUIKO2u
         qIsbSQJTgNlqQjJ86cLM2RYTXpkwyDR67YH55XrwolpeCFPowUeFAzLFI5P/NMOzte0+
         RCFw==
X-Gm-Message-State: APjAAAX8HVQCgGs2V4+u3t3/r+uLA/jRDrdhX+/TLwXzhI7Hr/+Hbh4e
	yrz3S0haWwVIs+xyotNVJekkcAZKYbY=
X-Google-Smtp-Source: APXvYqyPwGxuLuGk5r3puWIM/wjzFpYwMXXieWcW1Fz/PFwcE8NPy165S7lw8DFU2Fz6rlGvXUxVfQ==
X-Received: by 2002:a17:902:528:: with SMTP id 37mr4199436plf.322.1581697095770;
        Fri, 14 Feb 2020 08:18:15 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:594e:3e2b:6a46:7912? ([2601:202:4180:a5c0:594e:3e2b:6a46:7912])
        by smtp.gmail.com with ESMTPSA id i68sm7754984pfe.173.2020.02.14.08.18.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:18:14 -0800 (PST)
Subject: Re: [yocto] [error-report-web][PATCH V2] Add local.conf and auto.conf into error details
To: Changqing Li <changqing.li@windriver.com>
Cc: yocto@lists.yoctoproject.org, bluelightning@bluelightning.org
References: <1573547573-352969-1-git-send-email-changqing.li@windriver.com>
 <9315981.NtHHCumI8A@shodan>
 <5af91cd5-9249-e236-480b-fb3b4962bc0b@windriver.com>
 <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <40bd8138-0eb2-1e8e-55f9-a2e264bd0932@mvista.com>
Date: Fri, 14 Feb 2020 08:18:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------DA1ECAA14E7D00F5BD78DB92"
Content-Language: en-US

--------------DA1ECAA14E7D00F5BD78DB92
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Changqing,

Please use bluelightning@bluelightning.org for now.

According to Linkedin, Paul is now at Microsoft.

- armin


On 2/13/20 6:42 PM, Changqing Li wrote:
> Hi, Paul
>
> Could you help to check my reply below, thanks.
>
> On 12/11/19 1:45 PM, Changqing Li wrote:
>>
>> On 11/13/19 6:36 PM, Paul Eggleton wrote:
>>> Hi Changqing,
>>>
>>> Some comments below.
>>>
>>> On Tuesday, 12 November 2019 9:32:53 PM NZDT
>>> changqing.li@windriver.com wrote:
>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>
>>>> Support to display local.conf and auto.conf on error report web.
>>>> Here is commit in oe-core, which add local.conf/auto.conf into
>>>> error report
>>>> https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6
>>>>
>>>>
>>>> This commit is related to YOCTO #13252
>>>>
>>>> Signed-off-by: Changqing Li <changqing.li@windriver.com>
>>>> ---
>>>>   Post/0006_auto_20190917_0419.py | 24 ++++++++++++++++++++++++
>>>>   Post/models.py                  |  2 ++
>>>>   Post/parser.py                  |  2 ++
>>>>   Post/test.py                    |  2 ++
>>>>   templates/error-details.html    | 10 ++++++++++
>>>>   test-data/test-payload.json     |  4 +++-
>>>>   6 files changed, 43 insertions(+), 1 deletion(-)
>>>>   create mode 100644 Post/0006_auto_20190917_0419.py
>>>>
>>>> diff --git a/Post/0006_auto_20190917_0419.py
>>>> b/Post/0006_auto_20190917_0419.py
>>>> new file mode 100644
>>>> index 0000000..827944e
>>>> --- /dev/null
>>>> +++ b/Post/0006_auto_20190917_0419.py
>>> Could you please give the migration a proper name (-n option to
>>> makemigrations) e.g. local_conf_auto_conf
>> OK, thanks
>>>
>>>> --- a/Post/models.py
>>>> +++ b/Post/models.py
>>>> @@ -43,6 +43,8 @@ class Build(models.Model):
>>>>       LINK_BACK = models.TextField(max_length=300, blank=True,
>>>> null=True)
>>>>       ERROR_TYPE = models.CharField(max_length=20,
>>>> choices=ERROR_TYPE_CHOICES,
>>>>                                     default=ErrorType.RECIPE)
>>>> +    LOCAL_CONF =
>>>> models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
>>>> +    AUTO_CONF =
>>>> models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE), default="")
>>> I'm not sure this is practical, for two reasons:
>>>
>>> 1) Field sizes should not be variable like this; changing the
>>> MAX_UPLOAD_SIZE value after the fact would not change the database
>>> structure
>>> 2) The value could never actually reach MAX_UPLOAD_SIZE because the
>>> overhead of the surrounding JSON would block it from being uploaded
>>> if it did
>>>
>>> However, since this is a TextField we don't actually have to specify
>>> a max_length (for a TextField max_length only actually affects the
>>> frontend, and we don't expose this field in a form) so it can just
>>> be removed.
>>>
>>> Another thing, instead of default="" you should use blank=True.
>> OK,  I will fix this.
>>>
>>>
>>>> +        {% if detail.BUILD.LOCAL_CONF != "" %}
>>>> +        <dt></a>Local Conf:</dt>
>>>> +        <dd style="white-space: pre-wrap;">{{
>>>> detail.BUILD.LOCAL_CONF | safe }}</dd>
>>>> +        {% endif %}
>>>> +
>>>> +        {% if detail.BUILD.AUTO_CONF != "" %}
>>>> +        <dt></a>Auto Conf:</dt>
>>>> +        <dd style="white-space: pre-wrap;">{{
>>>> detail.BUILD.AUTO_CONF | safe }}</dd>
>>>> +        {% endif %}
>>> We cannot use the safe filter here - doing so could open up an XSS
>>> vulnerability, since anyone can upload anything to the error-report
>>> application and the content could include links or other malicious
>>> HTML data. We should allow it to be auto-escaped. Is there a
>>> particular issue you were using this to solve?
>>
>> This is for resolve a problem when there is angle brackets in
>> local.conf/auto.conf.
>>
>> I have a patch in oe-core [OE-core] [PATCH] report-error.bbclass:
>> replace angle brackets with &lt; and &gt;]
>>
>> when we have below content in local.conf or auto.conf:
>> BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
>> send-error-report will fail with "HTTP Error 500: OK"
>>
>> error-report-web do rudimentary check on all fields that are
>> passed to the graphs page to avoid any XSS happening, if contains
>> '<', the server will return error(Invalid characters in json).
>> fixed by use escape of <> to replace it.
>>
>> NOTE: with this change, error-report-web need to add filter 'safe'
>> for the string wanted to display to avoid further HTML escaping
>> prior to output. Below is how the content displayed on webpage:
>> with the filter 'safe':
>> BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj<raj.khem@gmail.com>"
>> without the filter 'safe':
>> BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj &lt;raj.khem@gmail.com&gt;"
>>
>> Do you have good idea to resolve this? Thanks.
>>
>>>
>>> Cheers
>>> Paul
>>>
>>
>
> 


--------------DA1ECAA14E7D00F5BD78DB92
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Changqing,<br>
    <br>
    Please use <a class="moz-txt-link-abbreviated" href="mailto:bluelightning@bluelightning.org">bluelightning@bluelightning.org</a> for now.<br>
    <br>
    According to Linkedin, Paul is now at Microsoft.<br>
    <br>
    - armin<br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/13/20 6:42 PM, Changqing Li wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:2ac16c10-de9d-1777-20da-4766af5e53f3@windriver.com">Hi,
      Paul
      <br>
      <br>
      Could you help to check my reply below, thanks.
      <br>
      <br>
      On 12/11/19 1:45 PM, Changqing Li wrote:
      <br>
      <blockquote type="cite">
        <br>
        On 11/13/19 6:36 PM, Paul Eggleton wrote:
        <br>
        <blockquote type="cite">Hi Changqing,
          <br>
          <br>
          Some comments below.
          <br>
          <br>
          On Tuesday, 12 November 2019 9:32:53 PM NZDT
          <a class="moz-txt-link-abbreviated" href="mailto:changqing.li@windriver.com">changqing.li@windriver.com</a> wrote:
          <br>
          <blockquote type="cite">From: Changqing Li
            <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
            <br>
            <br>
            Support to display local.conf and auto.conf on error report
            web.
            <br>
            Here is commit in oe-core, which add local.conf/auto.conf
            into error report
            <br>
<a class="moz-txt-link-freetext" href="https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6">https://git.openembedded.org/openembedded-core/commit/?id=7adf9707c04d8ef6bcd8d8bda555687f705e6ee6</a>
            <br>
            <br>
            This commit is related to YOCTO #13252
            <br>
            <br>
            Signed-off-by: Changqing Li
            <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
            <br>
            ---
            <br>
              Post/0006_auto_20190917_0419.py | 24
            ++++++++++++++++++++++++
            <br>
              Post/models.py                  |  2 ++
            <br>
              Post/parser.py                  |  2 ++
            <br>
              Post/test.py                    |  2 ++
            <br>
              templates/error-details.html    | 10 ++++++++++
            <br>
              test-data/test-payload.json     |  4 +++-
            <br>
              6 files changed, 43 insertions(+), 1 deletion(-)
            <br>
              create mode 100644 Post/0006_auto_20190917_0419.py
            <br>
            <br>
            diff --git a/Post/0006_auto_20190917_0419.py
            b/Post/0006_auto_20190917_0419.py
            <br>
            new file mode 100644
            <br>
            index 0000000..827944e
            <br>
            --- /dev/null
            <br>
            +++ b/Post/0006_auto_20190917_0419.py
            <br>
          </blockquote>
          Could you please give the migration a proper name (-n option
          to makemigrations) e.g. local_conf_auto_conf
          <br>
        </blockquote>
        OK, thanks
        <br>
        <blockquote type="cite">
          <br>
          <blockquote type="cite">--- a/Post/models.py
            <br>
            +++ b/Post/models.py
            <br>
            @@ -43,6 +43,8 @@ class Build(models.Model):
            <br>
                  LINK_BACK = models.TextField(max_length=300,
            blank=True, null=True)
            <br>
                  ERROR_TYPE = models.CharField(max_length=20,
            choices=ERROR_TYPE_CHOICES,
            <br>
                                               
            default=ErrorType.RECIPE)
            <br>
            +    LOCAL_CONF =
            models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE),
            default="")
            <br>
            +    AUTO_CONF =
            models.TextField(max_length=int(settings.MAX_UPLOAD_SIZE),
            default="")
            <br>
          </blockquote>
          I'm not sure this is practical, for two reasons:
          <br>
          <br>
          1) Field sizes should not be variable like this; changing the
          MAX_UPLOAD_SIZE value after the fact would not change the
          database structure
          <br>
          2) The value could never actually reach MAX_UPLOAD_SIZE
          because the overhead of the surrounding JSON would block it
          from being uploaded if it did
          <br>
          <br>
          However, since this is a TextField we don't actually have to
          specify a max_length (for a TextField max_length only actually
          affects the frontend, and we don't expose this field in a
          form) so it can just be removed.
          <br>
          <br>
          Another thing, instead of default="" you should use
          blank=True.
          <br>
        </blockquote>
        OK,  I will fix this.
        <br>
        <blockquote type="cite">
          <br>
          <br>
          <blockquote type="cite">+        {% if detail.BUILD.LOCAL_CONF
            != "" %}
            <br>
            +        &lt;dt&gt;&lt;/a&gt;Local Conf:&lt;/dt&gt;
            <br>
            +        &lt;dd style="white-space: pre-wrap;"&gt;{{
            detail.BUILD.LOCAL_CONF | safe }}&lt;/dd&gt;
            <br>
            +        {% endif %}
            <br>
            +
            <br>
            +        {% if detail.BUILD.AUTO_CONF != "" %}
            <br>
            +        &lt;dt&gt;&lt;/a&gt;Auto Conf:&lt;/dt&gt;
            <br>
            +        &lt;dd style="white-space: pre-wrap;"&gt;{{
            detail.BUILD.AUTO_CONF | safe }}&lt;/dd&gt;
            <br>
            +        {% endif %}
            <br>
          </blockquote>
          We cannot use the safe filter here - doing so could open up an
          XSS vulnerability, since anyone can upload anything to the
          error-report application and the content could include links
          or other malicious HTML data. We should allow it to be
          auto-escaped. Is there a particular issue you were using this
          to solve?
          <br>
        </blockquote>
        <br>
        This is for resolve a problem when there is angle brackets in
        local.conf/auto.conf.
        <br>
        <br>
        I have a patch in oe-core [OE-core] [PATCH]
        report-error.bbclass: replace angle brackets with &amp;lt; and
        &amp;gt;]
        <br>
        <br>
        when we have below content in local.conf or auto.conf:
        <br>
        BUILDHISTORY_COMMIT_AUTHOR ?= "Khem
        Raj<a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a>"
        <br>
        send-error-report will fail with "HTTP Error 500: OK"
        <br>
        <br>
        error-report-web do rudimentary check on all fields that are
        <br>
        passed to the graphs page to avoid any XSS happening, if
        contains
        <br>
        '&lt;', the server will return error(Invalid characters in
        json).
        <br>
        fixed by use escape of &lt;&gt; to replace it.
        <br>
        <br>
        NOTE: with this change, error-report-web need to add filter
        'safe'
        <br>
        for the string wanted to display to avoid further HTML escaping
        <br>
        prior to output. Below is how the content displayed on webpage:
        <br>
        with the filter 'safe':
        <br>
        BUILDHISTORY_COMMIT_AUTHOR ?= "Khem
        Raj<a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a>"
        <br>
        without the filter 'safe':
        <br>
        BUILDHISTORY_COMMIT_AUTHOR ?= "Khem Raj
        &amp;lt;raj.khem@gmail.com&amp;gt;"
        <br>
        <br>
        Do you have good idea to resolve this? Thanks.
        <br>
        <br>
        <blockquote type="cite">
          <br>
          Cheers
          <br>
          Paul
          <br>
          <br>
        </blockquote>
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

--------------DA1ECAA14E7D00F5BD78DB92--
