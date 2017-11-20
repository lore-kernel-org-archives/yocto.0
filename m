Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 921D6E00D48; Mon, 20 Nov 2017 03:38:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 702E4E00D00
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:38:28 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id r127so11567103itb.5
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:38:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=o9Q0cZT6hFyOjvl5QcAm0bSwjpl18kxdWBx7FeNV7WY=;
	b=PGY/gttt14lK6xMILcpY3KQxVQRk1vtfJVbM3VSBpjJ4Btdw+7913NgAfxZP3t2K1s
	51M40zzY1uK2D1xDjZUaOVMuSRlQ6/EFVnI2z64gjX4GcL3vA7kYrvC7/67TzlIIw8AB
	NVA2Xh661wdyaZ8eqsQePVOvYY3uF/fzMFfRKhVu2ivQclePxcac7q8cD48RkFPMVjh3
	lWExv+4B9MFgIKQFcIyo2cWfGhwHiAhU9hVk4+nuNGmgB0ZpS7HaqAZS+IhNl+ofgWsB
	TimSXFGgEYzjeRdVWxo409aneFgYaz+X80ojqj/3MfV8skv5O7X8ja6atYIqsgJ1GCRI
	zqBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=o9Q0cZT6hFyOjvl5QcAm0bSwjpl18kxdWBx7FeNV7WY=;
	b=Hb+/YLlAE4Nd/qbOWIC+ll7/MywvmM33WPJQXJMwXqmtCLu8cCkedJnElkyaOlVRh7
	3KMRvNEfsg+rMpCgfiUaO9r8wpBZmhkbL6GIqKenQiZFncy+f/rWQPLmeig25F7iWgcE
	eEnzca2rGq8KKC902bu0S2wL+1H3KwwwnSfjzm4228Xpf1ySnf3Wb1O8qRo9M8QkOTGe
	taf7t6/8uG961JgMxLDVU7jsJIiIfrP4sKy6X2W5EMtFjIQA1gRtrma3NdTriaw8m2iT
	I7WLmO5KElUTExSu3MbSDN0O1jzLBoFVi2hWJAM/R9vD0TfTtkjWvwkcW6ReBjXiShn1
	4cVg==
X-Gm-Message-State: AJaThX6jzkW5UnJUBhuijkmx5/diYOZPYFWLgyPBXQO53yUAIdJGTd/i
	Ij8aZYJQMLQcmnTTogWZNwr8Z1c2XuElLD0n6OHb3Q==
X-Google-Smtp-Source: AGs4zMaReYKgdT81ie4vdXTp+N2w1ky+xUAjLlKeqqItg291Gvn3+kEFcNLmUIXWfnmoOnzHcZplv2olFOMXaBX/uP8=
X-Received: by 10.36.120.11 with SMTP id p11mr18002163itc.10.1511177908460;
	Mon, 20 Nov 2017 03:38:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.171.132 with HTTP; Mon, 20 Nov 2017 03:38:07 -0800 (PST)
In-Reply-To: <HK2PR02MB115517DBFABA28592D4607EEFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
	<771e4475.9ac8.15fd91bd280.Coremail.cddatemp@163.com>
	<HK2PR02MB115517DBFABA28592D4607EEFE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Nov 2017 11:38:07 +0000
Message-ID: <CAJTo0Lbb3YLyidz8zbzN7w0THxdRk3a4gX3i-G3R441KNRYKBQ@mail.gmail.com>
To: Amit Gondaliya <amit.gondaliya@einfochips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Issue in pyro 2.3
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
X-List-Received-Date: Mon, 20 Nov 2017 11:38:30 -0000
Content-Type: multipart/alternative; boundary="001a114a9b5e6d34ce055e688638"

--001a114a9b5e6d34ce055e688638
Content-Type: text/plain; charset="UTF-8"

A good start would be to remove the inherits you don't need such as
autotools-brokensep. And the empty do_configure() do_compile() functions.
You're not telling install where to install which is why the files are
going into the sysroot and not packaged up.  Just delete your do_install()
and let the setuptools class do what it is meant to do: build and install
packages that use setuptools.

Ross

On 20 November 2017 at 11:27, Amit Gondaliya <amit.gondaliya@einfochips.com>
wrote:

> Hello,
>
>
> In our case the Package is "Y" but all the data falls into the
> recipe-sysroot-native of "Y." any Idea what's wrong with Y.
> is there any example of "Y-native" that help me to generate "Y-native""
> from "Y"
>
> Please find the attached file of Y.bb
>
>
>
> *Best Regards, Amit Gondaliya*
>
>
>
>
>
>
>
> ------------------------------
> *From:* cddatemp <cddatemp@163.com>
> *Sent:* Monday, November 20, 2017 4:36 PM
> *To:* Amit Gondaliya
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re:[yocto] Build Issue in pyro 2.3
>
> At 2017-11-20 18:18:42, "Amit Gondaliya" <amit.gondaliya@einfochips.com>
> wrote:
> > Hello,
> >
> > I am configuring one  package "X" that is depended on other  package "Y".
> >
> > the "Y" package is successfully build and I am able to find it into the
> below path.
> >
> > <workspace>tmp/work/cortexa8hf-neon-poky-linux-
> gnueabi/"Y"/0.1.0-r1/recipe-sysroot-native/usr/bin
> >
> > As per my understanding if the package "X" is depended on the package
> "Y"
> > then all the components of the package "Y" should be copied into the
> path "recipe-sysroot-native/usr/bin" of the package "X".
> >
>
> If "Y" is "Y-native", then it should be in "recipe-sysroot-native".
>
>
> If it is just "Y", then it should be in "recipe-sysroot".
>
> > But I am not able to find the depended package "Y" into the
> recipe-sysroot-native of the Package "X".
> >
> > If I my understanding is false let me know the correct way to do this.
> > As I am not able to find the package "Y" into the dir
> "recipe-sysroot-native/usr/bin" of package "X"
> >
> > thanks
> > Amit G.
> >
> > Best Regards,
> > Amit Gondaliya
>
> ************************************************************
> ************************************************************
> ************************************* eInfochips Business Disclaimer:
> This e-mail message and all attachments transmitted with it are intended
> solely for the use of the addressee and may contain legally privileged and
> confidential information. If the reader of this message is not the intended
> recipient, or an employee or agent responsible for delivering this message
> to the intended recipient, you are hereby notified that any dissemination,
> distribution, copying, or other use of this message or its attachments is
> strictly prohibited. If you have received this message in error, please
> notify the sender immediately by replying to this message and please delete
> it from your computer. Any views expressed in this message are those of the
> individual sender unless otherwise stated. Company has taken enough
> precautions to prevent the spread of viruses. However the company accepts
> no liability for any damage caused by any virus transmitted by this email.
> ************************************************************
> ************************************************************
> *************************************
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114a9b5e6d34ce055e688638
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">A good start would be to remove the inherits you don&#39;t=
 need such as autotools-brokensep. And the empty do_configure() do_compile(=
) functions.=C2=A0 You&#39;re not telling install where to install which is=
 why the files are going into the sysroot and not packaged up.=C2=A0 Just d=
elete your do_install() and let the setuptools class do what it is meant to=
 do: build and install packages that use setuptools.<div><br></div><div>Ros=
s</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 2=
0 November 2017 at 11:27, Amit Gondaliya <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:amit.gondaliya@einfochips.com" target=3D"_blank">amit.gondaliya@einfo=
chips.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-4399630852257597061divtagdefaultwrapper" style=3D"font-size:1=
1pt;color:#006fc9;font-family:Verdana,Geneva,sans-serif" dir=3D"ltr">
<p>Hello,</p>
<p><br>
</p>
<p></p>
<div>In our case the Package is &quot;Y&quot; but all the data falls into t=
he <span>recipe-sysroot-native</span> of &quot;Y.&quot; any Idea what&#39;s=
 wrong with Y.<br>
</div>
<div>is there any example of &quot;Y-native&quot; that help me to generate =
&quot;Y-native&quot;&quot; from &quot;Y&quot;</div>
<div><br>
</div>
<div>Please find the attached file of Y.bb<br>
</div>
<br>
<p></p>
<p><br>
</p>
<div id=3D"m_-4399630852257597061Signature">
<div id=3D"m_-4399630852257597061divtagdefaultwrapper" dir=3D"ltr" style=3D=
"font-size:11pt;color:rgb(0,0,0);background-color:rgb(255,255,255);font-fam=
ily:Calibri,Arial,Helvetica,sans-serif,&quot;EmojiFont&quot;,&quot;Apple Co=
lor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Sy=
mbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<span style=3D"font-family:&quot;Comic Sans MS&quot;,fantasy,cursive"></spa=
n>
<table style=3D"margin:0px;padding:0px;max-width:100%;border-collapse:colla=
pse;border-spacing:0px;font-family:Arial,Helvetica,sans-serif" cellspacing=
=3D"0">
<tbody style=3D"margin:0px;padding:0px">
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<b style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;line-=
height:19.6000003814697px"><span style=3D"font-family:Verdana,Geneva,sans-s=
erif;font-size:10pt">Best Regards,</span><br>
<span style=3D"font-size:10pt"></span><span style=3D"font-family:Verdana,Ge=
neva,sans-serif;font-size:10pt">Amit Gondaliya</span></b><br style=3D"margi=
n:0px;padding:0px">
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td style=3D"margin:0px;padding:0px;font-size:13px" valign=3D"top"><br>
</td>
<td style=3D"margin:0px;padding:13px 0px 0px;font-family:Calibri,sans-serif=
;font-size:14px;color:rgb(0,75,118)" valign=3D"top">
<br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-size:13px"><br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<br>
</td>
</tr>
<tr style=3D"margin:0px;padding:0px">
<td colspan=3D"2" style=3D"margin:0px;padding:0px;font-family:Calibri,sans-=
serif;font-size:14px;color:rgb(0,75,118)">
<br>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-4399630852257597061divRplyFwdMsg" dir=3D"ltr"><font style=3D"=
font-size:11pt" color=3D"#000000" face=3D"Calibri, sans-serif"><b>From:</b>=
 cddatemp &lt;<a href=3D"mailto:cddatemp@163.com" target=3D"_blank">cddatem=
