Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57585E00DED; Wed, 24 Jan 2018 19:11:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7379CE00B78;
	Wed, 24 Jan 2018 19:10:58 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id n132so3959277vke.2;
	Wed, 24 Jan 2018 19:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XKdWJglPDiyk47IaoW8zYNJsv0ZZQefyiXusfVy8TwE=;
	b=pSCe1xwa3/oI6jBrdwnFQrIOKGueSd8CVH9/f9ib5mAw+8/Z6LNIG0CjUSb6m9fP78
	QcefBEen9oEzu++FZa1DM2OGXKu6ZqYO9x8L94C4f9K2nTIpAVE2CBsn0nkW5gee2by/
	oXYzdXsYRPJ19yCFeS24wuYrufN6heii3PUHvmsT+eqWuv7rDaS82WAceghVcPAgiwXl
	ghdBScOj5biIl3jBWjJaW9cBFR7kGTG+hgCg0Kl8le4A3sQjBi9hkeMbMaa+Na041K8t
	mCIX7XY8WMLo6Jlse0374A5kogPExhPdj83yd1UdNGMppa1FaT10v+rvx8knmW8InMYf
	Kq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XKdWJglPDiyk47IaoW8zYNJsv0ZZQefyiXusfVy8TwE=;
	b=Zf8bz/mFAEKWZP8xcEybxPAlBycJIXvTlS+EfvNo9DkOrTNzYdws2akylG8VQ0xidL
	a8j+uZ3NtqRp4p+BzkEod0Gc6pWVfTcchp+iUPgdtAXr1ECfV0ovs79wmq/ItZauFvk4
	/vZiTxM/nP5smArM+oSP82TC30pgYFA57OjNcKLHHETWnViibs6NeznzHBvAF5yoOplD
	oiSwICcqC/XXAEAVox3x4h5GbHH96v0GcptY6wffvaOL2UDIJHYtg2qvFtB6FQ/j+kAT
	BrjYXuPPGbXOEIVa7J3Z0b2p3KlWatto3mKCo9kYgtGU6nnlYNVRg19DXFk9qf+yy02f
	1+xQ==
X-Gm-Message-State: AKwxytfAtxGPkY56VYUIPBcQntDW3+cwwOOaNFv6gqbMmUyTzSMcXADZ
	J8Arz7iZ4/ZpYkcAYrQcGV6NGRWpOEGYqXjOQwXmQHCv
X-Google-Smtp-Source: AH8x227u5YBRjntDwuK85Ht54tgjYSWXv0ksM6m1gz/iXN6pGaXXPIJWGZtIlP8/cnGzNB2f632J3HBGB7WvKkMshaA=
X-Received: by 10.31.244.196 with SMTP id s187mr6210977vkh.148.1516849857276; 
	Wed, 24 Jan 2018 19:10:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.31.14.210 with HTTP; Wed, 24 Jan 2018 19:10:56 -0800 (PST)
In-Reply-To: <000d01d26a29$f1bfadc0$d53f0940$@skypine.com>
References: <000d01d26a29$f1bfadc0$d53f0940$@skypine.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Wed, 24 Jan 2018 19:10:56 -0800
Message-ID: <CANx9H-BDm7=wMRVW9aGc8YG7TSzfYXJGmYctFaiDmF-r8Zzz+A@mail.gmail.com>
To: luffy_yue <luffy_yue@skypine.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, eclipse-poky@yoctoproject.org
Subject: Re: yocto adt for windows eclipse is error
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
X-List-Received-Date: Thu, 25 Jan 2018 03:11:00 -0000
Content-Type: multipart/alternative; boundary="94eb2c14b306ebb06905639120e2"

--94eb2c14b306ebb06905639120e2
Content-Type: text/plain; charset="UTF-8"

On Sun, Jan 8, 2017 at 7:39 PM, luffy_yue <luffy_yue@skypine.com> wrote:

> Hi,
>
> Configuring the eclipse(window7 luna) yocto plug-in is error,
>
> Eclipse Report this error:
>
>
>

The existing Yocto Project plugins (eclipse-poky) are only fully functional
on Linux. The new development is directed towards providing additional
support for Windows (specifically Windows 10) and Mac OS X. Also, Luna is
no longer supported, it is quite old at this point. Only Neon(4.6) and
Oxygen (4.7) are supported at this time. Patches are welcome for older
releases if the community finds solutions that can benefit others.


