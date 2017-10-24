Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFE85E00CC1; Tue, 24 Oct 2017 04:00:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f169.google.com (mail-wr0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBDD5E007EF
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 04:00:31 -0700 (PDT)
Received: by mail-wr0-f169.google.com with SMTP id j15so8065729wre.8
	for <yocto@yoctoproject.org>; Tue, 24 Oct 2017 04:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zs0ghhow4/Pir2E6hD0Km3quoWnn8U1fvriRTfR7cCw=;
	b=JRKKKe6tWLUziRxp/QhKIVlIWap2AjaRCUSxDjZh76ujDeeYtEyShAye1UrBF2oQ+O
	EFqTOrooGdteaarGGpVElDIwnZ+MKiHIum2wU75qRlVFu0aQOZ5wlYJSGQeDPBlA5+pc
	UcR1rgh9+MBCXjzqkZ3TEFTWmGyg7pc6tFoDkEIu6W1Gx6LdpTdC4kZdzGyHsrijbfEB
	su1KpqPWNMox/XFqP3NLfnL2e04uUjnmUINRQ14AixFqUOHTv2Ergfq1jfFsWkNOtbKv
	Emkt3/8IYqJhiImj82Jr6LQS/o2409uL7QY3lkArsct2ojJyGEFnPR8qEF+dxOpyOXc2
	dbnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zs0ghhow4/Pir2E6hD0Km3quoWnn8U1fvriRTfR7cCw=;
	b=IcItQL5Vg6BQoo3UruGtRC+3XtGNJ3/byPn0rw0BhESd0NGF/CBi2Qcj79wAfmoA3+
	NW99/lKlCVz7ITrNqT/2XzqCfrmNqeZxAhWV18InikSQ/YEl+pmnTUOojW/qc/3TXILK
	9r2x7yoSR9TQWsBvVZIWde9Ao86sK9qKLCc2SYjbKANTWAbSzsczaykE5DTeVD1gD5Vo
	gLIn7kf3973jwOVOgRRqbXs/TqBgh1EXxI2/Biff6zUsvA5S7V9jZCq8UwQk6Bftev/b
	2p3euqW+YCUci06/qcciOQ3RwwofJcjw1DEoSjHvmG5HAs6mL7qntxa6mryVl5Mq/peQ
	iN6g==
X-Gm-Message-State: AMCzsaUvB38DBx4wYIzvK5CZI2D+AoA4o58OEbBaBPS3EfUZwv7W0LTo
	7ADBYE5Xeb9hvAFlYwXWK/LIhE3wmfseHi3U6Do=
X-Google-Smtp-Source: ABhQp+SxXOedZcgMPB5+7guC3h2g9Edt7NWVZ3BlKPOtb0ykLxbIzxKRbgk4XUL96XFKzOXkcr21Tw2RqBBW4lVNqsU=
X-Received: by 10.223.147.39 with SMTP id 36mr13138805wro.175.1508842830609;
	Tue, 24 Oct 2017 04:00:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.137.206 with HTTP; Tue, 24 Oct 2017 04:00:29 -0700 (PDT)
In-Reply-To: <CAJTo0LYkn56zd-dx96fjc5u-d4CAoi=YoysazKMNC6=3-KAfQw@mail.gmail.com>
References: <CAAfyv37ogJyGkDSVYSgi61C=3+Y+Z2wXJgg5isHOiXderZ=e-Q@mail.gmail.com>
	<CAJTo0LYbM5HeRgn6iuVwvpYqrWnN-H2f82qMqzXADj5Zn7QdJQ@mail.gmail.com>
	<b4892a0c-4562-9d04-1f15-5506e1c3648b@linux.intel.com>
	<CA+chaQd3rrBO8niNGSLvsA181qUQj_zAukk6K77ihBQbb-kEMQ@mail.gmail.com>
	<CAAfyv34DUfkMhN1zqVMYtqXG4PSuUacAq=6sUBLw5_1cPfCRdg@mail.gmail.com>
	<CAJTo0LYkn56zd-dx96fjc5u-d4CAoi=YoysazKMNC6=3-KAfQw@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 24 Oct 2017 13:00:29 +0200
Message-ID: <CAAfyv36_xBjgvVntm0=kBtPKHk6Tp=P7B0=BSe0Z=JPnTp00tg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: rocko: QA issue with glibc-locale
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
X-List-Received-Date: Tue, 24 Oct 2017 11:00:33 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 24, 2017 at 12:52 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 24 October 2017 at 10:25, Belisko Marek <marek.belisko@gmail.com> wrote:
>>
>> Probably. Should I fill some bugzilla somewhere? Rocko should be
>> released in few days (if not yet already) and this issue can be really
>> annoying ;)
>
>
> There's already a bug:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12265
OK but it's about compilation not about QA issue. Maybe I should
create new one or extend existing one? Thanks.
>
> Ross

BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

