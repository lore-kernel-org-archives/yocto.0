Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C8BE00CE7; Wed, 24 Aug 2016 07:15:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1CFEE009C9
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 07:15:41 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 24 Aug 2016 07:15:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,570,1464678000"; 
	d="scan'208,217";a="160338240"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.144])
	([10.219.5.144])
	by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2016 07:15:41 -0700
To: Tanasa Bogdan <bogdan.tanasa@saabgroup.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
References: <749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <fe777f3e-f15c-e6d2-30c2-13024442e7ca@linux.intel.com>
Date: Wed, 24 Aug 2016 09:18:51 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se>
Subject: Re: profiling tools on a T4240RDB board
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
X-List-Received-Date: Wed, 24 Aug 2016 14:15:43 -0000
Content-Type: multipart/alternative;
	boundary="------------60981544932368275603C6F4"

--------------60981544932368275603C6F4
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



El 08/24/2016 a las 04:01 AM, Tanasa Bogdan escribió:
>
> Hi,
>
> We are using the (freescale) linux yocto 1.6 on a T4240RDB board where 
> we want to have "tools-profile" set in our local.conf file. When 
> building the fsl-image-minimal we see that there are some packages 
> that are graphics-related (like gtk+, pixbuf, etc..). The card does 
> not have any graphics capabilities. Why does these packets install at 
> all? Is it possible to have the profiling tools without any gtk 
> dependencies? How the local.conf should look like?
>
I believe the image you are using include those graphic-related pkgs so 
that is why you are seeing them. You may redefine your image, at the end 
fsl-image-minimal is just an example that you can modify. Also you may 
have more answers  on a FSL (NXP?) channel/mailing-list

> PS: These dependencies are there even when we choose tools-sdk in 
> order to have gcc in the final image.
>
> Thanks,
>
> Bogdan.
>
>
>


--------------60981544932368275603C6F4
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">El 08/24/2016 a las 04:01 AM, Tanasa
      Bogdan escribió:<br>
    </div>
    <blockquote
      cite="mid:749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
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
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">We are using the (freescale) linux yocto
          1.6 on a T4240RDB board where we want to have "tools-profile"
          set in our local.conf file. When building the
          fsl-image-minimal we see that there are some packages that are
          graphics-related (like gtk+, pixbuf, etc..). The card does not
          have any graphics capabilities. Why does these packets install
          at all? Is it possible to have the profiling tools without any
          gtk dependencies? How the local.conf should look like?
          <o:p></o:p></p>
      </div>
    </blockquote>
    I believe the image you are using include those graphic-related pkgs
    so that is why you are seeing them. You may redefine your image, at
    the end fsl-image-minimal is just an example that you can modify.
    Also you may have more answers  on a FSL (NXP?) channel/mailing-list<br>
    <br>
    <blockquote
      cite="mid:749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">PS: These dependencies are there even when
          we choose tools-sdk in order to have gcc in the final image.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoNormal">Bogdan.<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------60981544932368275603C6F4--
