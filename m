Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DD9DE006EA
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2012 14:16:41 -0700 (PDT)
Received: by yenl5 with SMTP id l5so10288877yen.35
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2012 14:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=VbAaV+MswTFzwZzDDIybYAzHSPyuyw8uxGsDH1NXzMI=;
	b=xOKtAo5YWALTbKXq0/dz+N16YhcOrzSihq1jwV2hgeP9i3DTN1g03TcyD5ZYihua0I
	gXVaU2VjMvS40gKJwWFF0y+t+PbRNP92LQgGQf1LLrzosmiq3gOuaKuWryx4YlfAxI6r
	oktoEMj1WAmr+izxMECiM0Ypg2B9CxiqbMoEtw7nZ5m2gVqLpPFaIyONolKiUTzwXq+0
	Hw9xpC3r3T/d3X++tAcfGf3AvvfpAXFFAALJcra76CzNmvlcThJczT3Ylffo7cBAX4mH
	ZWn4+7weqG5gF29Q8ndVQSOvl20U+bwJRwJAKOV6TKV6TQ5xiXThW3imembTdG4Hqn/+
	kG3A==
Received: by 10.236.170.199 with SMTP id p47mr36140497yhl.12.1341609401429;
	Fri, 06 Jul 2012 14:16:41 -0700 (PDT)
Received: from [10.163.27.146] (mobile-166-147-127-171.mycingular.net.
	[166.147.127.171])
	by mx.google.com with ESMTPS id n15sm23599791anh.6.2012.07.06.14.16.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 06 Jul 2012 14:16:40 -0700 (PDT)
References: <4FF73569.4000105@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176C@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176C@ORSMSX101.amr.corp.intel.com>
Mime-Version: 1.0 (1.0)
Message-Id: <1A992358-63BB-4330-9324-AAD7F4C0533E@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: James Abernathy <jfabernathy@gmail.com>
Date: Fri, 6 Jul 2012 17:16:29 -0400
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documentation improvement
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 21:16:42 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-DF281F4C-5742-4938-B442-BE79AAE74B0C

--Apple-Mail-DF281F4C-5742-4938-B442-BE79AAE74B0C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Cool!
On Jul 6, 2012, at 5:06 PM, "Rifenbark, Scott M" <scott.m.rifenbark@intel.=
com> wrote:

> Jim,
>  
> I am looking at that section in the BSP Guide and it is actually out of =
date regarding the 1.2.10 section.  In the section it lists the linux-yocto=
_3.0.bbappend file (which is probably lagging as it should be 3.2).  Anyway=
, the listing uses KERNEL_FEATURES and I believe that KBRANCH is now used. =
 I am going to work on this section and get it up to speed and then address=
 the issue you originally brought up, which is getting the best description=
 for config fragments inside the dev manual.
>  
> ScottR
>  
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.=
org] On Behalf Of jfabernathy
> Sent: Friday, July 06, 2012 11:59 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Documentation improvement
>  
> I was looking at the Yocto Development Manual (Latest), section 4.6.2. C=
reating Config Fragments.  I was confused about the file statement and the =
naming of the directory to locate the fragment file until I found a similar=
 discussion in the BSP Guide (lastest) section 1.2.10. Linux Kernel Configu=
ration.=20
>=20
> The section there is much more understandable.  I think we need to modif=
y the development manual or have it point to the BSP manual.  The text from=
 there (below) I think is better.  I still think it's confusing about the n=
aming of the subdirectory where the myconfig goes. Maybe a complete example=
 would be good.
>=20
> For example, suppose you had a set of configuration options in a file ca=
lled myconfig. If you put that file inside a directory named linux-yocto an=
d then added a SRC_URI statement such as the following to the append file, =
those configuration options will be picked up and applied when the kernel i=
s built.
>      SRC_URI +=3D "file://myconfig"
>                =20
> As mentioned earlier, you can group related configurations into multiple=
 files and name them all in the SRC_URI statement as well. For example, you=
 could group separate configurations specifically for Ethernet and graphics=
 into their own files and add those by using a SRC_URI statement like the f=
