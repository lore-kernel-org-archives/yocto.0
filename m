Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49A57E00AE0; Sun, 16 Sep 2018 20:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E03E00A73
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 20:45:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w8H3isaq021285
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 16 Sep 2018 20:45:04 -0700
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Sun, 16 Sep 2018 20:44:43 -0700
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <e9c94cb5-bbaa-16ec-b16b-c8fedad90aca@windriver.com>
Date: Mon, 17 Sep 2018 11:49:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: Building, Using SDK
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
X-List-Received-Date: Mon, 17 Sep 2018 03:45:36 -0000
Content-Type: multipart/alternative;
	boundary="------------27E47C5D7E8138D636643CBA"

--------------27E47C5D7E8138D636643CBA
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 09/13/2018 10:18 PM, Dudziak Krzysztof wrote:
>
> Hi,
>
> Alex González elaborates in his book Embedded Linux Development Using 
> Yocto Projets (2nd Edition)
>
> SDK-related questions – basics, building, usage (chapter 4).
>
> 1.
>
> Downloading then installing precompiled SDK was one of all available 
> options according to Alex.
>
> He elaborates how to find it on server in Internet, how to select 
> needed one and install it.
>
> I wonder how to integrate downloaded and installed precompiled SDK
>
> to Poky release used on build system?
>

I'd suggest you not using precompiled SDK unless you are justing doing 
some simple cross compilation that requires no additional libs, header 
files, etc.

> 2.
>
> Preparing / building SDK by oneself was further option with image 
> target’s ‘populate_sdk’ Bitbake task
>
> as the recommended way (according to Alex in chapter’s certain section).
>
> One would need only to start populate_sdk task for image which matches 
> root file system of system in development.
>
> As soon as task completed SDK can be installed using generated script.
>
> But how does it work for first build where rootfs was not built in the 
> past.
>
> Is in that case following procedure the proper one?
>
> step 1: bitbake <image-name> -c populate_sdk
>
> step 2: bitbake <image-name>
>

The populate_sdk task directly installs rpm packages (nativesdk ones and 
target ones) to form an SDK.
It does not need rootfs to be generated first.

Normally you use an SDK for a specific target.
So the `bitbake IMAGE' is used to generate the image, and `bitbake IMAGE 
-c populate_sdk' is used to generate the SDK for the image.

Best Regards,
Chen Qi

> krzysiek
>
> ------------------------------------------------------------------------
> This message and any attachments are intended solely for the 
> addressees and may contain confidential information. Any unauthorized 
> use or disclosure, either whole or partial, is prohibited.
> E-mails are susceptible to alteration. Our company shall not be liable 
> for the message if altered, changed or falsified. If you are not the 
> intended recipient of this message, please delete it and notify the 
> sender.
> Although all reasonable efforts have been made to keep this 
> transmission free from viruses, the sender will not be liable for 
> damages caused by a transmitted virus.
>
>


--------------27E47C5D7E8138D636643CBA
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/13/2018 10:18 PM, Dudziak
      Krzysztof wrote:<br>
    </div>
    <blockquote
cite="mid:VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com"
      type="cite">
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
        <p class="MsoNormal"><span lang="DE">Hi,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="DE"><o:p> </o:p></span></p>
        <p class="MsoNormal">Alex González elaborates in his book
          Embedded Linux Development Using Yocto Projets (2nd Edition)<o:p></o:p></p>
        <p class="MsoNormal">SDK-related questions – basics, building,
          usage (chapter 4).<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">1.<o:p></o:p></p>
        <p class="MsoNormal">Downloading then installing precompiled SDK
          was one of all available options according to Alex.<o:p></o:p></p>
        <p class="MsoNormal">He elaborates how to find it on server in
          Internet, how to select needed one and install it.<o:p></o:p></p>
        <p class="MsoNormal">I wonder how to integrate downloaded and
          installed precompiled SDK<o:p></o:p></p>
        <p class="MsoNormal">to Poky release used on build system?<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    <br>
    I'd suggest you not using precompiled SDK unless you are justing
    doing some simple cross compilation that requires no additional
    libs, header files, etc.<br>
    <br>
    <blockquote
cite="mid:VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal">2.<o:p></o:p></p>
        <p class="MsoNormal">Preparing / building SDK by oneself was
          further option with image target’s ‘populate_sdk’ Bitbake task<o:p></o:p></p>
        <p class="MsoNormal">as the recommended way (according to Alex
          in chapter’s certain section).<o:p></o:p></p>
        <p class="MsoNormal">One would need only to start populate_sdk
          task for image which matches root file system of system in
          development.<o:p></o:p></p>
        <p class="MsoNormal">As soon as task completed SDK can be
          installed using generated script.<o:p></o:p></p>
        <p class="MsoNormal">But how does it work for first build where
          rootfs was not built in the past.<o:p></o:p></p>
        <p class="MsoNormal">Is in that case following procedure the
          proper one?<o:p></o:p></p>
        <p class="MsoNormal">step 1: bitbake &lt;image-name&gt; -c
          populate_sdk<o:p></o:p></p>
        <p class="MsoNormal">step 2: bitbake &lt;image-name&gt;<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    <br>
    The populate_sdk task directly installs rpm packages (nativesdk ones
    and target ones) to form an SDK.<br>
    It does not need rootfs to be generated first.<br>
    <br>
    Normally you use an SDK for a specific target.<br>
    So the `bitbake IMAGE' is used to generate the image, and `bitbake
    IMAGE -c populate_sdk' is used to generate the SDK for the image.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal">krzysiek<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <hr>
      <span style="font-style:italic;font-size:10.0pt;font-family:
&quot;Arial&quot;,&quot;sans-serif&quot;;color:maroon;mso-ansi-language:EN-US"
        lang="EN-US">This message and any attachments are intended
        solely for the addressees and may contain confidential
        information. Any unauthorized use or disclosure, either whole or
        partial, is prohibited.<br>
        E-mails are susceptible to alteration. Our company shall not be
        liable for the message if altered, changed or falsified. If you
        are not the intended recipient of this message, please delete it
        and notify the sender.<br>
        Although all reasonable efforts have been made to keep this
        transmission free from viruses, the sender will not be liable
        for damages caused by a transmitted virus.</span>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------27E47C5D7E8138D636643CBA--
