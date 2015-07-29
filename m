Return-Path: <dwesterg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A2F4E00A64; Wed, 29 Jul 2015 12:55:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dwesterg[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CCEE00992
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 12:54:58 -0700 (PDT)
Received: by obbop1 with SMTP id op1so15436672obb.2
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 12:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=user-agent:in-reply-to:references:mime-version:content-type
	:content-transfer-encoding:subject:from:date:to:cc:message-id;
	bh=mJ7BS+US4/muYm2gnCdUX1wCaZdBD8eWE26paZeP4OU=;
	b=yXmqM4bqF8Q08TzYU2cwNgqfp3FwPBTaYTkCCS1sYcKPQJcyCJXbL+EUcFBoh1Ow3c
	eE6r9zbqa30aT33Yf9M5o2eIak33XrqThNH04V+90JL22yLmZ/3UiEg5ra8HPHUifdPs
	tYcaEUP/GGBnXUCjTBoRx3mJeAp/20eJhhNwmIo5AZy5YIZeCPwKTbzL7VYQsqfaJLik
	40QMS48XjOrHmmP9at7BNp51x+LVPeIFBTCfYjwFPEkUwjGSN6YnuLsvfmDF6ht2mzk3
	n2HeeUdi8csNeRQkzktOA0jFrLtuLPIMEiB8gJD6478RUL8gZcnRoM8zU/CUQ8s9Ojbe
	kWAg==
X-Received: by 10.182.18.72 with SMTP id u8mr41098761obd.8.1438199697854;
	Wed, 29 Jul 2015 12:54:57 -0700 (PDT)
Received: from [10.4.251.105] (mobile-166-176-187-210.mycingular.net.
	[166.176.187.210]) by smtp.gmail.com with ESMTPSA id
	f8sm14913803obv.25.2015.07.29.12.54.55
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 29 Jul 2015 12:54:57 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <2238EDC6081C944E97E4EE915AE5CBEC5476ECD3@EXCHANGE-B.raylase.de>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<55B8D0BD.3050803@dynamicdevices.co.uk>
	<2238EDC6081C944E97E4EE915AE5CBEC5476ECD3@EXCHANGE-B.raylase.de>
MIME-Version: 1.0
From: Dalon Westergreen <dwesterg@gmail.com>
Date: Wed, 29 Jul 2015 12:54:53 -0700
To: "Spriggs, Jim" <J.Spriggs@raylase.de>,
	Alex J Lennon <ajlennon@dynamicdevices.co.uk>,
	"Kevin B." <enak999@googlemail.com>
Message-ID: <C90FACF2-BCAC-4B73-A0D2-07216FCACB09@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?UTF-8?Q?rfi_=E2=80=8E=5Brfi=40lists=2Erocketboards=2Eorg=5D=E2=80=8E?=
	<rfi@lists.rocketboards.org>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Wed, 29 Jul 2015 19:55:03 -0000
Content-Type: multipart/alternative;
	boundary="----EHC3IFAW3PXC95SQNKLR2DNCV3HTJD"
Content-Transfer-Encoding: 8bit

------EHC3IFAW3PXC95SQNKLR2DNCV3HTJD
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8

As far as I understand it Altera only maintains the one repo.  

On July 29, 2015 6:44:23 AM PDT, "Spriggs, Jim" <J.Spriggs@raylase.de> wrote:
>Hi Alex, Dalon, Kevin, Lists
>
>hmmm, so I guess I'm still confused (sorry).
>
>Alex recommends going via the "official" oe layers index, which
>currently links directly to github.com/kraj/meta-altera.
>
>Kevin and Dalon hold out for github.com/altera-opensource/meta-altera,
>and Dalon specifically says "... and repos under any user name in
>github are forks".
>
>So is there an official ;-) dichotomy between altera and oe?
>
>Thanks for listening...
>--
>jim
>
>
>-----Ursprüngliche Nachricht-----
>Von: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
>Gesendet: Mittwoch, 29. Juli 2015 15:10
>An: Spriggs, Jim <J.Spriggs@raylase.de>
>Cc: yocto@yoctoproject.org
>Betreff: Re: [yocto] Which repo for meta-altera ?
>
>
>
>On 28/07/2015 10:10, Spriggs, Jim wrote:
>> Hi Guys; confused noob here...
>>
>> There appear to be (at least) two "official" repos for meta-altera:
>>
>>         github.com/kraj/meta-altera
>>
>> and
>>
>>         git.rocketboards.org/meta-altera.git
>>
>>
>> So how should I choose between them?
>>
>> Thanks!
>> --
>> Jim
>>
>> Sorry about the company sig.: I can't switch it off.
>>
>
>fwiw I would usually start with the official index
>
>http://layers.openembedded.org/layerindex/branch/master/layers/
>
>This seems to point to github
>
>Cheers, Alex
>
>
>________________________________
>
>RAYLASE AG
>Argelsrieder Feld 2+4
>82234 Wessling
>Germany
>Tel.: +49-(0)8153/88 98-0
>Fax: +49-(0)8153/88 98-10
>http://www.raylase.de
>
>District Court Munich, HRB 131450
>
>Board: Peter von Jan (CEO)
>
>Supervisory Board: Dr. Ulrich Lohmann (Chairman)
>
>
>Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte
>Informationen. Wenn Sie nicht der richtige Adressat sind oder diese
>E-Mail irrtümlich erhalten haben, informieren Sie bitte sofort den
>Absender und vernichten Sie diese Mail. Das unerlaubte Kopieren sowie
>die unbefugte Weitergabe dieser Mail ist nicht gestattet.
>
>This e-mail may contain confidential and/or privileged information. If
>you are not the intended recipient (or have received this e-mail in
>error) please notify the sender immediately and destroy this e-mail.
>Any unauthorized copying, disclosure or distribution of the material in
>this e-mail is strictly forbidden.

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

