Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACCA2E00CA3; Thu, 29 Nov 2018 01:06:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95ECFE00971
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2018 01:06:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wAT95CAm004393
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 29 Nov 2018 01:05:53 -0800
Received: from [128.224.163.141] (128.224.163.141) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Thu, 29 Nov 2018 01:05:26 -0800
To: =?UTF-8?Q?Indu-Sol_GmbH=2c_Klaus_N=c3=b6ske?= <Klaus.Noeske@indu-sol.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <A2C130CD097EC048BAC89FFB315E00FC939C61EE@INDU-EXC.indu-sol.intra>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <29fc7613-b483-50cc-5d02-e28b527f0204@windriver.com>
Date: Thu, 29 Nov 2018 17:12:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <A2C130CD097EC048BAC89FFB315E00FC939C61EE@INDU-EXC.indu-sol.intra>
X-Originating-IP: [128.224.163.141]
Subject: Re: Yocto version thud busybox build failed: rpc/rpc.h - No such file
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
X-List-Received-Date: Thu, 29 Nov 2018 09:06:24 -0000
Content-Type: multipart/alternative;
	boundary="------------66FAB7EA7A2BEB335619880E"

--------------66FAB7EA7A2BEB335619880E
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

How about adding in your busybox bbappend file the following line.
DEPENDS += "libtirpc"

Best Regards,
Chen Qi

On 11/29/2018 04:29 PM, Indu-Sol GmbH, Klaus Nöske wrote:
>
> Hello,
>
> I try to migrate my project from fido to thud. Currently I have 
> problems to build busybox. It fails with error: rpc/rpc.h - No such 
> file. This was already mentioned here: 
> https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.html. 
> But I was not able to find the solution there.
>
> My build host is Ubuntu 16.04 (x86_64) and my target is an ARM 
> board/device.
>
> The “thud” commit I use is: 94b13882510561b4ab7c08fd0343038c154680a4 
> (sanity: Add check for WSL)
>
> What can I do to solve this problem?
>
> Thanks
>
> BR
>
> Klaus
>
>
>


--------------66FAB7EA7A2BEB335619880E
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">How about adding in your busybox
      bbappend file the following line.<br>
      DEPENDS += "libtirpc"<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/29/2018 04:29 PM, Indu-Sol GmbH, Klaus Nöske wrote:<br>
    </div>
    <blockquote
cite="mid:A2C130CD097EC048BAC89FFB315E00FC939C61EE@INDU-EXC.indu-sol.intra"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-GB">Hello,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">I try to migrate my
            project from fido to thud. Currently I have problems to
            build busybox. It fails with error: rpc/rpc.h - No such
            file. This was already mentioned here:
            <a moz-do-not-send="true"
href="https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.html">https://lists.yoctoproject.org/pipermail/yocto/2018-May/041163.html</a>.
            But I was not able to find the solution there.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">My build host is Ubuntu
            16.04 (x86_64) and my target is an ARM board/device.
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">The “thud” commit I use
            is: 94b13882510561b4ab7c08fd0343038c154680a4 (sanity: Add
            check for WSL)<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">What can I do to solve
            this problem?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">Thanks<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">BR<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">Klaus<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------66FAB7EA7A2BEB335619880E--
