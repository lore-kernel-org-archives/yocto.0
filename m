Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62FEBE009A6; Thu,  8 May 2014 03:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=HTML_MESSAGE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEAE6E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:23:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id AF98C27E019;
	Thu,  8 May 2014 10:22:59 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id pNpKwLFF943b; Thu,  8 May 2014 10:22:57 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CDC0327E006;
	Thu,  8 May 2014 10:22:56 +0000 (UTC)
Message-ID: <536B5AFC.6090105@dynamicdevices.co.uk>
Date: Thu, 08 May 2014 11:22:52 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Meenakumari Shedole <meenakumari.s@hcl.com>
References: <E4938C0D959B3445943720B88F0721341562A2D7@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<536903ED.1040806@dynamicdevices.co.uk>
	<E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Third Party Components Integration in Yocto
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
X-List-Received-Date: Thu, 08 May 2014 10:23:05 -0000
Content-Type: multipart/alternative;
	boundary="------------030008040806090109010603"

--------------030008040806090109010603
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Meena,

On 08/05/2014 11:05, Meenakumari Shedole wrote:
>
> Thanks Alex,
>
>  
>
> Yes I installed  FILES_${PN} all package folders are creating
>
> Tried devshell  but there is no installed bb-example in
> image/usr/include/...empty include folder. Bb-example is not loading
> inside image/......
>
> Analysed  log_devshell , log_package, do_install, do_make.
>

OK so that's helpful. I have had similar problems myself with files that
don't get installed and thus aren't packaged. In my experience it is
usually to do with the path to the source file one is trying to install.

i.e. So for some reason the bb-example file isn't where it should be to
be copied across to the target folder in the image tree.

Where does bb-example come from? Can you share the whole recipe? Can you
see it where you think it should be in the devshell folder or the folder
above?

If you included bb-example as a file:// entry added to SRC_URI then it
will be copied across to the working directory ${WORKDIR}

You might want to try something like

  install -m 0755 ${WORKDIR}/bb-example ${D}${bindir}

Alternatively if bb-example is output from a build process then it will
be in the source directory ${S}

In which case try

  install -m 0755 ${S}/bb-example ${D}${bindir}
 
Hope this helps!

Alex

>  
>
> Even I compared with other recipes folder structures  it is going
> right direction but only the binaries are not loading.
>
>  
>
> I guess I missed something in do_install ? no proper path?
>
> After do_compile and make, at  do_install binaries are not able to load.
>
>  
>
>  
>
> Regards
>
> Meena
>
>  
>
> *From:*Alex J Lennon [mailto:ajlennon@dynamicdevices.co.uk]
> *Sent:* Tuesday, May 06, 2014 9:17 PM
> *To:* Meenakumari Shedole; yocto@yoctoproject.org; Beauchesne, Gwenole
> *Subject:* Re: [yocto] Third Party Components Integration in Yocto
>
>  
>
>  
>
> On 06/05/2014 15:57, Meenakumari Shedole wrote:
>
>     Hi,
>
>      
>
>     To add 3rd party components in yocto we created bb file and
>     modified local.conf file.
>
>     After a yocto build, 3rd party component executing the binaries
>     and rpm packages but executed binaries are not loading inside the
>     rpm packages, rpm package is empty.
>
>      
>
>     Used below function in bb file. 
>
>     *do_install* () {
>
>       install *-*d *$*{D}${bindir}
>
>       install *-*m 0755 bb*-*example *$*{D}${bindir}
>
>     }
>
>      
>
>
> Hi Meena,
>
> That seems a little odd as files in ${bindir} should be packaged into
> the default output package as I understand it
>
> ref: http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html
>
> If it were successfully installed but not packaged for any reason
> (e.g. in this case not a part of FILES_${PN}) then you should see a
> warning about an installed-vs-packaged file issue.
>
> If you enter a devshell with bitbake -c devshell recipe-foo then do
> you see the installed bb-example file in within ../image/ tree?
>
> Have you also tried looking (from the devshell) in
> ../temp/log.do_install, ../temp/log.do_xxx to see what is happening?
>
> Cheers,
>
> Alex
>
>
> can anyone please suggest me how to move further.
>
>  
>
> Regards
>
> Meena
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and
> intended for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as
> information could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any
> liability on the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of
> the author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior
> written consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error
> please delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for
> viruses and other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>


--------------030008040806090109010603
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Meena,<br>
    <br>
    <div class="moz-cite-prefix">On 08/05/2014 11:05, Meenakumari
      Shedole wrote:<br>
    </div>
    <blockquote
