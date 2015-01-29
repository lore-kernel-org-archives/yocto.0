Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86AE1E00827; Wed, 28 Jan 2015 19:21:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1571E00753
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 19:21:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t0T3LS5E021481
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Jan 2015 19:21:28 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Wed, 28 Jan 2015 19:21:28 -0800
Message-ID: <54C9A737.2020301@windriver.com>
Date: Thu, 29 Jan 2015 11:21:27 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7416E7@UT40SVCWEM001.atk.com>
	<54C99B51.2050600@windriver.com>
	<7B6FE55CD594D7478CED8A39DF3BFC0A5E741769@UT40SVCWEM001.atk.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E741769@UT40SVCWEM001.atk.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Shell not processing color escape codes
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
X-List-Received-Date: Thu, 29 Jan 2015 03:21:40 -0000
Content-Type: multipart/alternative;
	boundary="------------030901090907000909040407"

--------------030901090907000909040407
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

That's a little strange. The `less' command you are using should be from 
the less package.
It has higher priority than that from busybox.

ALTERNATIVE_${PN} = "less"
ALTERNATIVE_PRIORITY = "100"

The priority from busybox is "50".

Regards,
Chen Qi

On 01/29/2015 11:01 AM, Moore, Thomas (FtWorth) wrote:
>
> I added less to my IMAGE_INSTALL, but it looks like I still have the 
> busybox version in my image. How might I go about forcing the use of 
> the standard less?
>
> *Thomas *
>
> *From:*ChenQi [mailto:Qi.Chen@windriver.com]
> *Sent:* Wednesday, January 28, 2015 8:31 PM
> *To:* Moore, Thomas (FtWorth); yocto@yoctoproject.org
> *Subject:* Re: [yocto] Shell not processing color escape codes
>
> On 01/29/2015 05:56 AM, Moore, Thomas (FtWorth) wrote:
>
>     Hello,
>
>     In my image, I’ve included systemd. I’ve noticed that when running
>     the systemctl command, the shell (/bin/sh) is not processing the
>     color escape codes. Here’s an example of what it looks like:
>
>     [[1;39m82 loaded units listed.[[0m Pass –all to see loaded but
>     inactive units, too.
>
>     Any suggestions on how I can either get the shell to process the
>     escape codes or prevent systemctl from generating them?
>
>     Thanks,
>
>     *Thomas*
>
>
>
>
> 1. Install 'less'
> 2. append '--no-pager' to commands
>
> There's related a bug on bugzilla.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5723
>
> Regards,
> Chen Qi
>


--------------030901090907000909040407
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">That's a little strange. The `less'
      command you are using should be from the less package.<br>
      It has higher priority than that from busybox.<br>
      <br>
      ALTERNATIVE_${PN} = "less"<br>
      ALTERNATIVE_PRIORITY = "100"<br>
      <br>
      The priority from busybox is "50".<br>
      <br>
      Regards,<br>
      Chen Qi<br>
      <br>
      On 01/29/2015 11:01 AM, Moore, Thomas (FtWorth) wrote:<br>
    </div>
    <blockquote
cite="mid:7B6FE55CD594D7478CED8A39DF3BFC0A5E741769@UT40SVCWEM001.atk.com"
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal"><span style="color:#1F497D">I added less to
            my IMAGE_INSTALL, but it looks like I still have the busybox
            version in my image. How might I go about forcing the use of
            the standard less?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <p class="MsoNormal"><b><span style="color:#1F497D">Thomas </span></b><span
              style="color:#1F497D"><o:p></o:p></span></p>
        </div>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">
                ChenQi [<a class="moz-txt-link-freetext" href="mailto:Qi.Chen@windriver.com">mailto:Qi.Chen@windriver.com</a>]
                <br>
                <b>Sent:</b> Wednesday, January 28, 2015 8:31 PM<br>
                <b>To:</b> Moore, Thomas (FtWorth);
                <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Subject:</b> Re: [yocto] Shell not processing color
                escape codes<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">On 01/29/2015 05:56 AM, Moore, Thomas
            (FtWorth) wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal">Hello,<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal">In my image, I’ve included systemd. I’ve
            noticed that when running the systemctl command, the shell
            (/bin/sh) is not processing the color escape codes. Here’s
            an example of what it looks like:<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal">[[1;39m82 loaded units listed.[[0m Pass
            –all to see loaded but inactive units, too.<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal">Any suggestions on how I can either get
            the shell to process the escape codes or prevent systemctl
            from generating them?<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal">Thanks,<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal"><b>Thomas</b><o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal"><span
              style="font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,&quot;serif&quot;"><br>
              <br>
              <o:p></o:p></span></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;"><br>
            1. Install 'less'<br>
            2. append '--no-pager' to commands<br>
            <br>
            There's related a bug on bugzilla.<br>
            <a moz-do-not-send="true"
              href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=5723">https://bugzilla.yoctoproject.org/show_bug.cgi?id=5723</a><br>
            <br>
            Regards,<br>
            Chen Qi<o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030901090907000909040407--
