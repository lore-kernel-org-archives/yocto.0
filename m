Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 679B9E00D36; Mon, 15 Jul 2019 05:10:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 868EEE00A00
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 05:10:51 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id m24so33695285ioo.2
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 05:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/sfbIHu3F7oJJw2P+ez+HcTxkOzN5ZCwLi6FKHL9Egk=;
	b=UjCTXWM73SbFfnHJ2xFh0AaR7n7JZPrW6pYmI6mF0bQNV+dnmAgzDOtaWpfl+ipBhR
	2xp+9pzj6iJvQkhabs++ZCQEOaZlayWsz8i99iBhFsF8fDXs2CVMDPzds+ZUwMVd1796
	gKEfR89AXR4D2LWKRwAxw+ykomtJo0Kr67sZzw/IUxJnnf6DKkIEHlURHqL4aGKi75in
	mwQYpPMGJVirsb4RVyDXY92c04X5suF+jQ4zjxIJ5MjFVOiHOub99Zo8bqVXHB8mxUiw
	A2+ZevAWNj6cRoc3wfBe8OP7oatB9DcL8p59dvDCbhKmd/PkDlSSJAK1lZGK+nyXcehO
	ssng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/sfbIHu3F7oJJw2P+ez+HcTxkOzN5ZCwLi6FKHL9Egk=;
	b=URsr40L96Urg1ncq7Lito0UykzHHVjZ2IacaEfsKQd4+YrNyeSBYzW9WMnciFaysls
	7BU6Gfp54zSSTM38jsHXn33ea+pnxstJBlIhY0/Hbp0helJFllO84WZru5RBMHZoytvl
	P6Lh1FOk1Z1/1bff3i0gwrMBp0g3R4gfm7F6G0FyZ59ZkHUEMK1Vm4+NTqskKQqvi7rJ
	fBop778Q64LQ7SABc/TAGdH8X8NAQU0+sjEJ0ZVsRzqOdVdIqfbjEt29ojD5Kcpu7/wi
	GNb8G34wPWYdspa2B+m74WgtTqUy1eP3lkWjeD14vBgxQ3amqYykaxBZ6oDv2JK8HQAp
	qukQ==
X-Gm-Message-State: APjAAAVBahSy/s/0aGX0DeMfsaOQE81s8EtqP+JDR2LwkV1MltMfvR+y
	1Pz6R1tAVoon1kO0+uQN4fFll/Pu8kpIx3em2blXoXLZ
X-Google-Smtp-Source: APXvYqyKL5j4NjsGJ354I0ofBtYphCO7Y23wb/pvvcUPN0FbMhh441rT9vBBRB2qmqQiHtxgxKnHLve7As5u8O5pEEA=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr23444509iop.306.1563192650886; 
	Mon, 15 Jul 2019 05:10:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Mon, 15 Jul 2019 05:10:50
	-0700 (PDT)
In-Reply-To: <CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 15 Jul 2019 22:10:50 +1000
Message-ID: <CAA=hcWSvSDx5sXRdiLFFE8cJa_wyLDhDO6OHmB+c0JcgfRLc6Q@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Mon, 15 Jul 2019 12:10:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Zoran,

On 7/12/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> Moritz,
>
> Thank you very much for this reply. It makes it very clear... What is
> the current State of Affairs for the topic.
>
> Let us see if there will be the improvement to this topic. I'll
> document this on one of my private GitHubs. And archive this email.

Any chance to access your documents?

Thank you.

- jupiter

