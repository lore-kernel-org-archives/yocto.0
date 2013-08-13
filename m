Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFA05E01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:37:15 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id id13so3583569vcb.4
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:37:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=DtAdRfebzLbh0abl/aRuFPo4W/0HKuFDyhsEj3Em7jc=;
	b=JTAHg72IQ6YWqVqdUrX/EHTS5zNbNg2ZuQIACheT++jAv9+w3xG0Suj6rX662X24gK
	tC6b5dFmD6X6xCYy+YPPOtaUlwDZJ8Lr/0cBWxTr8MWBItwEh09eUbtTiYutHBHBS4g0
	WA9h6Vlty7Vb9ayb+6BzXw5IDpQ9TeKTIuj9m1sydcwL2AXh2r1bGuGh2XhsWoAokPZz
	QQRMa9OW97eU2fXW5UyQNeCHBcHGHIGhVxKcA2StfhGh0ul1AHjylhvjZRauVs/J8XmP
	88Y5I67LqZfXpHG9sswoxPLo3kX+Ib87Ij09uXUlA9VqjblNIHctSUtlkgu/02q/zjZG
	ULjQ==
X-Gm-Message-State: ALoCoQkMi8+zJh2GZ7UZj57+YCXLyieavoMWkO/JSyJDbXQghl9m9Ju5qlXZokGaL8Hluecl2oRS
X-Received: by 10.52.35.171 with SMTP id i11mr2829715vdj.4.1376383035000; Tue,
	13 Aug 2013 01:37:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 13 Aug 2013 01:36:54 -0700 (PDT)
In-Reply-To: <CAHwX21qDOwpi-ea2Eh4=EXJpEv7k9Em_2PMGvURVstK409MmpQ@mail.gmail.com>
References: <CAHwX21qDOwpi-ea2Eh4=EXJpEv7k9Em_2PMGvURVstK409MmpQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Aug 2013 09:36:54 +0100
Message-ID: <CAJTo0LaQKN60TuMYnLe9e3V=LJzyeJCgNKNPtd_OGDb0GvdD5Q@mail.gmail.com>
To: tom schuring <tom@clogwog.net>
Cc: yocto@yoctoproject.org
Subject: Re: matchbox-keyboard documentation
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
X-List-Received-Date: Tue, 13 Aug 2013 08:37:16 -0000
Content-Type: text/plain; charset=UTF-8

On 13 August 2013 07:08, tom schuring <tom@clogwog.net> wrote:
> could you please point me in the right location of where i could find some
> documentation about the matchbox-keyboard ? for example is there an API for
> the keyboard ?

There isn't any real documentation, but the latest version of the
keyboard has an embedded API available.

Ross

