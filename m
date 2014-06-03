Return-Path: <gada.kashyap@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D332DE00B20; Tue,  3 Jun 2014 08:49:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gada.kashyap[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56379E0073D
	for <yocto@yoctoproject.org>; Tue,  3 Jun 2014 08:49:17 -0700 (PDT)
Received: by mail-yh0-f49.google.com with SMTP id c41so5225362yho.8
	for <yocto@yoctoproject.org>; Tue, 03 Jun 2014 08:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EnO3o4R1gmjxY86/hFq9MITZ2TEeiUsdBKk3RPjNnGE=;
	b=XFo2BuqPLxOO83TRxqp0y+5twT0tjD7BGIKG/1n32Qlp4gVbhZ7ZdW+cRHQtloQkJ3
	iVX1B8IxuxqnYkq3cLFg7NeKwOfLsuGUvVpg4GD/KHvy8HkdzEy6ZrpIo2yZh/hJ9Ng7
	SeuSubJT8c6Xa+KbEDeZJ7UAT85hyVMeyzLOPx/unZujHdKsK9aw3IAcHgG/95hE3ZTS
	fznPijp+iJXZgrS6o6ROqxN2QtVxqracQdeooSmOmIhmVC+3jC9FPuDbzSQGGDKKJ4H+
	qDZtlNVGPAP365BJyUDZLrm3Shb/laQZGaTwzQsvDPgUV716NajziVUnxMg233Jtm4Vp
	odXg==
MIME-Version: 1.0
X-Received: by 10.236.137.114 with SMTP id x78mr3153526yhi.97.1401810557488;
	Tue, 03 Jun 2014 08:49:17 -0700 (PDT)
Received: by 10.170.143.138 with HTTP; Tue, 3 Jun 2014 08:49:17 -0700 (PDT)
In-Reply-To: <CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
	<CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
	<CANJXcUaZm=4XeG4PDZwbaX+DtCo-fh+-aWWD49EsjOVmOuiN0Q@mail.gmail.com>
	<CANJXcUZOwrAuMjkt_RfBuSU3fyyDbay024qvf1KEfuPkOuJBew@mail.gmail.com>
	<CAJTo0Lbd257SN_SmwD=2MKYrw0LYODnhJoPhCPCSpdhxf7Nixw@mail.gmail.com>
Date: Tue, 3 Jun 2014 21:19:17 +0530
Message-ID: <CANJXcUYEdbSf1Fo5kZAw5GE+36fnz=EgzZojXxr44WdnCtC1Qg@mail.gmail.com>
From: Kashyap Gada <gada.kashyap@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Tue, 03 Jun 2014 15:49:19 -0000
Content-Type: multipart/alternative; boundary=20cf303dd4045274cc04faf07436

--20cf303dd4045274cc04faf07436
Content-Type: text/plain; charset=UTF-8

its copied!


On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 3 June 2014 16:39, Kashyap Gada <gada.kashyap@gmail.com> wrote:
> > bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission
> denied
>
> The permissions on that file don't involve +x.  Is that a fresh
> checkout of poky or copied from the removable media?
>
> Ross
>

--20cf303dd4045274cc04faf07436
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">its copied!</span><br></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Tue, Jun 3, 2014 at 9:16 PM, Burton, Ross <span dir=3D"=
ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bu=
rton@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">On 3 June 2014 16:39, Kashyap Gada &lt;<a hr=
ef=3D"mailto:gada.kashyap@gmail.com">gada.kashyap@gmail.com</a>&gt; wrote:<=
br>

&gt; bash: /home/kashyap/yocto/poky/scripts/oe-setup-builddir: Permission d=
enied<br>
<br>
The permissions on that file don&#39;t involve +x. =C2=A0Is that a fresh<br=
>
checkout of poky or copied from the removable media?<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--20cf303dd4045274cc04faf07436--
