Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web11.885.1580496556577401542
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 10:49:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=iglNTrJJ;
 spf=permerror, err=parse error for token &{10 18 websitewelcome.com}: parse error for token &{10 18 _spf.google.com}: parse error for token &{10 18 _netblocks.google.com}: limit exceeded (domain: mvista.com, ip: 209.85.215.176, mailfrom: akuster@mvista.com)
Received: by mail-pg1-f176.google.com with SMTP id z124so3906346pgb.13
        for <yocto@lists.yoctoproject.org>; Fri, 31 Jan 2020 10:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=gSaP+jUA+toplzlpLyfJs1kIhx4V0ySFVgF9Uv/qQjo=;
        b=iglNTrJJUekPs7hvmuboQQtXvkWABWsX9PMtoWxyxVVwhnE4aJHUWi1mJPOoQOiOFT
         g9mG7CH3ZOi+2O/vA4t2DnkRA2wCTGKh2dfgcYN2bayrhfl1DSw/SKdOhjMjAjb/Usb0
         8a1LZI8sQ7ko9yA4cYcAKOhf0IKlikaE6XaSYAvy+Am7ME4ZN8mZJzU7EvDG53TXSJrD
         1+pYU8IijYiMq80CwhBmi+AYi53kKbBcjUhzyCItpiv7gFchAda43cjrpzmaqHz8wPF0
         E5KlvAtDnT36sfbjBKtshv2ZUTJsLNFp/SbpDdx0wTym5tm+5PP7P5NBTAG0kiKw8fq/
         rVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=gSaP+jUA+toplzlpLyfJs1kIhx4V0ySFVgF9Uv/qQjo=;
        b=QYHRPOkS30qcDpNKk5QMMJMrIUr0iTmIK0TpxPDMbNJ02gmu9r70y5COVzxoz2dizi
         hJpkbHVHLEOs/EwqJ2YBkkwybjqADaIL19MPXdKU+Jb8O3KHabOJqraehQ+I2awKF1ud
         8GWUHb7e33aY2M3wyNePJcvxvWfs3luWAja4BMT/raoegZQmqwxHRP539U3zTq4bk229
         5sP8lweoCDPh5nsasbdPVL6VatYK7tDgVAcuDp5K2aMz2HqntU/4aWkBSclq3ROGdWBd
         JdluctMzS11HqNaNkk/InoZ1e89dRGF3HgbH32ZuN+WWov05sSnZV8xSdRy9GZiPuNcD
         LzPw==
X-Gm-Message-State: APjAAAVEfDDvxVKQoJw9lvvnCi9mjyFILXnrQDvNY0xvbjRerG7xNqmQ
	JrkS1yrN4AD5+OGJe4Jc73T/5Q==
X-Google-Smtp-Source: APXvYqwasGZBEm69SQJrmg1e4Jz4X3qS7s5kB2H43H/sE2Syxzoi1z6GHQOQrbiuEMkX4/rhU1HoPQ==
X-Received: by 2002:a65:6216:: with SMTP id d22mr11749042pgv.437.1580496556020;
        Fri, 31 Jan 2020 10:49:16 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:e0e6:3e38:df8b:421b? ([2601:202:4180:a5c0:e0e6:3e38:df8b:421b])
        by smtp.gmail.com with ESMTPSA id e19sm10855025pgn.86.2020.01.31.10.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jan 2020 10:49:15 -0800 (PST)
Subject: Re: [yocto] QA Cycle report for build (yocto-3.1_M2.rc1)
To: Sangeeta Jain <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "akuster808@gmail.com" <akuster808@gmail.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB187929CF849C81DA3A971950E3070@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <a74444a9-e521-da0a-773f-575031cfd849@mvista.com>
Date: Fri, 31 Jan 2020 10:49:13 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB187929CF849C81DA3A971950E3070@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------0D692FE8794AF108B24F2C1C"
Content-Language: en-US

--------------0D692FE8794AF108B24F2C1C
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Sangeeta,

On 1/30/20 11:46 PM, Sangeeta Jain wrote:
> Hello All,
>
> This is the full report for yocto-3.1_M2.rc1:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tre=
e/?h=3Dintel-yocto-testresults
>
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects.  
> No new defects are found in this cycle.
> starce ptest failed (BUG id:13765).=20
>
> Note: failure for test_ltp_help, test_stap, test_mmc_mount, test_usb_mou=
nt is observed on Beaglebone, edgerouter and mpc8315erdb.=20
Please bug the test_mmc and test_usb as I am the one who added those
storage test.

