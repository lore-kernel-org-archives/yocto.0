Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F068E00BD5; Fri, 19 Jul 2019 07:46:49 -0700 (PDT)
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
	*      [209.85.210.195 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF2A8E00AF2
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 07:46:47 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id y15so14292692pfn.5
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 07:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=nUFB5gIum9mKihERL6mTmgj79kzE0Z7fg4xwHO9rYsw=;
	b=LATAuYPaNIF22ZQGmCDUvgRuXAGO3jRgFsCDt8oy8Xdo1Bj4Hh8LjmqWsCXWSUUzNy
	Ocpi0MynoSUf4V9HBb2EVDZtOvDXa9kcWolHGLlpbgSbOLMCg3y4zEeZU3UGAy1cIQ3B
	saTLyNxXtnFON33yhmRO3QZbgem+QYor8Z/8EtB+asoCFuZgGCGkXXDeB1Ce0ambNe9O
	Ccyspxta6yRPOLmYpuBVbWGyF9x4g8SY68Ic44wGPjy24juksC/JGzaRgGGVIk6SmzzG
	/GhYpYe2hfovxK8bIKyQGkW5D8Hjo2mtjKWtzxeCsYqKreAN6sJoXMaumL2G9YADSpTn
	mL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=nUFB5gIum9mKihERL6mTmgj79kzE0Z7fg4xwHO9rYsw=;
	b=GjqMaC0kQFLCyMr1xNHDQD1yKU802whrutnaaYfAUvwhLc1x4oj5Hz+BTNWQsQbZDS
	Yovg1Vk3kZm1QLJn+E7ruTqlkS8BHkTuBGWl2maTK5WmbhVSx+SNq4LeBuflnobVTnKh
	GXOk4nmXOAW5ZscKjvGXXSyAmgfJ5K5wYLyLPXDSKzqa/7hrJ+7suZjrC57tQ1FM7o1Y
	EXesV0s95/1sVjQWtCet+SmKNIxoLBNbiEh0YExY5F+Wnijqairp2ccZDCTqJQNG3366
	geEATcLGed7BeTVgtpwJLt8GvUzCdyZdEAd56TceFlwwURRjMComoeU8tfxfAQMnO94n
	Af+Q==
X-Gm-Message-State: APjAAAULyxlIWN+9ZhtA0fuYJ4Q5qozLTnp9uFZub5SHq40/XHZN6677
	UXCk/Y0lJXz6Z07Oi2bvH0oPtJrCLpA=
X-Google-Smtp-Source: APXvYqwryHJC+mpy6jTps9tEe9aJO46Gl05jfJPHt6EAlew648LpmOTj65+VTGaQeoo3f+zLrBZVXQ==
X-Received: by 2002:a17:90a:bc42:: with SMTP id
	t2mr58084124pjv.121.1563547606805; 
	Fri, 19 Jul 2019 07:46:46 -0700 (PDT)
Received: from ?IPv6:2601:646:8500:6bc6::be55? ([2601:646:8500:6bc6::be55])
	by smtp.gmail.com with ESMTPSA id
	s22sm32907237pfh.107.2019.07.19.07.46.45
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Fri, 19 Jul 2019 07:46:46 -0700 (PDT)
To: =?UTF-8?Q?Mar=c3=ada_del_Mar_Velasco_AERTEC_Solutions_=e2=80=93_Aerospac?=
	=?UTF-8?Q?e_=26_Aviation?= <mvelasco@aertecsolutions.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS
Message-ID: <b523de05-b217-4faa-4e7c-bd8bcfcf26e5@gmail.com>
Date: Fri, 19 Jul 2019 07:46:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com>
Subject: Re: ERROR: Actual rootfs size is larger than allowed
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
X-List-Received-Date: Fri, 19 Jul 2019 14:46:49 -0000
Content-Type: multipart/alternative;
	boundary="------------8DE0DDBA903B0C010C13A8C1"
Content-Language: en-US

--------------8DE0DDBA903B0C010C13A8C1
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 7/19/19 4:27 AM, María del Mar Velasco AERTEC Solutions – Aerospace & 
Aviation wrote:
>
> Dear all,
>
> I am new at Yocto Project and I have a simple question. I have cloned 
> poky (rocko branch), sourced the environment and bitbaked the 
> core-minimal-image-dev without problems. I can write the image in a SD 
> Card and I am able to boot the system.
>
> However, when I add IMAGE_INSTALL_append to local.conf with some 
> packages recipes (IMAGE_INSTALL_append = “nodejs” for example), I get 
> the following error:
>
>   * ERROR: Function failed: do_image_wic
>   * ERROR: Actual rootfs size (284260 KB) is larger than allowed size
>     262144 KB.
>
> My question is: where could I find that 262144 KB default size value? 
> I would like to change it and make it bigger. I have tried to add 
>  IMAGE_ROOTFS_SIZE = “5000000” to local.conf file but it still fails.
>
you might want to check the kickstart ( .wks ) file and adjust the 
--fixed-size values for partition sizes


> I attach the log.do_image_wic file.
>
> Thanks you in advance,
>
> MM
>
>

--------------8DE0DDBA903B0C010C13A8C1
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 7/19/19 4:27 AM, María del Mar
      Velasco AERTEC Solutions – Aerospace &amp; Aviation wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1808545788;
	mso-list-type:hybrid;
	mso-list-template-ids:1811301814 1694126100 134807555 134807557 134807553 134807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Arial;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Dear all,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I am new at Yocto Project and I have a
          simple question. I have cloned poky (rocko branch), sourced
          the environment and bitbaked the core-minimal-image-dev
          without problems. I can write the image in a SD Card and I am
          able to boot the system.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">However, when I add IMAGE_INSTALL_append to
          local.conf with some packages recipes (IMAGE_INSTALL_append =
          “nodejs” for example), I get the following error:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <ul style="margin-top:0cm" type="disc">
          <li class="MsoListParagraph"
            style="margin-left:-15.6pt;mso-list:l0 level1 lfo1">
            ERROR: Function failed: do_image_wic<o:p></o:p></li>
          <li class="MsoListParagraph"
            style="margin-left:-15.6pt;mso-list:l0 level1 lfo1">
            ERROR: Actual rootfs size (284260 KB) is larger than allowed
            size 262144 KB.<o:p></o:p></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">My question is: where could I find that
          262144 KB default size value? I would like to change it and
          make it bigger. I have tried to add  IMAGE_ROOTFS_SIZE =
          “5000000” to local.conf file but it still fails.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
    </blockquote>
    <p>you might want to check the kickstart ( .wks ) file and adjust
      the --fixed-size values for partition sizes <br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com">
      <div class="WordSection1">
        <p class="MsoNormal">I attach the log.do_image_wic file.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks you in advance,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">MM<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------8DE0DDBA903B0C010C13A8C1--
