Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AE6CE00BBC; Tue, 19 Feb 2019 17:48:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9B5E00BB7
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 17:48:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x1K1ljST001013
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Feb 2019 17:47:45 -0800 (PST)
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.435.0;
	Tue, 19 Feb 2019 17:47:44 -0800
To: <andrew.rudd@aktyon.com>, <yocto@yoctoproject.org>
References: <001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <a8408263-cd61-2352-45ec-d0da8787eaa2@windriver.com>
Date: Wed, 20 Feb 2019 09:57:07 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com>
X-Originating-IP: [128.224.163.141]
Subject: Re: Yocto General purpose evaluation
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
X-List-Received-Date: Wed, 20 Feb 2019 01:48:28 -0000
X-Groupsio-MsgNum: 44152
Content-Type: multipart/alternative;
	boundary="------------42831A4DDAD46EB7E199DCC5"

--------------42831A4DDAD46EB7E199DCC5
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

Your main concern is about power usage. As long as you are using linux, 
you might want to do the following:
1) Custom kernel to include drivers that are necessary
2) Do not install unnecessary packages, do not start unnecessary daemons
The above two could easily be achieved by Yocto.

Best Regards,
Chen Qi

On 02/13/2019 12:49 AM, andrew.rudd@aktyon.com wrote:
>
> Hello,
>
> I知 looking to evaluate the general purpose/utility of a custom build 
> Yocto embedded OS. I知 trying to get my head around the benefits of 
> using such an OS. I知 sure it痴 on case by case basis so let me 
> provide my background and requirements.
>
> Background/requirements
>
> Currently using Debian OS on my prototype build based on a Beaglebone 
> green wireless.
>
> Custom software is constructed in java.
>
> System utilizes 9 axis accelerometer, vibration sensor, Bluetooth, 
> WiFi, LTE-M, GNSS, power management (through BB I2c and GPIO channels)
>
> It runs on a battery and solar.
>
> Power usage is important. Standby is used and still needs to listen 
> for vibration sensor, Bluetooth and LTE-m cellular events.
>
> Only constrained by power usage and data usage. Processor or memory 
> usage are unconstrained except for in relation to power usage.
>
> Minimizing data usage if an OS update is needed would be an advantage.
>
> No audio , video, USB or GUI is used.
>
> So would there be a significant benefit seen by using a custom Yocto 
> build or would a GUIless version of Debian be just as effective? Also 
> considering Buildroot if that would be just as effective and simpler 
> to execute. If anyone has any other thoughts or concerns I would love 
> to discuss. Thank you for your time.
>
> Thank you,
>
> Andrew Rudd
>
> President, Aktyon
>
> 352-256-8086
>
> Andrew.Rudd@Aktyon.com <mailto:Andrew.Rudd@Aktyon.com>
>
> AktyonLogoAndFontSignature
>
>
>


--------------42831A4DDAD46EB7E199DCC5
Content-Type: multipart/related;
	boundary="------------9A251DCD5517597D5D8F6B0B"

--------------9A251DCD5517597D5D8F6B0B
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Your main concern is about power usage.
      As long as you are using linux, you might want to do the
      following:<br>
      1) Custom kernel to include drivers that are necessary<br>
      2) Do not install unnecessary packages, do not start unnecessary
      daemons<br>
      The above two could easily be achieved by Yocto.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 02/13/2019 12:49 AM, <a class="moz-txt-link-abbreviated" href="mailto:andrew.rudd@aktyon.com">andrew.rudd@aktyon.com</a> wrote:<br>
    </div>
    <blockquote cite="mid:001301d4c2f2$e94a45a0$bbded0e0$@aktyon.com"
      type="cite">
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
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
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
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">I知 looking to evaluate the general
          purpose/utility of a custom build Yocto embedded OS. I知
          trying to get my head around the benefits of using such an OS.
          I知 sure it痴 on case by case basis so let me provide my
          background and requirements.<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">Background/requirements<o:p></o:p></p>
        <p class="MsoNormal">Currently using Debian OS on my prototype
          build based on a Beaglebone green wireless. <o:p></o:p></p>
        <p class="MsoNormal">Custom software is constructed in java.<o:p></o:p></p>
        <p class="MsoNormal">System utilizes 9 axis accelerometer,
          vibration sensor, Bluetooth, WiFi, LTE-M, GNSS, power
          management (through BB I2c and GPIO channels)<o:p></o:p></p>
        <p class="MsoNormal">It runs on a battery and solar.<o:p></o:p></p>
        <p class="MsoNormal">Power usage is important. Standby is used
          and still needs to listen for vibration sensor, Bluetooth and
          LTE-m cellular events.<o:p></o:p></p>
        <p class="MsoNormal">Only constrained by power usage and data
          usage. Processor or memory usage are unconstrained except for
          in relation to power usage.<o:p></o:p></p>
        <p class="MsoNormal">Minimizing data usage if an OS update is
          needed would be an advantage. <o:p></o:p></p>
        <p class="MsoNormal">No audio , video, USB or GUI is used.<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">So would there be a significant benefit
          seen by using a custom Yocto build or would a GUIless version
          of Debian be just as effective? Also considering Buildroot if
          that would be just as effective and simpler to execute. If
          anyone has any other thoughts or concerns I would love to
          discuss. Thank you for your time.<o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal">Thank you,<o:p></o:p></p>
        <p class="MsoNormal">Andrew Rudd<o:p></o:p></p>
        <p class="MsoNormal">President, Aktyon<o:p></o:p></p>
        <p class="MsoNormal">352-256-8086<o:p></o:p></p>
        <p class="MsoNormal"><a moz-do-not-send="true"
            href="mailto:Andrew.Rudd@Aktyon.com"><span
              style="color:blue">Andrew.Rudd@Aktyon.com</span></a><o:p></o:p></p>
        <p class="MsoNormal"><img style="width:2.3958in;height:.5833in"
            id="Picture_x0020_1"
            src="cid:part2.5F5B83AD.E0EBB8A0@windriver.com"
            alt="AktyonLogoAndFontSignature" border="0" height="56"
            width="230"><o:p></o:p></p>
        <p class="MsoNormal"><o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------9A251DCD5517597D5D8F6B0B
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.5F5B83AD.E0EBB8A0@windriver.com>

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

--------------9A251DCD5517597D5D8F6B0B--

--------------42831A4DDAD46EB7E199DCC5--
