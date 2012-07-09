Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50BFCE01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 05:50:57 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so13608327obb.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 05:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=vT2x0ITln1BAuUMsOXmqqng1/h0IvZG2xJ2ZY3Phh/k=;
	b=ES2K03P72AFIWG1PgMcySQmqN+LBWSWMmb7UUu2rM2ae053txaHErkQ+28aWuuaHtL
	+ycwLliLhrswxxsBuf63vB9Vl+ft06mNgt2xp+PGYOg5ZCgFrl8GjQ5x6YYqhKhNsV9Z
	tNq0L/Kt1pdavc6cSYkQPQ+0qBUmqQ673DUSEa/d85ZK+Hn/332yZ2M+ST+ySdUe1JV0
	PHzttjWxPdcmNF9xagPSHk3GbH6EasGZYiAPZGKQanoHCtiHSw/pbqPxUT5mQJQ1FMSx
	TgTPNnowe4wi5LdfYpKpbm1K7up2w8GGZi7QP7wsHs9h24dFbDDPWE62atgFZQYtVlJD
	p88A==
MIME-Version: 1.0
Received: by 10.182.76.168 with SMTP id l8mr36671421obw.49.1341838256574; Mon,
	09 Jul 2012 05:50:56 -0700 (PDT)
Received: by 10.76.151.161 with HTTP; Mon, 9 Jul 2012 05:50:56 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176C@ORSMSX101.amr.corp.intel.com>
References: <4FF73569.4000105@gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A2176C@ORSMSX101.amr.corp.intel.com>
Date: Mon, 9 Jul 2012 08:50:56 -0400
Message-ID: <CANFv2EmGVF3Rad3CyZXtshL7CHoYnGc825T6SJdQrbt8LEp_FQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
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
X-List-Received-Date: Mon, 09 Jul 2012 12:50:57 -0000
Content-Type: multipart/alternative; boundary=f46d044785d9a112d804c465101e

--f46d044785d9a112d804c465101e
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 6, 2012 at 5:06 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

>  Jim, ****
>
> ** **
>
> I am looking at that section in the BSP Guide and it is actually out of
> date regarding the 1.2.10 section.  In the section it lists the
> linux-yocto_3.0.bbappend file (which is probably lagging as it should be
> 3.2).  Anyway, the listing uses KERNEL_FEATURES and I believe that KBRANCH
> is now used.  I am going to work on this section and get it up to speed and
> then address the issue you originally brought up, which is getting the best
> description for config fragments inside the dev manual. ****
>
> ** **
>
> ScottR****
>
> **
>
Scott,

I found out over the weekend that the config fragment file needs to have
the .cfg extension.  This would agree with the example in the Developer
Manual, but make the BSP Guide in error, as it uses no extension.  A note
to the .cfg requirement would seem to be a required addition.

JIm A



> **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *jfabernathy
> *Sent:* Friday, July 06, 2012 11:59 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Documentation improvement****
>
> ** **
>
> I was looking at the Yocto Development Manual (Latest), section
> 4.6.2. Creating Config Fragments.  I was confused about the file statement
> and the naming of the directory to locate the fragment file until I found a
> similar discussion in the BSP Guide (lastest) section 1.2.10. Linux Kernel
> Configuration.
>
> The section there is much more understandable.  I think we need to modify
> the development manual or have it point to the BSP manual.  The text from
> there (below) I think is better.  I still think it's confusing about the
> naming of the subdirectory where the myconfig goes. Maybe a complete
> example would be good.****
>
> For example, suppose you had a set of configuration options in a file
> called myconfig. If you put that file inside a directory named linux-yoctoand then added a
> SRC_URI statement such as the following to the append file, those
> configuration options will be picked up and applied when the kernel is
> built. ****
>
>      SRC_URI += "file://myconfig"****
>
>                 ****
>
> As mentioned earlier, you can group related configurations into multiple
> files and name them all in the SRC_URI statement as well. For example,
> you could group separate configurations specifically for Ethernet and
> graphics into their own files and add those by using a SRC_URI statement
> like the following in your append file: ****
>
>      SRC_URI += "file://myconfig \****
>
>             file://eth.cfg \****
>
>             file://gfx.cfg"****
>
>                 ****
>
>

