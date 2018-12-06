Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D971E009AA; Thu,  6 Dec 2018 02:22:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f195.google.com (mail-it1-f195.google.com
	[209.85.166.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B078AE008C6
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 02:22:03 -0800 (PST)
Received: by mail-it1-f195.google.com with SMTP id h193so535045ita.5
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2018 02:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Bvv03uFubIFZeLPcd1uIq4cbo5GLLP1PyfbdAAkIoNI=;
	b=MP+oBY5QzlavKQJ3zL1H9bWWM10vO6Xr2wrtzOk7QMVaE3LmjuZayZC9U5B2Pe3SPW
	usswJbglijxaYiGs6b4y75VCnH+pNOG3Bu9vFXIlQD0NNLlTWGZ1hKKigw0hyvhVQn2S
	bTqmqIAff7niOYs1i6ezbqwvkkKpffeclpHJoGgGQwt1IyK3q0jqViOM08ZzasDVq4lV
	MFWfNj0TKY3C3gjQL8e4Fcz1GqXKBU+X2Z0PsJQeFwDijTqiz4xEBwd+XGB0n0VUCIaZ
	tri1dLmVb6ix11ZPYu/evxECUwWcQoI5Q1KidGkIxLQviI0yqVGAnTS/kYQTQKDhfcQ5
	5Grw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Bvv03uFubIFZeLPcd1uIq4cbo5GLLP1PyfbdAAkIoNI=;
	b=RfLd9PyzXeTE6aDcmeSqK/mkKI1ye/BACdlb28CBdIwSk+CXE/mXsMB2pn6cUomwRq
	Ug9UAKJv5J8MXzO9BqZ+ZqJ1VAhwQFCjiQFK20/G+P+6pwLAoNtasH4PBDK9n4ScWqkf
	XkagVYXr0lsbA4jPu4zbQV2rA3T6RnPrvobdaJOaiS6F57Gj6NfQPg3AUDhvQdK9bOzF
	dC4fLv+3Ul6YveqjaJOhWkSOF3htYDQsHdlU9JTh7iOS7MTygAOdODzzsFH7w0zlY2pU
	9hXbzo2KCywimfHh8fviz261jGPjQ7efIlXrMMLB/CjSNVr55QJWhlZrSdrQT/A4RN/+
	94vA==
X-Gm-Message-State: AA+aEWYtE2GaGzPAIsB+9TkK3ZcMbaP+hxKrCbPZ2Ru5V0EscSnYKdlt
	mll3p9nGe9iBtz5WJMdm9FCW3zBLrd+YOkwYxmR0s0A1
X-Google-Smtp-Source: AFSGD/UepMtrtemvzSS5W1oeXt28wi+1VKAhfwkfcS0vJoX6tytRshukVRIrh14VnRqIJU8mzH5M3/bEygIHapwxT9A=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr17145095itj.62.1544091723147; 
	Thu, 06 Dec 2018 02:22:03 -0800 (PST)
MIME-Version: 1.0
References: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
In-Reply-To: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Dec 2018 10:21:50 +0000
Message-ID: <CAJTo0LZUcQ_N5NUR_a2BysXBfA_iwMDdBSdK5PsuJqBBdgrcUg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: connmand+dbus. Which alternatives?
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
X-List-Received-Date: Thu, 06 Dec 2018 10:22:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Dec 2018 at 06:53, Mauro Ziliani <mauro@faresoftware.it> wrote:
> Normally the sytstem works well. Sometimes, randomly, the system freeze
> or the app crashes.
>
> I made many test and this happens when the system is connected to a SSID.
>
> So I suspect that the problem is in connamd_1.31+dbus_1.10.6

Connman is just a management tool, the actual work is done by other
pieces of the stack such as wpa_supplicant (actually tells the drivers
what to do) or the kernel drives themselves.  Changing connman won't
change those, so it's fairly likely that the crashes will continue.
iwd is a future alternative for wpa_supplicant but I'm not sure it's
ready for production use just yet.

Instead of going from "bad things happen when on wifi" to "I blame
connman", step back and root-cause carefully.  Is the kernel hanging?
Attach a remote gdb so you can identify why, or enable comprehensive
logging to a serial terminal so you can see any messages.  Maybe your
wifi kernel driver is buggy.  Is just the application hanging? Much
easier to debug, with gdb.

Ross

