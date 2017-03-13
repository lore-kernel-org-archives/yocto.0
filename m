Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DAC9E00A6B; Mon, 13 Mar 2017 06:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6726BE00A5C
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:22:44 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id z13so83831188iof.2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:from:date:message-id:subject:to;
	bh=T+3zCQZ5oxfJA4E6Qe+wIrQtqR5gtmJ4G3EHhekG8p0=;
	b=Gn7D3JSYZ88o3Os+5YgGnfg3jjaUhPvx3FKpdabZSR/1TCfT2O//GS4+Bn4ejkqlFB
	gIgBfJVEdyVZg70HtikSyD26+hojJ2qy99PjK9xsIwPErJyGCFcarN+clBdzWF8g2jED
	xeHB6Q+cfMAJgZZFuCyhL7AJm72AyW020xsxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T+3zCQZ5oxfJA4E6Qe+wIrQtqR5gtmJ4G3EHhekG8p0=;
	b=XCC5nxmMc6HYOnGcEAf0RIdpizapI47PkTwVfTb5flsm9EJSMPod3765bU3GJOIUkV
	HjHeGWt/mATEbiCMX2rFxjixsMBC6YijpMuvF0732fVyu7DXCJJBIQtUvRLiRTEOUHpH
	FNg1UGt3ReZI4AnVWN7KrkA2vs6PFtJ3ltOsPEpj93kmV0tMPa+t37Xo1PHoiq8SKCqO
	ZWw1ILncTlDskzaM/ocwNR/ErrzKsIPkd8uPzs7ItioUyrG7ZTRFPfPBP7mYpB9V9ue3
	g4kXHDoGNhvQc1T3J9dGbpIScngdyigqM5lUNs7Ybc7yVxiyDAQQehqofBuU+VJNXe0j
	OGBw==
X-Gm-Message-State: AMke39lP+qnfnd1Wx46tIyE/Vkrsj9OChR3EHlZmVplEQT8foqhmkuD54NWJhJY58xZ1i6QrxgHHOrPu3D8jug==
X-Received: by 10.107.154.194 with SMTP id c185mr26941496ioe.109.1489411364010;
	Mon, 13 Mar 2017 06:22:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Mon, 13 Mar 2017 06:22:43 -0700 (PDT)
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Mon, 13 Mar 2017 18:52:43 +0530
Message-ID: <CALDHXteSY2m8mwzM2nE-WyQKimR31QXSFNx-bnKJjoPA1zYB=w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: GUI supported by Yocto project
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
X-List-Received-Date: Mon, 13 Mar 2017 13:22:48 -0000
Content-Type: multipart/alternative; boundary=001a1140f4b64700e5054a9c9b3f

--001a1140f4b64700e5054a9c9b3f
Content-Type: text/plain; charset=UTF-8

what are all different GUI supported by  the Yocto project ?

--001a1140f4b64700e5054a9c9b3f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>what are all different GUI supported by=C2=A0 the Yoc=
to project ?<br></div><br></div>

--001a1140f4b64700e5054a9c9b3f--