--f46d044785d9a112d804c465101e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Fri, Jul 6, 2012 at 5:06 PM, Rifenbar=
k, Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.=
com" target=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">






<div bgcolor=3D"white" link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Jim,
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">I am looking at that sect=
ion in the BSP Guide and it is actually out of date regarding the 1.2.10 se=
ction.=A0 In the section it lists the linux-yocto_3.0.bbappend
 file (which is probably lagging as it should be 3.2).=A0 Anyway, the listi=
ng uses KERNEL_FEATURES and I believe that KBRANCH is now used.=A0 I am goi=
ng to work on this section and get it up to speed and then address the issu=
e you originally brought up, which is
 getting the best description for config fragments inside the dev manual. <=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">ScottR<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0</span></p></di=
v></div></blockquote><div>Scott,<br><br>I found out over the weekend that t=
he config fragment file needs to have the .cfg extension.=A0 This would agr=
ee with the example in the Developer Manual, but make the BSP Guide in erro=
r, as it uses no extension.=A0 A note to the .cfg requirement would seem to=
 be a required addition.<br>
<br>JIm A<br><br>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div bgcolor=3D"white" link=3D"blue" vlink=3D"purple" lang=3D"EN-US"><div>=
<p class=3D"MsoNormal">
<span style=3D"font-size:11pt;font-family:&quot;Calibri&quot;,&quot;sans-se=
rif&quot;;color:rgb(31,73,125)"><u></u></span></p>
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> <a href=3D"mailto:yocto-bounces@yoctoproject.org"=
 target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"ma=
ilto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctop=
roject.org</a>]
<b>On Behalf Of </b>jfabernathy<br>
<b>Sent:</b> Friday, July 06, 2012 11:59 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Documentation improvement<u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I was looking at the =
Yocto Development Manual (Latest), section 4.6.2.=A0Creating Config Fragmen=
ts.=A0 I was confused about the file statement and the naming of the direct=
ory to locate the fragment file until I
 found a similar discussion in the BSP Guide (lastest) section 1.2.10.=A0Li=
nux Kernel Configuration.
<br>
<br>
The section there is much more understandable.=A0 I think we need to modify=
 the development manual or have it point to the BSP manual.=A0 The text fro=
m there (below) I think is better.=A0 I still think it&#39;s confusing abou=
t the naming of the subdirectory where the
 myconfig goes. Maybe a complete example would be good.<u></u><u></u></p>
<p class=3D"MsoNormal">For example, suppose you had a set of configuration =
options in a file called
<code><span style=3D"font-size:10.0pt">myconfig</span></code>. If you put t=
hat file inside a directory named
<code><span style=3D"font-size:10.0pt">linux-yocto</span></code> and then a=
dded a <code>
<span style=3D"font-size:10.0pt">SRC_URI</span></code> statement such as th=
e following to the append file, those configuration options will be picked =
up and applied when the kernel is built.
<u></u><u></u></p>
<pre>=A0=A0=A0=A0=A0SRC_URI +=3D <a>&quot;file://myconfig&quot;</a><u></u><=
u></u></pre>
<pre>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <u></u><u></u></pre>
<p>As mentioned earlier, you can group related configurations into multiple=
 files and name them all in the
<code><span style=3D"font-size:10.0pt">SRC_URI</span></code> statement as w=
ell. For example, you could group separate configurations specifically for =
Ethernet and graphics into their own files and add those by using a
<code><span style=3D"font-size:10.0pt">SRC_URI</span></code> statement like=
 the following in your append file:
<u></u><u></u></p>
<pre>=A0=A0=A0=A0=A0SRC_URI +=3D <a>&quot;file://myconfig \<u></u><u></u></=
a></pre>
<pre><span><a>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://eth.cfg \<u></u><u><=
/u></a></span></pre>
<pre><span><a>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 file://gfx.cfg&quot;</a></s=
pan><u></u><u></u></pre>
<pre>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <u></u><u></u></pre>
</div></div></div>
</div>

</blockquote></div><br>

--f46d044785d9a112d804c465101e--
