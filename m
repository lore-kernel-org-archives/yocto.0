Return-Path: <miketiri@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F881E0112A; Wed, 27 Jun 2018 04:38:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (miketiri[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D14E00DC3
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 04:38:55 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id e8-v6so1542401oii.2
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2018 04:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=w8ljzYT+O82jiftHX/29B8IQTUuQ0XwqW0s5fXPEWzY=;
	b=m0qeQIri9z4M9uePaKDB+hdQCrT/hTkpxsP+nTHAagfK1vF1Y0+/DJrXh397umeTl1
	d0CMN8rDGA/jxzEs7A9jerZP4lVMBX98rmaBnzwri9PhXK/cFAUIfZsm3I0/D3yxMGWz
	n8H2x/TjjQj6H6Ob/Nb/9IOxDbdMEASFyowKLcdibvMb0FjccI6I9NmZ5qTzbWIdvpgp
	ysOgtSkZ8gTh8mdLVR/tvAnjfhZNp0EeXt1XrWk4UprGf6L4/j1WDPIhVn6o1KqYdDr9
	FRe+nt4CPTYzecBlugGASOj7mTgn8qwrBMJA4GG8Tf+TXosZggMf2pMI2402JsDR7Puw
	sbDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=w8ljzYT+O82jiftHX/29B8IQTUuQ0XwqW0s5fXPEWzY=;
	b=eCd1mA6ri+3kxOsnAUgsQHZUn4mbzGVVYS3hElF/+UMxKGH/FRPv1JZzU1oSMSwqjY
	3ZoIF1qYPxeR70UY8VXEFK++YSZiRrLRg9+T7WsjF9UEnk2MD6CzMB6AQ2Ft9ISoxrmn
	wbUAc2ZvnjoSDV2DGK63026aSXRMcGPg6kfSd+6vYQHEZyklgX5mRO+JA5x0ANKx5OeA
	r3o9JTOt9QYHhlrPy+Mj5OxyepNHdMZkFvR0EVgbFV8jC6fXtD6wt8vr4vvxjtcCmEj6
	Nkh4JyolACJd3yOgWiIA5Ebr4sxHHjS65dTW5rpKwfnGkHtSsuSlrpo4+8TRZc+TIL6F
	QoeQ==
X-Gm-Message-State: APt69E125W4tFyJ2ZVRePmFyhSFISJS7SxDJ/IU140RhU/Z4FpzL8fUt
	r04JPSQproIM2CPenHCndxs63C8bJOoO/wvLQfTjgg==
X-Google-Smtp-Source: AAOMgpdCXXF9jiTo4KfiTT9dk+DCtwOSeclYKrSfGPSn8chkDJwaoLDbcgvxAWDBQW8I6Wz8/sg2wvkcZFnZSM1OsCs=
X-Received: by 2002:aca:42c3:: with SMTP id
	p186-v6mr2777829oia.265.1530099535156; 
	Wed, 27 Jun 2018 04:38:55 -0700 (PDT)
MIME-Version: 1.0
From: Michele Tirinzoni <miketiri@gmail.com>
Date: Wed, 27 Jun 2018 13:38:43 +0200
Message-ID: <CAMDWK9W30-W2Ooo5yzAjEgJHT_xS9rcq9BiYhnhFC-Jo7L27YA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 02 Jul 2018 03:03:23 -0700
Subject: [meta-raspberrypi] Waveshare touchscreen
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
X-List-Received-Date: Wed, 27 Jun 2018 11:38:57 -0000
Content-Type: multipart/alternative; boundary="0000000000004399a6056f9e0f2f"

--0000000000004399a6056f9e0f2f
Content-Type: text/plain; charset="UTF-8"

Hi,
I saw in the documentation page that the Waveshare touchscreen is supported.
Before buying one of those I'd like to know if anyone tried it recently
with a rpi zero w or if there's any known issue.
Thanks in advance.
## Michele

--0000000000004399a6056f9e0f2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif">I saw in the documentation page that the Wa=
veshare touchscreen is supported.</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif">Before buying one of those I&#3=
9;d like to know if anyone tried it recently with a rpi zero w or if there&=
#39;s any known issue.</div><div class=3D"gmail_default" style=3D"font-fami=
ly:arial,helvetica,sans-serif">Thanks in advance.</div><div class=3D"gmail_=
default" style=3D"font-family:arial,helvetica,sans-serif">## Michele<br></d=
iv></div>

--0000000000004399a6056f9e0f2f--
