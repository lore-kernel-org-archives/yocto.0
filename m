Return-Path: <vpalacio@intemotechnologies.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF28FE009CA; Wed, 25 Apr 2018 08:04:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.116.26.58 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from relayout07-q02.dominioabsoluto.net
	(relayout07-q02.dominioabsoluto.net [217.116.26.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1317E00C25
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 08:04:35 -0700 (PDT)
Received: from relayout07-redir.dominioabsoluto.net
	(relayout07-redir.dominioabsoluto.net [217.116.26.62])
	by relayout07.dominioabsoluto.net (Postfix) with ESMTP id
	40WNlQ3284z1jQpm
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 17:04:34 +0200 (CEST)
Received: from [192.168.1.31] (58.red-217-125-30.staticip.rima-tde.net
	[217.125.30.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: vpalacio.intemotechnologies.com)
	by relayout07-dsp.dominioabsoluto.net (Postfix) with ESMTPSA id
	40WNlP4Z4Lz1jQpc
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 17:04:33 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Victor Palacio <vpalacio@intemotechnologies.com>
Message-ID: <37ace7a9-0cd3-a3dc-d2aa-bc59aa2ef3ba@intemotechnologies.com>
Date: Wed, 25 Apr 2018 17:04:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
X-CTCH-Score: 0.000
X-CTCH-ScoreCust: 0.000
X-PostalOut-Country: IP: 217.125.30.58 | Country: ES
X-PostalOut-Information: AntiSPAM and AntiVIRUS on relayout07
X-PostalOut-MsgID: 40WNlP4Z4Lz1jQpc.AB868
X-PostalOut-SpamCheck: no es spam, Unknown
X-PostalOut-From: vpalacio@intemotechnologies.com
X-PostalOut-Watermark: 1525273474.07766@SWHLaHSr00SHhq4iQuBirA
Subject: [morty] eudev make fails when creating keyboard-keys-from-name.h
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
X-List-Received-Date: Wed, 25 Apr 2018 15:04:46 -0000
Content-Type: multipart/alternative;
	boundary="------------302F84A0B56980DDE00C092E"
Content-Language: en-US

--------------302F84A0B56980DDE00C092E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello,

Building a core-minimal-image, compilation fails at eudev when using gperf.

....

/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/bin/gperf 
-L ANSI-C -t -N keyboard_lookup_key -H hash_key_name -p -C < 
keyboard-keys-from-name.gperf > keyboard-keys-from-name.h
| Key link: "screenlock" = "screenlock", with key set "ceks".
| 1 input keys have identical hash values,
| use option -D.

....

As per log output indication, I've created it manually (from a 
devshell), adding "-D" param to the command.

It's there a bug here, or just a problem with my environment? Somebody 
had the same problem?

Regards,

-- 


Victor M. Palacio Tárrega

vpalacio@intemotechnologies.com <mailto:icarra@intemotechnologies.com>



--------------302F84A0B56980DDE00C092E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello,</p>
    <p>Building a core-minimal-image, compilation fails at eudev when
      using gperf.<br>
    </p>
    <p>....<br>
    </p>
    <p>/media/vpalacio/LINUX_DEV/morty-imxulevk/build_mx6ul_fslcx11/tmp/sysroots/x86_64-linux/usr/bin/gperf
      -L ANSI-C -t -N keyboard_lookup_key -H hash_key_name -p -C &lt;
      keyboard-keys-from-name.gperf &gt; keyboard-keys-from-name.h<br>
      | Key link: "screenlock" = "screenlock", with key set "ceks".<br>
      | 1 input keys have identical hash values,<br>
      | use option -D.</p>
    <p>....</p>
    <p>As per log output indication, I've created it manually (from a
      devshell), adding "-D" param to the command.</p>
    <p>It's there a bug here, or just a problem with my environment?
      Somebody had the same problem?<br>
    </p>
    <p>Regards,<br>
    </p>
    <div class="moz-signature">-- <br>
      <title></title>
      <link rel="important stylesheet"
        href="chrome://messagebody/skin/messageBody.css">
      <br>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 14 (filtered
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Texto de globo Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.TextodegloboCar
	{mso-style-name:"Texto de globo Car";
	mso-style-priority:99;
	mso-style-link:"Texto de globo";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="CA"><o:p>  <br>
            </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:#1F497D;mso-fareast-language:ES"
            lang="FR">Victor M. Palacio Tárrega</span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:10.0pt;color:gray;mso-fareast-language:ES"><a
              href="mailto:icarra@intemotechnologies.com"><span
                style="color:gray" lang="FR">vpalacio@intemotechnologies.com</span></a></span><span
            style="mso-fareast-language:ES" lang="ES-TRAD"><o:p></o:p></span></p>
        <br>
      </div>
    </div>
  </body>
</html>

--------------302F84A0B56980DDE00C092E--