------EHC3IFAW3PXC95SQNKLR2DNCV3HTJD
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head></head><body>As far as I understand it Altera only maintains the one repo.  <br><br><div class="gmail_quote">On July 29, 2015 6:44:23 AM PDT, &quot;Spriggs, Jim&quot; &lt;J.Spriggs@raylase.de&gt; wrote:<blockquote class="gmail_quote" style="margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class="k9mail">Hi Alex, Dalon, Kevin, Lists<br /><br />hmmm, so I guess I'm still confused (sorry).<br /><br />Alex recommends going via the "official" oe layers index, which currently links directly to <a href="http://github.com/kraj/meta-altera">github.com/kraj/meta-altera</a>.<br /><br />Kevin and Dalon hold out for <a href="http://github.com/altera-opensource/meta-altera">github.com/altera-opensource/meta-altera</a>, and Dalon specifically says "... and repos under any user name in github are forks".<br /><br />So is there an official ;-) dichotomy between altera and oe?<br /><br />Thanks for listening...<br />--<br />jim<br /><br /><br />-----Ursprüngliche Nachricht-----<br />Von: Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]<br />Gesendet: Mittwoch, 29. Juli 2015 15:10<br />An: Spriggs, Jim &lt;J.Spriggs@raylase.de&gt;<br />Cc: yocto@yoctoproject.org<br />Betreff: Re: [yocto] Which repo for meta-altera ?<br /><br /><br /><br />On 28/07/2015 10:10, Spriggs, Jim
wrote:<br /><blockquote class="gmail_quote" style="margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"> Hi Guys; confused noob here...<br /><br /> There appear to be (at least) two "official" repos for meta-altera:<br /><br />         <a href="http://github.com/kraj/meta-altera">github.com/kraj/meta-altera</a><br /><br /> and<br /><br />         <a href="http://git.rocketboards.org/meta-altera.git">git.rocketboards.org/meta-altera.git</a><br /><br /><br /> So how should I choose between them?<br /><br /> Thanks!<br /> --<br /> Jim<br /><br /> Sorry about the company sig.: I can't switch it off.</blockquote><br /><br />fwiw I would usually start with the official index<br /><br /><a href="http://layers.openembedded.org/layerindex/branch/master/layers">http://layers.openembedded.org/layerindex/branch/master/layers</a>/<br /><br />This seems to point to github<br /><br />Cheers, Alex<br /><br /><br /><hr /><br /><br />RAYLASE AG<br />Argelsrieder Feld 2+4<br
/>82234 Wessling<br />Germany<br />Tel.: +49-(0)8153/88 98-0<br />Fax: +49-(0)8153/88 98-10<br /><a href="http://www.raylase.de">http://www.raylase.de</a><br /><br />District Court Munich, HRB 131450<br /><br />Board: Peter von Jan (CEO)<br /><br />Supervisory Board: Dr. Ulrich Lohmann (Chairman)<br /><br /><br />Diese E-Mail enthält vertrauliche und/oder rechtlich geschützte Informationen. Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrtümlich erhalten haben, informieren Sie bitte sofort den Absender und vernichten Sie diese Mail. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Mail ist nicht gestattet.<br /><br />This e-mail may contain confidential and/or privileged information. If you are not the intended recipient (or have received this e-mail in error) please notify the sender immediately and destroy this e-mail. Any unauthorized copying, disclosure or distribution of the material in this e-mail is strictly forbidden.<br
/></pre></blockquote></div><br>
-- <br>
Sent from my Android device with K-9 Mail. Please excuse my brevity.</body></html>

------EHC3IFAW3PXC95SQNKLR2DNCV3HTJD--
