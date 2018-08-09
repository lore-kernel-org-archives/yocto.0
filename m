Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20977E0090C; Thu,  9 Aug 2018 05:39:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CBFFE0084E
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 05:39:12 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id h4-v6so6257328qtj.7
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 05:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=8l9PVsCnau+hwi59hUkFZ98gBMdjjdwAucpwXgoUfhU=;
	b=mFIuLJ2+/sTmJlDgxFLSC0ATrJX0Nqs/ne43yRXb/q8Sc992aDfltAHlxo5tbHv4Vx
	U7UrS6VKT7FHMova9dMtDEABRM2C0w1G9bLYpzz4QRppItGZ8LjLEasvaKS41pJvS1fB
	jDsr6mexXZmlGmFBGr60jTjL4bc8teaNPeeFibUxntrL75ZuVzY57nQAkHTDBMvGVqPJ
	491MZkZYgOSeBN/GGkk27m75m5yUO9G8qP0rLaz5AMczsiW4eMJCBJzwA2WP8E6XhLJy
	mzmysL0BZaW1MSSnnx+SoAaoTBWsvxB8qNDRpU2ArC34dm5OSpPanERJMAm8OiOSqOmM
	D5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8l9PVsCnau+hwi59hUkFZ98gBMdjjdwAucpwXgoUfhU=;
	b=K5TrQOCcGNoT4hk6Bd/Fl4fihq8OFE7KDF/2/mRLgW5hVxjsX4A3QDgoWRO7kWqoE3
	1uKsREWp/w284/Dq07psaK7G6SIrSnLueh9q4MDfWyAgn76uECIPH4lIyUFMG1BY83u7
	JGP/RBYMRu1vw4yiPvdGSxIs5mRWRag9vWIZQz+Vcy6o7cYvD2ceV0wxmgHklE6Ph4hR
	QFCWE0HokNsBlsXcs76qmLYZvN60t51u3x7Dez17U4BUWZMF0+sZg6+7snom2NXc1FK8
	7n8+K0KWNs9ocSyLEDplx3gsMi0fDIWawZ1SWv5RZOzxT0KXL0oRPBVSO2WopvunVSez
	s9kw==
X-Gm-Message-State: AOUpUlG8Ys9WkEqnWB1ZgY2w81ld+SWJFjD/mcVWbRRPISW9rY8wNQx4
	i5HBy2XbOOiApuyO8SpvJfTQkC8zv9dGmrGyw+BdLdoP
X-Google-Smtp-Source: AA+uWPy4ERNSnWU20rdp0HTGLRSD/MWqwdhAkAFRLomgKkKYUD4GZEDxCBPYp4+qnxqMUnD0cOMm43JwuPTvRnuxi4o=
X-Received: by 2002:ac8:71c9:: with SMTP id i9-v6mr1769463qtp.22.1533818351396;
	Thu, 09 Aug 2018 05:39:11 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Thu, 9 Aug 2018 14:39:00 +0200
Message-ID: <CAKPYHZ7FmcJ=5iXNRjMLLU84vVW=bOQU25Y_rCHn+AQiH0eRSg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: HELP!
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
X-List-Received-Date: Thu, 09 Aug 2018 12:39:13 -0000
Content-Type: multipart/alternative; boundary="000000000000fc2e4c0572ffe9a2"

--000000000000fc2e4c0572ffe9a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am currently trying to migrate from Yocto 1.8 Poky Fido 13.0.0 to Yocto
2.5.

After cloning the Poky repository, I was confused with which tag to
checkout with.

Could you please help me understand the difference between the tags
*"sumo-19.0.0"
*and *"yocto-2.5"*

As far as I understand, both mean the same since "2.5" is the
DISTRO_VERSION and "sumo" is the DISTRO_CODENAME.

But is still the same with the checkout tags as well?

Many thanks in advance!

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
Mob: +4915216144064

--000000000000fc2e4c0572ffe9a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif">Hello,</div><div class=3D"gmail_default" style=3D"font-family:georgi=
a,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:georgi=
a,serif">I am currently trying to migrate from Yocto 1.8 Poky Fido 13.0.0 t=
o Yocto 2.5.</div><div class=3D"gmail_default" style=3D"font-family:georgia=
,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:georgia=
,serif">After cloning the Poky repository, I was confused with which tag to=
 checkout with.</div><div class=3D"gmail_default" style=3D"font-family:geor=
gia,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:geor=
gia,serif">Could you please help me understand the difference between the t=
ags <b>&quot;sumo-19.0.0&quot; </b>and <b>&quot;yocto-2.5&quot;</b></div><d=
iv class=3D"gmail_default" style=3D"font-family:georgia,serif"><b><br></b><=
/div><div class=3D"gmail_default" style=3D"font-family:georgia,serif">As fa=
r as I understand, both mean the same since &quot;2.5&quot; is the DISTRO_V=
ERSION and &quot;sumo&quot; is the DISTRO_CODENAME.</div><div class=3D"gmai=
l_default" style=3D"font-family:georgia,serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:georgia,serif">But is still the same with t=
he checkout tags as well?</div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:georgia,serif">Many thanks in advance!</div><div class=3D"gmail_defau=
lt" style=3D"font-family:georgia,serif"><br></div><div><div dir=3D"ltr" cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"georgia, ser=
if" color=3D"#666666">Mit=C2=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Re=
gards,</font><div><font face=3D"georgia, serif" color=3D"#666666">Dhanush K=
eshava Reddy Soppahalli</font></div><div><font face=3D"georgia, serif" colo=
r=3D"#cc0000">Mob: +4915216144064</font></div></div></div></div></div></div=
></div></div></div></div>

--000000000000fc2e4c0572ffe9a2--
