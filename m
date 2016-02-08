Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE0A0E00D33; Mon,  8 Feb 2016 00:58:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA08E007DC
	for <yocto@yoctoproject.org>; Mon,  8 Feb 2016 00:58:52 -0800 (PST)
Received: by mail-io0-f180.google.com with SMTP id 9so188802950iom.1
	for <yocto@yoctoproject.org>; Mon, 08 Feb 2016 00:58:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vcjtlTwq5hO7RY/xAqouPke1pQ8p/dfRe+bBTOBeCb4=;
	b=chbmmTogUWlDbBnMsjz0AEI+L6nh58RKhbN+WwK0QuK+VRglZCqvnL8l+M8qoTjfWV
	BZ5FtRkHlsW6twhaRkO4Mip3+cTy+QXZxaA4kZ6B77aQy7bV3w1whJPbT9cIBKxASZq3
	23zMFiASmjnU2qqNxOgsoLkL9D5n28iFMf74QFWaEFacmN7/FqXZY+8JWN96nJmDtk/V
	aucRVgOJX97ecDjxT6i+Y7TBbL4vYIWbGVgLedmsiZcclj0L9FUOX5MuHlUgkNzQ7o2W
	RAcC6UOgMRp/Khrbm1IzZhp6yUeYEnBpGRw0lKCtH0u2LCr2FDGQxRCnLMA9VmZP2zMV
	JaiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vcjtlTwq5hO7RY/xAqouPke1pQ8p/dfRe+bBTOBeCb4=;
	b=dONVQE38F2v+NmnFgw7+H9NpdJ0pT+FAJ49l2DteRc8kXdJ36dRZMZJahRkNzx+arD
	mHKa1dOxFFe1a2Rlay0L9gLzaORn6J9NCS7xHO9+nMdufVXZpkA+7iwkoDCUHR2T47wx
	M7oaoaYZPbWklUB8DksiZ6Aox2iXLu4JipB622cbT7ePdlbBAZlcCMFDNW+wq0dhQYeT
	PJs+xQSX4wJZdVqQN7BLlwxTTRae8lLuE/OfTqNfJhI8j2LBPTUi540pDDL2d2/HOEto
	V9X4df4F+OC9VOBfvF7pTrPhAmIA+D9B5DZ+AqFv+8FEQ4gIKd9DMY3thJueSzVWD8WO
	1CGg==
X-Gm-Message-State: AG10YOQhJP8IdHHB5iSgBNHnqdyUwvNZZ+8BY2JtFw8CQT81w3TT4z0q23SXDEvACrPDWLn02vCSIVdFSfXcT+uW
X-Received: by 10.107.3.220 with SMTP id e89mr24734475ioi.99.1454921931430;
	Mon, 08 Feb 2016 00:58:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 8 Feb 2016 00:58:32 -0800 (PST)
In-Reply-To: <A705D969-9C1F-4429-97EA-3A9E3A8BB8E4@keylevel.com>
References: <020DD3FF-9405-4003-9C1B-F29F060567BD@keylevel.com>
	<A705D969-9C1F-4429-97EA-3A9E3A8BB8E4@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 8 Feb 2016 08:58:32 +0000
Message-ID: <CAJTo0LZxoT8b433vJtJi7wZSfwWCcAXC77N3WFJkj3pzaLsNVw@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Installing only part of linux-firmware
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
X-List-Received-Date: Mon, 08 Feb 2016 08:58:55 -0000
Content-Type: multipart/alternative; boundary=001a113f0e7ce634d5052b3e683e

--001a113f0e7ce634d5052b3e683e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 7 February 2016 at 21:49, Chris Tapp <opensource@keylevel.com> wrote:

> I=E2=80=99ve now done this by creating a bbappend for linux-firmware:
>
> PACKAGES =3D+ "${PN}-rtl_nic"
>
> FILES_${PN}-rtl_nic =3D " \
>   /lib/firmware/rtl_nic/* \
> =E2=80=9C
>
> Does what I want, but is that the best way of doing it?
>

This is the best way for you now.

That's exactly why the recipe has quite a lot of subpackages, feel free to
submit more upstream.

Ross

--001a113f0e7ce634d5052b3e683e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 February 2016 at 21:49, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":kr0" class=
=3D"a3s" style=3D"overflow:hidden">I=E2=80=99ve now done this by creating a=
 bbappend for linux-firmware:<br>
<br>
PACKAGES =3D+ &quot;${PN}-rtl_nic&quot;<br>
<br>
FILES_${PN}-rtl_nic =3D &quot; \<br>
=C2=A0 /lib/firmware/rtl_nic/* \<br>
=E2=80=9C<br>
<br>
Does what I want, but is that the best way of doing it?</div></blockquote><=
/div><div class=3D"gmail_extra"><br></div>This is the best way for you now.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">That&=
#39;s exactly why the recipe has quite a lot of subpackages, feel free to s=
ubmit more upstream.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113f0e7ce634d5052b3e683e--
