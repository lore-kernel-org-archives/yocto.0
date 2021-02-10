Received: from smtpcmd03117.aruba.it (smtpcmd03117.aruba.it [62.149.158.117])
 by mx.groups.io with SMTP id smtpd.web10.5984.1612966734033234486
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Feb 2021 06:18:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=RB/ynzmk;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 62.149.158.117, mailfrom: mauro@faresoftware.it)
Received: from [10.0.3.93] ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id 9qKRluXfgpm9e9qKRlBwvi; Wed, 10 Feb 2021 15:18:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1612966732; bh=MIYSYU6DfVTk/jVt5cxAHnKm9jOmVBuPVtB8zJpcH7M=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=RB/ynzmk45zHHK8Tc+dR0bxPP96Vj7tiOllsAE+vzmbtJiKuWugc6TB5WQXi8N6xL
	 hX670S846CoPAoWDUghuN+xCJX554cOiH6vMfhEBkJXSdUQ3YusmMABOH4xspUJWOp
	 WoEfKpNle7BsmPTAG8Aqod8YosMWi3wQXKYONQFUbHpM4Y7Bqx3+lQSpVykWf7efyw
	 9AD10yrU7EnWaNss+cjUKZMVWsjxLtJlDxgjNGuFdl2wj7w9m4cqIDZ0c/yeBQLOc/
	 xkhAYI51IgoJ439gk6MW+5SC0GMbi3SF8v1WxkCd+L6iT7oGCdRfGdCgjhO1UKj9GX
	 LGKhQxshATfYg==
Subject: Re: [yocto] curl certificate error
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
References: <e952c755-6193-5276-42dd-79e88753f2d3@faresoftware.it>
 <20210210121527.jo3vucy2pgsp6q6p@qschulz>
From: "Mauro Ziliani" <mauro@faresoftware.it>
Message-ID: <63f7da17-c451-35b2-22bb-7b06e1d9251e@faresoftware.it>
Date: Wed, 10 Feb 2021 15:18:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210210121527.jo3vucy2pgsp6q6p@qschulz>
X-CMAE-Envelope: MS4wfJs+ckI7a/ivasDPiBUgA0zY8FeX5+3n4p+CQu8ZFkmgXTf2eZ24K6iTl9kfkpFxwZjNP7AUe9MeOXkTDfweaTe9fnHjroUidZ72czokfnkvOwluDhDL
 OkDR+70rihKJW75PbLSp/febYsFw/T7I+WXAW6FShAYWev8t1pZnZOXboE4TpHrPhUZlWezSqja6iLdJmn+DCSGTFmD/aWq1biW0OsOwpAP3Ixv9x1n3iE3J
Content-Type: multipart/alternative;
 boundary="------------F2E94B19B9EC51569FB5370C"
Content-Language: en-US

--------------F2E94B19B9EC51569FB5370C
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Thank you.

I have included the dependencies, but curl miss the CAfile.

I have to fix the right full path by CURL_CA_BUNDLE in the recipe which 
uses curl-native


I have changed TMP variabile in conf/local.conf

Now TMP:=mytmp  (the default value was tmp)


curl looks for CAFile in

/home/mauro/yocto/krogoth/bin/tmp/sysroot/x86_64/etc/ssl/certs/ca-certificates.crt

while the file i in

/home/mauro/yocto/krogoth/bin/mytmp/sysroot/x86_64/etc/ssl/certs/ca-certificates.crt


In the recipe I put


CURL_CA_BUNDLE=${STAGING_DIR_NATIVE}/etc/ssl/certs/ca-certificates.crt

export CURL_CA_BUNDLE


Now curl works fine


Thanks again

   MZ