cite="mid:E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <!--[if !mso]>
<style id=owaParaStyle>
v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style>
<![endif]-->
      <style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.nf
	{mso-style-name:nf;}
span.p
	{mso-style-name:p;}
span.err
	{mso-style-name:err;}
span.nv
	{mso-style-name:nv;}
span.o
	{mso-style-name:o;}
span.kt
	{mso-style-name:kt;}
span.err0
	{mso-style-name:"er\000D\000Ar";}
span.mi
	{mso-style-name:mi;}
span.txt
	{mso-style-name:txt;}
p.txt1, li.txt1, div.txt1
	{mso-style-name:txt1;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks
            Alex,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Yes
            I installed &nbsp;FILES_${PN} all package folders are creating
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Tried
            devshell&nbsp; but there is no installed bb-example in
            image/usr/include/&#8230;empty include folder. Bb-example is not
            loading inside image/&#8230;&#8230;<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Analysed
            &nbsp;log_devshell , log_package, do_install, do_make.<o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
    OK so that's helpful. I have had similar problems myself with files
    that don't get installed and thus aren't packaged. In my experience
    it is usually to do with the path to the source file one is trying
    to install.<br>
    <br>
    i.e. So for some reason the bb-example file isn't where it should be
    to be copied across to the target folder in the image tree.<br>
    <br>
    Where does bb-example come from? Can you share the whole recipe? Can
    you see it where you think it should be in the devshell folder or
    the folder above?<br>
    <br>
    If you included bb-example as a <a class="moz-txt-link-freetext" href="file://">file://</a> entry added to SRC_URI then
    it will be copied across to the working directory ${WORKDIR}<br>
    <br>
    You might want to try something like<br>
    <br>
    &nbsp; install -m 0755 ${WORKDIR}/bb-example ${D}${bindir}<br>
    <br>
    Alternatively if bb-example is output from a build process then it
    will be in the source directory ${S}<br>
    <br>
    In which case try<br>
    <br>
    &nbsp; install -m 0755 ${S}/bb-example ${D}${bindir}<br>
    &nbsp;
    <br>
    Hope this helps!<br>
    <br>
    Alex<br>
    <br>
    <blockquote
cite="mid:E4938C0D959B3445943720B88F0721341562D593@NDA-HCLT-MBS02.hclt.corp.hcl.in"
      type="cite">
      <div class="Section1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Even
            I compared with other recipes folder structures &nbsp;it is going
            right direction but only the binaries are not loading.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I
            guess I missed something in do_install ? no proper path?
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">After
            do_compile and make, at &nbsp;do_install binaries are not able to
            load.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Regards<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Meena<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Alex J
                Lennon [<a class="moz-txt-link-freetext" href="mailto:ajlennon@dynamicdevices.co.uk">mailto:ajlennon@dynamicdevices.co.uk</a>]
                <br>
                <b>Sent:</b> Tuesday, May 06, 2014 9:17 PM<br>
                <b>To:</b> Meenakumari Shedole; <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>;
                Beauchesne, Gwenole<br>
                <b>Subject:</b> Re: [yocto] Third Party Components
                Integration in Yocto<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <div>
          <p class="MsoNormal">On 06/05/2014 15:57, Meenakumari Shedole
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Hi,
                <o:p></o:p></span></p>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">To
                  add 3rd party components in yocto we created bb file
                  and modified local.conf file.<o:p></o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">After
                  a yocto build, 3rd party component executing the
                  binaries and rpm packages but executed binaries are
                  not loading inside the rpm packages, rpm package is
                  empty.<o:p></o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Used
                  below function in bb file.&nbsp;<o:p></o:p></span></p>
            </div>
            <div>
              <div id="file-bb-example-bb-LC28">
                <pre style="line-height:16.2pt;background:ghostwhite"><span class="nf"><b><span style="font-size:9.0pt;font-family:Consolas;color:#990000">do_install</span></b></span><span style="font-size:9.0pt;font-family:Consolas"> <span class="p">()</span> </span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span style="font-size:9.0pt;font-family:
Consolas"><o:p></o:p></span></pre>
              </div>
              <div id="file-bb-example-bb-LC29">
                <pre style="line-height:16.2pt;background:ghostwhite"><span style="font-size:9.0pt;font-family:Consolas">&nbsp; </span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">install</span></span><span style="font-size:9.0pt;font-family:Consolas"> <span class="o"><b>-</b></span></span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">d</span></span><span style="font-size:9.0pt;font-family:Consolas"> </span><span class="kt"><b><span style="font-size:9.0pt;font-family:Consolas;color:#445588">$</span></b></span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span class="nv"><span style="font-size:9.0pt;
font-family:Consolas;color:teal">D</span></span><span class="err0"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;background:#E3D2D2">}${</span></span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">bindir</span></span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style="font-size:9.0pt;font-family:
Consolas"><o:p></o:p></span></pre>
              </div>
              <div id="file-bb-example-bb-LC30">
                <pre style="line-height:16.2pt;background:ghostwhite"><span style="font-size:9.0pt;font-family:Consolas">&nbsp; </span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">install</span></span><span style="font-size:9.0pt;font-family:Consolas"> <span class="o"><b>-</b></span></span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">m</span></span><span style="font-size:9.0pt;font-family:Consolas"> </span><span class="mi"><span style="font-size:9.0pt;font-family:Consolas;color:#009999">0755</span></span><span style="font-size:9.0pt;font-family:Consolas"> </span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">bb</span></span><span class="o"><b><span style="font-size:9.0pt;font-family:Consolas">-</span></b></span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas;color:teal">example</span></span><span style="font-size:9.0pt;font-family:Consolas"> </span><span class="kt">
<b><span style="font-size:9.0pt;font-family:Consolas;color:#445588">$</span></b></span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">{</span></span><span class="nv"><span style="font-size:9.0pt;
font-family:Consolas;color:teal">D</span></span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;background:#E3D2D2">}${</span></span><span class="nv"><span style="font-size:9.0pt;font-family:Consolas">bindir</span></span><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style="font-size:9.0pt;font-family:
Consolas"><o:p></o:p></span></pre>
              </div>
              <div id="file-bb-example-bb-LC31">
                <pre style="line-height:16.2pt;background:ghostwhite"><span class="err"><span style="font-size:9.0pt;font-family:Consolas;color:#A61717;
background:#E3D2D2">}</span></span><span style="font-size:9.0pt;font-family:
Consolas"><o:p></o:p></span></pre>
              </div>
              <div>
                <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
              </div>
            </div>
          </div>
        </blockquote>
        <p class="MsoNormal"><br>
          Hi Meena,<br>
          <br>
          That seems a little odd as files in ${bindir} should be
          packaged into the default output package as I understand it<br>
          <br>
          ref: <a moz-do-not-send="true"
            href="http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html">http://www.embeddedlinux.org.cn/OEManual/recipes_packages.html</a><br>
          <br>
          If it were successfully installed but not packaged for any
          reason (e.g. in this case not a part of FILES_${PN}) then you
          should see a warning about an installed-vs-packaged file
          issue.<br>
          <br>
          If you enter a devshell with bitbake -c devshell recipe-foo
          then do you see the installed bb-example file in within
          ../image/ tree?<br>
          <br>
          Have you also tried looking (from the devshell) in
          ../temp/log.do_install, ../temp/log.do_xxx to see what is
          happening?<br>
          <br>
          Cheers, <br>
          <br>
          Alex<br>
          <br>
          <br>
          <o:p></o:p></p>
        <div>
          <div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">can
                  anyone please suggest me how to move further.<o:p></o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
            </div>
            <div>
              <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Regards<o:p></o:p></span></p>
              <div>
                <p class="MsoNormal"><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">Meena<o:p></o:p></span></p>
              </div>
            </div>
          </div>
        </div>
        <p class="MsoNormal"><br>
          <br>
          <span
style="font-size:7.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">::DISCLAIMER::<br>
----------------------------------------------------------------------------------------------------------------------------------------------------</span><o:p></o:p></p>
        <p class="MsoNormal"><span
style="font-size:8.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">The
            contents of this e-mail and any attachment(s) are
            confidential and intended for the named recipient(s) only.<br>
            E-mail transmission is not guaranteed to be secure or
            error-free as information could be intercepted, corrupted,
            <br>
            lost, destroyed, arrive late or incomplete, or may contain
            viruses in transmission. The e mail and its contents
            <br>
            (with or without referred errors) shall therefore not attach
            any liability on the originator or HCL or its affiliates.
            <br>
            Views or opinions, if any, presented in this email are
            solely those of the author and may not necessarily reflect
            the
            <br>
            views or opinions of HCL or its affiliates. Any form of
            reproduction, dissemination, copying, disclosure,
            modification,
            <br>
            distribution and / or publication of this message without
            the prior written consent of authorized representative of
            <br>
            HCL is strictly prohibited. If you have received this email
            in error please delete it and notify the sender immediately.
            <br>
            Before opening any email and/or attachments, please check
            them for viruses and other defects.</span><o:p></o:p></p>
        <p class="MsoNormal"><span
style="font-size:8.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:gray">----------------------------------------------------------------------------------------------------------------------------------------------------</span><o:p></o:p></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------030008040806090109010603--
