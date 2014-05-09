Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC9A5E00B70; Fri,  9 May 2014 07:44:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE5AE009BA
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 07:44:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s49Ei8xQ029771
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 9 May 2014 07:44:08 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 9 May 2014 07:44:08 -0700
Message-ID: <536CE9B4.6050303@windriver.com>
Date: Fri, 9 May 2014 10:44:04 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Paul McGougan <PMcGougan@topcon.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
In-Reply-To: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
Subject: Re: Question / issue
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
X-List-Received-Date: Fri, 09 May 2014 14:44:15 -0000
Content-Type: multipart/alternative;
	boundary="------------000204000306080708070908"

--------------000204000306080708070908
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 8bit

On 14-05-09 01:14 AM, Paul McGougan wrote:
>
> Hi all.
>
> We are currently using Poky 1.5.0.
>
> We have created our own custom layer for our powerpc-based board.
>
> We are running u-boot as our bootloader and want to use the new FIT 
> (FDT) style kernel/dtb image blob.
>
> To that end, in our custom layer we have a file 
> poky/meta-OURS/recipes-kernel/linux/linux-yocto_3.10.bbappend, and in 
> that file I have a function do_install_append() in which I call 
> u-boot's mkimage passing it the kernel and DTB files that we want 
> stored in the FIT image that we will use to boot from u-boot.
>
> My first question is, is there a better place to be making the FIT image?
>

It depends on if everything you need to construct the FIT image is
in the kernel's build directory, or also available in the sysroot/deploy
directories.

If you need kernel build artifacts, doing it in the bbappend (or a .inc,
.bbclass, etc) of the kernel recipe is the right place.

> As a side-question to that, I was surprised that there isn't native 
> support already for creating this type of u-boot image considering how 
> useful it is, does anyone know if there is a specific reason no one 
> has done this yet?
>

None that I know of (but I haven't checked all the SDK, vendor
and distro layers in the ecosystem).

Either a image_types bbclass or something like the existing linux-dtb.inc
could fill the roll. It just depends on what is needed to build the uImage.

> Secondly, (and this is our main issue) I have found that by adding the 
> do_install_append function, even if it is completely empty, whenever I 
> try to bitbake anything that depends on the kernel, that bitbake 
> always re-runs the kernel install stage, even when there have been no 
> changes. Literally I can run a bitbake, then run the same bitbake 
> command again, and both times the kernel install stage gets run (this 
> is a problem because it takes a long time to run). It appears to be 
> happening because the stampfile is not found every time (the hash 
> appears to be wrong). Is this a bug? Is there a fix or work-around for 
> this problem?
>

In this front, I'm not the best reference. Checking the sstate signature
might help, it should show which variables are being used .. and possibly
invalidating the signature, triggering the steps to run again.

Bruce

> Thanks.
>
> Paul.
>
>
> Confidentiality Notice: This message (including attachments) is a 
> private communication solely for use of the intended recipient(s). If 
> you are not the intended recipient(s) or believe you received this 
> message in error, notify the sender immediately and then delete this 
> message. Any other use, retention, dissemination or copying is 
> prohibited and may be a violation of law, including the Electronic 
> Communication Privacy Act of 1986."   нн
>
>


--------------000204000306080708070908
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 14-05-09 01:14 AM, Paul McGougan
      wrote:<br>
    </div>
    <blockquote
cite="mid:C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
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
	font-family:"Calibri","sans-serif";
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
        <p class="MsoNormal">Hi all.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">We are currently using Poky 1.5.0.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">We have created our own custom layer for
          our powerpc-based board.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">We are running u-boot as our bootloader and
          want to use the new FIT (FDT) style kernel/dtb image blob.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">To that end, in our custom layer we have a
          file
          poky/meta-OURS/recipes-kernel/linux/linux-yocto_3.10.bbappend,
          and in that file I have a function do_install_append() in
          which I call u-boot&#8217;s mkimage passing it the kernel and DTB
          files that we want stored in the FIT image that we will use to
          boot from u-boot.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">My first question is, is there a better
          place to be making the FIT image?</p>
      </div>
    </blockquote>
    <br>
    It depends on if everything you need to construct the FIT image is<br>
    in the kernel's build directory, or also available in the
    sysroot/deploy<br>
    directories.<br>
    <br>
    If you need kernel build artifacts, doing it in the bbappend (or a
    .inc,<br>
    .bbclass, etc) of the kernel recipe is the right place.<br>
    <br>
    <blockquote
cite="mid:C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">As a side-question to that, I was surprised
          that there isn&#8217;t native support already for creating this type
          of u-boot image considering how useful it is, does anyone know
          if there is a specific reason no one has done this yet?<o:p></o:p></p>
      </div>
    </blockquote>
    <br>
    None that I know of (but I haven't checked all the SDK, vendor<br>
    and distro layers in the ecosystem). <br>
    <br>
    Either a image_types bbclass or something like the existing
    linux-dtb.inc<br>
    could fill the roll. It just depends on what is needed to build the
    uImage.<br>
    <br>
    <blockquote
cite="mid:C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Secondly, (and this is our main issue) I
          have found that by adding the do_install_append function, even
          if it is completely empty, whenever I try to bitbake anything
          that depends on the kernel, that bitbake always re-runs the
          kernel install stage, even when there have been no changes.
          Literally I can run a bitbake, then run the same bitbake
          command again, and both times the kernel install stage gets
          run (this is a problem because it takes a long time to run).
          It appears to be happening because the stampfile is not found
          every time (the hash appears to be wrong). Is this a bug? Is
          there a fix or work-around for this problem?</p>
      </div>
    </blockquote>
    <br>
    In this front, I'm not the best reference. Checking the sstate
    signature<br>
    might help, it should show which variables are being used .. and
    possibly<br>
    invalidating the signature, triggering the steps to run again.<br>
    <br>
    Bruce<br>
    <br>
    <blockquote
cite="mid:C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Thanks.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Paul.<o:p></o:p></p>
      </div>
      <br>
      Confidentiality Notice: This message (including attachments) is a
      private communication solely for use of the intended recipient(s).
      If you are not the intended recipient(s) or believe you received
      this message in error, notify the sender immediately and then
      delete this message. Any other use, retention, dissemination or
      copying is prohibited and may be a violation of law, including the
      Electronic Communication Privacy Act of 1986."
      &nbsp;&nbsp;&shy;&shy;&nbsp;&nbsp;
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------000204000306080708070908--
