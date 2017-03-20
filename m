Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C451E00B3E; Mon, 20 Mar 2017 06:50:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D33E00B6C
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:43 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id x35so106802131qtc.2
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YSEgtZreBhGpl+saCjvRvub9slsXpwbEV448zPAQzsk=;
	b=YRsEIaxge/c3+6zMHFg1YgAJeB1sHmucOqtl96fGjZ9vNqD7FJaNnKKf6aKSYTW9Fz
	mhn4pUUXC33ztDIbvY1cWIXOxwux+osvbVCR31e7nj2HKmJMJT58/jUSfWyKzI/Uqzbn
	dgJ9VmmISmGE4N2+3hAjZdW9TGdjNAl2j73hIPupjfDIXClhKowUUzutRuZABVf8FP68
	vy2DgYwFlMpYNyPgKm7Tx5Lwk6R11XMZqDWorcbjGfJeDycoX8un5kXgRr1N3X69CllZ
	Lns4SflE0+7JmP5D4dYIaawsOxTJbmdQlqWnus1w4fajsU2B7yZ+RD54BHQ0kVbRbCIt
	lfwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YSEgtZreBhGpl+saCjvRvub9slsXpwbEV448zPAQzsk=;
	b=Mtpg3sKTT5CQWdj56GibrvuwYvQIrTwK+YVcUL/F+GL6+SVGUPPW2uYGv+fhfC/TL+
	aASLt/oL4dzvJcbej2OwsjzCioeuufmbvpXmbW73kkdbzqESCvdGD+8Q9zPnOH/MML5I
	nW73UKkvWA8RMYyJBrWrfDtxvvSJCTwkhwLifRTB943YBWMi74OKSV+E6QlFwhlGMKYQ
	kXhVV+QneuiPNgOcotRVImGKj9NYMPP15aA7Hnkak5ACLiMhCRBdmUIhrvWllt437PXV
	B8E/qCt6bN/wynK17876sWwdYinj4lcH9pUG8TLoK+nfdQm2Kg5SkfVWEYaO59m6Ta8o
	y8Hg==
X-Gm-Message-State: AFeK/H2koqyxXrizDiO8VHqI37KaPivUBjbowFytHAny6Dq2wV1/NBEVX7t7+AWt/IZHawqKV6z3bXek5CzT2OHF
X-Received: by 10.237.43.69 with SMTP id p63mr25529322qtd.68.1490017842612;
	Mon, 20 Mar 2017 06:50:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 20 Mar 2017 06:50:22 -0700 (PDT)
In-Reply-To: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
References: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Mar 2017 13:50:22 +0000
Message-ID: <CAJTo0La3kUo5YNeF7QsJbbUDmQPJgz5t3WJyfJYSgEt6eAge1w@mail.gmail.com>
To: "Esponde, Joel" <Joel.Esponde@honeywell.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: file: fetch fail on missing commit
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
X-List-Received-Date: Mon, 20 Mar 2017 13:50:55 -0000
Content-Type: multipart/alternative; boundary=94eb2c124cc4381b1e054b29d0e7

--94eb2c124cc4381b1e054b29d0e7
Content-Type: text/plain; charset=UTF-8

On 20 March 2017 at 11:16, Esponde, Joel <Joel.Esponde@honeywell.com> wrote:

> But based on what I see in my machine, all from scratch builds seem to be
> broken.
>
> My morty and krogoth builds are broken.
>
>
>
> Am I alone to have that issue or is it generalized?
>

You're right, and patches are on the list.  Hopefully we can get everything
merged today.

Ross

--94eb2c124cc4381b1e054b29d0e7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 March 2017 at 11:16, Esponde, Joel <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Joel.Esponde@honeywell.com" target=3D"_blank">Joel.Esponde@honeywell.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"Mso=
Normal"><span style=3D"color:#400000">But based on what I see in my machine=
, all from scratch builds seem to be broken.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">My morty and krogoth b=
uilds are broken.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#400000">Am I alone to have tha=
t issue or is it generalized?</span></p></blockquote></div><br>You&#39;re r=
ight, and patches are on the list.=C2=A0 Hopefully we can get everything me=
rged today.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--94eb2c124cc4381b1e054b29d0e7--