ollowing in your append file:
>=20
>      SRC_URI +=3D "file://myconfig \
>             file://eth.cfg \
>             file://gfx.cfg"
>                =20

--Apple-Mail-DF281F4C-5742-4938-B442-BE79AAE74B0C
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=utf-8

<html><head></head><body bgcolor="#FFFFFF"><div>Cool!<br><br></div><div><br>On Jul 6, 2012, at 5:06 PM, "Rifenbark, Scott M" &lt;<a href="mailto:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt; wrote:<br><br></div><div></div><blockquote type="cite"><div>

<meta http-equiv="Content-Type" content="text/html; charset=us-ascii">
<meta name="Generator" content="Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
span.EmailStyle21
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
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jim,
<o:p></o:p></span></p>
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am looking at that section in the BSP Guide and it is actually out of date regarding the 1.2.10 section.&nbsp; In the section it lists the linux-yocto_3.0.bbappend
 file (which is probably lagging as it should be 3.2).&nbsp; Anyway, the listing uses KERNEL_FEATURES and I believe that KBRANCH is now used.&nbsp; I am going to work on this section and get it up to speed and then address the issue you originally brought up, which is
 getting the best description for config fragments inside the dev manual. <o:p></o:p></span></p>
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">ScottR<o:p></o:p></span></p>
<p class="MsoNormal"><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
<div>
<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in 0in 0in">
<p class="MsoNormal"><b><span style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> <a href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>jfabernathy<br>
<b>Sent:</b> Friday, July 06, 2012 11:59 AM<br>
<b>To:</b> <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Documentation improvement<o:p></o:p></span></p>
</div>
</div>
<p class="MsoNormal"><o:p>&nbsp;</o:p></p>
<p class="MsoNormal" style="margin-bottom:12.0pt">I was looking at the Yocto Development Manual (Latest), section 4.6.2.&nbsp;Creating Config Fragments.&nbsp; I was confused about the file statement and the naming of the directory to locate the fragment file until I
 found a similar discussion in the BSP Guide (lastest) section 1.2.10.&nbsp;Linux Kernel Configuration.
<br>
<br>
The section there is much more understandable.&nbsp; I think we need to modify the development manual or have it point to the BSP manual.&nbsp; The text from there (below) I think is better.&nbsp; I still think it's confusing about the naming of the subdirectory where the
 myconfig goes. Maybe a complete example would be good.<o:p></o:p></p>
<p class="MsoNormal">For example, suppose you had a set of configuration options in a file called
<code><span style="font-size:10.0pt">myconfig</span></code>. If you put that file inside a directory named
<code><span style="font-size:10.0pt">linux-yocto</span></code> and then added a <code>
<span style="font-size:10.0pt">SRC_URI</span></code> statement such as the following to the append file, those configuration options will be picked up and applied when the kernel is built.
<o:p></o:p></p>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SRC_URI += <a href="file:///\\myconfig">"file://myconfig"</a><o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></pre>
<p>As mentioned earlier, you can group related configurations into multiple files and name them all in the
<code><span style="font-size:10.0pt">SRC_URI</span></code> statement as well. For example, you could group separate configurations specifically for Ethernet and graphics into their own files and add those by using a
<code><span style="font-size:10.0pt">SRC_URI</span></code> statement like the following in your append file:
<o:p></o:p></p>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SRC_URI += <a href="file:///\\myconfig\file:\eth.cfg\file:\gfx.cfg">"file://myconfig \<o:p></o:p></a></pre>
<pre><span class="MsoHyperlink"><a href="file:///\\myconfig\file:\eth.cfg\file:\gfx.cfg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://eth.cfg \<o:p></o:p></a></span></pre>
<pre><span class="MsoHyperlink"><a href="file:///\\myconfig\file:\eth.cfg\file:\gfx.cfg">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file://gfx.cfg"</a></span><o:p></o:p></pre>
<pre>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></pre>
</div>


</div></blockquote></body></html>

--Apple-Mail-DF281F4C-5742-4938-B442-BE79AAE74B0C--
