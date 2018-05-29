Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC4B7E00C2B; Tue, 29 May 2018 09:44:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E144E009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 09:44:44 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id f6-v6so42494197wmc.4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 09:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YZBRfFgpcToBk0AC/x9YFgI2mLOvYXAGKyWaiWkmzas=;
	b=PLilRt74ET0QAhK2Zjuo00GYPvVMRIvpa4xLn/kq5Dax2Gx/lDOHAlDSqSPsU3GaaZ
	rtExHLNrpaOsJFq9JYL7X2oOSDVFJh4H3vTWIul8bB69kzI80mzxHTH9AgCYf0lxMJye
	C+kWVcD7Bf5TQ34+IFfT73PQi/R80aMjD5wLRPMt0/EaYKnUrpadzFWrRYsqRi0N1kkK
	Iju9nfWEcRB01ayMyF9kUBBj5LAq8v02BHufL8A7TcoBE7r/KlHlisloPrJsIPMBYV4G
	eV6TQvhxNdbiWiIoCXTm8sR9GuQr5U8aeG+mgMO0bJ7dihG8CNIGfMxR4FkxHqbFlfTf
	I+FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YZBRfFgpcToBk0AC/x9YFgI2mLOvYXAGKyWaiWkmzas=;
	b=HBVGj5tGDlYA1FuNHs6Ot761hOIW2YQ9gfX1txMt4q0hcZ9qw/114MPVDaYO+7R3D/
	mfO6tJ48+jC/LKrAc2ncvBWWLZzrKPNPwe7AUeBawmV8HQtemWj5sd3CzMW7sjomZgwX
	nv3ddsuh5e1te2ZUnH8bkWaBJNSWUefumoY7+Bl4ahDFDialuhDwNGlN2vqg4egmk+vS
	U+npogkGRb3ciRKWKW/xKZpnoZliz/qNxgkWHDzWSN4ikaIsD8nK6wQTmzwI0EQYl5Gf
	+Cfss9MqKujnZcC5N19t/+yYoASh9B0PQ+4zutW7sdLyBybkyM9yCJbGEP7QOJOnYh2u
	aYTA==
X-Gm-Message-State: ALKqPwednykNzv3qmReQ+fU3mE+UlIEc5pLjzSY6cM8NuHYBFd1mZML4
	0A9quQFjmOGHoOralaG+2hj74GV+MPnssGbJ4Ng=
X-Google-Smtp-Source: AB8JxZqeRPFEBsBnLsp+khCKESOKPiKU9UzeRNtiqMxB9vIWPstPf8v8gbYkF4teWzaJY9CZiJ2NNbUcgfcCxu1u00k=
X-Received: by 2002:a2e:84d5:: with SMTP id
	q21-v6mr11421963ljh.126.1527612284214; 
	Tue, 29 May 2018 09:44:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:cb07:0:0:0:0:0 with HTTP; Tue, 29 May 2018 09:44:43
	-0700 (PDT)
In-Reply-To: <800E589716441541A37F6120DCDD24557A2CD7DE@IRSMSX101.ger.corp.intel.com>
References: <2c9b354f-cb29-d8ae-875f-123a45b045e6@linux.intel.com>
	<CAHUNapSC1zBx8vq1Z2p8pU-TV_r_-uXLHv_P+C4MuSti5Yz3_Q@mail.gmail.com>
	<064fd4f8-7cac-e354-a710-c61085e7fe84@linux.intel.com>
	<3ffb78f7-8115-6040-988a-6fe2a1f79a46@linuxfoundation.org>
	<800E589716441541A37F6120DCDD24557A2CC6B1@IRSMSX101.ger.corp.intel.com>
	<CADfgfoYPVVazGs+V4DPy_xHuDzQ65R=+3-HT_U1EpVH9s3Y0mg@mail.gmail.com>
	<CAHUNapR3pph31UUeOFXXhXbrjTfguMtWAH+U5ZJBmNNJ7zwj8g@mail.gmail.com>
	<800E589716441541A37F6120DCDD24557A2CD7DE@IRSMSX101.ger.corp.intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 29 May 2018 12:44:43 -0400
Message-ID: <CAHUNapTNyCdAoeC96kvb0LSKt1M-bVpGdCBew7uSS6-hVQtZ6w@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Call to Action] Yocto Project Bug Triage
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
X-List-Received-Date: Tue, 29 May 2018 16:44:46 -0000
Content-Type: multipart/alternative; boundary="0000000000008e21c6056d5af3ec"

--0000000000008e21c6056d5af3ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 29, 2018 at 12:25 PM, Osier-mixon, Jeffrey <
jeffrey.osier-mixon@intel.com> wrote:

> Here are links for shared google calendars for
>
>
>
> Public meetings: https://calendar.google.com/calendar/b/2?cid=3D
> dGhleW9jdG9wcm9qZWN0QGdtYWlsLmNvbQ
>
>
>
> Release schedule: https://calendar.google.com/calendar/b/2?cid=3D
> M2EwOTI3Y3RwczUxdThyczJqdjF1bGlnZGNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ
>
>
>
> I=E2=80=99ll add these links to the web page. Please let me know if you h=
ave any
> trouble with them.
>

Works fine for me.
Thanks!

--0000000000008e21c6056d5af3ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, May 29, 2018 at 12:25 PM, Osier-mixon, Jeffrey <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:jeffrey.osier-mixon@intel.com" target=3D"_blank">jeffrey.os=
ier-mixon@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div class=3D"m_-1556935572727498927WordSection1"><font face=3D"Calibri" co=
lor=3D"#1f497d" size=3D"2"><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">Here are links for shared google =
calendars for</span></font>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d"><u></u>=C2=A0<u></u></span></font></p>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d">Public meetings:
<a href=3D"https://calendar.google.com/calendar/b/2?cid=3DdGhleW9jdG9wcm9qZ=
WN0QGdtYWlsLmNvbQ" target=3D"_blank">
https://calendar.google.com/<wbr>calendar/b/2?cid=3D<wbr>dGhleW9jdG9wcm9qZW=
N0QGdtYWlsLm<wbr>NvbQ</a><u></u><u></u></span></font></p>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d"><u></u>=C2=A0<u></u></span></font></p>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d">Release schedule:
<a href=3D"https://calendar.google.com/calendar/b/2?cid=3DM2EwOTI3Y3RwczUxd=
ThyczJqdjF1bGlnZGNAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ" target=3D"_blank">
https://calendar.google.com/<wbr>calendar/b/2?cid=3D<wbr>M2EwOTI3Y3RwczUxdT=
hyczJqdjF1bG<wbr>lnZGNAZ3JvdXAuY2FsZW5kYXIuZ29v<wbr>Z2xlLmNvbQ</a><u></u><u=
></u></span></font></p>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d"><u></u>=C2=A0<u></u></span></font></p>
<p class=3D"MsoNormal"><font face=3D"Calibri" color=3D"#1f497d" size=3D"2">=
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;=
color:#1f497d">I=E2=80=99ll add these links to the web page. Please let me =
know if you have any trouble with them.<u></u><u></u></span></font></p>
</div></div></blockquote><div><br></div><div>Works fine for me.</div><div>T=
hanks!<br></div></div></div></div>

--0000000000008e21c6056d5af3ec--
