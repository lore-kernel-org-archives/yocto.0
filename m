Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A7D8E00C99; Tue, 27 Mar 2018 08:05:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB29E00C99
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 08:04:21 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id n11so8654263pgp.4
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 08:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=mJlPggnyn4+fmrcazcwAAO8vwVBNxQWR4NuIjh+hq/4=;
	b=k+Qbemhb8ZwILfKeMmt9+EHd1h5tzsPefiEUYdeIhoZnIPkwtK6lyB3v0GptDNd7w+
	UXDn1cvPzThjPWZA5SmKxsgeLg9J2KUcJ8HH0EkMYePo7Y58fx8SA1f7Uf6oH5sBgihL
	axlKtZlI7scLL2O+iPb9pGhaXjWoMpvDvTwxQVpFn3migNfBiZ6qWkN4GfshLz7dEi+2
	R5sIRrTo85FxQ5Rl3xFtYG1q8vMZfIH72dhsaL5kpSmvwcEwyUqIlX0tBfCZHGpsMU65
	BhTOomV8H/H5jeGfjASkq5BM6LBmrIMpHLZQ9yFc+FvExg0oTMt1hQgTdRpv87td5eyY
	xdKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=mJlPggnyn4+fmrcazcwAAO8vwVBNxQWR4NuIjh+hq/4=;
	b=EV1hov20wGaVC1FGUaMwBS1NQoXBQ1bSXZ4W0oMpaY1Xs/QDzR2fmPMCwqVzNT9QpO
	/I0XmnD0fQdF9uo/V1fATMfsKzUNTVvZB8M3BFi5pd2/8FPVc/OowvGG0TW1FVm4uhx4
	Mn9rh0sIlBHzWQUaFnPWxh2H7aZP6gbMaBr9nInd6kohEzeicR4YdZzFIt5jaqEMJJHm
	Q9rU8UbrAUoreFs1J2niurmDo8QfV+l0/25Sm3QHK7W/yqlbZu29HguMNj+dEtYM7PoD
	+1WOwR15be0xg2hiJuoLCZDvcXetFLVc6RLdPT7oEpx9wQBekslb95asIiQ3f564x5cD
	5dSA==
X-Gm-Message-State: AElRT7E/pOBy5ldsnrkTrWteKTyd4g3gOO2z8jXC/0LsfFMJxDY7itpG
	0UXdZv6YAIKGV2H+9Mmwzm5Axw==
X-Google-Smtp-Source: AG47ELvbZpnSuE9IB5Oit0OJ6j7t1Vu+vW3LQxpEOurFdD7UyHDjUJpeDiaJOe7WfNDlEE2yekNDEA==
X-Received: by 10.101.67.13 with SMTP id j13mr16539035pgq.432.1522163061346;
	Tue, 27 Mar 2018 08:04:21 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:9901:2a59:c9ba:abba?
	([2601:202:4000:1184:9901:2a59:c9ba:abba])
	by smtp.gmail.com with ESMTPSA id f5sm3522356pgn.56.2018.03.27.08.04.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Mar 2018 08:04:20 -0700 (PDT)
To: Tom Gibson <tom.gibson@csoftware.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
From: akuster808 <akuster808@gmail.com>
Message-ID: <da46c6f0-71ec-2b4d-e430-22bebed64c24@gmail.com>
Date: Tue, 27 Mar 2018 08:04:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk>
Subject: Re: ClamAV PCRE support
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
X-List-Received-Date: Tue, 27 Mar 2018 15:05:55 -0000
Content-Type: multipart/alternative;
	boundary="------------3211198F74232E01E28735E9"
Content-Language: en-US

--------------3211198F74232E01E28735E9
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 03/27/2018 07:42 AM, Tom Gibson wrote:
>
> Hi,
>
>  
>
> I am adding ClamAV to our custom image and have added the following to
> our main .bb file:
>

Are you using the recipe from meta-security ?

- Armin
>
>  
>
> IMAGE_INSTALL += “ clamav clamav-daemon clamav-clamdscan”
>
>  
>
> When I run clamscan on our board I get a number of errors of the form
> “logical signature for … uses PCREs but support is disabled, skipping”
> so the solution would appear to be to add PCRE support. In the ClamAV
> bitbake recipe I see there is a PACKAGECONFIG variable for PCRE, so to
> test if this is the solution I have added the following to my local.conf:
>
>  
>
> PACKAGECONFIG_append_pn-clamav = “ pcre”
>
>  
>
> and have also added “ libpcre2” before “clamav” in the IMAGE_INSTALL
> as above.
>
>  
>
> Unfortunately when I run bitbake I now get a configure error similar
> to the following:
>
>  
>
> configure: error: cannot locate libpcre2 or libpcre at
> <builddir>/tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib
>
>  
>
> I have attempted to solve this by creating a .bbappend file in my
> layer containing the following to try and force it to build libpcre first
>
>  
>
>                 DEPENDS += “ libpcre2”
>
>  
>
> however this has no effect on the error, I assume this may not be the
> way to solve the dependency problem.
>
>  
>
> Can anyone please advise what additional configuration is required to
> enable building of support for PCRE into ClamAV
>
>  
>
> Thanks in advance for your assistance!
>
>  
>
> Regards,
>
>  
>
> Tom Gibson
>
> C Software Limited
>
>  
>
>
>


--------------3211198F74232E01E28735E9
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 03/27/2018 07:42 AM, Tom Gibson
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk">
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
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am adding ClamAV to our custom image and
          have added the following to our main .bb file:</p>
      </div>
    </blockquote>
    <br>
    Are you using the recipe from meta-security ?<br>
    <br>
    - Armin<br>
    <blockquote type="cite"
      cite="mid:7fe4b4d52892445b97680ccd2ec47808@csoftware.co.uk">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal" style="text-indent:36.0pt">IMAGE_INSTALL +=
          “ clamav clamav-daemon clamav-clamdscan”<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">When I run clamscan on our board I get a
          number of errors of the form “logical signature for … uses
          PCREs but support is disabled, skipping” so the solution would
          appear to be to add PCRE support. In the ClamAV bitbake recipe
          I see there is a PACKAGECONFIG variable for PCRE, so to test
          if this is the solution I have added the following to my
          local.conf:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal" style="text-indent:36.0pt">PACKAGECONFIG_append_pn-clamav
          = “ pcre”<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">and have also added “ libpcre2” before
          “clamav” in the IMAGE_INSTALL as above.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Unfortunately when I run bitbake I now get
          a configure error similar to the following:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal" style="text-indent:36.0pt">configure:
          error: cannot locate libpcre2 or libpcre at
&lt;builddir&gt;/tmp/work/armv7a-neon-poky-linux-gnueabi/clamav/0.99.3-r0/recipe-sysroot/usr/lib<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I have attempted to solve this by creating
          a .bbappend file in my layer containing the following to try
          and force it to build libpcre first<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">                DEPENDS += “ libpcre2”<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">however this has no effect on the error, I
          assume this may not be the way to solve the dependency
          problem.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Can anyone please advise what additional
          configuration is required to enable building of support for
          PCRE into ClamAV<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks in advance for your assistance!<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">Tom
            Gibson<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="mso-fareast-language:EN-GB">C
            Software Limited</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------3211198F74232E01E28735E9--
