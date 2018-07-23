Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0337CE008E0; Sun, 22 Jul 2018 17:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
	[209.85.208.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E5DE0086E
	for <yocto@yoctoproject.org>; Sun, 22 Jul 2018 17:48:09 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id f8-v6so15414010ljk.1
	for <yocto@yoctoproject.org>; Sun, 22 Jul 2018 17:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1pJNvNWcES5S/0r4YdaAvUEAaBEX/V64E5jdzy+WocE=;
	b=uMndFGRLnwJ9bP691bN9dBwpPWNSmaE7p+P/r71RdlsqzAwE5w0teqh/ES8JCb7FNu
	GFXQvOoAXplwPkPcpJ8Ve09onI+wm1nvjT874DeYh8U43sNOhggWtA2/p8ImfVhM9017
	RVKalCuY/gf2NWrl+5wD7KETBCFLDhwZmQyhzUYTdlwpvUVUcsvYVki56DqdMFTAjRRG
	RrkZuOn2Nb0dQI7l+EikixBkmFZcCy8ZpTaCk1PiP385PXCTUbuecjV/yJOvfAgBeQ0l
	HgECxnXtDz33OLIfwqBJO2WTyg/+qzuxIvYpPSwLeT6xoTrDNH9I8pJ0Mmqex9wNkSXs
	/k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1pJNvNWcES5S/0r4YdaAvUEAaBEX/V64E5jdzy+WocE=;
	b=pSILuY6qSXUdzUCJJg/NkNdvNxtAH+RtUkBCOcYQCKYKeFcrdqg8h/LOYSYRXEtmRP
	RfkzP3v5LksPxSJTg8oEtxwqXGy/jMcWGfSw1TIrq87yR6+lljHD4ap0liodSyRmHv7/
	KwEKHMQ/6Px1WHAJjPLs6EgmgkVgsQofkBqFFAqnar7epxVpyKjn6d1dDb6L50JtH7zW
	660IuoPd8JXfOQC5IGJ/FvEsxT4ocLEEjgVVFOADlNpF25OGGxAXc2qhBoOlQ7WFPsgr
	2jTDu5MaU2wWDQMW00BtUpDGUIZbyLzjJqJIC9tP4Qfdj2YDeRt5doNPvepd/C6klpa+
	vsHA==
X-Gm-Message-State: AOUpUlFJz8I3rD26/VTf0TDvIjitHKW/5yI9wMRrU5cWkU8o/UXj7OBZ
	zvFKYMeplEWT97s9lxxtfiHO42G2eSxKgPiWt48=
X-Google-Smtp-Source: AAOMgpe0xP6exl22DIGFBzNaP5QoE+NqHoPajc95Q+ZeNuu/pPsoWpX9un56bFun8iWqtvz1DbmBs/LPMuXoyrVM6Mg=
X-Received: by 2002:a2e:9004:: with SMTP id h4-v6mr7566418ljg.44.1532306888731;
	Sun, 22 Jul 2018 17:48:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:2195:0:0:0:0:0 with HTTP; Sun, 22 Jul 2018 17:48:07
	-0700 (PDT)
In-Reply-To: <ce7fc3e6ee9d4a78bfb688737838f9b4@E3PMBX02.idir.BCGOV>
References: <ce7fc3e6ee9d4a78bfb688737838f9b4@E3PMBX02.idir.BCGOV>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 22 Jul 2018 20:48:07 -0400
Message-ID: <CAHUNapR2MdFMg_5D_hiuAq5CO0t1FW=ghVoWRV2CY8Z8wSSViQ@mail.gmail.com>
To: "Gillani, Karim CITZ:EX" <Karim.Gillani@gov.bc.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] - X11 EGLSV2 Chromium
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
X-List-Received-Date: Mon, 23 Jul 2018 00:48:11 -0000
Content-Type: multipart/alternative; boundary="000000000000ca30d005719fff26"

--000000000000ca30d005719fff26
Content-Type: text/plain; charset="UTF-8"

Hi Karim,

Can you please also include the "Build Configuration" block that's printed
at the start of the build? That way we know what layers you're using, and
which branches/commits of those layers.

Best regards,
    Trevor

--000000000000ca30d005719fff26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Karim,<div><br></div><div>Can you please also include t=
he &quot;Build Configuration&quot; block that&#39;s printed at the start of=
 the build? That way we know what layers you&#39;re using, and which branch=
es/commits of those layers.</div><div><br></div><div>Best regards,</div><di=
v>=C2=A0 =C2=A0 Trevor</div></div>

--000000000000ca30d005719fff26--
