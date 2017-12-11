Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E16E3E00D55; Mon, 11 Dec 2017 03:55:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C54E008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:55:54 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id g75so13990286wme.0
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 03:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=qA7cdU1jNMREG1dBgli5n+cYspay5skpGPoWFAo3DvI=;
	b=I4vEWCrqr++y5ZksKVNGg0MOeDCvyH+pwwQrs6sbDEiQdCxUXsZTqZw3scd3bUYtjq
	4XXprZM9Qde7Ytue1eTHphGb+ajQkRzsxJtKnivsM2g65YheVrc+bQU3b83xPtTJ1gIy
	szVP6/REeQT9KFEXhmudU1KwjPTecPN2h9wW/kji8jfi/d8lXA91LcttWMBeD7OdHdij
	MaBJMGjD5228LIa/GeCYhnkLSh4JDeLoSxnMuybeDnoKsouo/sBqiF6dfA45o/z5FxaG
	Zo5KZDbVBI9eUOuPwsD/cM+7leiffc/rVIVdz6aYrFDllXijxJMMfAdrYBXuB1HTTAXJ
	33Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=qA7cdU1jNMREG1dBgli5n+cYspay5skpGPoWFAo3DvI=;
	b=o34wHQcK9a9V7S+PIHF2Vboj+ghFrVcFAJr16jjeyXiQuWDw5SELEnusr0FUediePe
	qujZZIZkhVd0/rr6l9wjrtiUpZd5EkemncrCg8c7V8z8w/VocvLkvMehkhhY2qIdRhKZ
	VR4WKXQLxNDu5PdYKGLCc/MSYuy5FrCMCH2hEABC2KFA5FejwHoXUVzsTCBIUxbi/X1Q
	lsVP1JDrPLBVQK2j+TEZy1Pv9Izy2Zw654+/E282+xDtSO+g5x7eKuCESBZnftIt0kXC
	FkNbxv61TdKwFAlOPg7SD5bpQ119NtAusus7QqpzNVWzvPQldr0vsck/YLmMCtJqYjU/
	4urw==
X-Gm-Message-State: AKGB3mJbxUxebk2ZM2IIXVkFgWWcZd+TXYVf3WwVi7geqBFfZLAvDAaF
	MHMRY5wRNExrvr2Nuqsnhuj00wBgxwT3C6UByu8NmCEB
X-Google-Smtp-Source: ACJfBosrESscAP5EqciHOfe5gh04I7R6Nm0TzBU/8+1zEneDy2RbvAQAatqNzV+l2kGxCXj2yVUbnkC6MmXzUIsBFzo=
X-Received: by 10.28.71.5 with SMTP id u5mr565630wma.84.1512993353253; Mon, 11
	Dec 2017 03:55:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.199.199 with HTTP; Mon, 11 Dec 2017 03:55:52 -0800 (PST)
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 11 Dec 2017 11:55:52 +0000
Message-ID: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Mon, 11 Dec 2017 11:55:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

As a quick announcement, the layer documentation for meta-raspberrypi
is now available on Read the Docs:
http://meta-raspberrypi.readthedocs.io/en/latest/

The latest documentation is shown by default and covers the master
branch. Using the version box in the bottom right corner of the page
you can also switch to the rocko or pyro versions. This is
automatically updated whenever changes are pushed to the documentation
in meta-raspberrypi.

Raspberry Pi seems to be a very common platform for newcomers to
OE/Yocto and so I think it's really important that this layer is well
documented and is easy to use. Please submit pull requests or open
bugs if you think any of the documentation can be improved.

We use Sphinx (http://www.sphinx-doc.org/) plus Read the Docs
(https://readthedocs.org/) integration for this which I think is a
pretty good setup for layer documentation in general. If anyone wants
more details so they can do something similar for another layer then
please let me know!

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

