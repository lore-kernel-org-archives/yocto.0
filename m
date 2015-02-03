Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05ACAE0076F; Tue,  3 Feb 2015 13:35:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65EB9E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 13:35:06 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id w8so35857068qac.3
	for <yocto@yoctoproject.org>; Tue, 03 Feb 2015 13:35:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9Qs5MOEDtLDwEvkHf0Gxm9hvGgu32h02WeZYlAtebBo=;
	b=FC/zhdSOhZ98iyUGtyRx6lx3uW4vAz9+HzYnXXlzibT3RheyDOHLuXXkPV4MjVwcr0
	xeIjuLKHJhh/zYbN1WaK5TtOE7wwpy8knmjlgwvKV3UdPf+6QoRjO0g6vFVdqr0WpaXp
	r+MRFPzrx3dGxTM+617s2x08E9orBdlYDco1vlVmQdQgp069oO30XiUVZXy/fRD8QO6u
	TyRy/jXhAouQ1ax1nbsEQwIoD0vkTuHuyIXMGMwSmo9RD8bXO/uFYfIvfSSaYwrrZEQV
	4lCtfMy/dDNcwnkoAZEE16y+qcdPquTVR+NdbtkmPyZJSTGc9dIv3LJ1W3bkJ55Vu4De
	wv9A==
X-Gm-Message-State: ALoCoQlCjO5nXNbj8Cpi98Tkcz0lpqxg848CTQAsPUIM5NN3YC6I/GXaX00viSoTCUZvuo3rf3hT
X-Received: by 10.224.24.132 with SMTP id v4mr58090677qab.17.1422999306132;
	Tue, 03 Feb 2015 13:35:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 3 Feb 2015 13:34:45 -0800 (PST)
In-Reply-To: <BAY169-W106583E852FA55C530E914CAE3D0@phx.gbl>
References: <BAY169-W106583E852FA55C530E914CAE3D0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 3 Feb 2015 21:34:45 +0000
Message-ID: <CAJTo0Lb5rbHBHm6hKtzQW1Xq2V5Y8sxGV=FkatkDF3FsL=C8HA@mail.gmail.com>
To: Jim Abernathy <jfabernathy@outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ACPI powerbtn
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
X-List-Received-Date: Tue, 03 Feb 2015 21:35:16 -0000
Content-Type: multipart/alternative; boundary=001a11c2b49e287e9d050e35d895

--001a11c2b49e287e9d050e35d895
Content-Type: text/plain; charset=UTF-8

On 3 February 2015 at 21:30, Jim Abernathy <jfabernathy@outlook.com> wrote:

> I need to add something that will 'shutdown -h now' when the power button
> is pressed.  I would figure that ACPI is already included in the
> core-image-base of the NUC bsp.
>
> Do I need to include a new file in /etc/acpi/events or do I need to
> include some package?
>

I'm literally signing off for the day but for what it's worth
core-image-sato does that already on my NUC, so there must be something in
that image that makes it work...  maybe acpid or acpi-support isn't part of
core-image-base?

Ross

--001a11c2b49e287e9d050e35d895
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2015 at 21:30, Jim Abernathy <span dir=3D"ltr">&lt;<a href=3D=
"mailto:jfabernathy@outlook.com" target=3D"_blank">jfabernathy@outlook.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">I =
need to add something that will &#39;shutdown -h now&#39; when the power bu=
tton is pressed.=C2=A0 I would figure that ACPI is already included in the =
core-image-base of the NUC bsp.<br><br>Do I need to include a new file in /=
etc/acpi/events or do I need to include some package?</div></blockquote></d=
iv><div class=3D"gmail_extra"><br></div>I&#39;m literally signing off for t=
he day but for what it&#39;s worth core-image-sato does that already on my =
NUC, so there must be something in that image that makes it work... =C2=A0m=
aybe acpid or acpi-support isn&#39;t part of core-image-base?</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11c2b49e287e9d050e35d895--
