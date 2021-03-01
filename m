Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web09.12121.1614604072486868836
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 05:07:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bluetest.se header.s=google header.b=bOW5u6F5;
 spf=pass (domain: bluetest.se, ip: 209.85.208.170, mailfrom: daniel.adolfsson@bluetest.se)
Received: by mail-lj1-f170.google.com with SMTP id k12so10281246ljg.9
        for <yocto@lists.yoctoproject.org>; Mon, 01 Mar 2021 05:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bluetest.se; s=google;
        h=to:from:subject:organization:message-id:date:user-agent
         :mime-version:content-language;
        bh=wY7OHIdPmLpfTNTwhLuC/gp0HYjyfi6JRTZBDg/iWRk=;
        b=bOW5u6F54wKXOIg0Gt6v49Kj4cnHRzuVQwk+xfInw86wcdFRUFDzTjXOwxBltISYOo
         lY7je4W+8FyRkawcB0FSXgV7uCUjtBNWmoywozxcyW/T9IYQyaPAvO6IC/YfA83CcPU4
         zExemI1Q5g8tkPlRFs5QegpKoK/8yYYlfQMhJknTKeXNZNMmO+DTebWkwIMR22LdgRnL
         SVeU7BD2f+sKDXEGsWllsmFsf3UG8Q0uf5cOdYCL6kYWozH7EWHFjtc/j1pIKSTLUQOH
         iOV/decpo9gwv6CgMmsifkIP4uuJxbgItPojumjn1ADYXvf0pHk2zH9fhHnbSOkmy71I
         v60Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:organization:message-id:date
         :user-agent:mime-version:content-language;
        bh=wY7OHIdPmLpfTNTwhLuC/gp0HYjyfi6JRTZBDg/iWRk=;
        b=oHgPlgTCpLkS//sm3cVYPIOASLZVM1K0qIbOueTLUB0lyPv8KEHLmzC6G3Ok1c3AIB
         DXKPLSgowg+/gOPIvTDk91MaBLy30F/NQcLnmELa5aMiUc6O4uaBH/tCJ2QOlRSraDp1
         f3qLoCW6h7+y9xNKJ3/B8KVrohx0G2egjbIC6o7+wuFRkTeHFOwrTc6/JUgSj6WC7ZDs
         bxJl2piaNqgcAFrY+FWt79e9R0cD9e+4QKruxuAFFpflIMgnfT18HyCTtG4gB3wrw2qK
         Yx7Py3GHvxihLHs17UQFr1QxSEkUtmtG/CbYKxc0j2fvyYSFgWdu3Uop1K626IyruDFO
         7VVA==
X-Gm-Message-State: AOAM53361Vm3iX2Dw2sd5AEa9zhm/ni2wwsTSV3BM1pG3OcYjAqsVwEw
	8PCiPTynYGu15hrl4RHxivDBfcL91fFOkA==
X-Google-Smtp-Source: ABdhPJxd4VGoGjwQy0qYpwfT1qvlZ5rGESHvWCP9ldme5BtsIFKJCmOjDVn/XjCCKgDlh17Lrn9y2Q==
X-Received: by 2002:a2e:9793:: with SMTP id y19mr8823767lji.374.1614604070149;
        Mon, 01 Mar 2021 05:07:50 -0800 (PST)
Return-Path: <daniel.adolfsson@bluetest.se>
Received: from [10.19.48.9] (h-45-18.A390.corp.bahnhof.se. [155.4.45.18])
        by smtp.gmail.com with ESMTPSA id k9sm2442079ljg.59.2021.03.01.05.07.49
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Mar 2021 05:07:49 -0800 (PST)
To: yocto@lists.yoctoproject.org
From: daniel.adolfsson@bluetest.se
Subject: Including Python3 modules in generated SDK do not work (pandas, dunfell)
Organization: Bluetest AB
Message-ID: <6974e8cd-ac6c-525b-bcc7-ffd8d28e730e@bluetest.se>
Date: Mon, 1 Mar 2021 14:07:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------1411574E7A2CC09D53127CEE"
Content-Language: en-GB

--------------1411574E7A2CC09D53127CEE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

I have been using Yocto for several years now and I really appreciate 
all the hard work you all are putting into this project!

I have up until now been able to find documentation or answers to 
questions that cover my issues. But this time I have not been able to 
find my way, maybe I am using the wrong search terms.


Some background,
Running on a custom embedded device, powered by a AM3552 soc, currently 
running Dunfell.

I have a recipe that compiles a software using CMake. CMake in turn uses 
a Python3 script in the build step to generate some source files based 
on a CSV file. That script uses the python3-pandas library.

