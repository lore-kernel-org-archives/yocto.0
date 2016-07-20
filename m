Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F45BE0045E; Wed, 20 Jul 2016 06:10:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8304E0043B
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 06:10:52 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id q128so55788996wma.1
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 06:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=WeVsbTFSs7dv/bvAGTHOC4o9iCP7YnPFsaJJJDv++zs=;
	b=WGKvsM7TLow2l+I9tZsUOttMC6XiiGVeA7yphlEWZX32BTv47LnU/uaVlo6BXkHHjA
	4LoLzb2sPb5/Vsnc54lV4mXuVWN1JL5qhezLLQuc6WXFcrurzoXW74zWGvug7b53CzNR
	6x1JGP7GNgb93Pr5TDuh0C3PWOijNZd44vLbKQ9quRQ5YbCW/pqPvo23bpd3j0yzDzUt
	uUhE/1vuozNgytIDJCk0fKr5xZY7/HE7oENjoXG8MD6YIFkXEtqCJAqFx5gsNK7sZFuu
	Sgs7T4ZUq83VJXV4ZsuYIrqYokqoNYXQm/E3PksJxYhCE1s7iGlSJR3/UqV9BytXQ1mY
	Ok0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=WeVsbTFSs7dv/bvAGTHOC4o9iCP7YnPFsaJJJDv++zs=;
	b=hRcJmuaVVF+pfv7aqfFnXNyLlsrbVdmfZkbZN3ElSqchjDDSA5HMqB3F3ptUTswrfY
	qhEnI+VQwlSC/xFJIBahCNjZLk3HU12DAinpvcrZt4cAaa1AcM79E7CZGOuIrcIeGvZQ
	BkC7S49aepl8uf0mLjoKtKCkVTHtOn9lyaF0925EKLmNXk7Cgh9yo7EZnCOOLoV1rAxa
	Y1807LcWOvte1Exj/E3Nf/SGMr9q/hv4NmW6cTXIp78yyqUZ+wME/1qLx+PS8OKGFpk2
	86kiCpY95l7wlnEP2VIM0Jza8nb8ykspwHXOAaLvQvdnVHFCKKsGgTcM9/GxaZ0RXB4E
	VCmA==
X-Gm-Message-State: ALyK8tLV+c3GvtRt6NwpYwpi3RrrrKFg5ftebM3oCgjrESi139B06OGMtq2mYkiZWuT7ZQ==
X-Received: by 10.194.187.236 with SMTP id fv12mr1251951wjc.93.1469020251135; 
	Wed, 20 Jul 2016 06:10:51 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id f3sm1231754wjt.30.2016.07.20.06.10.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Jul 2016 06:10:50 -0700 (PDT)
To: =?UTF-8?Q?J=c3=b6rg_Wittenberger?= <Joerg.Wittenberger@janztec.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <7a4105a4-edec-1646-c18b-34e1192e1ec3@elfin.de>
Date: Wed, 20 Jul 2016 15:10:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local>
Subject: Re: customizing system configuration files in my image
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
X-List-Received-Date: Wed, 20 Jul 2016 13:10:56 -0000
Content-Type: multipart/alternative;
	boundary="------------1006C70FFB1446B9D95918EC"

--------------1006C70FFB1446B9D95918EC
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

It's always helpful to first check here: 
http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html

and here: 
https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html

But find an answer attached..


On 20.07.2016 13:41, Jörg Wittenberger wrote:
>
> Hi all,
>
> yet another newbie here stumbling around…
>
> I’m not trying to find „any way“ to do what I need.  I’m trying to 
> learn how these thing sould be done in yocto.  Looks to mea s if I’m 
> missing something basic.
>
> Zhenhua Lu wrote:
>
> > Usually I do it by adding bbappend of corresponding packages to 
> override original files, the interfaces is provided by init-ifupdown, 
> the inittab is provided by sysvinit-inittab.
>
> >
>
> > An example: 
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/init-ifupdown
>
> I failed trying to follow this example.
>
> I  have this samba_4.%.bbappend :
>
> ----
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/iris:"
>
You should add a line
SRC_URI += "file://smb.conf"
that will copy a file from your "${THISDIR}/iris:" to ${WORKDIR}
and then..

