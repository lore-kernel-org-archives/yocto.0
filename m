Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C50E00B18; Tue, 13 Jun 2017 18:17:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.69 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DECF5E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 18:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1497403052; bh=Xg2p9TDRxB/IXMnxRMmi9Xn0/JLfW/s+IOrp
	j+sEjII=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=H
	TBLvmZsp2J8vLqsr0Ix8H3NShPLeYVhUFvgcO8iqj7Hto0kJA4g3PK9GCi0Zw7e6u/l
	gl72F4YU1iGsgZFY4uCV9fF54ee4/2/3OJOPCx/Wgh2j5fy6btamPdX8i0R9pO7ZXMc
	vWgIki9U9UO1b2n64cLqRElnrq3rHLoEXcApaP0QyBZITrrIXT/Y1xh7DbcEyXy6O9W
	ntxnKm0beq34kr+syPJHYpVpzRQXlzwmrdBAxV4f5LNIZigr5b21ljZF5U9QMlRkvY8
	z+YIhiYVtDQNIWjDvcSNonYa0A2WgpFqrrDdg0ZXRmcu7PHel8eFyTzMW0P9iEa276x
	irhKXQ==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=kNoXFvMPcpNFkgNoWhOBIH3x5FZ4cFm8I46okuzEGlMFL/Mkwd55C6vWFdCaJx7SXdIVIh5NCc5gsMPtA7NJQ6eNv18yQbo139WybDIQnNb//Z/LsyPxvz8dXbsjmbT/rMZK2BE9Ks5SyD5BGRQhnePB37xgyOrcjpDt8jscVdeB/0vtJksnf3j06WgUpjbj3cyXFXzk4WPduaqq/zO5nHsfey8211HcljQpzsWCi8hjvRhrhmkho5twqvtDTY8pOz4JtfiuwZKH5rdrb2jQ9kO0rNLSdmWtam250su3uAlmtpyKBH5lLV4PYLiswtam8OmQer38bj78t7vy6sMs6w==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dKww5-000D4h-Ub; Tue, 13 Jun 2017 21:17:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Andre McCurdy'" <armccurdy@gmail.com>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
	<CAJ86T=VA9KfPzc+ZLJNNjDyZ0rP7_=drbiPfFci3xm3qi9N83A@mail.gmail.com>
In-Reply-To: <CAJ86T=VA9KfPzc+ZLJNNjDyZ0rP7_=drbiPfFci3xm3qi9N83A@mail.gmail.com>
Date: Tue, 13 Jun 2017 18:17:28 -0700
Message-ID: <C0997DA11D1C49509D363F580D050E30@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLkqcYFtLDaW2nSRYW/nemy3OVaHAAAgrxg
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688619d5903bf3a8315dee60af7ee1a21d7350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Cc: 'Yocto discussion list' <yocto@yoctoproject.org>
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 01:17:36 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> From: Andre McCurdy [mailto:armccurdy@gmail.com]=20
>=20
> > I noticed that when I built an SDK under
> > core-image-minimal, it didn't include libasound, but that=20
> > was included
> > when I built it under my own image which includes ALSA. So=20
> > it's obviously
> > paying attention to what's in the image. So is there some=20
> > package I need
> > to include in my image to complete the set of libraries to=20
> > match what's in
> > the SDK?
>=20
> Not directly. You could add packagegroup-core-standalone-sdk-target to
> the image, but then you'd get the corresponding -dev packages too
> (header files, etc). Your best bet may be to add libstdc++ plus any
> other individual packages to the image as you find you need them.

That was pretty painless. It turned out that was the only missing =
library. Thanks.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


