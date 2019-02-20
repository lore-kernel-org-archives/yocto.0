Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B88BE00CB6; Wed, 20 Feb 2019 10:13:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9D16E00B5C
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:13:25 -0800 (PST)
Received: by mail-ot1-f68.google.com with SMTP id b3so41755639otp.4
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 10:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=V9P1q02spYfgyip3QhN5OPfPOtj/sEeDXQtYwWJTqyA=;
	b=qAwLc+khqpufxIhW0uDzILYq3lCzGPY1WNHPrbMbrGXjZqlZ0IjG5xf/LsLQMjrgbs
	NR62WojH8OM48iFUFdH78QS3MXulolFjKWPTO9QLtv50I4cfnrA+T4P9xd1gCUuLjy3o
	1ITXOZQonkr4q4qbhQMrD6oNZOvYqvjesttMVNknl/WQxqcK8jQb/r8nciHxgKyc2iUZ
	5jb9CZmNsN6uiWx5pm2rYZdRwahlA1Zzg6OtmoCNvVcs+8kv+/wj+U0VoU3HhkLkXOJT
	0qt4mC9NhRKx7l06vxxhs3S7a0pxBDbVKlJ11XhvZGqFxIfFvk8enJitj7Sotyh3ekzW
	JAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=V9P1q02spYfgyip3QhN5OPfPOtj/sEeDXQtYwWJTqyA=;
	b=OO4jeZDTFKt35rV72Rii5WJMH+R9y+ORFPio1gvkP1qUzakq82yaA+rqzs0TwPTgWU
	pthoXg7VvXAZxvpfLpqjqFICsJCGRoosg8DrEbhuyN+ZClgAt9D0N3BKnf9ec6MjqGp8
	oynUbkRSIp7/L9x9onMyKzjhvO2KcfVk6It0g//CVYWUXsXY0cl44j2uyAHPN4aSJ4Dy
	HeVeQN4KFAn0qIhJ9A0KGxF6WGJAUWSy/fvJriYGPhXxyltipQeVTxmYRgu55t0RtFmk
	IF0gNZQna4VGinMXXFkpR6lJGnZ5aLGhB6adQeh4rGiYVWzaT3HvtxDC1fyD8Fk7KJZJ
	aJjA==
X-Gm-Message-State: AHQUAuaTqooCMuCM7W7QMLaE4i0gYFO7xko+9BgFt98lWci1XzyHooNn
	XxWT3xF7cwhwVgDQRJf4nIFRIUasLiq+ldEUKs0=
X-Google-Smtp-Source: AHgI3IZRn20IjWmVQxIld9kI0hYu6PAmtHjq26MvFRkqtDqlFTe4Yu3srQ4RVYNdhDTxkKdmw34145dod78yU6ugUSs=
X-Received: by 2002:a9d:d0e:: with SMTP id 14mr23507149oti.360.1550686405183; 
	Wed, 20 Feb 2019 10:13:25 -0800 (PST)
MIME-Version: 1.0
References: <20190220180643.4112-1-JPEWhacker@gmail.com>
In-Reply-To: <20190220180643.4112-1-JPEWhacker@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Feb 2019 19:13:13 +0100
Message-ID: <CANNYZj8hG0nxFEJaY67frDTi+JLHPGKkisxL4AGGiiv64VMpYQ@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] diffutils: Upgrade to 3.7
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
X-List-Received-Date: Wed, 20 Feb 2019 18:13:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Feb 2019 at 19:08, Joshua Watt <jpewhacker@gmail.com> wrote:
>  .../diffutils/diffutils/sdiff-no-kill.patch   | 32 -------------------
>  .../diffutils/diffutils_3.6.bbappend          | 18 -----------
>  .../diffutils/diffutils_3.7.bbappend          | 14 ++++++++

Should this be called simply diffutils_%.bbappend ?
This way things won't suddenly break when oe-core gets a new version.
(a possible resulting build failure is better than a certain parsing
failure imo)

Alex