> do_install_append() {
>
>     install -m644 iris/smb.conf ${D}${sysconfdir}/samba/smb.conf
>
> }
>
..install this with "install -m 0644 ${WORKDIR}/smb.conf 
${D}${sysconfdir}/samba/smb.conf"

Also make sure that you have a directory ${D}${sysconfdir}/samba by 
adding the line:
install -d ${D}${sysconfdir}/samba
>
> And in the same directory a subdirectory „iris“ which contrains the 
> „smb.conf“ I want to install.
>
> Does not work.  Using `bitbake -c devshell samba` I found no copy of 
> my „iris“ directory.
>
> Thanks so much.
>
> /Jörg
>

BR,
Piotr
>
>
>


--------------1006C70FFB1446B9D95918EC
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>It's always helpful to first check here:
      <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html">http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html</a></p>
    <p>and here:
<a class="moz-txt-link-freetext" href="https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html">https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html</a></p>
    <p>But find an answer attached..<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 20.07.2016 13:41, Jörg Wittenberger
      wrote:<br>
    </div>
    <blockquote
      cite="mid:3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local"
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
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
        <p class="MsoNormal">Hi all,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">yet another newbie here stumbling around…<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I’m not trying to find „any way“ to do what
          I need.  I’m trying to learn how these thing sould be done in
          yocto.  Looks to mea s if I’m missing something basic.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Zhenhua Lu wrote:<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">&gt; Usually I do it by adding bbappend of
          corresponding packages to override original files, the
          interfaces is provided by init-ifupdown, the inittab is
          provided by sysvinit-inittab.<o:p></o:p></p>
        <p class="MsoNormal">&gt; <o:p></o:p></p>
        <p class="MsoNormal">&gt; An example: <a moz-do-not-send="true"
href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/init-ifupdown">
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/recipes-core/init-ifupdown</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I failed trying to follow this example. <o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">I  have this samba_4.%.bbappend :<o:p></o:p></p>
        <p class="MsoNormal">----<o:p></o:p></p>
        <p class="MsoNormal">FILESEXTRAPATHS_prepend :=
          "${THISDIR}/iris:"</p>
      </div>
    </blockquote>
    You should add a line<br>
    SRC_URI += <a class="moz-txt-link-rfc2396E" href="file://smb.conf">"file://smb.conf"</a><br>
    that will copy a file from your "${THISDIR}/iris:" to ${WORKDIR}<br>
    and then..<br>
    <br>
    <blockquote
      cite="mid:3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">do_install_append() {<o:p></o:p></p>
        <p class="MsoNormal">    install -m644 iris/smb.conf
          ${D}${sysconfdir}/samba/smb.conf<o:p></o:p></p>
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          windowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
          <p class="MsoNormal" style="border:none;padding:0cm">}</p>
        </div>
      </div>
    </blockquote>
    ..install this with "install -m 0644 ${WORKDIR}/smb.conf
    ${D}${sysconfdir}/samba/smb.conf"<br>
    <br>
    Also make sure that you have a directory ${D}${sysconfdir}/samba by
    adding the line:<br>
    install -d ${D}${sysconfdir}/samba
    <blockquote
      cite="mid:3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local"
      type="cite">
      <div class="WordSection1">
        <div
          style="mso-element:para-border-div;border:none;border-bottom:solid
          windowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
          <p class="MsoNormal" style="border:none;padding:0cm"><o:p></o:p></p>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">And in the same directory a subdirectory
          „iris“ which contrains the „smb.conf“ I want to install.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Does not work.  Using `bitbake -c devshell
          samba` I found no copy of my „iris“ directory.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks so much.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">/Jörg<o:p></o:p></p>
      </div>
    </blockquote>
    <br>
    BR,<br>
    Piotr<br>
    <blockquote
      cite="mid:3713fdcdd74c4147b650120d1dbb88b2@itjeexch02.is.janz.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------1006C70FFB1446B9D95918EC--
