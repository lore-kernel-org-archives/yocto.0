Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435B5E00D54; Thu, 26 Sep 2019 09:07:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D92E00C9B
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:07:26 -0700 (PDT)
Received: by mail-pg1-f171.google.com with SMTP id y35so1839983pgl.1
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2019 09:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=8kWpxLXhCGzzwfVM5Cckoex8GFau3RmciBBfY3mumvw=;
	b=K4+d0ieXZw7eWQv1jQpa+0H5CbwXkta/JddEV/DOOF42OqXG70y3KFo722Xzno3/ZU
	baKnGaRObsWTl++37+4ILK4KdNxO3pn/26G9XdToYV/9lW8+ms7Q2iYdeSCQWPQW9SK2
	wnbByRIStl4SpUqIKvuDGp28Uzy/1SlvTYaTbWr+TFeWVrEQumVXZ1kjmh+VB6jmkLet
	5R7BVlufxC6Oge37RgD9wmVvq40UkM5QS/rOE9kNaLVhpGWsu30Z/8Cr5W1f9z5kvQ6E
	jg5fPQSPziIsMXBhanEINib3AeVsTWxP1Q2TPhpN9kWNpog5drpm8th4/+frlvcwa95l
	g02w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=8kWpxLXhCGzzwfVM5Cckoex8GFau3RmciBBfY3mumvw=;
	b=lBtEx/1vu+oSGME8ZvWzViYt/ZxzizakI9zki5sx+KD0fmd8kC8rcklX6J2Fb0C/FD
	o+egNeWl1xkPHtv5DpL0oyMAvkFtgrOhMqAFcWCl5M1wdjO2bxLCRJx121AOQUftOeGl
	Sg6aFiuzdlOxYobgQCVlkJsv9Trek+Ax8GAv/oEgHHthQwS3JN22tzamXwZG072FCalu
	lwFKEyL8DYp2z5RJTDutZCLVpXkW0sxh+IIR6bHTOjCP+a8HO8GHlOPbRzTSOeM8IOJy
	+2OZlC3uVAKa0H3UPmQCgxRtu2mozG0opivr8jyVDfHTRJjOP+HzZ7eUww+ZklYVVwdj
	OL1w==
X-Gm-Message-State: APjAAAV334ko21caAX+MsL6rKTVRL2nGSw4CU/RakdIkia3nLPBcFHQo
	ONiy1GaM2VQNBW6PWeM8IZY=
X-Google-Smtp-Source: APXvYqzwqksV8s/HOiHF7SOji66O5PrtKauUdbvoyB2I2WWQRERFpe98RsEq0hobXCXbgHJp+Uogtw==
X-Received: by 2002:aa7:96a9:: with SMTP id g9mr4489486pfk.16.1569514045803;
	Thu, 26 Sep 2019 09:07:25 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:40e0:1cd6:848:14bf?
	([2601:202:4180:a5c0:40e0:1cd6:848:14bf])
	by smtp.gmail.com with ESMTPSA id
	j126sm3924811pfb.186.2019.09.26.09.07.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Sep 2019 09:07:25 -0700 (PDT)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <a84122fd-2c11-7530-ed76-0afa2f2baaf2@gmail.com>
Date: Thu, 26 Sep 2019 09:07:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: Re: QA cycle report for 2.8 M3 RC1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Sep 2019 16:07:27 -0000
Content-Type: multipart/alternative;
	boundary="------------6A7B4721C6E9460257D3AFBD"
Content-Language: en-US

--------------6A7B4721C6E9460257D3AFBD
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 9/25/19 11:33 PM, Jain, Sangeeta wrote:
>
>  
>
> Hello All,
>
>  
>
> This is the full QA report for 2.8 M3 RC1: 
>
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>
>  
>
> ======= Summary ========
>
> No high milestone defects. 
>
> Two new defects are found in this cycle, mpc8315e-rdb System randomly
> hang when running commands (BUG id:13555)
>
> Due to this issue, oeqa would be timeout and many tests are
> skipped/failed on mpc8315e-rdb.
>
> and ptest failed (BUG id:13556).
>
>  
>

Thank you for the summary.

> ======= Bugs ========
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13555
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13556
>
We split the pongo issue into its own bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13557

- armin
>
>  
>
> Thanks & Regards,
>
> Sangeeta Jain
>
>  
>


--------------6A7B4721C6E9460257D3AFBD
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 9/25/19 11:33 PM, Jain, Sangeeta
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Hello All,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">This is the full QA report for 2.8 M3 RC1: 
          <o:p></o:p></p>
        <p class="MsoNormal"><a
href="https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults"
            moz-do-not-send="true">https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">======= Summary ========<o:p></o:p></p>
        <p class="MsoNormal">No high milestone defects.  <o:p></o:p></p>
        <p class="MsoNormal">Two new defects are found in this cycle,
          mpc8315e-rdb System randomly hang when running commands (BUG
          id:13555)<o:p></o:p></p>
        <p class="MsoNormal">Due to this issue, oeqa would be timeout
          and many tests are skipped/failed on mpc8315e-rdb.<o:p></o:p></p>
        <p class="MsoNormal">and ptest failed (BUG id:13556). <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    <br>
    Thank you for the summary.<br>
    <br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal">======= Bugs ========<o:p></o:p></p>
        <p class="MsoNormal"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13555"
            moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13555</a><o:p></o:p></p>
        <p class="MsoNormal"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13556"
            moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13556</a></p>
      </div>
    </blockquote>
    We split the pongo issue into its own bug:
    <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=13557">https://bugzilla.yoctoproject.org/show_bug.cgi?id=13557</a><br>
    <br>
    - armin<br>
    <blockquote type="cite"
cite="mid:CY4PR11MB1879D6C245032898724E519DE3860@CY4PR11MB1879.namprd11.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-MY"
            lang="EN-US">Thanks &amp; Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-MY"
            lang="EN-US">Sangeeta Jain<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------6A7B4721C6E9460257D3AFBD--
