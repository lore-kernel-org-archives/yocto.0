Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B33AE00AA8; Tue, 12 Jan 2016 00:45:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E4CE00A7D
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:45:49 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id g73so180756853ioe.3
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 00:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=TacVKZQNUE5YQP59azuHJLf5QMT681V9+Jkm9zoqe3o=;
	b=TZto/4a3nxvxdiHOxJTD82qa+srXgBzezy1QAah38zDkgqy5e5k7cOxdE8dkLSBHMM
	+A9dYLpp1XmOGmMmrGdfTU5ENTJDY6t9JWzHZkt7LGuHQnZ7WPZMPtJYQM1MFPicD0Cw
	LzVJycdxM/Geb2Pjm4+I8QoagZpBBjsytLD5jAI/smlafB3gvixG3UjbWHaBRrZJOdvw
	pDPZnNNdZHkcopoCUrAwMni+wsdJ9jMxOi6m836pLaLzdUpeu9/tVdgJMsBjINNYSETS
	bEXFqZgWmNEaQ/A65hh2HH+xOeiLK8ic0NBSkGeqzuZW1iS28Sc8qahptC3V3S8iznKS
	hWtA==
X-Received: by 10.107.34.79 with SMTP id i76mr70136152ioi.195.1452588348951;
	Tue, 12 Jan 2016 00:45:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Tue, 12 Jan 2016 00:45:19 -0800 (PST)
In-Reply-To: <6e08071c20fb36e6744479e96267006c@technux.se>
References: <1452530987-994-1-git-send-email-petter@technux.se>
	<1452530987-994-5-git-send-email-petter@technux.se>
	<7564A308-E4D5-4B05-B03A-95A2B37A5F59@gmail.com>
	<20160111203227.GA10203@resin>
	<6e08071c20fb36e6744479e96267006c@technux.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Jan 2016 00:45:19 -0800
Message-ID: <CAMKF1sqzfKMJ+SW-bdGo=qP5m9wGOxW4MWLQs2CKon03hMxfBA@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/5] pitft: Add basic support for PiTFT
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
X-List-Received-Date: Tue, 12 Jan 2016 08:45:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 11, 2016 at 10:51 PM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
> 2016-01-11 21:32 skrev Andrei Gherzan:
>
> On Mon, Jan 11, 2016 at 09:55:43AM -0800, Khem Raj wrote:
>
> On Jan 11, 2016, at 8:49 AM, Petter Mab=C3=A4cker <petter@technux.se> wro=
te: Add
> basic support for PiTFT display by using device-trees. In order get it
> working below configurations must be active in local.conf: MACHINEOVERRID=
ES
> .=3D ":pitft=E2=80=9D
>
> Using MACHINE_FEATURES will be more appropriate term. Effects are same.
>
> Indeed. I support MACHINE_FEATURE usage here.
>
> I agree that the term MACHINE_FEATURES is better. However since
> MACHINE_FEATURES isn't included in the OVERRIDES variable I will not be a=
ble
> to use the task pre/appends that was the reason I used MACHINEOVERRIDES i=
n
> the first place. The reason I want to use overrides in this case is since=
 I
> think it makes the code easier to read and understand for the user (in th=
is
> particular case at least). I can of course change to just using variables
> (like in many other optional features in meta-raspberrypi) or change to
> MACHINE_FEATURES. But I'm not sure how I can solve for example the below
> part in a effective and nice way:

it really doesnt need to have override, you can enquire
MACHINE_FEATURES in python or shell.

>
> xserver-xf86-config_0.1.bbappend
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> SRC_URI_append_rpi =3D " file://xorg.conf.d/10-evdev.conf "
> SRC_URI_append_pitft =3D " file://xorg.conf.d/99-pitft.conf "
> <---------------- My change....
>
> do_install_append_rpi () {
>     install -d ${D}/${sysconfdir}/X11/xorg.conf.d/
>     install -m 0644 ${WORKDIR}/xorg.conf.d/*
> ${D}/${sysconfdir}/X11/xorg.conf.d/
> }
>
> FILES_${PN}_rpi +=3D "${sysconfdir}/X11/xorg.conf
> ${sysconfdir}/X11/xorg.conf.d/*"
> ------------------- end -----------------------
>
>
>
> But if you have any good suggestions about how to solve this, please
> enlighten me =3D)
>
> BR Petter
>
> -- Andrei Gherzan

