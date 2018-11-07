Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 262A9E00C1B; Wed,  7 Nov 2018 01:28:08 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18CEEE00C10
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 01:28:07 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id wA79RTTa024521
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Nov 2018 01:27:40 -0800
Received: from [128.224.162.218] (128.224.162.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 7 Nov 2018 01:27:18 -0800
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
References: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
From: ChenQi <Qi.Chen@windriver.com>
Message-ID: <4bdb31ad-0680-364f-e03a-adb208843b0c@windriver.com>
Date: Wed, 7 Nov 2018 17:33:50 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
X-Originating-IP: [128.224.162.218]
Subject: Re: lib32-ncurses not installing in rootfs
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
X-List-Received-Date: Wed, 07 Nov 2018 09:28:08 -0000
Content-Type: multipart/alternative;
	boundary="------------2BC9DA278C27686C3CD8789F"

--------------2BC9DA278C27686C3CD8789F
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Check the packages-split/ directory to see how files are put in each 
package.
I guess these files are packages into other packages derived from the 
ncurses recipe.

Best Regards,
Chen Qi

On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:
>
> Hi Guys,
>
> I am trying to add 32-bit ncurses into my root file system
>
> I am using intel yocto bsp sumo branch
>
> Here is my local.conf:
>
> require conf/multilib.conf
>
> DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>
> IMAGE_INSTALL_append = " dpkg gnutls lib32-glibc lib32-libgcc 
> lib32-libstdc++ lib32-gnutls lib32-freetype lib32    -libx11 
> lib32-ncurses lib32-dpkg python3-six"
>
> ncurses folder is present in tmp
>
> build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0
>
> The image folder is created and has the libraries
>
> build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0/image/lib
>
> libncurses.so.5  libncurses.so.5.9 libncursesw.so.5  
> libncursesw.so.5.9  libtinfo.so.5 libtinfo.so.5.9
>
> But these files are not present in root file system.
>
> How can i debug or what should be my next step to get them into root 
> file system. which log files should I look
>
> Thanks for your time.
>
> Regards,
>
> Jamal,
>
> Software Specialist,
>
> NCR Corporation
>
>
>


--------------2BC9DA278C27686C3CD8789F
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Check the packages-split/ directory to
      see how files are put in each package.<br>
      I guess these files are packages into other packages derived from
      the ncurses recipe.<br>
      <br>
      Best Regards,<br>
      Chen Qi<br>
      <br>
      On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:<br>
    </div>
    <blockquote
cite="mid:DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com"
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
        <p class="MsoNormal">Hi Guys,<o:p></o:p></p>
        <p class="MsoNormal">I am trying to add 32-bit ncurses into my
          root file system<o:p></o:p></p>
        <p class="MsoNormal">I am using intel yocto bsp sumo branch<o:p></o:p></p>
        <p class="MsoNormal">Here is my local.conf:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">require conf/multilib.conf<o:p></o:p></p>
        <p class="MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =
          "x86"<o:p></o:p></p>
        <p class="MsoNormal">IMAGE_INSTALL_append = " dpkg gnutls
          lib32-glibc lib32-libgcc lib32-libstdc++ lib32-gnutls
          lib32-freetype lib32    -libx11 lib32-ncurses lib32-dpkg
          python3-six"<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">ncurses folder is present in tmp<o:p></o:p></p>
        <p class="MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The image folder is created and has the
          libraries<o:p></o:p></p>
        <p class="MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0/image/lib<o:p></o:p></p>
        <p class="MsoNormal">libncurses.so.5  libncurses.so.5.9 
          libncursesw.so.5  libncursesw.so.5.9  libtinfo.so.5 
          libtinfo.so.5.9<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">But these files are not present in root
          file system.<o:p></o:p></p>
        <p class="MsoNormal" style="font-variant-ligatures:
          normal;font-variant-caps: normal;font-variant-numeric:
          inherit;font-variant-east-asian: inherit;font-stretch:
          inherit;line-height:inherit;box-sizing: inherit;orphans:
          2;widows: 2;-webkit-text-stroke-width:
          0px;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          How can i debug or what should be my next step to get them
          into root file system. which log files should I look<o:p></o:p></p>
        <p class="MsoNormal" style="font-variant-ligatures:
          normal;font-variant-caps: normal;font-variant-numeric:
          inherit;font-variant-east-asian: inherit;font-stretch:
          inherit;line-height:inherit;box-sizing: inherit;orphans:
          2;widows: 2;-webkit-text-stroke-width:
          0px;text-decoration-style: initial;text-decoration-color:
          initial;word-spacing:0px">
          Thanks for your time.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Regards,<o:p></o:p></p>
        <p class="MsoNormal">Jamal,<o:p></o:p></p>
        <p class="MsoNormal">Software Specialist,<o:p></o:p></p>
        <p class="MsoNormal">NCR Corporation<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------2BC9DA278C27686C3CD8789F--
