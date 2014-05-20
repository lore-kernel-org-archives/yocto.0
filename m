Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF12E0070F; Tue, 20 May 2014 00:08:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.windriver.com (unknown [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDCBE00342
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 00:08:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s4K787oU010481
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 May 2014 00:08:07 -0700 (PDT)
Received: from [128.224.162.187] (128.224.162.187) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.169.1;
	Tue, 20 May 2014 00:08:06 -0700
Message-ID: <537AFF76.5050106@windriver.com>
Date: Tue, 20 May 2014 15:08:38 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net>
X-Originating-IP: [128.224.162.187]
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: Can't boot poky-tiny in qemu
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
X-List-Received-Date: Tue, 20 May 2014 07:08:15 -0000
Content-Type: multipart/alternative;
	boundary="------------030800020402080107000808"

--------------030800020402080107000808
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 05/20/2014 07:47 AM, Matt Schuckmann wrote:
>
> I'm trying to come to grips with Yocto and poky and a minimal image so 
> I'm trying to build boot and modify poky-tiny and having no luck 
> booting it in qemu.
>
> I'm following instructions here 
> https://wiki.yoctoproject.org/wiki/Poky-Tiny#Some_information_about_the_running_system 
> but when I run the qemu command nothing happens. I'm a total noob with 
> qemu so I don't even know how to approach figuring out what is wrong.
>
> Any help would be appreciated.
>
> Thanks,
>
> Matt S.
>
>
>

I guess the problem is kernel related. Maybe the kernel configuration 
for linux-yocto-tiny lacks something.

Please open a bug in bugzilla, if convenient.
https://bugzilla.yoctoproject.org

Best Regards,
Chen Qi

--------------030800020402080107000808
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/20/2014 07:47 AM, Matt Schuckmann
      wrote:<br>
    </div>
    <blockquote
cite="mid:4B07ADD556F70043925DA2E9C5D4346D2FD6CF755F@MSXBEBVT12.planar.net"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style>
<!--
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
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1">
        <p class="MsoNormal">I&#8217;m trying to come to grips with Yocto and
          poky and a
          minimal image so I&#8217;m trying to build boot and modify poky-tiny
          and having
          no luck booting it in qemu. <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I&#8217;m following instructions here <a
            moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/Poky-Tiny#Some_information_about_the_running_system">https://wiki.yoctoproject.org/wiki/Poky-Tiny#Some_information_about_the_running_system</a>
          but when I run the qemu command nothing happens. I&#8217;m a total
          noob with
          qemu so I don&#8217;t even know how to approach figuring out what is
          wrong. <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Any help would be appreciated. <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Thanks, <o:p></o:p></p>
        <p class="MsoNormal">Matt S. <o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
    I guess the problem is kernel related. Maybe the kernel
    configuration for linux-yocto-tiny lacks something.<br>
    <br>
    Please open a bug in bugzilla, if convenient.<br>
    <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org">https://bugzilla.yoctoproject.org</a><br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
  </body>
</html>

--------------030800020402080107000808--
