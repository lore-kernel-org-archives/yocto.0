Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1947.1574445568478256779
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 09:59:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ikl/mnOE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 556E2E00E45; Fri, 22 Nov 2019 09:59:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447CAE00E40
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 09:59:26 -0800 (PST)
Received: by mail-pg1-f172.google.com with SMTP id e6so3658463pgi.11
        for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 09:59:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=+B9vWUpOzIGcB4gzogM8910KuPiDM3jJnifVQ5aC4FE=;
        b=ikl/mnOELQSWB78QbjEENLLfBYi+47Cmv7KZ4+2UrNyTg3FZCz2djzNMBd1HRIKB8w
         Xp3TfeqZLeu1Hby6YVYoepEILnKUVAWlv0zs0OquuTtgfzvwoZrXPV+KAAS2sbOoYHTB
         Te4KGfSXeo/6eMWiwSbofIgddt8Rj1BuekITnb1D7KOL9m2sPlOhE7QiAb9s/81O9+gQ
         l90u/CHXfGTgdp3z53YQ2hgl4Ub2UPA+BCpHtVor2NICTVKyboaWSBwWPSJGiHdB/H6X
         +C4tNf5IMtFarN33gnKO8xD5NH81Y55/WkoRSDohmuE2pb+L4UZrJ98Tuh5pMnS1kDNx
         HcAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=+B9vWUpOzIGcB4gzogM8910KuPiDM3jJnifVQ5aC4FE=;
        b=A3shKsBx5GO/xUI79OxQBMPtiKJx6il4WjsjQM9pAxPx8GmxyV6DWPNx+JaLX6lNG3
         sY6oWlHO7TAvkKZ+GKlcY9zGlJa/1m5iVjh8wsS0/bxruvZJqUpIW56Vlc/ATH4pF/KT
         MbrVJMs/lURXtMXb5bQmbwvNxGxdjaK5PLOxjKIV+Rlp0O4DnWjkEZuD5g1Q74inxhJs
         VSMSudB83uJRPLoVORLwO6KqJ6kTIk+MzOyuOFOxyLQS+1LMBKsbVhFKyAPXIposH3/r
         XO+EzCr2MVAEoy1EyDumrSoMUIHXdgLWts+SSjKZ7V+7bTzPwiqR7DGaAheFVrcqlEV9
         m+XA==
X-Gm-Message-State: APjAAAVAUJVtSidjSLo+7bZ0LpY++3x6dww9IpFF536XnebYUWYyFhJb
	n50vuyZOJ0j38RS3cBBEKbhdWfw1
X-Google-Smtp-Source: APXvYqwuqoCxpmHXaa7mMH3EVO0VY9+kpzRGHZio3oS7pWlZpkuau83BPkecZYhR+bytJI0VreqgRg==
X-Received: by 2002:a63:101f:: with SMTP id f31mr17272195pgl.410.1574445565539;
        Fri, 22 Nov 2019 09:59:25 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:d5a1:4623:137e:d439? ([2601:202:4180:a5c0:d5a1:4623:137e:d439])
        by smtp.gmail.com with ESMTPSA id l21sm3470107pjt.28.2019.11.22.09.59.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Nov 2019 09:59:25 -0800 (PST)
Subject: Re: [yocto] repost: how to create a SPDX "notice file" from a build?
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.21.1911220952340.7502@localhost.localdomain>
 <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <02bee54a-3a3b-aac2-812d-50b5c395aaa3@gmail.com>
Date: Fri, 22 Nov 2019 09:59:23 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.21.1911221159250.14879@localhost.localdomain>
Content-Type: multipart/alternative;
 boundary="------------DB06EEFFB65B411F40490913"
Content-Language: en-US

--------------DB06EEFFB65B411F40490913
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 11/22/19 9:03 AM, rpjday@crashcourse.ca wrote:
> On Fri, 22 Nov 2019, Robert P. J. Day wrote:
>
>>   i asked about this a couple months ago but didn't see any replies,
>> so i'll ask again with a little more detail.
>>
>>   colleague wants to, from YP (actually petalinux but should be
>> irrelevant), some sort of SPDX "notice file", along the lines of what
>> can be generated by black duck. it doesn't need to be identical, but
>> it would be useful to at least have a first pass that people can look
>> at and say what they want tweaked.
>>
>>   is there an example of how to (using the spdx.bbclass class file, i
>> assume) do something like this? thanks.
>   a lilttle more progress, and then an error -- i installed fossology
> on my ubuntu 18.04 dev box, then added
>
>   INHERIT += "spdx"
>
> to local.conf, and tried to build a simple qemuarmx86-64, and very
> quickly had a number of native packages fail with:
>
> //////////// start //////////
>
> DEBUG: Executing python function do_spdx
> ERROR: Error executing a python function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_spdx(d)
>      0003:
> File: '/home/rpjday/oe/dist/layers/poky/meta/classes/spdx.bbclass', lineno: 83, function: do_spdx
>      0079:        foss_full_spdx = d.getVar('FOSS_FULL_SPDX') == "true" or False
>      0080:        foss_command = "wget %s --post-file=%s %s"\
>      0081:            % (foss_flags, info['tar_file'], foss_server)
>      0082:
>  *** 0083:        foss_result = run_fossology(foss_command, foss_full_spdx)
>      0084:        if foss_result is not None:
>      0085:            (foss_package_info, foss_file_info, foss_license_info) = foss_result
>      0086:            spdx_file_info = create_spdx_doc(local_file_info, foss_file_info)
>      0087:            ## write to cache
> File: '/home/rpjday/oe/dist/layers/poky/meta/classes/spdx.bbclass', lineno: 230, function: run_fossology
>      0226:    # Package info
>      0227:    package_info = {}
>      0228:    if full_spdx:
>      0229:        # All mandatory, only one occurrence
>  *** 0230:        package_info['PackageCopyrightText'] = re.findall('PackageCopyrightText: (.*?</text>)', foss_output, re.S)[0]
>      0231:        package_info['PackageLicenseDeclared'] = re.findall('PackageLicenseDeclared: (.*)', foss_output)[0]
>      0232:        package_info['PackageLicenseConcluded'] = re.findall('PackageLicenseConcluded: (.*)', foss_output)[0]
>      0233:        # These may be more than one
>      0234:        package_info['PackageLicenseInfoFromFiles'] = re.findall('PackageLicenseInfoFromFiles: (.*)', foss_output)
> Exception: IndexError: list index out of range
>
> ERROR: list index out of range
> DEBUG: Python function do_spdx finished
> ERROR: Function failed: do_spdx
>
> /////////// end /////////
>
>   i have absolutely no idea what to think of this, and am open to
> suggestions. does anyone have a working scenario to simply demonstrate
> the usage of spdx.bbclass?

