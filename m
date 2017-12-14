Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89C0BE00D79; Thu, 14 Dec 2017 02:18:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f175.google.com (mail-yb0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DDF3E00D71
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 02:18:18 -0800 (PST)
Received: by mail-yb0-f175.google.com with SMTP id t127so3043554ybf.9
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 02:18:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=+1XnXjxsLDGQ3PrmodWnf5jG4GQ2xI6YP/kR0P8xiH8=;
	b=Kal/WeMa8u/2zaMrIY1NO48ev7OhwM36EDrzYhbaoSbHvcdhff4Te/skbQ7bmh/8+X
	QOKjKoukevATF7XJ9adPoEzjoc6fs6/5tygwMhgLWWhw6hauP0SUtP8NIV2XWC/wPu2B
	K8X1Vz/KWUZ2vmqGwXbSPoDXrLlHLL7p4SBPFGsk+v6eZI8S/PitS5FtEwvrAyQ9UzLo
	AyPrMqZi6D9N+3gpb66VTmdl0q/CUBcndJll3Wso3lIXP7cB0xKGxnsoQQJWqhjkgf0b
	wpaf5SD8rhbNSGN9ZeemcjGa4+gxcknfFg5cTHyVpXbO4cYLi3bp9xSyq4zEnD/LXHt+
	gW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=+1XnXjxsLDGQ3PrmodWnf5jG4GQ2xI6YP/kR0P8xiH8=;
	b=SQzK5floyDWfd3qb1Gs2U0mB/xkuSTyYJcTGfeDv9nzXT6y8KmtNI9EmVr0pNJsnhD
	lqV5WxOxHlMLC2lnnUl5cgJq66tqz+l7XiV2iWZbWwR3acYPxn32kZvWz7M81aaS8U88
	Unno+zUaJ12xWcyRXGnucRvApMlXEGMJucfxsfcg24r/kWFcTmLz6evIj9UKemy1A0hb
	7zQEBkvKqcdHfjUDh5cyKq8A26PsZLVSQXrDUpHivQD0EKVvmjCjmJn91U+dxP9aKigO
	f7pfQPoVXRwVz/4vZPT2oo351CGUmKpApeGNAgvl34i2qz7yPYK40H/UCEKWPqa3pk8t
	LSdA==
X-Gm-Message-State: AKGB3mJqlnHoiB0LTD18tzeduUpqlaS901NekKPot2dk9W+AKHN3GaKI
	fiF3OdD0Vr/j9qyAnmvf9yzWEbJsD/1wQs0MC8tSAA==
X-Google-Smtp-Source: ACJfBovB1+Gh32l5OVtu9B6rhj82g+E/D83zhvxQXppNL6S/a1rIkmqK60RMnHfHSGWq+OLDRQ3+FYvTO7vOuxFcr8k=
X-Received: by 10.129.85.132 with SMTP id j126mr3681588ywb.295.1513246697996; 
	Thu, 14 Dec 2017 02:18:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.97.6 with HTTP; Thu, 14 Dec 2017 02:18:17 -0800 (PST)
In-Reply-To: <CALbNGRQuSOkpFSPdCmRkKAtG79k_Awxkz_br=12UUue3euu0Fg@mail.gmail.com>
References: <CAPb0b+MTepwNFB6KEybbdH9kYaox-N54=gFsuyWa9Xn+zK2MoQ@mail.gmail.com>
	<CALbNGRRGxLOPojWhFis7Ew0TOx1R_kx2_Rhp7AFJEa5GYuh=AQ@mail.gmail.com>
	<CAPb0b+N-u1OEOhUB1QT62i-8RTkPrr1m1ZouJ8qMTUnNjasUVA@mail.gmail.com>
	<CALbNGRQuSOkpFSPdCmRkKAtG79k_Awxkz_br=12UUue3euu0Fg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 14 Dec 2017 11:18:17 +0100
Message-ID: <CALbNGRTUQRgpizhqz4CH7GCqGXbmJCpfbC=h3ZvjLBsDPcN_Yw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Sherif Omran <sherifomran2000@gmail.com>
Subject: [meta-raspberrypi] linux kernel rt
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
X-List-Received-Date: Thu, 14 Dec 2017 10:18:19 -0000
Content-Type: multipart/alternative; boundary="001a113f222ee4470305604a3322"

--001a113f222ee4470305604a3322
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2017 at 9:59 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> do you use the bluetooth also?
>
>
>
>
> sch=C3=B6ne Gr=C3=BC=C3=9Fe aus dem Bodensee :)
>
> Let's get back back to public..

Hallo Sherif,

I have disabled WLAN and Bluetooth for my devices - so I cannot say
something about that. Reason is that I play around sequencer apps and radio
devices cause trouble there.

Just for the record: I have the merge back to meta-raspberrypi on my TODO
but did not find the time yet due to other challenges. Forking should not
be the way to go because meta-raspberrypi is maintained very well these
days.

Andreas

--001a113f222ee4470305604a3322
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span class=3D"gmail-"></span><span class=3D"gmail-"></spa=
n><br><span class=3D"gmail-"></span><div><span class=3D"gmail-">On Thu, Dec=
 14, 2017 at 9:59 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:=
sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&=
gt;</span> wrote:</span><br><span class=3D"gmail-"></span><div class=3D"gma=
il_quote"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_q=
uote"><span class=3D"gmail-"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>do you use the bluetooth also?<br></div><br><div>=
<br><br><br>sch=C3=B6ne Gr=C3=BC=C3=9Fe aus dem Bodensee :)<br></div></div>=
<div class=3D"gmail-m_-4647769954437016713HOEnZb"><div class=3D"gmail-m_-46=
47769954437016713h5"><div class=3D"gmail_extra"><br></div></div></div></blo=
ckquote><div><span class=3D"gmail-">Let&#39;s get back back to public..</sp=
an></div><div>=C2=A0</div></span><div>Hallo Sherif,</div><div><br></div><di=
v>I have disabled WLAN and Bluetooth for my devices - so I cannot say somet=
hing about that. Reason is that I play around sequencer apps and radio devi=
ces cause trouble there.</div><div><br></div><div>Just for the record: I ha=
ve the merge back to meta-raspberrypi on my TODO but did not find the time =
yet due to other challenges. Forking should not be the way to go because me=
ta-raspberrypi is maintained very well these days.<span class=3D"gmail-HOEn=
Zb"><font color=3D"#888888"><br></font></span></div><span class=3D"gmail-HO=
EnZb"><font color=3D"#888888"><div><br></div><div>Andreas<br></div></font><=
/span></div></div></div>
</div><br></div></div>

--001a113f222ee4470305604a3322--
