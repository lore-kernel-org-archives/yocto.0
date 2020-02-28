Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.9947.1582865697161568704
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2020 20:54:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tOOqPkbV;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9so736404plo.11
        for <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2020 20:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=5Kx206T450PqajrxqHpaWhAJiKfAKB+sTmVQDZBlzUI=;
        b=tOOqPkbVzc08UGpk5qHY1mLvg6MOs+N4cltqc2NmbRW8AosZXfdhBLtP/3duN9jL/g
         LFJGk9VI7og1Gm1lS7hDsX6uIUqGxE/gOHx1kqahfQh8NPUw7VDG+TnF4vZhzgmRkTEN
         f2Kq3YznpkI7Xdiy77tnZriUTix+SDHnUomXl1ejgw2j0XpIT1BDjKGuBOR0Z1WmMD7I
         qVdbHL0OZb50veSeaLtcg/7Xu3VdrN6ZTS3sSiyPKPAI5UCrZubljIrkc0OB+VsHK3R+
         4/1RxheT1qK/Plryzpo3fl+dmc3xapoPEeggaZ//DRlOcdGm02iv0x5Rbur5lsLhqaZM
         maDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=5Kx206T450PqajrxqHpaWhAJiKfAKB+sTmVQDZBlzUI=;
        b=pnlzuTuM5IUxkTIap9dRRGSAL2EI1lXJtvRHzEGC8soKMnwkh0cnckl6HcDEe5njY1
         BAdI3cMpjerKUKzpUDRzwNlgLQXnAt6Ynjq6xAlSn9LdTO2kXh9Exm0XzQqxx+P0PWcD
         KrezQhMnNPiNsmg4PqN1SWL+WwifoqcFP+vjX5N9O9p4h0wnv/VGvTBIxkKtIucbuXhf
         DW3LEluMgzfopzQHOY+kpwseLl9YIx6sWqJl79LRAKNh2jXO8opnzfV4pODPT5oj4fVv
         jRKFTjZBD4LiT10yA0ERSvzWFtmr6afHXVYhYjnVup88AryijpNFthbv/zhsVE4xGqbx
         UK6w==
X-Gm-Message-State: APjAAAVYTlkDLo0YkMhPSatEItZexPipL4uFj2ugkGGwgreozU/fY5sM
	rZPbuQelzGI75M2xcNWr4hE=
X-Google-Smtp-Source: APXvYqxYwWQnpeI1qN9SE2b0Leip+cIk0EUHzo7cHBWezBeiUcMh7db+q/qmWaPEj5T39ifwlATNsQ==
X-Received: by 2002:a17:902:7c02:: with SMTP id x2mr2377403pll.60.1582865696618;
        Thu, 27 Feb 2020 20:54:56 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:3d0b:bd00:40e0:2589? ([2601:202:4180:a5c0:3d0b:bd00:40e0:2589])
        by smtp.gmail.com with ESMTPSA id u12sm8445426pgr.3.2020.02.27.20.54.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 20:54:55 -0800 (PST)
Subject: Re: [yocto] QA cycle report for build (yocto-2.7.3.rc1)
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
References: <CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <a9667913-1468-7bb6-a6d7-03070605669b@gmail.com>
Date: Thu, 27 Feb 2020 20:54:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------7B7F2A973BA0F8486D8F13CF"
Content-Language: en-US

--------------7B7F2A973BA0F8486D8F13CF
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


Sangeeta,

On 2/26/20 10:10 PM, Sangeeta Jain wrote:
> Hi All,
>
> This is the full report for yocto-2.7.3.rc1:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tre=
e/?h=3Dintel-yocto-testresults

Thanks for the test report.

>
> =3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D
> No high milestone defects.  
> 3 failures observed in ptest:
> openssh ptest failed (BUG id:13818)
There is a fix in zeus needing backporting. I don't think this is ship
stopper.

> perl ptest failed (BUG id:13817)
We have had a slew of perl fixes in zeus that may apply here so I don't
think this is a ship stopper.
> gstreamer ptest failed (BUG id:13816)
This is a new issue. This package has not been touched in this update so
more investigation is needed.