p@163.com</a>&gt;<br>
<b>Sent:</b> Monday, November 20, 2017 4:36 PM<br>
<b>To:</b> Amit Gondaliya<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re:[yocto] Build Issue in pyro 2.3</font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">
<div>
<div style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Aria=
l">
<div>At 2017-11-20 18:18:42, &quot;Amit Gondaliya&quot; &lt;<a href=3D"mail=
to:amit.gondaliya@einfochips.com" target=3D"_blank">amit.gondaliya@einfochi=
ps.com</a><wbr>&gt; wrote:</div>
<div>&gt; Hello,</div>
<div>&gt;</div>
<div>&gt; I am configuring one =C2=A0package &quot;X&quot; that is depended=
 on other =C2=A0package &quot;Y&quot;.</div>
<div>&gt;</div>
<div>&gt; the &quot;Y&quot; package is successfully build and I am able to =
find it into the below path.</div>
<div>&gt;</div>
<div>&gt; &lt;workspace&gt;tmp/work/<wbr>cortexa8hf-neon-poky-linux-<wbr>gn=
ueabi/&quot;Y&quot;/0.1.0-r1/recipe-<wbr>sysroot-native/usr/bin</div>
<div>&gt;</div>
<div>&gt; As per my understanding if the package &quot;X&quot; is depended =
on the package &quot;Y&quot;=C2=A0</div>
<div>&gt; then all the components of the package &quot;Y&quot; should be co=
pied into the path &quot;recipe-sysroot-native/usr/<wbr>bin&quot; of the pa=
ckage &quot;X&quot;.</div>
<div>&gt;</div>
<div><br>
</div>
<div>If &quot;Y&quot; is &quot;Y-native&quot;, then it should be in &quot;r=
ecipe-sysroot-native&quot;.</div>
<br>
<div><br>
</div>
<div>If it is just &quot;Y&quot;, then it should be in &quot;recipe-sysroot=
&quot;.</div>
<div><br>
</div>
<div>&gt; But I am not able to find the depended package &quot;Y&quot; into=
 the recipe-sysroot-native of the Package &quot;X&quot;.</div>
<div>&gt;</div>
<div>&gt; If I my understanding is false let me know the correct way to do =
this.</div>
<div>&gt; As I am not able to find the package &quot;Y&quot; into the dir &=
quot;recipe-sysroot-native/usr/<wbr>bin&quot; of package &quot;X&quot;</div=
>
<div>&gt;</div>
<div>&gt; thanks</div>
<div>&gt; Amit G.</div>
<div>&gt;</div>
<div>&gt; Best Regards,</div>
<div>&gt; Amit Gondaliya</div>
<div><br>
</div>
</div>
</div>
</div></div></div>
</div>
******************************<wbr>******************************<wbr>*****=
*************************<wbr>******************************<wbr>**********=
********************<wbr>******* eInfochips Business Disclaimer: This e-mai=
l message and all attachments transmitted with it are intended
 solely for the use of the addressee and may contain legally privileged and=
 confidential information. If the reader of this message is not the intende=
d recipient, or an employee or agent responsible for delivering this messag=
e to the intended recipient, you
 are hereby notified that any dissemination, distribution, copying, or othe=
r use of this message or its attachments is strictly prohibited. If you hav=
e received this message in error, please notify the sender immediately by r=
eplying to this message and please
 delete it from your computer. Any views expressed in this message are thos=
e of the individual sender unless otherwise stated. Company has taken enoug=
h precautions to prevent the spread of viruses. However the company accepts=
 no liability for any damage caused
 by any virus transmitted by this email. ******************************<wbr=
>******************************<wbr>******************************<wbr>****=
**************************<wbr>******************************<wbr>*******
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114a9b5e6d34ce055e688638--
