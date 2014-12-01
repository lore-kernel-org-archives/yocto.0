Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E7BE0091D; Mon,  1 Dec 2014 01:43:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36C50E0084A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 01:43:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sB19h7HB029425
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 1 Dec 2014 01:43:07 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 1 Dec 2014 01:43:06 -0800
Message-ID: <547C383E.6030600@windriver.com>
Date: Mon, 1 Dec 2014 17:43:26 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de>
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de>
X-Originating-IP: [128.224.162.226]
Subject: Re: add a user via recipe
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
X-List-Received-Date: Mon, 01 Dec 2014 09:43:18 -0000
Content-Type: multipart/alternative;
	boundary="------------070909030205040501090604"

--------------070909030205040501090604
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 12/01/2014 04:46 PM, Matthias.Heise@atlas-elektronik.com wrote:
>
> Hi there,
>
> I’m still trying to add a user via recipe. The method with
>
> inherit extrausers
>
> EXTRA_USER_PARAMS = "useradd -p 
> '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' 
> fstuser;"
>

EXTRA_USERS_PARAMS instead of EXTRA_USER_PARAMS

Also, clear password is supported. E.g.
EXTRA_USERS_PARAMS = "useradd -P 'hello' tester;"

> Does not work (no errors just no user in image), as well as this :
>
> ROOTFS_POSTPROCESS_COMMAND += "add_a_user;"
>
> add_a_user(){
>
>      useradd -p 
> '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1' 
> fstuser;
>
> }
>
> Which results in an error during bitbake :
>
> useradd: /etc/passwd.23966: Permission denied
>
> useradd cannot lock /etc/passwd; try again later
>

You need to pass '--root xxx' option to it.

//Chen Qi

> any ideas to that ?
>
> thanks,
>
> regards
>
> Mat
>
>
>


--------------070909030205040501090604
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 12/01/2014 04:46 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:Matthias.Heise@atlas-elektronik.com">Matthias.Heise@atlas-elektronik.com</a> wrote:<br>
    </div>
    <blockquote
      cite="mid:4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de"
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
	font-family:"Calibri","sans-serif";
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
        <p class="MsoNormal"><span lang="EN-US">Hi there,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I’m still trying to add
            a user via recipe. The method with <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal" style="text-autospace:none"><span
            style="font-family:&quot;Courier New&quot;" lang="EN-US">inherit
            extrausers<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">EXTRA_USER_PARAMS = "useradd -p
            '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1'
            fstuser;"<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
    EXTRA_USERS_PARAMS instead of EXTRA_USER_PARAMS<br>
    <br>
    Also, clear password is supported. E.g.<br>
    EXTRA_USERS_PARAMS = "useradd -P 'hello' tester;"<br>
    <br>
    <blockquote
      cite="mid:4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">Does not work (no errors
            just no user in image), as well as this :<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">ROOTFS_POSTPROCESS_COMMAND +=
            "add_a_user;"<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">add_a_user(){<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">     useradd -p
            '\$6\$53uYm/0Fnll\$Nc0RbHSvqRrd63Tw98TO3V1n25ORK9oR4QHqRIriXzLy0il/7.LIacX7mz7RJ1tdPIWiCJLNyQa7dKBNURqEg1'
            fstuser;<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">}<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Which results in an
            error during bitbake :<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">useradd: /etc/passwd.23966:
            Permission denied<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US">useradd cannot lock /etc/passwd; try
            again later<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Courier
            New&quot;" lang="EN-US"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
    You need to pass '--root xxx' option to it.<br>
    <br>
    //Chen Qi<br>
    <br>
    <blockquote
      cite="mid:4009F04F5925CD4C95FBD9BE756381FE02848F2A6B@MSSRVS5.atlas.de"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">any ideas to that ?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">regards<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Mat<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------070909030205040501090604--
