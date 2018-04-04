Return-Path: <grsandeep85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D434BE008A2; Wed,  4 Apr 2018 09:58:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (grsandeep85[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B7B0E006B4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 09:58:18 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id g7so11021795qkm.1
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 09:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SMJp339yYyvSWOQyTs1VtBV+oYUBubiLkBcvJAjwSXo=;
	b=dD17TqY89jTSPZ+q9yYxTBPhZe8sWYemIvZ9XAac6bgyGTX5YqJ+ggH7Mr4j9yzIcu
	YTxVNKVPgz6K+CLpAwtkgmLwIkcxvGcuezOoKSji37o15HD33WOh7mLAMsJPyPgcjZ/V
	c/SMSWChcH7cds521VyGoeDfkDYEw6gmBIMaAO/9tJNa6TXIKasP5qhj05IC8iDKBNbe
	EJeaBdMdrIkfNZBB+1nNk5GfWnXVfbWb0cBH9D2oHl9bYlNkmDDNFz20chuPZa5cYDQT
	150EtHm0AJ1QQo2D2deBtGu5dRr/+A37xq6sZOzCrSzP36Yc0xRDHNJ35+fKMNc0O4aQ
	FWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SMJp339yYyvSWOQyTs1VtBV+oYUBubiLkBcvJAjwSXo=;
	b=K62MJWGlXXDEe5iO/9gibA7cruvtMj50J3OMnrf6zW5Jlk9XC2HxFhlURLNVn3I5FJ
	eo94XRbRPcMQ4OBWsZ/WKGO6vNB7XIEH2mrvvcfZeXf9Yz+3uGx1tf7QvrZy4iiaJGL7
	/LFADj7PssoawdTnykEs8ktse7c7O2ne6mCsyaxZXcmzLfsIuWg3g/UzNNfshiba80Dt
	v8XA8Dixjlg8htQ0n/aX5lBHBybfRhuNtek+VGT1JdGgHR5PuoLE+1F3Mc4Xb3W0UlQM
	cGr2Exlw1jHEQVt4BbWM7EvkJQanZ1pNHJzCKt3VINyqLnWb01r4FyI/NEhOSo74OFo2
	8EyQ==
X-Gm-Message-State: ALQs6tCwcIFSGIBc6LNqqc2ohcNUaijEHmclCWAE1lNAsjab/zXwCELC
	iq7N82EyJBigF2XfseaniMCm9dU14u5ZP3kNfNo=
X-Google-Smtp-Source: AIpwx48bsQ955+QCVKplECJMJ0d/haw452U1uFgrZQJoAqMtLuFCAoYWV+MTr73HbBDPvIaJzYjsqIRwTgNaDZ0L7iU=
X-Received: by 10.55.174.7 with SMTP id x7mr24432968qke.218.1522861098216;
	Wed, 04 Apr 2018 09:58:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.102.141 with HTTP; Wed, 4 Apr 2018 09:58:17 -0700 (PDT)
In-Reply-To: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB0348308E57E30FA8D6824DCB91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: "Sandeep G.R" <grsandeep85@gmail.com>
Date: Wed, 4 Apr 2018 10:58:17 -0600
Message-ID: <CAKP9-Shb3ZfAKf8sf29d=imSJCsJkxF0_rbWhYAGkcWe53uC1w@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ERROR: problem:package openssh-7.6p1-r0.i586 conflicts with dropbear provided by dropbear-2017.75-r0.i586
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
X-List-Received-Date: Wed, 04 Apr 2018 16:58:19 -0000
Content-Type: multipart/alternative; boundary="94eb2c06bc78cd339f056908bad9"

--94eb2c06bc78cd339f056908bad9
Content-Type: text/plain; charset="UTF-8"

Add this to local.conf

PACKAGE_EXCLUDE += " packagegroup-core-ssh-dropbear"

*Thanks,*
*Sandeep*


On Mon, Apr 2, 2018 at 4:38 AM, Aditya Tayade <Aditya.Tayade@kpit.com>
wrote:

> Hi,
>
>
> I trying to build core-image-sato using yocto 2.5 with new package openssh.
>
>
> Added openssh entry in the local.conf file as follows:
>
> IMAGE_INSTALL_append = "openssh"
>
>
> But facing some conflicts error. Please refer attached log file for more
> information.
>
>
> Could you please help to resolve the issue. I need to use use openssh for
> ssh rather than dropbear.
>
>
>
> Regards,
>
> Aditya Tayade
> This message contains information that may be privileged or confidential
> and is the property of the KPIT Technologies Ltd. It is intended only for
> the person to whom it is addressed. If you are not the intended recipient,
> you are not authorized to read, print, retain copy, disseminate,
> distribute, or use this message or any part thereof. If you receive this
> message in error, please notify the sender immediately and delete all
> copies of this message. KPIT Technologies Ltd. does not accept any
> liability for virus infected mails.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c06bc78cd339f056908bad9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif;color:rgb(7,55,99)">Add this to local.conf</div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif;color:=
rgb(7,55,99)"><br></div><div class=3D"gmail_default"><font color=3D"#073763=
" face=3D"arial, helvetica, sans-serif">PACKAGE_EXCLUDE +=3D &quot; package=
group-core-ssh-dropbear&quot;</font><br></div><div class=3D"gmail_extra"><b=
r clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div><div dir=3D"ltr"><font color=3D"#073763" face=3D"arial=
, helvetica, sans-serif"><b>Thanks,</b></font><div><font face=3D"arial, hel=
vetica, sans-serif"><font color=3D"#073763"><b>Sandeep</b></font><br></font=
><br></div></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Apr 2, 2018 at 4:38 AM, Aditya Tayad=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:Aditya.Tayade@kpit.com" target=3D=
"_blank">Aditya.Tayade@kpit.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_-321754330222620506divtagdefaultwrapper" dir=3D"ltr" sty=
le=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-se=
rif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,Noto=
ColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbo=
ls">
<p style=3D"margin-top:0px;margin-bottom:0px">Hi,</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">I trying to build core-image-=
sato using yocto 2.5 with new package openssh.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Added openssh entry in the lo=
cal.conf file as follows:<br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><span>IMAGE_INSTALL_append =
=3D &quot;</span>openssh&quot;</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">But facing some conflicts err=
or. Please refer attached log file for more information.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Could you please help to reso=
lve the issue. I need to use use openssh for ssh rather than
<span>dropbear</span>.</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Regards,</p>
<p style=3D"margin-top:0px;margin-bottom:0px">Aditya Tayade<br>
</p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c06bc78cd339f056908bad9--