TIA,
armin
> QA team is analysing more on failures.=20
>
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13765
>
> Thanks,
> Sangeeta
>
>
>
>> -----Original Message-----
>> From: Pokybuild User <pokybuild@debian10-ty-1.yocto.io>
>> Sent: Thursday, 23 January, 2020 5:25 AM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan=
,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: QA notification for completed autobuilder build (yocto-3.1_M2.=
rc1)
>>
>>
>> A build flagged for QA (yocto-3.1_M2.rc1) was completed on the autobuil=
der
>> and is available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M2.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: d5a4a352723258b4d499d3a51f340109c4f36f60
>> meta-gplv2: 6107be140fdec204586850ea1f7e4b968be7670b
>> meta-intel: 0c092dde58bb688dca787c653ee7a3282d58aeab
>> meta-mingw: e3dadc9f28c24a8d182121d0246b3d9ec048846a
>> oecore: 15049c610bcfd0a3e161379651b5ea117ea02715
>> poky: ca3993cc4b13d4e661228cee6fb9448adfd0a4ba
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>
>>
>>=20


--------------0D692FE8794AF108B24F2C1C
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    Sangeeta,<br>
    <br>
    <div class="moz-cite-prefix">On 1/30/20 11:46 PM, Sangeeta Jain
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB187929CF849C81DA3A971950E3070@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hello All,

This is the full report for yocto-3.1_M2.rc1:  
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults">https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults</a>

======= Summary ========
No high milestone defects.  
No new defects are found in this cycle.
starce ptest failed (BUG id:13765). 

Note: failure for test_ltp_help, test_stap, test_mmc_mount, test_usb_mount is observed on Beaglebone, edgerouter and mpc8315erdb. </pre>
    </blockquote>
    Please bug the test_mmc and test_usb as I am the one who added those
    storage test.<br>
    <br>
    TIA,<br>
    armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB187929CF849C81DA3A971950E3070@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">
QA team is analysing more on failures. 

======= Bugs ========
<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13765">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13765</a>

Thanks,
Sangeeta



</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: Pokybuild User <a class="moz-txt-link-rfc2396E" href="mailto:pokybuild@debian10-ty-1.yocto.io">&lt;pokybuild@debian10-ty-1.yocto.io&gt;</a>
Sent: Thursday, 23 January, 2020 5:25 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>; <a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>; Sangal, Apoorv
<a class="moz-txt-link-rfc2396E" href="mailto:apoorv.sangal@intel.com">&lt;apoorv.sangal@intel.com&gt;</a>; Yeoh, Ee Peng <a class="moz-txt-link-rfc2396E" href="mailto:ee.peng.yeoh@intel.com">&lt;ee.peng.yeoh@intel.com&gt;</a>; Chan,
Aaron Chun Yew <a class="moz-txt-link-rfc2396E" href="mailto:aaron.chun.yew.chan@intel.com">&lt;aaron.chun.yew.chan@intel.com&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>; Jain, Sangeeta <a class="moz-txt-link-rfc2396E" href="mailto:sangeeta.jain@intel.com">&lt;sangeeta.jain@intel.com&gt;</a>
Subject: QA notification for completed autobuilder build (yocto-3.1_M2.rc1)


A build flagged for QA (yocto-3.1_M2.rc1) was completed on the autobuilder
and is available at:


    <a class="moz-txt-link-freetext" href="https://autobuilder.yocto.io/pub/releases/yocto-3.1_M2.rc1">https://autobuilder.yocto.io/pub/releases/yocto-3.1_M2.rc1</a>


Build hash information:

bitbake: d5a4a352723258b4d499d3a51f340109c4f36f60
meta-gplv2: 6107be140fdec204586850ea1f7e4b968be7670b
meta-intel: 0c092dde58bb688dca787c653ee7a3282d58aeab
meta-mingw: e3dadc9f28c24a8d182121d0246b3d9ec048846a
oecore: 15049c610bcfd0a3e161379651b5ea117ea02715
poky: ca3993cc4b13d4e661228cee6fb9448adfd0a4ba



This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: <a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>



</pre>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
        <pre class="moz-quote-pre" wrap="">
</pre>
      </blockquote>
    </blockquote>
    <br>
  </body>
</html>

--------------0D692FE8794AF108B24F2C1C--
