Return-Path: <mathewkunjumontharakan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24E9EE00DED; Mon, 12 Feb 2018 21:31:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mathewkunjumontharakan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A48E00DC2
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 21:31:50 -0800 (PST)
Received: by mail-yw0-f179.google.com with SMTP id m84so11576865ywd.5
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 21:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=m4HqxxxsVldlFjqc25Xxt5NZm7TUcXnjXDtJn2x0xNA=;
	b=n+WcJO4k3KAhoiCi81mBQOb3l4O+nV9o1tp3RWvy/QCHU4ED4yeENAAARychj3Ruid
	bBLzTBiMpJakSoj0sKqbXq0vqgqU/m/mOdAasuSFJtVhhJwNRADseVWexXKX175Ak6yl
	0Ry7dp7y67RmJSlAiETASmfnsY6wkbsglT04B/NdwcPL+1ojL0M3OSIjZ5Ueq5df2Kyz
	rNctYmuvaRHR0UGBBrSBQazLenJxrRleZgg1wF8SbUkND1eW5hwOUWEqZeqOosKRphGN
	Ig/kj5VHD1Dw80bUSkxDZLxSQG28oJ22svYe5E0FrRXdWm5X+57zrFUUMVXZiv7qxUrS
	GPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=m4HqxxxsVldlFjqc25Xxt5NZm7TUcXnjXDtJn2x0xNA=;
	b=BtftqU+ZTYDub/rCgDXm7IYqqIlMAUnWPQOfdUMEmMxKlxs2qix02vfyV3SjU4HSTg
	Q1Klb5Ulu3ZQoKV7lbLtupD3CgRTVd2VwjkVn9/Kb8P2m8WlIM670KJF8hSYUf/IR5kj
	UDoXn3+EPcdAmf/geHyxTWpRJiDhwHdrlx5FSNURNV7eW1QCh2AaWdRjUA7CJl3XOHBm
	GUMt2gVYon5i7ws886Mh5HjCfP8kMwb9wCE8L+q93fSSIcudGAUenHVYrUnmg6LTzdZG
	PG07mVnyD6WboJbWm/lp8O05TXp4DK1lsqGzGuT/Y5IRSz/xP1GdmSOfzgrEaiTXzw34
	eLZw==
X-Gm-Message-State: APf1xPBpvMNy5s9YOE3LmQfZ3Sk2hkMWxn2xio+m2LPwWP/A8FDpJqLl
	tgYPcLbNvuJDFNnmDzcp609nrMxl1vfIuT3tK48=
X-Google-Smtp-Source: AH8x227RFWfuVml1Qedos5fx531W0KEDCvddD2LIdc8D1OsBEUAEt6w3Sv+MEq7frrcOsVSnqiaPK+J5tFM63FXOZ5o=
X-Received: by 10.37.136.12 with SMTP id c12mr25762ybl.175.1518499909968; Mon,
	12 Feb 2018 21:31:49 -0800 (PST)
MIME-Version: 1.0
From: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Date: Tue, 13 Feb 2018 05:31:39 +0000
Message-ID: <CA+JFif3PA3Fz14z=9sTEcq=rMof+rMamdChxNA=KHK1DDn2CeQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Reg: interrupt enabling
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
X-List-Received-Date: Tue, 13 Feb 2018 05:31:52 -0000
Content-Type: multipart/alternative; boundary="f4030438dce4b9a6fc0565114f4b"

--f4030438dce4b9a6fc0565114f4b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I=E2=80=99 m working on imx6ull yocto project. I would like to configure a =
gpio pin
as interrupt source to trigger ecspi. I have configured ecspi and it=E2=80=
=99s
working fine. Now I have to trigger it using an interrupt. How to do that?

Regards

Mathew

--f4030438dce4b9a6fc0565114f4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,=C2=A0</div><div dir=3D"auto">I=E2=80=99 m working on =
imx6ull yocto project. I would like to configure a gpio pin as interrupt so=
urce to trigger ecspi. I have configured ecspi and it=E2=80=99s working fin=
e. Now I have to trigger it using an interrupt. How to do that?</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Regards=C2=A0</div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Mathew=C2=A0</div>

--f4030438dce4b9a6fc0565114f4b--
