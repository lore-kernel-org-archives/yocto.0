Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6707E0079E; Mon, 14 Jul 2014 07:26:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F11E0076F
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 07:25:57 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id 63so3407672qgz.22
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 07:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Immk1NyZ9ZstKCECAUnP/A5jWIlJAT0ZxTZpeoPUlFs=;
	b=Sp4Qswd5CekRnHvOHKGeg7IePYuiwcN8g3R3UtKtyVvzTaV4Ift+PICLykg9gQv69W
	ui6Ti9mIg7kBv/g6IptZ3lId4XF7MggUekQhJDp2yDg9elKu+a1BzZo2P2Tr0hf9iZ+h
	uLFBEieLxFJOUYsqqiI2B4QyIDFGGOEICLAbuw1W09q5izkzy5oGwsqphWYFmtW/NqB4
	n7e4qJng4wTlEF9r9qsY+K/KKAQ9+RT3mjxLt3mnMCMTnaCBigI5EMQ9ARV7OBaVT37z
	MD9oxelYakdgOUP3F9AfEQhPiD2PK4po+4iO0FgAKx+pON8hzZcPD3zeXhJyTadJLv+A
	8+gg==
X-Gm-Message-State: ALoCoQmShsWt80ojk+RRkYdVQTBCsReQN3eNJllsdodoj/M7ATrmQOqMo2854XpyOdfuo2a0Fl0Z
X-Received: by 10.224.122.83 with SMTP id k19mr6727289qar.78.1405347956610;
	Mon, 14 Jul 2014 07:25:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Mon, 14 Jul 2014 07:25:36 -0700 (PDT)
In-Reply-To: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
References: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Jul 2014 15:25:36 +0100
Message-ID: <CAJTo0Lai=JgicnNi9U=UneTKGHsHrE=bR5BC7JDu3-6OnkoVLw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Make autotools use autogen.sh
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
X-List-Received-Date: Mon, 14 Jul 2014 14:26:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 14 July 2014 14:32, Patrick Doyle <wpdster@gmail.com> wrote:
> What is the best thing to do here=E2=80=A6
> Should I inherit autotools and override do_configure with my own
> version that just runs the (package supplied) autogen.sh?
>
> Is there a way for autotools to run automake --add-missing?

So autotools.bbclass invokes autoreconf --install, which should be
passed down as automake --add-missing.  If that isn't the case then
that's arguably a bug in autoreconf.

In general autogen.sh is dying now that autoconf has autoreconf, as
your typical autogen.sh just runs the autoconf/automake/etc tools in
the right order - and this is what autoreconf does.

> Should I go figure out why the build fails in INSTALL doesn't exist?
> (I'm going to start there, since my first two ideas haven't panned
> out.  (Well, I haven't actually tried the first one yet, it just seems
> silly to me to inherit autotools and then not use them.))

I've no idea why a missing INSTALL file would cause a build error, or
why you don't get it when autoreconf is executed.  Can you share some
logs?

Ross

