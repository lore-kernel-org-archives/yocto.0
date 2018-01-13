Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94F89E00D41; Fri, 12 Jan 2018 20:55:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_08,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mathewkunjumontharakan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 1.7 HTML_IMAGE_ONLY_08 BODY: HTML: images with 400-800 bytes of words
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA6DE0085E
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 20:55:12 -0800 (PST)
Received: by mail-yw0-f179.google.com with SMTP id v139so3393484ywg.4
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 20:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LVaCsA7l6JbFC1z1qO/9A84QhZfl+4I/b/UnwK8/Y60=;
	b=ecHKH4vERuHcmZe2fz53IOxVPPDhdKI86NByjgAK/7AnuVErWzMFTIVtXFa0830Z9r
	OI9LPORQH4N/D8AMYrMe4wS2GhOkYydTXexs/MNcEOGv6Pobb883qogK7mAPN5NoboBF
	OoRmjX6YF+FreuTxYSlVhqO5SbNv1BSsJ4ptUz9tenHB5Bz/Hg8O4IwqS4wF4linoP7k
	cWtkFidUpDWLyS13HCE5J1sMRMSNu8pnu34CKc6OQysXi+vs0KpyL10uQV/FSBS0Sg/R
	qipQCdfJ3KVkytqP6NIt+qRR2Dl5yh7V6bPvvEqyeXaDwEqLa7fHcGRTZLUGVYt9ey4p
	fwYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LVaCsA7l6JbFC1z1qO/9A84QhZfl+4I/b/UnwK8/Y60=;
	b=TYOL2bWo2fFoRjKXCqNNbI5XXlggqeXxA8g0ANGrrJt1mjYg6wDVTKkiigkjguWAX2
	WQ0Xx3B5VL8sF+hvLYbevEob83D+EIg0Kynu2oDJ1Ez8O2aSKO16zAi3siptUx+6XXaB
	JWt25S13q90hu1EaL5bJmw3d8oqMyNYPMIUb7MKQhQDY8op4RTscZNswO1nRVuE7Mf+v
	pEVNRa8Avz3yRopjyvWiUpeRpLYZ2QhQE1087u2h+D2G24chpDW/03p8zFEms4r/6VZ4
	tWRxe0Bo5uS+H4OPuzVb/R2KpGxCojSoDXj5Cy0ZAP2fbGqR3u3VufIsfknNua7mAAWR
	LOvQ==
X-Gm-Message-State: AKwxytf6J/9PlUboavi3MN0gqXwK4dyYMk/NwZuOfY4y/IyPbb06T30j
	rntmLCYVZx8K2Lcq+YyMNRkcYZ5Mtm5F1nhyhS3Ikg==
X-Google-Smtp-Source: ACJfBotSqacSBd/cQZrFyQvhR9a7WVQI+z9LrqvmsbF68/yTTdhmQgdug5PWs4X2BG8niC3YSZseOyIikWrIghjT+5Y=
X-Received: by 10.13.240.1 with SMTP id z1mr8174726ywe.209.1515819312338; Fri,
	12 Jan 2018 20:55:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.231.197 with HTTP; Fri, 12 Jan 2018 20:55:12 -0800 (PST)
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Sat, 13 Jan 2018 10:25:12 +0530
Message-ID: <CA+JFif1FFgmeqYtiw35ap1KksSE5imrxkdUJLhzrdVeGPAKPOg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: GPIO configuration in imx6ull
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
X-List-Received-Date: Sat, 13 Jan 2018 04:55:14 -0000
Content-Type: multipart/alternative; boundary="94eb2c0327aca7dae40562a12f8d"

--94eb2c0327aca7dae40562a12f8d
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm using iMX6ULL evk. I would like to change direction and value of some
gpios. How to do that?? Could you help me in this, since I'm completely new
to BSP.

Thanks and Regards
Mathew. K. Tharakan

--94eb2c0327aca7dae40562a12f8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m using iMX6ULL evk.=
 I would like to=20
change direction and value of some gpios. How to do that?? Could you=20
help me in this, since I&#39;m completely new to BSP.<br><br></div>Thanks a=
nd Regards<div class=3D"gmail-yj6qo gmail-ajU"><div id=3D"gmail-:jz" class=
=3D"gmail-ajR" tabindex=3D"0"><img class=3D"gmail-ajT" src=3D"https://ssl.g=
static.com/ui/v1/icons/mail/images/cleardot.gif"></div></div><span class=3D=
"gmail-HOEnZb gmail-adL"><font color=3D"#888888"><span style=3D"color:rgb(0=
,0,0)">Mathew. K. Tharakan</span><br></font></span></div></div>

--94eb2c0327aca7dae40562a12f8d--