Il 10/02/21 13:15, Quentin Schulz ha scritto:
> Hi Mauro,
>
> On Wed, Feb 10, 2021 at 01:11:07PM +0100, Mauro Ziliani wrote:
>> Hi all
>> I try to download the file
>>
>> https://github.com/google/googletest/archive/release-1.8.0.tar.gz
>>
>> with curl -L inside a devshell of a recipe
>>
>>
>> I get this error
>>
>>
>> curl: (77) error setting certificate verify locations:
>>    CAfile: /Sources/softfx/krogoth/softfx-build/tmp/sysroots/x86_64-linux/etc/ssl/certs/ca-certificates.crt
>>    CApath: none
>>
> Missing ca-certificates-native somewhere in the dependency chain. I
> honestly thought curl-native would bring it, but does not seem so. I
> personally added ca-certificates-native to the DEPENDS of the recipe
> needing curl-native for a quick fix since I'm in the middle of an
> upgrade and will not use krogoth anymore.
>
> Cheers,
> Quentin

--------------F2E94B19B9EC51569FB5370C
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <p><font size="-1">Thank you.</font></p>
    <p><font size="-1">I have included the dependencies, but curl miss
        the CAfile.</font></p>
    <p><font size="-1">I have to fix the right full path by
        CURL_CA_BUNDLE in the recipe which uses curl-native</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">I have changed TMP variabile in conf/local.conf</font></p>
    <p><font size="-1">Now TMP:=mytmp  (the default value was tmp)</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">curl looks for CAFile in</font></p>
    <p><font size="-1">/home/mauro/yocto/krogoth/bin/tmp/sysroot/x86_64/etc/ssl/certs/ca-certificates.crt<br>
      </font></p>
    <p><font size="-1">while the file i in <br>
      </font></p>
    <p><font size="-1"><font size="-1">/home/mauro/yocto/krogoth/bin/mytmp/sysroot/x86_64/etc/ssl/certs/ca-certificates.crt</font></font></p>
    <p><font size="-1"><font size="-1"><br>
        </font></font></p>
    <p><font size="-1"><font size="-1">In the recipe I put</font></font></p>
    <p><font size="-1"><font size="-1"><br>
        </font></font></p>
    <p><font size="-1"><font size="-1">CURL_CA_BUNDLE=${STAGING_DIR_NATIVE}</font></font><font
        size="-1"><font size="-1"><font size="-1">/etc/ssl/certs/ca-certificates.crt</font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1">export
            CURL_CA_BUNDLE</font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1"><br>
          </font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1">Now curl works
            fine</font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1"><br>
          </font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1">Thanks again</font></font></font></p>
    <p><font size="-1"><font size="-1"><font size="-1">  MZ<br>
          </font></font></font></p>
    <p><font size="-1"></font><br>
    </p>
    <div class="moz-cite-prefix">Il 10/02/21 13:15, Quentin Schulz ha
      scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20210210121527.jo3vucy2pgsp6q6p@qschulz">
      <pre class="moz-quote-pre" wrap="">Hi Mauro,

On Wed, Feb 10, 2021 at 01:11:07PM +0100, Mauro Ziliani wrote:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi all
I try to download the file

<a class="moz-txt-link-freetext" href="https://github.com/google/googletest/archive/release-1.8.0.tar.gz">https://github.com/google/googletest/archive/release-1.8.0.tar.gz</a>

with curl -L inside a devshell of a recipe


I get this error


curl: (77) error setting certificate verify locations:
  CAfile: /Sources/softfx/krogoth/softfx-build/tmp/sysroots/x86_64-linux/etc/ssl/certs/ca-certificates.crt
  CApath: none

</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
Missing ca-certificates-native somewhere in the dependency chain. I
honestly thought curl-native would bring it, but does not seem so. I
personally added ca-certificates-native to the DEPENDS of the recipe
needing curl-native for a quick fix since I'm in the middle of an
upgrade and will not use krogoth anymore.

Cheers,
Quentin
</pre>
    </blockquote>
  </body>
</html>

--------------F2E94B19B9EC51569FB5370C--
