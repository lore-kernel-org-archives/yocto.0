Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDFC2E00AB6; Sun, 28 Jul 2019 08:29:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44828E0096F
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:29:52 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id a93so26475756pla.7
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=jME86RqmeHspr8C4DkK8cIstOs92T8D+rIPXlJSBk4s=;
	b=DcqlTmZggcTKDkl1xqJjUyw7BTvE+NLlj41oTqoBxu1isn1FJR/XPvj74eveVGSHAl
	WpikNLGbtC9rO4jZAfTjkIuJeOFZzBrtIUm7d/h7OO9n2XQ3wYCuQRkVP+ItRKcAieyA
	wTieeA7PBuDlSW9zQ8qX4TBJLXYgSlAplEmoxALv0jcq1VY1oxGGjptl8WVQrDq61Ihi
	YcvjxlEYiiKIUyQAHh16G5GtFZYjZSljgPtLXOcWz6hiuS3J2zE5yzNTWikrmK1ljwyp
	3g0L1vjCLrt44/Iyv/4qwutWpveUIBUPKv44ihwt50yGlNl/PmhjUh2/+P/QGnQuiHce
	mbZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=jME86RqmeHspr8C4DkK8cIstOs92T8D+rIPXlJSBk4s=;
	b=fU/+1pkM8jO/kvLhBWMawX14HMCvKtSCKw7SXaqSmdPFrEZIvwX/oGyQigfCiZ0RrK
	TZJurd3i/aPlvu236+PPhNnlEN6M7SZtH96k60vr57fqd69kgv7/XVWa/6aumvQxzct4
	J0Jpcqt8QHAPDgcirPTKCfe9jNVlvvDDNqUIbdwycAGGZlI02CuV98MmBvDYEUPGgtg3
	PaidLK5+tBpL568/ioq98ZOxUcgkEAwQQR+Mqesi5r9YBR3V5YEX9YbXDrOtBH9FN3rs
	7tNkt9TaHDwUEw5nGJWo3bx/wvMQ0JkJsuATG0Q04i3IljV7gType776+iOayywAAhA6
	sz4Q==
X-Gm-Message-State: APjAAAXY+8Z+PWAQxQr1X+A9ROZ/2rHeDvimlhPa/Ti2LeDrMUmGd7iY
	PI1B9haBF0HEDHYA0BO4gwTuK/lvJeE=
X-Google-Smtp-Source: APXvYqyI2GDdOGNn2L3YruxRC0tsTTBg4Sn/DQ7k8/f7l54c4i9dM37YF3y1TaWO1m4rzmN+3KjwCg==
X-Received: by 2002:a17:902:9a07:: with SMTP id
	v7mr96803725plp.245.1564327791432; 
	Sun, 28 Jul 2019 08:29:51 -0700 (PDT)
Received: from ?IPv6:2601:646:8500:6bc6::e5a4? ([2601:646:8500:6bc6::e5a4])
	by smtp.gmail.com with ESMTPSA id
	z13sm55324615pfa.94.2019.07.28.08.29.49
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Jul 2019 08:29:50 -0700 (PDT)
To: Andy Pont <andy.pont@sdcsystems.com>
References: <em6add36a5-a095-434a-8cb6-09f00973e98b@andys-imac.local>
	<CAMKF1spg0j7VaRq_j=CywWMEg4=82QhEanqFMktT5xppSKGE_A@mail.gmail.com>
	<eme52024d7-066d-41a0-8dbb-6581b3463c88@andys-imac.local>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS
Message-ID: <30e3a72d-aa8e-72e8-6f19-c75826075774@gmail.com>
Date: Sun, 28 Jul 2019 08:29:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <eme52024d7-066d-41a0-8dbb-6581b3463c88@andys-imac.local>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Shared area conflict
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
X-List-Received-Date: Sun, 28 Jul 2019 15:29:52 -0000
Content-Type: multipart/alternative;
	boundary="------------5AD894092E0946EF06DFD01B"
Content-Language: en-US

--------------5AD894092E0946EF06DFD01B
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


On 7/28/19 1:05 AM, Andy Pont wrote:
> Khem wrote...
>
>> there are two recipes building/installing same files. You have to
>> avoid conflicts via either removing them from one recipe or not
>> installing them
> I’ve fixed this issue by creating a .bbappend file in my custom 
> meta-layer that tells mesa not to install these two packages.
>
> Only one major issue left to resolve which is described in [1] albeit 
> that I have gone back to thud but I get the same results as I did with 
> warrior. I have borrowed the recipes for v1.14 of the PowerVR drivers 
> from [2] and fixed a couple of kernel compile issues for kernel >= 
> 4.1.15 and will try those once I have the device tree entries for my 
> LCD cape incorporated.
this looks more recipe level problem to me. Probably you need table to 
do the right arch mapping based on calling convention on arm
>
> -Andy.
>
> 1. https://lists.yoctoproject.org/pipermail/yocto/2019-July/046165.html
> 2. https://git.phytec.de/meta-phytec
>

--------------5AD894092E0946EF06DFD01B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/28/19 1:05 AM, Andy Pont wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:eme52024d7-066d-41a0-8dbb-6581b3463c88@andys-imac.local">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <style id="css_styles" type="text/css">blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding-top: 0px; }
a img { border: 0px; }
li[style='text-align: center;'], li[style='text-align: right;'] {  list-style-position: inside;}
body { font-family: Verdana; font-size: 12px;   }</style>
      <div>
        <div>Khem wrote...</div>
      </div>
      <div><br>
      </div>
      <div id="x9cbe73ffc8b248c">
        <blockquote type="cite" class="cite2">
          <div class="plain_line">there are two recipes
            building/installing same files. You have to</div>
          <div class="plain_line">avoid conflicts via either removing
            them from one recipe or not</div>
          <div class="plain_line">installing them</div>
        </blockquote>
        I’ve fixed this issue by creating a .bbappend file in my custom
        meta-layer that tells mesa not to install these two packages.  </div>
      <div id="x9cbe73ffc8b248c"><br>
      </div>
      <div id="x9cbe73ffc8b248c">Only one major issue left to resolve
        which is described in [1] albeit that I have gone back to thud
        but I get the same results as I did with warrior. I have
        borrowed the recipes for v1.14 of the PowerVR drivers from [2]
        and fixed a couple of kernel compile issues for kernel &gt;=
        4.1.15 and will try those once I have the device tree entries
        for my LCD cape incorporated.</div>
    </blockquote>
    this looks more recipe level problem to me. Probably you need table
    to do the right arch mapping based on calling convention on arm<br>
    <blockquote type="cite"
      cite="mid:eme52024d7-066d-41a0-8dbb-6581b3463c88@andys-imac.local">
      <div id="x9cbe73ffc8b248c"><br>
      </div>
      <div id="x9cbe73ffc8b248c">-Andy.</div>
      <div id="x9cbe73ffc8b248c"><br>
      </div>
      <div id="x9cbe73ffc8b248c">1. <a
href="https://lists.yoctoproject.org/pipermail/yocto/2019-July/046165.html"
          moz-do-not-send="true">https://lists.yoctoproject.org/pipermail/yocto/2019-July/046165.html</a></div>
      <div id="x9cbe73ffc8b248c">2. <a
          href="https://git.phytec.de/meta-phytec"
          moz-do-not-send="true">https://git.phytec.de/meta-phytec</a></div>
      <div id="x9cbe73ffc8b248c"><br>
      </div>
      <div id="x9cbe73ffc8b248c">
        <blockquote type="cite" class="cite2">
          <blockquote type="cite" class="cite2">
          </blockquote>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------5AD894092E0946EF06DFD01B--
