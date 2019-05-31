Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32956E00D6B; Fri, 31 May 2019 04:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B690AE00D61
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 04:31:16 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id r185so7864312iod.6
	for <yocto@yoctoproject.org>; Fri, 31 May 2019 04:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Jtc9IPewrgKSA4I9HkHmL+HxD7sMrMAxUnW/qA+W/wA=;
	b=pvApjnSOFVI6Fxu2Y0jOqAltGfBowqY5KpW7LT1tGlEuL5C3v7xCXJuHxWUdhr5HTD
	9J7ExOcaw4DFOiCxulDTkKHMK8V8mzD/Aqlf8vqcu03bfwZEOnTTMA7L9L7X045QUHzE
	Ei/asSvSxWFlD/4/kx9sBX/5kgZRdnLfjqIU1om/Zz+yxP/fueAnegAieR0P6wYnnbbS
	GUdnAJujMGPu/FpzG8MjPclHkm9QulGzgM1eiUHx9BR3MCiOwmai4DeDxzap4onx7Dbs
	jRvnSZfujhuQujp13erpG/Vy6Jel6KNT05q/MPrvgpW1vU49OmsVFRrVUVCqhmQ2O8f7
	rUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Jtc9IPewrgKSA4I9HkHmL+HxD7sMrMAxUnW/qA+W/wA=;
	b=e3xvqClfS0eyxV4Kf0JFDbhrJ7ibEteNBkyY7GgtQApL3aLCwll9WtSM5adtNjgRtv
	5dr4MMDCU55A4dmXJS/28DwYG9lVvF9PZ5q7/XwaEAESrnU/eQBkpJIJdiiWvumImZ8S
	d47dpTelMWAjHY0zoKrYBKCsnxrxzzzXDqcoYsxQOPE0fbvIJqx7r6QIm3VI4MrVqocn
	ew9wrhyFf5CfnN7Qc6MDbW2gr9xVsrDB5tQakPFZPJzZHGwE55tZmjQN4KHDLLN/DPtG
	t+mnwvlYZzHmXLy6sk5hvK2w+SCHDKZ7KJQ0CDzmDPVutLPanTMaZJjJGO9FcWn7mXHV
	kzdg==
X-Gm-Message-State: APjAAAVIx5xNgHl1XAbEIaNqKPF12ARwZkn2V5+iTrKRaQAdLe5fyKfB
	VceFfGzlpzIKcvHfsllHmxANTCmFNT3KlBrRzZM4CQ==
X-Google-Smtp-Source: APXvYqw2Mk1zydBAina9do5XhSY7OGOIGBiysYqrS69IO3uKglIS7UAXHz1SJBB8+U+I3NXbovpjrUisf0S9mkTOG28=
X-Received: by 2002:a6b:38c3:: with SMTP id f186mr6341230ioa.187.1559302276059;
	Fri, 31 May 2019 04:31:16 -0700 (PDT)
MIME-Version: 1.0
References: <CALEwogiTw_xO+T4-vopZGQ+6MZOC+qCdTfug4wAWLJN-saa81Q@mail.gmail.com>
	<CANNYZj8D8RjHcJV4bLsVQDEPkSdhiYU7vyWWZUAP+J-ZpNwN+g@mail.gmail.com>
	<CALEwogg926iAfj+nyYJPJd92f3ByBi0+0uS8Uvof4DeB5Kpniw@mail.gmail.com>
	<CANNYZj-Gf3Va9JXPvKpPc0=A013F-4dR=qG0YyE8VU3jnyObOw@mail.gmail.com>
	<CALEwogi0mA4cHV_DWDdf92NP7o6o7WpMZZJZ+OAKeC_Nsdw=Ag@mail.gmail.com>
In-Reply-To: <CALEwogi0mA4cHV_DWDdf92NP7o6o7WpMZZJZ+OAKeC_Nsdw=Ag@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 May 2019 12:31:05 +0100
Message-ID: <CAJTo0Larf5ibOE1V0Veepjefx-gzTtq79uMwP1-4w8gcfjqJvA@mail.gmail.com>
To: =?UTF-8?Q?Serkan_T=C3=BCrker?= <serkan.tuerker@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python module not found when using autotools
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
X-List-Received-Date: Fri, 31 May 2019 11:31:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 30 May 2019 at 21:27, Serkan T=C3=BCrker <serkan.tuerker@gmail.com>=
 wrote:
> I understand the process of debugging build failures. I am just confused =
why my approach doesn't work.
> "python-soundcloud.bb" has the same format like other python module recip=
es in meta-oe.
> In tizonia.bb, I have added "python-soundcloud" to DEPENDS, so I assumed =
bitbake would resolve the necessary path's, which are necessary for the bui=
ld.
> It is also not only my fault not being able to fix this, it is also large=
ly related to the fact, that there is not much documentation around how to =
start developing with Yocto in general.

*How* is it looking for the module.  If as Alex said, it is running
the *native* Python, then it won't be finding any *target* modules
that you have DEPENDed on.

Ross