> !ENTRY org.eclipse.jface 4 0 2017-01-05 10:39:37.646
>
> !MESSAGE java.lang.NullPointerException
>
> !STACK 0
>
> java.lang.NullPointerException
>
>          at org.yocto.sdk.ide.YoctoSDKChecker.checkYoctoSDK(Unknown
> Source)
>
>          at org.yocto.sdk.ide.YoctoUISetting.validateInput(Unknown Source)
>
>          at org.yocto.sdk.ide.preferences.YoctoSDKPreferencePage.performOk(Unknown
> Source)
>
>          at org.eclipse.jface.preference.PreferenceDialog$12.run(
> PreferenceDialog.java:992)
>
>          at org.eclipse.core.runtime.SafeRunner.run(SafeRunner.java:42)
>
>          at org.eclipse.ui.internal.JFaceUtil$1.run(JFaceUtil.java:50)
>
>          at org.eclipse.jface.util.SafeRunnable.run(SafeRunnable.java:178)
>
>          at org.eclipse.jface.preference.PreferenceDialog.okPressed(
> PreferenceDialog.java:971)
>
>
>
> Luffy
>
> Nanjing R&D Center
>
> Skypine Electronics (ShenZhen) Co. Ltd
>
> Office Telephone: (+86)25-84671286-6034
>
> Address: Zijin Entrepreneur R&D Centre,No.89 Victory road,Jiangning
> Disctrict,Nanjing,China(211100)
>
>
>
>
> ------------------------------
> [image: Avast logo] <https://www.avast.com/antivirus>
>
> This email has been checked for viruses by Avast antivirus software.
> www.avast.com <https://www.avast.com/antivirus>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c14b306ebb06905639120e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Jan 8, 2017 at 7:39 PM, luffy_yue <span dir=3D"ltr">&lt;<a href=
=3D"mailto:luffy_yue@skypine.com" target=3D"_blank">luffy_yue@skypine.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-=
color:rgb(204,204,204);padding-left:1ex"><div lang=3D"ZH-CN"><div class=3D"=
gmail-m_-1305371034229968407WordSection1"><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Hi, <u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Configuring the eclipse(window7 luna) yocto plug-in is error,<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Eclipse R=
eport this error:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0</span></p></div></div></blockquote><div><br></div>=
<div>The existing Yocto Project plugins (eclipse-poky) are only fully funct=
ional on Linux. The new development is directed towards providing additiona=
l support for Windows (specifically Windows 10) and Mac OS X. Also, Luna is=
 no longer supported, it is quite old at this point. Only Neon(4.6) and Oxy=
gen (4.7) are supported at this time. Patches are welcome for older release=
s if the community finds solutions that can benefit others.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,2=
04,204);padding-left:1ex"><div lang=3D"ZH-CN"><div class=3D"gmail-m_-130537=
1034229968407WordSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US"><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">!ENTRY org.eclips=
e.jface 4 0 2017-01-05 10:39:37.646<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">!MESSAGE java.lang.NullPointerException<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">!STACK 0<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">java.lang.N=
ullPointerException<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 at org.yocto.=
sdk.ide.<wbr>YoctoSDKChecker.checkYoctoSDK(<wbr>Unknown Source)<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 at org.yocto.sdk.ide.<wbr>YoctoUISetting.val=
idateInput(<wbr>Unknown Source)<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 a=
t org.yocto.sdk.ide.preferences.<wbr>YoctoSDKPreferencePage.<wbr>performOk(=
Unknown Source)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 at org.eclipse.=
jface.preference.<wbr>PreferenceDialog$12.run(<wbr>PreferenceDialog.java:99=
2)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 at org.eclipse.core.runtime.<=
wbr>SafeRunner.run(SafeRunner.<wbr>java:42)<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 at org.eclipse.ui.internal.<wbr>JFaceUtil$1.run(JFaceUtil.<wbr=
>java:50)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.ut=
il.<wbr>SafeRunnable.run(SafeRunnable.<wbr>java:178)<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 at org.eclipse.jface.preference.<wbr>PreferenceDialog=
.okPressed(<wbr>PreferenceDialog.java:971)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(0,112,192)">Luffy<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"=
color:rgb(0,112,192)">Nanjing R&amp;D Center<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(0,112,192)">Skypin=
e Electronics (ShenZhen) Co. Ltd<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US" style=3D"color:rgb(0,112,192)">Office Telephone: =
(+86)25-84671286-6034<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US" style=3D"color:rgb(0,112,192)">Address: Zijin Entrepreneur R=
&amp;D Centre,No.89 Victory road,Jiangning Disctrict,Nanjing,China(<wbr>211=
100)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p></div>
<br><br>
<hr style=3D"border:none;color:rgb(144,144,144);background-color:rgb(176,17=
6,176);height:1px;width:99%">
<table style=3D"border-collapse:collapse;border:none">
	<tbody><tr>
		<td style=3D"border:none;padding:0px 15px 0px 8px">
			<a href=3D"https://www.avast.com/antivirus" target=3D"_blank">
				<img border=3D"0" src=3D"http://static.avast.com/emails/avast-mail-stam=
p.png" alt=3D"Avast logo">
			</a>
		</td>
		<td>
			<p style=3D"color:rgb(61,77,90);font-family:Calibri,Verdana,Arial,Helvet=
ica;font-size:12pt">
				This email has been checked for viruses by Avast antivirus software.
				<br><a href=3D"https://www.avast.com/antivirus" target=3D"_blank">www.a=
vast.com</a>
			</p>
		</td>
	</tr>
</tbody></table>
<br>
</div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c14b306ebb06905639120e2--
