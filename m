Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55C6BE006E9; Thu, 26 Feb 2015 03:45:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12868E003AB
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 03:45:48 -0800 (PST)
Received: by mail-qa0-f42.google.com with SMTP id w8so7277601qac.1
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 03:45:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FBaod7xTPNx+1fffYzlb1G41dBti3S/Q4w817MVfyMA=;
	b=hQey2Xeok+wZpsrX7p+5VVUvKsC1HYaTiI/zBaGY8ZNEDTmHG2I9dI2qP+rEfNgI1R
	jvS2GYppH/6nhXi7kBw1X0AEsEc2uaOgp2ogTPNxVvZem2J8SsMsCswbZcW6U21W+31c
	PJl65P+JigFRmkXiYz3ha2Z5bg0BZSZtpcGfjKOTuq9QjObjdyQrkwkMcvwbjZYr3/XM
	pRDBH2bbgP1l3oIuqBIBydDus3sooXG4t0pG4zsFhxuRiyQ8Jbtq53Ro5Y9MXsWaWJ8Z
	c2oiWKU+5Cy18ms9XYOYKCOgBGU/hxjB8OwUOkpYH/GWD82ec/RHJYFVL6xw1Qye+nni
	Ejow==
X-Gm-Message-State: ALoCoQmla1O9YuXuZPoeOCBDhSBCEJ3tqgUaHjOYzSO5G+PlZ74FKWH2SSUEthbi33V68FcZKx2o
X-Received: by 10.140.40.70 with SMTP id w64mr17069679qgw.14.1424951147826;
	Thu, 26 Feb 2015 03:45:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Thu, 26 Feb 2015 03:45:27 -0800 (PST)
In-Reply-To: <54EE5EAC.6050901@linux.intel.com>
References: <54EE5EAC.6050901@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 26 Feb 2015 11:45:27 +0000
Message-ID: <CAJTo0LYmtK2jJULDv0nxUmzfrZJ0wA+0-pCT0sdCHEq+nfw4fg@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe reporting system Announcement
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
X-List-Received-Date: Thu, 26 Feb 2015 11:45:52 -0000
Content-Type: multipart/alternative; boundary=001a11c14f4afd29bd050ffc4afd

--001a11c14f4afd29bd050ffc4afd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 February 2015 at 23:45, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.in=
tel.com>
wrote:

> I'm glad to announce the available of the Recipe reporting system (a.k.a,
> RRS) [1].
>

Woohoo! \o/

Ross

--001a11c14f4afd29bd050ffc4afd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 February 2015 at 23:45, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">&lt;=
<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.li=
mon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><div id=3D":49g" class=3D"a3s" style=3D"overflow:hidden">I&#39;m glad to a=
nnounce the available of the Recipe reporting system (a.k.a, RRS) [1].<br><=
/div></blockquote></div><br>Woohoo! \o/</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c14f4afd29bd050ffc4afd--
