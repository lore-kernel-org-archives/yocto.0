Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0027E01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:32:31 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ht10so798881vcb.24
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ONL/xwPMZnh+LE/kRuKmam/NGkcSLE/frREwO2Gz3xk=;
	b=YEyjrlSIr8qDY3cD9ib/KfOxgbJ+Fz865Ijj/Yw0kUTgFumuYPQ1BUwZmNQTegdauc
	OPVLzHJ4nb56Yb75PG30cZZHV752WrAf+o7tcWIfhCKDjGZ94j+R2HJgsqlKKByEErqz
	QTrssSTy+sYKZa+EopMfa5xAZzYASa/YTpzfzJ+kctb9QtXCm6KAUAq+GSKjhwNPbT55
	KzdyNbC435lTPk2Z95gqHmbB+CFxpUKxK8t+W7UpEo5nRLkrM5Nm9pcWWmGBWyUE5XK9
	cPtFvJvOxg7lH3rxG319pffJFJNbdYDz1rQJQiZcV4NG3Jg+ExZvcxFLW3vKHM1P46bh
	EkTA==
X-Received: by 10.52.157.134 with SMTP id wm6mr5507153vdb.26.1379071950265;
	Fri, 13 Sep 2013 04:32:30 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.109.72 with HTTP; Fri, 13 Sep 2013 04:31:50 -0700 (PDT)
In-Reply-To: <CABG0-3xHSyGoctj8tt4oHRXbVxwdubUsEFX2m2gkN6p9Fk6E6w@mail.gmail.com>
References: <CABG0-3xHSyGoctj8tt4oHRXbVxwdubUsEFX2m2gkN6p9Fk6E6w@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 13 Sep 2013 12:31:50 +0100
X-Google-Sender-Auth: ZP67g8vHLB4BvYyfB2DScVomxYM
Message-ID: <CANyK_8d43RNUgwatiz2gaTWX_Gw7sQr=i6dRPx2pRbpBpgMxQA@mail.gmail.com>
To: arun kumar <arunkr.linux@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: meta-raspberrypi layer
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
X-List-Received-Date: Fri, 13 Sep 2013 11:32:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 13 September 2013 10:35, arun kumar <arunkr.linux@gmail.com> wrote:
> I am new to Yocto Project and have built the basic minimal and the sato
> images as of now,
>
> I am trying to build an Image for the Raspberry Pi, supporting ssh.
>
> what layers would be required apart from the  "meta-raspberrypi" layer.
>
> I tried the blog post in pimpmypi.com but that doesnt seem to work with the
> current version of poky.
>
> anybody has any links for the updated layer for the raspberry Pi.

The official source for meta-raspberrypi is now
git://git.yoctoproject.org/meta-raspberrypi

There's also a README file at the root of this layer, that should
contain the instructions you need. If you have any problems with it
let us know.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

