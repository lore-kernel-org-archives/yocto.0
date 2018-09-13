Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ED9CE00A16; Thu, 13 Sep 2018 14:51:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
	[209.85.222.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43603E006AF
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 14:51:28 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id m26-v6so5987610uap.2
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 14:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+gFoiVb2njJ0mXc/eWqnee9tMWt7qU623jMz4vuJbhA=;
	b=WQNy+tQQF9sPjcGCmqyMkQ2guch/UwmkBErC4s1Nokb768DM9S1IsBr49uP4VwKU67
	EekVsO2TiwDhbrzpB3soa5MKJLTIIPlhEabzvWMX52tBb/jT4DpvtqF8jd/mCPugvSSy
	0ti3WekDt7sqe9b+WMFtQ2DQI1rqMJ3FG113uDN0cOZ86UGXwuIezqUe4eMztfaj1qbY
	PDL9uvJ4TJH98SpQx3rAeumRdMzNzd9GzHMRN1fUfOIfWvHR5JfMePgwMR+4zB3TLCZB
	CvUwmu0EStQ7KhtLz1unEhG7K/wY/LGuIqo4D6i3OUxD7+I+WM1UEbhwXCN06HSI0nfz
	kprg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+gFoiVb2njJ0mXc/eWqnee9tMWt7qU623jMz4vuJbhA=;
	b=GWD67VEiB3cp6DZ+ZDSvnAC3S1N0S9UP+iaC0cRxVRZBaSeJJ0HGHrTuPcoyStcTJo
	PkqCB1BpnRJtvMS2TcPsYyukIJ8aW8QbI6BdFjWjuljTx0ZzDTI5nwDI9ajuTaFy89FI
	AzXbAgVuZNbR5GyweDk7J8zDD5A8zSzq85Hxou8ZDgSgMLhOGT2udSM+UwLYQqyxC9e2
	TeoRbtgv5R1f2DUCtVx6dsvmxKeDjsHaTmohfGk+fbQww5d/s+5rZY6rjKxI04iIrRF6
	sVbwHLJ3MzqvZeQR+r7Vpq7vpBfvKchZnYc03WOtymGzfVP71Qu0f2QgX615orLfcCow
	rDLw==
X-Gm-Message-State: APzg51BWZtNKX4oReFZTjTdPb0voePC3CSfgJXmwO0D78entsCQPXd9/
	2gTY4v/6/fjupmMfeHmE4hOgc3KsjqI4GL/qOFukYHKm
X-Google-Smtp-Source: ANB0VdYWXrRmM/+01+hON8u6jDGHEtqzXAXjVNgZzAtLduyHZ8ClIsABo3Lry7bOkQRUy+4mvZJ6D8bntlrwbTpjbtc=
X-Received: by 2002:a67:3dc2:: with SMTP id
	p63-v6mr3190554vsi.51.1536875487586; 
	Thu, 13 Sep 2018 14:51:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2904:0:0:0:0:0 with HTTP; Thu, 13 Sep 2018 14:51:27
	-0700 (PDT)
In-Reply-To: <06a2ad55e4924b5982dfc2953e31a17a@EXCH13MB02.itwwelds.com>
References: <06a2ad55e4924b5982dfc2953e31a17a@EXCH13MB02.itwwelds.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 13 Sep 2018 14:51:27 -0700
Message-ID: <CAJ86T=VnFKKaFdH8M=hwOXCG5oR8pBPSZPJneZvOL1qn-E0S7Q@mail.gmail.com>
To: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Whitelist gdbserver
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
X-List-Received-Date: Thu, 13 Sep 2018 21:51:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 13, 2018 at 8:42 AM, Jeremy Overesch
<Jeremy.Overesch@millerwelds.com> wrote:
> HI all,
>
> I=E2=80=99m attempting to whitelist gdbserver just for SDK purposes, whil=
e keeping
> all other GPLv3 code as incompatible (therefore unbuilt).  However,
> everything I=E2=80=99ve tried still results in gdbserver being removed fr=
om my SDK
> and therefore failing to build.
>
> In my local.conf, I have the following line:
>
> INCOMPATIBLE_LICENSE =3D "GPLv3 LGPLv3 AGPLv3"
>
> Through the yocto documentation
> (https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#licen=
se-flag-matching),
> it appears that adding the following *should* work, yet it doesn=E2=80=99=
t:

I think you are mixing up "LICENSE" and "LICENSE_FLAGS". The two don't
really work together. It's partly explained in:

  https://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#var-LI=
CENSE_FLAGS

See the LICENSE_FLAGS comment which says "This value is independent of
LICENSE and is typically used to mark recipes that might require
additional licenses in order to be used in a commercial product. For
more information, see the "Enabling Commercially Licensed Recipes"
section."

To whitelist a recipe which is being excluded due to
INCOMPATIBLE_LICENSE, use WHITELIST_GPL-3.0. For example for
gdbserver, try the following:

  WHITELIST_GPL-3.0 +=3D "gdbserver"

