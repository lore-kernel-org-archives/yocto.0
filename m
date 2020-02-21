Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.10102.1582299462823113303
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 07:37:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=emJnf+xB;
 spf=pass (domain: gmail.com, ip: 209.85.210.181, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id b185so1394139pfb.7
        for <yocto@lists.yoctoproject.org>; Fri, 21 Feb 2020 07:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=qbAVWIIB5qMP6EQrqQMSnU6u14T9hMXS9Z4mbSf5wjw=;
        b=emJnf+xB1pbHdYV0CdzgKAL5WGUO+NNqqr1vLysKSowjDeI4GMfMUWj/Ey1x2tlNzm
         jfUX2CQ4T8tfR6WZeUBmptrrpTKMHCUAfuSx4KLIsddPl5pd7tn7rte1jfKn3fg+jGHo
         1cFZmoGevHq5c6q3eLTOFNBesMFbQj3p8KiRYr/qxqoyQWp8JCdldvFFHQQZpPM503oH
         SmsMdPEc7UeqKAD1G0Wf1r1jO9P6WImxel073IlSjzMQWHjLl/wG7T2SoY3UN4imv2V5
         jCHvTfUt55rUxiIgvpa+JsJ7lPuk0v2TqF2vj6Z1lGv2w+oa8oGqzcq2PBs7oVChNdgR
         JYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=qbAVWIIB5qMP6EQrqQMSnU6u14T9hMXS9Z4mbSf5wjw=;
        b=ueeEFWyQ1f22neRno25XFH4OMbJRz+PTIoUtbZ1SJn2QeTsUiRW0qQ+IgZD+8pTYrf
         2KYbYtazeUT6hS6OKBahYjTzHOglp4ZO/n3UiQnsw+9WAkqBgCXKDMuEU4VcbPp5OXny
         srXxlNGcDzK5U+dBoYhaUN/LaFeDITjNdilcghNnBU4+I8Ug9+Z5I4f3MjWLDZoqaIXq
         tnmZld8A6k/RME7sr0wA40kKvHMx61CRT7xnXwEKdeOacCAPuGfA6002upjD819KXA4n
         F0YYHxke59cnQrQTLXsgJaQETyxLqRqK2D4shEtYrxzenunO5zopkPP1CZz1WhtaFCsp
         vmhg==
X-Gm-Message-State: APjAAAXSdX9dEfd6ISsQGPmcWGdOkVbfiAmofZRuurQKGj41S2MNr2K2
	DUu5svuYato2KHBY6a5Ow9w=
X-Google-Smtp-Source: APXvYqyyU/4zkVa3DNGdz3skyKhqcW9nGFgPA6T6xhiIlqx3Xquldjx2yLTKi+WVpUwaq9M7+T7Txg==
X-Received: by 2002:a63:7207:: with SMTP id n7mr20265149pgc.253.1582299462331;
        Fri, 21 Feb 2020 07:37:42 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:dda2:81fa:6982:d91f? ([2601:202:4180:a5c0:dda2:81fa:6982:d91f])
        by smtp.gmail.com with ESMTPSA id h26sm3335813pfr.9.2020.02.21.07.37.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 07:37:41 -0800 (PST)
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
 <C0207330DF60C5409302EC78C3FE68F3034491FD@PGSMSX101.gar.corp.intel.com>
 <CY4PR11MB1879F1750C572C67229F7824E3130@CY4PR11MB1879.namprd11.prod.outlook.com>
 <004690a057a50b8554de69a4259b0045de0a7d99.camel@linuxfoundation.org>
 <36541185-212c-167c-eaaa-8aa1e3c11d21@mvista.com>
 <CY4PR11MB1879171E8B31BE73AEE8CEE2E3120@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <319e2791-cbe7-e933-69f3-ec24d55211a3@gmail.com>
Date: Fri, 21 Feb 2020 07:37:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879171E8B31BE73AEE8CEE2E3120@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: multipart/alternative;
 boundary="------------B0F929D27A33E7083E6DF73B"
Content-Language: en-US

--------------B0F929D27A33E7083E6DF73B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Jain,

On 2/20/20 5:57 PM, Jain, Sangeeta wrote:
>
>  
>
>  
>
> *From:*akuster <akuster@mvista.com>
> *Sent:* Friday, 21 February, 2020 7:01 AM
> *To:* Richard Purdie <richard.purdie@linuxfoundation.org>; Jain,
> Sangeeta <sangeeta.jain@intel.com>; Mittal, Anuj
> <anuj.mittal@intel.com>; akuster808 <akuster808@gmail.com>;
> yocto@lists.yoctoproject.org
> *Cc:* otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> sjolley.yp.pm@gmail.com; Tummalapalli, Vineela
> <vineela.tummalapalli@intel.com>
> *Subject:* Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
>
>  
>
>  
>
> On 2/20/20 2:44 PM, Richard Purdie wrote:
>
>     I discussed this quickly in bug triage today with Armin. We agreed
>
>     that:
>
>      
>
>     * The openssh bug is minor and doesn't affect release
>
>     * Anuj resolved one of the bugs as being execution error so again it
>
>     doesn't affect release
>
>     * The bash issue does affect release
>
>      
>
>     We're proposing we build and release an rc3 with the bash CVE reverted.
>
>     This would also include the bitbake memory optimisation during parsing
>
>     which merged.
>
>      
>
>     We wouldn't rerun the manual QA for rc3, just check the automated test
>
>     results.
>
>      
>
>      
>
>     Does anyone have any objection to that? If not, QA should see an rc3
>
>     email but we're just expecting to check the test results if that works
>
>     for everyone?
>
> Works for me.
>
> Sound good from QA perspective. Verifying automated test results and
> ptest results should be good.

Zeus-rc3 finished. the QA email failed to send.

- armin
>
>  
>
>      
>
>      
>
>     Vineela: Not sure how this affects release process, we'll just have to
>
>     figure that out.
>
>
> List them as Known issues?
>
> Release should be done on rc3. Status of bugs can be updated in
> ‘header-intel.txt’. Just my thoughts!
>
>
>
> - armin
>
>      
>
>      
>
>     Cheers,
>
>      
>
>     Richard
>
>      
>
>
>
>     
>
>  
>


--------------B0F929D27A33E7083E6DF73B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    Jain,<br>
    <br>
    <div class="moz-cite-prefix">On 2/20/20 5:57 PM, Jain, Sangeeta
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879171E8B31BE73AEE8CEE2E3120@CY4PR11MB1879.namprd11.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-US"><o:p> </o:p></span></p>
        <div style="border:none;border-left:solid blue 1.5pt;padding:0cm
          0cm 0cm 4.0pt">
          <div>
            <div style="border:none;border-top:solid #E1E1E1
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class="MsoNormal"><a name="_____replyseparator"
                  moz-do-not-send="true"></a><b><span lang="EN-US">From:</span></b><span
                  lang="EN-US"> akuster <a class="moz-txt-link-rfc2396E" href="mailto:akuster@mvista.com">&lt;akuster@mvista.com&gt;</a>
                  <br>
                  <b>Sent:</b> Friday, 21 February, 2020 7:01 AM<br>
                  <b>To:</b> Richard Purdie
                  <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a>; Jain,
                  Sangeeta <a class="moz-txt-link-rfc2396E" href="mailto:sangeeta.jain@intel.com">&lt;sangeeta.jain@intel.com&gt;</a>; Mittal, Anuj
                  <a class="moz-txt-link-rfc2396E" href="mailto:anuj.mittal@intel.com">&lt;anuj.mittal@intel.com&gt;</a>; akuster808
                  <a class="moz-txt-link-rfc2396E" href="mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>;
                  <a class="moz-txt-link-abbreviated" href="mailto:yocto@lists.yoctoproject.org">yocto@lists.yoctoproject.org</a><br>
                  <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:otavio@ossystems.com.br">otavio@ossystems.com.br</a>;
                  <a class="moz-txt-link-abbreviated" href="mailto:yi.zhao@windriver.com">yi.zhao@windriver.com</a>; Sangal, Apoorv
                  <a class="moz-txt-link-rfc2396E" href="mailto:apoorv.sangal@intel.com">&lt;apoorv.sangal@intel.com&gt;</a>; Yeoh, Ee Peng
                  <a class="moz-txt-link-rfc2396E" href="mailto:ee.peng.yeoh@intel.com">&lt;ee.peng.yeoh@intel.com&gt;</a>; Chan, Aaron Chun Yew
                  <a class="moz-txt-link-rfc2396E" href="mailto:aaron.chun.yew.chan@intel.com">&lt;aaron.chun.yew.chan@intel.com&gt;</a>;
                  <a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>; Tummalapalli, Vineela
                  <a class="moz-txt-link-rfc2396E" href="mailto:vineela.tummalapalli@intel.com">&lt;vineela.tummalapalli@intel.com&gt;</a><br>
                  <b>Subject:</b> Re: [yocto] QA Cycle report for build
                  (yocto-3.0.2.rc2)<o:p></o:p></span></p>
            </div>
          </div>
          <p class="MsoNormal"><o:p> </o:p></p>
          <p class="MsoNormal" style="margin-bottom:12.0pt"><o:p> </o:p></p>
          <div>
            <p class="MsoNormal">On 2/20/20 2:44 PM, Richard Purdie
              wrote:<o:p></o:p></p>
          </div>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <pre>I discussed this quickly in bug triage today with Armin. We agreed<o:p></o:p></pre>
            <pre>that:<o:p></o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>* The openssh bug is minor and doesn't affect release<o:p></o:p></pre>
            <pre>* Anuj resolved one of the bugs as being execution error so again it<o:p></o:p></pre>
            <pre>doesn't affect release<o:p></o:p></pre>
            <pre>* The bash issue does affect release<o:p></o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>We're proposing we build and release an rc3 with the bash CVE reverted.<o:p></o:p></pre>
            <pre>This would also include the bitbake memory optimisation during parsing<o:p></o:p></pre>
            <pre>which merged.<o:p></o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>We wouldn't rerun the manual QA for rc3, just check the automated test<o:p></o:p></pre>
            <pre>results.<o:p></o:p></pre>
            <pre><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p> </o:p></span></pre>
            <pre><o:p> </o:p></pre>
            <pre>Does anyone have any objection to that? If not, QA should see an rc3<o:p></o:p></pre>
            <pre>email but we're just expecting to check the test results if that works<o:p></o:p></pre>
            <pre>for everyone?<o:p></o:p></pre>
          </blockquote>
          <p class="MsoNormal">Works for me.<br>
            <br>
            <o:p></o:p></p>
          <pre><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif">Sound good from QA perspective. Verifying automated test results and ptest results should be good.</span></pre>
        </div>
      </div>
    </blockquote>
    <br>
    Zeus-rc3 finished. the QA email failed to send.<br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879171E8B31BE73AEE8CEE2E3120@CY4PR11MB1879.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <div style="border:none;border-left:solid blue 1.5pt;padding:0cm
          0cm 0cm 4.0pt">
          <pre><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"><o:p></o:p></span></pre>
          <p class="MsoNormal"><o:p> </o:p></p>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <pre><o:p> </o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>Vineela: Not sure how this affects release process, we'll just have to<o:p></o:p></pre>
            <pre>figure that out.<o:p></o:p></pre>
          </blockquote>
          <p class="MsoNormal"><br>
            List them as Known issues?<o:p></o:p></p>
          <p class="MsoNormal">Release should be done on rc3. Status of
            bugs can be updated in ‘header-intel.txt’. Just my thoughts!<o:p></o:p></p>
          <p class="MsoNormal"><br>
            <br>
            - armin<br>
            <br>
            <o:p></o:p></p>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <pre><o:p> </o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>Cheers,<o:p></o:p></pre>
            <pre><o:p> </o:p></pre>
            <pre>Richard<o:p></o:p></pre>
            <pre><o:p> </o:p></pre>
            <p class="MsoNormal"><br>
              <br>
              <o:p></o:p></p>
            <pre><o:p></o:p></pre>
          </blockquote>
          <p class="MsoNormal"><o:p> </o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------B0F929D27A33E7083E6DF73B--