- armin
>
> =3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13818
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13817
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13816
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: pokybuild@centos7-ty-2.yocto.io <pokybuild@centos7-ty-2.yocto.io>
>> Sent: Saturday, 22 February, 2020 6:32 AM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan=
,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: QA notification for completed autobuilder build (yocto-2.7.3.r=
c1)
>>
>>
>> A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuild=
er and is
>> available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1
>>
>>
>> Build hash information:
>>
>> bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
>> meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
>> meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
>> meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
>> oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
>> poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1
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


--------------7B7F2A973BA0F8486D8F13CF
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <br>
    <pre class="moz-quote-pre" wrap="">Sangeeta,

</pre>
    <div class="moz-cite-prefix">On 2/26/20 10:10 PM, Sangeeta Jain
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">Hi All,

This is the full report for yocto-2.7.3.rc1:  
<a class="moz-txt-link-freetext" href="https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults">https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults</a></pre>
    </blockquote>
    <br>
    Thanks for the test report.<br>
    <br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

======= Summary ========
No high milestone defects.  
3 failures observed in ptest:
openssh ptest failed (BUG id:13818)</pre>
    </blockquote>
    There is a fix in zeus needing backporting. I don't think this is
    ship stopper.<br>
    <br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">
perl ptest failed (BUG id:13817)</pre>
    </blockquote>
    We have had a slew of perl fixes in zeus that may apply here so I
    don't think this is a ship stopper.<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">
gstreamer ptest failed (BUG id:13816)</pre>
    </blockquote>
    This is a new issue. This package has not been touched in this
    update so more investigation is needed.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879B273CC4B6DAA714B03C6E3EB0@CY4PR11MB1879.namprd11.prod.outlook.com">
      <pre class="moz-quote-pre" wrap="">

======= Bugs ========
<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13818">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13818</a>
<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13817">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13817</a>
<a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13816">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13816</a>

Thanks,
Sangeeta

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">-----Original Message-----
From: <a class="moz-txt-link-abbreviated" href="mailto:pokybuild@centos7-ty-2.yocto.io">pokybuild@centos7-ty-2.yocto.io</a> <a class="moz-txt-link-rfc2396E" href="mailto:pokybuild@centos7-ty-2.yocto.io">&lt;pokybuild@centos7-ty-2.yocto.io&gt;</a>
Sent: Saturday, 22 February, 2020 6:32 AM
To: <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>; <a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>; Sangal, Apoorv
<a class="moz-txt-link-rfc2396E" href="mailto:apoorv.sangal@intel.com">&lt;apoorv.sangal@intel.com&gt;</a>; Yeoh, Ee Peng <a class="moz-txt-link-rfc2396E" href="mailto:ee.peng.yeoh@intel.com">&lt;ee.peng.yeoh@intel.com&gt;</a>; Chan,
Aaron Chun Yew <a class="moz-txt-link-rfc2396E" href="mailto:aaron.chun.yew.chan@intel.com">&lt;aaron.chun.yew.chan@intel.com&gt;</a>;
<a class="moz-txt-link-abbreviated" href="mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>; <a class="moz-txt-link-abbreviated" href="mailto:akuster808@gmail.com">akuster808@gmail.com</a>;
<a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>; Jain, Sangeeta <a class="moz-txt-link-rfc2396E" href="mailto:sangeeta.jain@intel.com">&lt;sangeeta.jain@intel.com&gt;</a>
Subject: QA notification for completed autobuilder build (yocto-2.7.3.rc1)


A build flagged for QA (yocto-2.7.3.rc1) was completed on the autobuilder and is
available at:


    <a class="moz-txt-link-freetext" href="https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1">https://autobuilder.yocto.io/pub/releases/yocto-2.7.3.rc1</a>


Build hash information:

bitbake: d411b097d810c386d35dc561f8812bb3f35c9a36
meta-gplv2: d5d9fc9a4bbd365d6cd6fe4d6a8558f7115c17da
meta-intel: fbd06132e6cb2b5fd43f7671aea0d431d0927a91
meta-mingw: 10695afe8cd406844e0d0dd868c11677e07557d4
oecore: ca019eec1304ca2a400ea744c0eaafe0a766d5d1
poky: f475afc5df0837532dcd0f3a831ddc3aec8941f1



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

--------------7B7F2A973BA0F8486D8F13CF--
