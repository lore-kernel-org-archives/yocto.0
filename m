Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6103E00D83; Wed,  4 Oct 2017 23:37:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D913E00D7E
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 23:37:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 62529861B2;
	Thu,  5 Oct 2017 06:37:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 50z2RDabQ30C; Thu,  5 Oct 2017 06:37:26 +0000 (UTC)
Received: from [127.0.0.1] (cpc111193-live30-2-0-cust656.17-2.cable.virginm.net
	[92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id C47A0860DC;
	Thu,  5 Oct 2017 06:37:25 +0000 (UTC)
To: MUGRIDGE Robin <Robin.Mugridge@oxinst.com>
References: <51BE6D71ED8CFC4BA05434EB06711F5DD295DF2E@UKCENMBX04.oxinst.com>
	<AC542F9E-FECD-4F59-B5E7-11D441C4F962@dynamicdevices.co.uk>
	<51BE6D71ED8CFC4BA05434EB06711F5DD29642F5@UKCENMBX04.oxinst.com>
From: Alex Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <24e97125-cec0-98a6-0127-bdf28b1d8d6c@dynamicdevices.co.uk>
Date: Thu, 5 Oct 2017 07:37:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <51BE6D71ED8CFC4BA05434EB06711F5DD29642F5@UKCENMBX04.oxinst.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: -|EXT|- Re: mono 5.0.1.1 TypeLoadException
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
X-List-Received-Date: Thu, 05 Oct 2017 06:37:37 -0000
Content-Type: multipart/alternative;
	boundary="------------D51CC24FA0049B7FDB421649"
Content-Language: en-GB

--------------D51CC24FA0049B7FDB421649
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit



On 05/10/2017 07:22, MUGRIDGE Robin wrote:
>
> Hi,
>
> I’ve managed to track this down and it turned out to be nothing to do 
> with mono.
>
> In the process of creating a test case, I found I had a reference to 
> an old version of Npgsql  (this is not provided via a yocto recipe).  
> The old version I was referencing included an old version of 
> Mono.Security.dll.  My application found this version rather than the 
> version delivered by Mono  as it was in the application directory.  
> Later versions of Npgsql have now dropped the inclusion of 
> Mono.Security.dll.
>
>

Glad to hear you have it sorted out. Thanks for letting me know Robin.

Cheers,

Alex


--------------D51CC24FA0049B7FDB421649
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 05/10/2017 07:22, MUGRIDGE Robin
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:51BE6D71ED8CFC4BA05434EB06711F5DD29642F5@UKCENMBX04.oxinst.com">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
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
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
        <p class="MsoNormal"><span style="color:#1F497D">Hi,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">I’ve managed to
            track this down and it turned out to be nothing to do with
            mono.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">In the process
            of creating a test case, I found I had a reference to an old
            version of Npgsql  (this is not provided via a yocto
            recipe).  The old version I was referencing included an old
            version of Mono.Security.dll.  My application found this
            version rather than the version delivered by Mono  as it was
            in the application directory.  Later versions of Npgsql have
            now dropped the inclusion of Mono.Security.dll.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <br>
      </div>
    </blockquote>
    <br>
    Glad to hear you have it sorted out. Thanks for letting me know
    Robin.<br>
    <br>
    Cheers,<br>
    <br>
    Alex<br>
    <br>
  </body>
</html>

--------------D51CC24FA0049B7FDB421649--
