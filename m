Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3BBCE00A62; Tue, 21 Nov 2017 08:59:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34720E006CA
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 08:59:19 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id q4so10228596pfg.13
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 08:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cCM68HZoUjcK72C+BInFZfGUBygvKLj6KgWPWwP7z9Q=;
	b=o6nKUduHI08byFvtLQgP0IAiNgJMTvmBRPYirj4lwGSxHfxVSRKUpqHev7fEEBGKH+
	4sidOSC91FXyWZW6vgZ+bg+Fxvyi3ir0Lm1bSbM7uyrTsgQtieF4Bwv01SJAbDsfepOi
	oFBO88uiHL+0LjkNFvwbqdsQPVQTeZBfXOQEnkQ5VXW6CZ6xITmuQWJYbzN/5FRFbYvK
	po0a7ryS9i6TOAbYAEjbx0ZOs7FEavALe+Lvh2KCkhYHmmpd1df15TwwOwTUdwYrRRZ3
	cvXRmw5gq5QcXH1v3hy6i3Sgg8Q6ERVOi6tT9nXtnLYTKV/FPB+8HE5U2PXVVX/El736
	lRwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cCM68HZoUjcK72C+BInFZfGUBygvKLj6KgWPWwP7z9Q=;
	b=MVCESWOqJu9MfYLoMe+2N82va7WhRiphcSKVpvWODVaafKg7T0jt3Z/d/D2lFnJRG8
	lGte2ZS98FFR5d3c1LJ0NXvQJmDwj5Zchi/Y1ND8lEA0R0iqaTfuDlUbtpoA5rcwMtvP
	HdKYG6ItJJtVICFg40syfUIQxf/YuGhjKWJ0D6wJCmcIMm6yjSKuuKp7mii1POzX+Qsn
	p2ABss+Ud9xXMRIwt/gey+zYFDvS7mQ3yvt+vi7Yu5TxElQAqii5q9p+q5Ai9/7P954/
	Ng3UnouG7CChTJ/51dGnfVVnSxaY6dDOeuz1yVnDEu5JsAfturheGXcN+iWVRj8+IPXR
	Ejyg==
X-Gm-Message-State: AJaThX6pZEfneKfDSDfmWUwZltsbUGyR3c4PlRFde2L26PMSmDaFHGCt
	AHWi6jvpMMAK1SiVB1gHZZbdJIKJQKFPUiG01Jg=
X-Google-Smtp-Source: AGs4zMY5xGSHZ3EYKGzh8bbf9OgCx1Sn8aUkudcha7m7tKOg/Zp/xdQozTmTY+xk8qDsC/zWk76701ALzkdALlBOGSI=
X-Received: by 10.98.155.129 with SMTP id e1mr16229881pfk.119.1511283559314;
	Tue, 21 Nov 2017 08:59:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.15 with HTTP; Tue, 21 Nov 2017 08:58:48 -0800 (PST)
In-Reply-To: <HK2PR02MB1155068EF6C0F2371A6AFA2EFE230@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB1155068EF6C0F2371A6AFA2EFE230@HK2PR02MB1155.apcprd02.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Nov 2017 08:58:48 -0800
Message-ID: <CAMKF1so=wsy8mjwWS7nXfBYtODhu1T_oVYN8tJScUvucNJwriw@mail.gmail.com>
To: Amit Gondaliya <amit.gondaliya@einfochips.com>
Cc: Viraj Mistry <Viraj.Mistry@einfochips.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS python-xml not working in pyro2.3
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
X-List-Received-Date: Tue, 21 Nov 2017 16:59:21 -0000
Content-Type: multipart/alternative; boundary="94eb2c1442b2b5387a055e811f35"

--94eb2c1442b2b5387a055e811f35
Content-Type: text/plain; charset="UTF-8"

you might need to add libxml2 to DEPENDS

On Tue, Nov 21, 2017 at 3:26 AM, Amit Gondaliya <
amit.gondaliya@einfochips.com> wrote:

> Hello All,
>
>
> I am configuring one package using pyro 2.3 I sticked at below error..
>
>
>
>
> *checking python module: libxml2... no configure: error: failed to find
> required module libxml2*
>
>
>
> *checking python module: curses... yes checking python module: libxml2...
> no configure: error: failed to find required module libxml2*
>
> I have "python-xml" in my "application.bb" file as *DEPEND**S* variable, *this
> is working fine yocto daisy1.6, however this is not working with yocto
> pyro2.3*
>
>
> *Best Regards, Amit Gondaliya*
>
>
>
>
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

--94eb2c1442b2b5387a055e811f35
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">you might need to add libxml2 to DEPENDS</div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Tue, Nov 21, 2017 at 3:26 AM, =
Amit Gondaliya <span dir=3D"ltr">&lt;<a href=3D"mailto:amit.gondaliya@einfo=
chips.com" target=3D"_blank">amit.gondaliya@einfochips.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_-5227395159321723476divtagdefaultwrapper" style=3D"font-size:1=
1pt;color:#006fc9;font-family:Verdana,Geneva,sans-serif" dir=3D"ltr">
<p>Hello All,</p>
<p><br>
</p>
<p>I am configuring one package using pyro 2.3 I sticked at below error..</=
p>
<p><br>
</p>
<p></p>
<div><b><i>checking python module: libxml2...<br>
no<br>
configure: error: failed to find required module libxml2</i></b><br>
<br>
</div>
<p></p>
<p></p>
<div><b><i>checking python module: curses... yes<br>
checking python module: libxml2... no<br>
configure: error: failed to find required module libxml2</i></b></div>
<div><b><i><br>
</i></b></div>
<div>I have &quot;<span>python-xml&quot;</span> in my &quot;<a href=3D"http=
://application.bb" target=3D"_blank">application.bb</a>&quot; file as <b>DE=
PEND</b><b>S</b> variable,
<i><b>this is working fine yocto daisy1.6, however this is not working with=
 yocto pyro2.3</b></i><br>
</div>
<div><br>
</div>
<p></p>
<div id=3D"m_-5227395159321723476Signature">
<div id=3D"m_-5227395159321723476divtagdefaultwrapper" dir=3D"ltr" style=3D=
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
<br></blockquote></div><br></div></div>

--94eb2c1442b2b5387a055e811f35--