In my recipe I include python3-pandas as a DEPENDS

# For some reason python3-pandas-native does not pull in its 
dependencies, pytz and dateutil.
# The same is true for dateutil which depend on six
DEPENDS += "python3-pandas-native python3-pytz-native 
python3-dateutil-native python3-six-native"


This works great for building the firmware image file.

But in the generated SDK or Extensible SDK the modules are not available.

$ which python3
/home/daad/cem-fw-dev_sdk_chc/sysroots/x86_64-pokysdk-linux/usr/bin/python3

$ python3
Python 3.8.2 (default, Feb 25 2020, 10:39:28)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
 >>> import pandas
Traceback (most recent call last):
   File "<stdin>", line 1, in <module>
ModuleNotFoundError: No module named 'pandas'
 >>>

I have also tried using the extensible sdk but i get another error when 
trying devtool

devtool modify recipie fails with python error: Exception: 
ModuleNotFoundError: No module named '_sysconfigdata'


I am unsure how to continue, where should I look for the issue? I am 
assuming that "depending" on a native python package would cause it to 
be included in the SDK..? even thugh it is a python dependency?
This has worked for other recipies (non-python) dependencies.
It "feels" like somehow the python3 "install" in the sdk is not 
identical to the one that is used when building the images.

Best Regards

-- 
*Daniel Adolfsson*

--------------1411574E7A2CC09D53127CEE
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hello,</p>
    <p>I have been using Yocto for several years now and I really
      appreciate all the hard work you all are putting into this
      project!</p>
    <p>I have up until now been able to find documentation or answers to
      questions that cover my issues. But this time I have not been able
      to find my way, maybe I am using the wrong search terms.<br>
      <br>
      <br>
      Some background,<br>
      Running on a custom embedded device, powered by a AM3552 soc,
      currently running Dunfell.</p>
    <p> I have a recipe that compiles a software using CMake. CMake in
      turn uses a Python3 script in the build step to generate some
      source files based on a CSV file. That script uses the
      python3-pandas library.</p>
    <p>In my recipe I include python3-pandas as a DEPENDS<br>
      <br>
      <font face="monospace"># For some reason python3-pandas-native
        does not pull in its dependencies, pytz and dateutil.<br>
        # The same is true for dateutil which depend on six<br>
        DEPENDS += "python3-pandas-native python3-pytz-native
        python3-dateutil-native python3-six-native"</font><br>
    </p>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">This works great for building the
      firmware image file.<br>
    </div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">But in the generated SDK or Extensible
      SDK the modules are not available.</div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature"><font face="monospace">$ which python3<br>
/home/daad/cem-fw-dev_sdk_chc/sysroots/x86_64-pokysdk-linux/usr/bin/python3</font></div>
    <div class="moz-signature"><font face="monospace"><br>
      </font></div>
    <div class="moz-signature"><font face="monospace">$ python3 <br>
        Python 3.8.2 (default, Feb 25 2020, 10:39:28) <br>
        [GCC 9.3.0] on linux<br>
        Type "help", "copyright", "credits" or "license" for more
        information.<br>
        &gt;&gt;&gt; import pandas<br>
        Traceback (most recent call last):<br>
          File "&lt;stdin&gt;", line 1, in &lt;module&gt;<br>
        ModuleNotFoundError: No module named 'pandas'<br>
        &gt;&gt;&gt;</font><br>
    </div>
    <div class="moz-signature"><br>
    </div>
    <div class="moz-signature">I have also tried using the extensible
      sdk but i get another error when trying devtool<br>
      <br>
      <font face="monospace">devtool modify recipie </font>fails with
      python error: <font face="monospace">Exception:
        ModuleNotFoundError: No module named '_sysconfigdata'</font><br>
    </div>
    <div class="moz-signature"><br>
      <br>
      I am unsure how to continue, where should I look for the issue? I
      am assuming that "depending" on a native python package would
      cause it to be included in the SDK..? even thugh it is a python
      dependency?<br>
      This has worked for other recipies (non-python) dependencies.<br>
      It "feels" like somehow the python3 "install" in the sdk is not
      identical to the one that is used when building the images.<br>
      <br>
    </div>
    <div class="moz-signature">Best Regards</div>
    <br>
    <div class="moz-signature">-- <br>
      <span style="font-family: Calibri; color: #1f4994; letter-spacing:
        1px;"> <strong>Daniel Adolfsson</strong> <small><br>
        </small></span></div>
  </body>
</html>

--------------1411574E7A2CC09D53127CEE--
