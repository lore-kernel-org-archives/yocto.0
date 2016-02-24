Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFDF6E00BA0; Wed, 24 Feb 2016 15:46:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4399E00B70
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 15:46:01 -0800 (PST)
Received: by mail-ig0-f169.google.com with SMTP id xg9so2288011igb.1
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 15:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1xkD/c3z7oZe1O4mxbGgomtt5Yt1lplovxJGMgk+6Ho=;
	b=0tevH+oGP1w2h+nB/SS9LcdsuJp00E0641dz5i451q6g3v6qA9+XZQkyEnIMkEmu5/
	PrU2CZzz4kjHz5Q4nqxdIoL7XSS+jbQnxMr2UOJXhoRuJm9ijNr0JG6BuI0gtTNPsePy
	5nZCtOwEAJD/GCIkaQ5ihMnFixSMgBQrQaERfVNPCytdNPS8W6kKPO9+o9XF2Tyg/yFo
	HVJBmH0wS78OIF7r2fL4U/B9XVmAMZp7JfZFDDLIK2mpRHc0l09bv3W8sTsv0eAUzkAO
	tGNAlW+fpsNffNesXaT0UPnEzKZ/0DEag9ZrEWH5Dl7Wklc70iMuH4sNtfedOTal4sb2
	Mgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1xkD/c3z7oZe1O4mxbGgomtt5Yt1lplovxJGMgk+6Ho=;
	b=IADqmpzL1fRpgd9P/K01a3nmNq3SZ5WBPGF0VkquVlMWoW36eENp/4eiH6iUOguLYz
	/vLdUJIeSVNaDe6ghvZMKf6q3Lp2Sakl8taMAGS956l0HGibNglp9Zh8eq2t/pENaXPK
	ObZUdXDrOI58PpvuhwYK/mEJrij4NzL4j6J2CShEFqziHRqNlDXA2N8QWJ7NNlOP2s0A
	Lym6q0GrFpdw0Hn8u8oATGBXLviddgiI6xxgXRrEpZNbe9i+FPpNphee43SZY3/39SYd
	4PEhHE3kq3MttYMuWglf/mGJYkG2CX7N4RnDeKA4Bn7LW+DSaJ3SPSFKkY+xPKQOsdiO
	aPFg==
X-Gm-Message-State: AG10YOTEbZaPtxe/juXNotfV6P6aoqsVjUVG6VAvtMzooWPhIumiKapoTTpUMsp7/YOU2Udi6vWb5e0UcS8JR1LO
X-Received: by 10.50.126.8 with SMTP id mu8mr224416igb.52.1456357560878; Wed,
	24 Feb 2016 15:46:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 24 Feb 2016 15:45:41 -0800 (PST)
In-Reply-To: <1FFB62CE8AEB0D4298B51122D8903E96261BAA72@irsmsx110.ger.corp.intel.com>
References: <1FFB62CE8AEB0D4298B51122D8903E96261BAA72@irsmsx110.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Feb 2016 23:45:41 +0000
Message-ID: <CAJTo0LbV7q4QDAmi=C+f3DMfhhP4Sc2Kmqpj_z+avqpE_Cqupg@mail.gmail.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Cobbley,
	David A" <david.a.cobbley@intel.com>, "Esquivel,
	Benjamin" <benjamin.esquivel@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: Full Pass test report for YP 2.1_M2.rc3
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
X-List-Received-Date: Wed, 24 Feb 2016 23:46:05 -0000
Content-Type: multipart/alternative; boundary=047d7b1635bf152314052c8cabdc

--047d7b1635bf152314052c8cabdc
Content-Type: text/plain; charset=UTF-8

Hi,

On 24 February 2016 at 15:36, Georgescu, Alexandru C <
alexandru.c.georgescu@intel.com> wrote:

> -        9131<https://bugzilla.yoctoproject.org/show_bug.cgi?id=9131> -
> We found that for some BSPs (detected on 32bit, qemuarm and qemuppc)
> Applications can't be opened in SATO due matchbox issue.
>

So this is caused by g_spawn() in glib failing as it fork()/exec()s.

I can't replicate this on images I've built myself, and interestingly if I
take a broken image from the autobuilder and install libglib-2.0-0 also
from the same autobuilder run in the image, the bug disappears.

I'm starting to suspect some rootfs-time image manipulation such as
prelink, but again enabling that here doesn't cause the problem.

So, has anyone replicated this on an image they built themselves? And if
so, can I have your local.conf?

Cheers,
Ross

--047d7b1635bf152314052c8cabdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On 24 February 2016 at 15:36, Georgescu=
, Alexandru C <span dir=3D"ltr">&lt;<a href=3D"mailto:alexandru.c.georgescu=
@intel.com" target=3D"_blank">alexandru.c.georgescu@intel.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div id=3D":ee8" class=3D"a3s" s=
tyle=3D"overflow:hidden">-=C2=A0 =C2=A0 =C2=A0 =C2=A0 9131&lt;<a href=3D"ht=
tps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9131" rel=3D"noreferrer" =
target=3D"_blank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9131<=
/a>&gt; - We found that for some BSPs (detected on 32bit, qemuarm and qemup=
pc) Applications can&#39;t be opened in SATO due matchbox issue.<br></div><=
/blockquote></div><div class=3D"gmail_extra"><br></div>So this is caused by=
 g_spawn() in glib failing as it fork()/exec()s.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">I can&#39;t replicate this on im=
ages I&#39;ve built myself, and interestingly if I take a broken image from=
 the autobuilder and install libglib-2.0-0 also from the same autobuilder r=
un in the image, the bug disappears.</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">I&#39;m starting to suspect some rootfs-time=
 image manipulation such as prelink, but again enabling that here doesn&#39=
;t cause the problem.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">So, has anyone replicated this on an image they built them=
selves? And if so, can I have your local.conf?</div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">Cheers,</div><div class=3D"gmail_e=
xtra">Ross</div></div>

--047d7b1635bf152314052c8cabdc--
