Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 435E2E00DCE; Thu, 21 Nov 2019 01:54:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 155A0E00B0B
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2019 01:54:33 -0800 (PST)
Received: from [172.16.1.2] ([93.38.119.136])
	by smtpcmd11.ad.aruba.it with bizsmtp
	id UZuX2100V2wfazh01ZuXbf; Thu, 21 Nov 2019 10:54:32 +0100
To: yocto@yoctoproject.org
References: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <8a480bb5-2ec6-98e3-a6ce-21a05b523497@faresoftware.it>
Date: Thu, 21 Nov 2019 10:54:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574330072; bh=/AuXp3GHlCkKnxRY9LOU9Ujs7anJnSZwi6DMEcSfokM=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=m7t+rlgj4Wk4bU6ddpqZI2jpHVq8qS5/vi07Z/vKRSGJoB07rLRjezX8+4bjt/5AV
	MNQri0bZTBlDdF62SQGziKksqux0fTF+ueWBUUruQe9JsDP+dzP9N1ulAg7qKs15FL
	Jm8d5H8B8xhTBbbURNQRqSx6g5MM9foWX24q2sCBLfhdOsoiEicP9Jmyk59G7Sp8KA
	FDLw1sPqOadfI7wHs+t+M8jypjtB7ypHVpCTtxH6aSalrzlxONIeVcB5dWqNDvvnVV
	GuKPQWVfrpRMgc8naUrzd40Gp2nHPMfVq/VpTcPf8glRwvV/8PZXzZP1DkazCI93ip
	UB9I9qXKpCjrA==
Subject: Re: Is Yocto the right fit for my project?
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
X-List-Received-Date: Thu, 21 Nov 2019 09:54:37 -0000
X-Groupsio-MsgNum: 47357
Content-Type: multipart/alternative;
	boundary="------------10940DDBB307BDE00310A6FB"
Content-Language: it

--------------10940DDBB307BDE00310A6FB
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Yocto is a must for your project, regarding the project evolution.


I made a project starting from an intel platform, then I port it on 
raspberry, now on imx6 dual lite.

My application never change, the system services never change.

I need to change only the parts which driver the hardware.

You can achieve this goal playing with layers

If you made a good planning of the layers, the porting will be "easy2.


Good work


Il 20/11/19 14:12, Richard Barrass ha scritto:
>
> Hello,
>
> I am a lead engineer on project where we run a well-known Linux 
> distribution on-top of a SBC (Intel Quad Pentium processor based) 
> driving a 27” display. We have a 32GB SSD to run from, which we 
> partition with multiple EXT4 partitions to help with potential 
> corruption mitigation if the device is switched off ‘hard’.
>
> But, with the well-known Linux distribution comes a lot of things we 
> don’t need, plus the potential ability to ‘break’ in to our 
> application which is running full-screen.
>
> We basically need
>
> QT 5.12 runtime (our application)
>
> SSH
>
> OpenVPN
>
> Wifi
>
> Ethernet
>
> Modem (via Telit modem)
>
> USB-ACM
>
> USB-Memory stick
>
> Is this something I should be looking to the yocto project for, or 
> should I be looking at a more ‘traditional’ custom linux distro.
>
> The only other aspect, is that we have future plans to cost reduce the 
> application to be running on a Pi based, 10” display system …
>
> Any thoughts and ideas would be appreciated.
>
> Regards
>
> Richard
>
> *--*
>
> *Richard Barrass*
>
> BassettElectronicSystemsLtd_Logo **
>
> *Bassett Electronic Systems Ltd*. /Solutions under one roof./
>
> T: 01793 859974 E: r.barrass@bassettelectronics.com 
> <mailto:r.barrass@bassettelectronics.com>
>
> Unit 23-25 Whitehill Industrial Estate, Whitehill Lane, Royal Wootton 
> Bassett, Wiltshire, SN4 7DB
>
>

--------------10940DDBB307BDE00310A6FB
Content-Type: multipart/related;
 boundary="------------427D9C9D0BC8C38A9866422B"

