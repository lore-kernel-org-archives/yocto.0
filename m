Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9196E00DE5; Tue,  6 Mar 2018 04:28:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEAF4E00A61
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 04:28:03 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w26CS1va031834
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Tue, 6 Mar 2018 14:28:01 +0200
To: yocto@yoctoproject.org
References: <VI1P192MB0143C3B885E5344B5BEB65308DDA0@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<VI1P192MB014378FB73375D22C8AFE5838DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <1a4dfa48-c49b-8d52-93ce-03c70258fd93@vitheia.com>
Date: Tue, 6 Mar 2018 14:28:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB014378FB73375D22C8AFE5838DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Subject: Re: bbappend file not used
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
X-List-Received-Date: Tue, 06 Mar 2018 12:28:06 -0000
Content-Type: multipart/alternative;
	boundary="------------189C8B00319492E22BD7A5FE"
Content-Language: en-US

--------------189C8B00319492E22BD7A5FE
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Is your layer present in build/conf/bblayers.conf ?

On 06/03/18 14:07, Vincent Daanen wrote:
>
> Dears,
>
> I want to build an image using systemd and system-networkd as network 
> manager and set static ip address to eth0.
>
> To do so, I use a bbappend file to systemd.
>
> The problem is that the systemd_%.bbappend file does not appear when 
> calling bitbake-layers show-appends. I’m quite sure it is not 
> processed because when a voluntary add a typo, it does not break the 
> bitbake process.
>
> What did I do wrong ??
>
> Below is my “files architecture”:
>
> Yocto
>
>  |-- Sources (Rocko 2.4.1)
>
>   |-- myDir
>
>         |-- build
>
>               |-- conf
>
>                          Local.conf
>
>         |-- meta-myLayer
>
>               |-- conf
>
>               |-- recipes-core
>
>                     |-- images
>
>                           my-image.bb
>
>                     |-- systemd
>
>             systemd_%.bbappend
>
>                           |-- system
>
>                                 eth.network
>
> The target is a generic x86_64 board (AAEON GENE BT 05 with J1900 
> processor).
>
> Host system is ubuntu 16.04 LTS
>
> Thanks
>
> Vince
>
>
>


--------------189C8B00319492E22BD7A5FE
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Is your layer present in build/conf/bblayers.conf ?<br>
    <br>
    <div class="moz-cite-prefix">On 06/03/18 14:07, Vincent Daanen
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:VI1P192MB014378FB73375D22C8AFE5838DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM">
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
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Dears,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I want to build an image using systemd and
          system-networkd as network manager and set static ip address
          to eth0.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">To do so, I use a bbappend file to systemd.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The problem is that the systemd_%.bbappend
          file does not appear when calling bitbake-layers show-appends.
          I’m quite sure it is not processed because when a voluntary
          add a typo, it does not break the bitbake process.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">What did I do wrong ??<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Below is my “files architecture”:<o:p></o:p></p>
        <p class="MsoNormal">Yocto<o:p></o:p></p>
        <p class="MsoNormal"> |-- Sources (Rocko 2.4.1)<o:p></o:p></p>
        <p class="MsoNormal">  |-- myDir<o:p></o:p></p>
        <p class="MsoNormal">        |-- build<o:p></o:p></p>
        <p class="MsoNormal">              |-- conf<o:p></o:p></p>
        <p class="MsoNormal">                         Local.conf<o:p></o:p></p>
        <p class="MsoNormal">        |-- meta-myLayer <o:p></o:p></p>
        <p class="MsoNormal">              |-- conf<o:p></o:p></p>
        <p class="MsoNormal">              |-- recipes-core<o:p></o:p></p>
        <p class="MsoNormal">                    |-- images<o:p></o:p></p>
        <p class="MsoNormal">                          my-image.bb<o:p></o:p></p>
        <p class="MsoNormal">                    |-- systemd<o:p></o:p></p>
        <p class="MsoNormal">             
                      systemd_%.bbappend<o:p></o:p></p>
        <p class="MsoNormal">                          |-- system<o:p></o:p></p>
        <p class="MsoNormal">                                eth.network<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The target is a generic x86_64 board (AAEON
          GENE BT 05 with J1900 processor).<o:p></o:p></p>
        <p class="MsoNormal">Host system is ubuntu 16.04 LTS<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks<span
style="font-family:&quot;Arial&quot;,sans-serif;color:#222222;background:white;mso-fareast-language:EN-GB"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="FR"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="FR">Vince<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------189C8B00319492E22BD7A5FE--