Would you mind opening a Yocto defect.

- armin
> rday
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47387): https://lists.yoctoproject.org/g/yocto/message/47387
> Mute This Topic: https://lists.yoctoproject.org/mt/61664060/1024635
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvista.com]
> -=-=-=-=-=-=-=-=-=-=-=-


--------------DB06EEFFB65B411F40490913
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
    <div class="moz-cite-prefix">On 11/22/19 9:03 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.1911221159250.14879@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">On Fri, 22 Nov 2019, Robert P. J. Day wrote:

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">  i asked about this a couple months ago but didn't see any replies,
so i'll ask again with a little more detail.

  colleague wants to, from YP (actually petalinux but should be
irrelevant), some sort of SPDX "notice file", along the lines of what
can be generated by black duck. it doesn't need to be identical, but
it would be useful to at least have a first pass that people can look
at and say what they want tweaked.

  is there an example of how to (using the spdx.bbclass class file, i
assume) do something like this? thanks.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
  a lilttle more progress, and then an error -- i installed fossology
on my ubuntu 18.04 dev box, then added

  INHERIT += "spdx"

to local.conf, and tried to build a simple qemuarmx86-64, and very
quickly had a number of native packages fail with:

//////////// start //////////

DEBUG: Executing python function do_spdx
ERROR: Error executing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: &lt;module&gt;
     0001:
 *** 0002:do_spdx(d)
     0003:
File: '/home/rpjday/oe/dist/layers/poky/meta/classes/spdx.bbclass', lineno: 83, function: do_spdx
     0079:        foss_full_spdx = d.getVar('FOSS_FULL_SPDX') == "true" or False
     0080:        foss_command = "wget %s --post-file=%s %s"\
     0081:            % (foss_flags, info['tar_file'], foss_server)
     0082:
 *** 0083:        foss_result = run_fossology(foss_command, foss_full_spdx)
     0084:        if foss_result is not None:
     0085:            (foss_package_info, foss_file_info, foss_license_info) = foss_result
     0086:            spdx_file_info = create_spdx_doc(local_file_info, foss_file_info)
     0087:            ## write to cache
File: '/home/rpjday/oe/dist/layers/poky/meta/classes/spdx.bbclass', lineno: 230, function: run_fossology
     0226:    # Package info
     0227:    package_info = {}
     0228:    if full_spdx:
     0229:        # All mandatory, only one occurrence
 *** 0230:        package_info['PackageCopyrightText'] = re.findall('PackageCopyrightText: (.*?&lt;/text&gt;)', foss_output, re.S)[0]
     0231:        package_info['PackageLicenseDeclared'] = re.findall('PackageLicenseDeclared: (.*)', foss_output)[0]
     0232:        package_info['PackageLicenseConcluded'] = re.findall('PackageLicenseConcluded: (.*)', foss_output)[0]
     0233:        # These may be more than one
     0234:        package_info['PackageLicenseInfoFromFiles'] = re.findall('PackageLicenseInfoFromFiles: (.*)', foss_output)
Exception: IndexError: list index out of range

ERROR: list index out of range
DEBUG: Python function do_spdx finished
ERROR: Function failed: do_spdx

/////////// end /////////

  i have absolutely no idea what to think of this, and am open to
suggestions. does anyone have a working scenario to simply demonstrate
the usage of spdx.bbclass?
</pre>
    </blockquote>
    <br>
    Would you mind opening a Yocto defect.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:alpine.LFD.2.21.1911221159250.14879@localhost.localdomain">
      <pre class="moz-quote-pre" wrap="">
rday

</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47387): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47387">https://lists.yoctoproject.org/g/yocto/message/47387</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/61664060/1024635">https://lists.yoctoproject.org/mt/61664060/1024635</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------DB06EEFFB65B411F40490913--