--------------427D9C9D0BC8C38A9866422B
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Hello,</font></p>
    <p><font size="-1">Yocto is a must for your project, regarding the
        project evolution.</font></p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">I made a project starting from an intel platform,
        then I port it on raspberry, now on imx6 dual lite.</font></p>
    <p><font size="-1">My application never change, the system services
        never change.</font></p>
    <p><font size="-1">I need to change only the parts which driver the
        hardware.</font></p>
    <p><font size="-1">You can achieve this goal playing with layers<br>
      </font></p>
    <p><font size="-1">If you made a good planning of the layers, the
        porting will be "easy2.</font><br>
    </p>
    <p><font size="-1"><br>
      </font></p>
    <p><font size="-1">Good work<br>
      </font></p>
    <p><font size="-1"></font><br>
    </p>
    <div class="moz-cite-prefix">Il 20/11/19 14:12, Richard Barrass ha
      scritto:<br>
    </div>
    <blockquote type="cite"
cite="mid:LO3P265MB1833034A1F2816101F2B3F1E9C4F0@LO3P265MB1833.GBRP265.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
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
        <p class="MsoNormal">Hello,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am a lead engineer on project where we
          run a well-known Linux distribution on-top of a SBC (Intel
          Quad Pentium processor based) driving a 27” display. We have a
          32GB SSD to run from, which we partition with multiple EXT4
          partitions to help with potential corruption mitigation if the
          device is switched off ‘hard’.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">But, with the well-known Linux distribution
          comes a lot of things we don’t need, plus the potential
          ability to ‘break’ in to our application which is running
          full-screen.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We basically need<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">QT 5.12 runtime (our application)<o:p></o:p></p>
        <p class="MsoNormal">SSH<o:p></o:p></p>
        <p class="MsoNormal">OpenVPN<o:p></o:p></p>
        <p class="MsoNormal">Wifi<o:p></o:p></p>
        <p class="MsoNormal">Ethernet<o:p></o:p></p>
        <p class="MsoNormal">Modem (via Telit modem)<o:p></o:p></p>
        <p class="MsoNormal">USB-ACM<o:p></o:p></p>
        <p class="MsoNormal">USB-Memory stick<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Is this something I should be looking to
          the yocto project for, or should I be looking at a more
          ‘traditional’ custom linux distro.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The only other aspect, is that we have
          future plans to cost reduce the application to be running on a
          Pi based, 10” display system …<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Any thoughts and ideas would be
          appreciated.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Regards<o:p></o:p></p>
        <p class="MsoNormal">Richard<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><b><span
              style="font-size:12.0pt;mso-fareast-language:EN-GB">--<o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:12.0pt;mso-fareast-language:EN-GB">Richard
              Barrass</span></b><span
            style="font-size:9.0pt;mso-fareast-language:EN-GB">
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;mso-fareast-language:EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;mso-fareast-language:EN-GB"><img
              style="width:1.0416in;height:.9722in" id="Picture_x0020_1"
              src="cid:part1.3A5EDEDB.1C26338D@faresoftware.it"
              alt="BassettElectronicSystemsLtd_Logo" class=""
              width="100" height="93">
          </span><b><span
              style="font-size:12.0pt;mso-fareast-language:EN-GB"><o:p></o:p></span></b></p>
        <p class="MsoNormal"><b><span
              style="color:#1F3864;mso-fareast-language:EN-GB">Bassett
              Electronic Systems Ltd</span></b><span
            style="mso-fareast-language:EN-GB">.
            <i><span style="color:#7030A0">Solutions under one roof.</span></i><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;color:#AEAAAA;mso-fareast-language:EN-GB">T:
            01793 859974 E:
            <a href="mailto:r.barrass@bassettelectronics.com"
              moz-do-not-send="true"><span style="color:#AEAAAA">r.barrass@bassettelectronics.com</span></a><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;color:#AEAAAA;mso-fareast-language:EN-GB">Unit
            23-25 Whitehill Industrial Estate, Whitehill Lane, Royal
            Wootton Bassett, Wiltshire, SN4 7DB<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------427D9C9D0BC8C38A9866422B
Content-Type: image/png;
 name="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <part1.3A5EDEDB.1C26338D@faresoftware.it>
Content-Disposition: inline;
 filename="image001.png"

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
81WGHv7/0E06sb7U4XsAAAAASUVORK5CYII=

--------------427D9C9D0BC8C38A9866422B--

--------------10940DDBB307BDE00310A6FB--
