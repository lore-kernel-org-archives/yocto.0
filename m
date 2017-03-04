Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8C17E00ADB; Sat,  4 Mar 2017 05:33:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtownsend1973[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A531FE009A0
	for <yocto@yoctoproject.org>; Sat,  4 Mar 2017 05:33:41 -0800 (PST)
Received: by mail-lf0-f51.google.com with SMTP id k202so57233875lfe.1
	for <yocto@yoctoproject.org>; Sat, 04 Mar 2017 05:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=iaWDST79TsUafcbIjpPMbes7U/R6TWlidyEbhtY2yBQ=;
	b=aJk3cvqhX8MBF09uqbDEMiPVuvAAzPsEWej88ey5/GYsTEbbrMVUOewoo3+BqyUDjU
	yfLknnaSIIRui3WctE1Lh5Bf0ppY8ALOzbOKurlWtwoRYijbZC2BzfVADzH34cB6yBQz
	mHbhA4dVJlfpJLP/yheefu+lDSP0Mb64PfUEkxotAdldmX1iz2VzxBvQgFVJLbg72Mme
	6o6ctSjOwDu7kf4ZwQ8VcFhlB8g98tSRD0AU5feCMEocxfGAGKMYWinzcK+CnckLEeFR
	5g73IFLIsaerHTesdVfUbHFaUaqUkIj9sBQ3901FUK7YkCZJK0VsHhcOPY59RLxUnDgJ
	y9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=iaWDST79TsUafcbIjpPMbes7U/R6TWlidyEbhtY2yBQ=;
	b=HLbKqwm9C1V2c54byM0Aog0dGXXFAzxLrIQ8LLcdJDYefar1EmLOfumn3XU562O9Ng
	Pi/dJ6flcffSmc2OMDVq4eU2s8kUOStdvoM6cmu4nj2hAEbRIfe4Y/fk0tAHJ3Rdj9gy
	FHmCPihRMEmoHzDpDRyXzd/a7FcKGjBn50CoZfzFLyisfP78WJopTRdTz2sejoqTJowz
	rfQjq5EmxHuCUGk+KZ57bgltljj2dJk/X5hswGE5hBn69tifxfP8yZos4OMcwaBRgefi
	Mn2t2elC6aVfyMmXWyzzKIGba7XfQh+PCrrrDC2GkEbHwtsRm2ihf8kVQ6yadP1kbRTD
	BHng==
X-Gm-Message-State: AMke39mKmM+cQAG2M6toDcjVmYBa5dhayD0GMN/1jYaDrMv42ECDtbifP7JqtXhxp9h+6QznrqBwAF/tPXb3Cg==
X-Received: by 10.25.125.132 with SMTP id y126mr2726604lfc.102.1488634420058; 
	Sat, 04 Mar 2017 05:33:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.204.66 with HTTP; Sat, 4 Mar 2017 05:33:39 -0800 (PST)
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Sat, 4 Mar 2017 13:33:39 +0000
Message-ID: <CABatt_whzMr-Sq+-v2BgfLvZ-QESTP=nboUOpw1VQkw33TM7fQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Systemd recipe breaks resolvconf
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
X-List-Received-Date: Sat, 04 Mar 2017 13:33:42 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I've just tracked down a problem with resolvconf not working on my
board and it was due to the systemd recipe creating the resolv.conf
link and patching etc.conf. Here's the snippet (I've taken it from
krogoth but it is still there in morty).

if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true',
'false', d)}; then
    # if resolved is disabled, it won't handle the link of resolv.conf, so
    # set it up ourselves
    ln -s ../run/resolv.conf ${D}${sysconfdir}/resolv.conf
    echo 'L! ${sysconfdir}/resolv.conf - - - - ../run/resolv.conf'
>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
    echo 'f /run/resolv.conf 0644 root root'
>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
fi

As systemd's resolved is not enabled by default the above is
happening.  The problem is that it breaks resolvconf which setsup
/etc/resolv.conf to link to /etc/resolvconf/run/resolv.conf and
doesn't seem to work when it's not.

I've put an ugly hack in a systemd append that undoes the changes
above and resolvconf works fine.

Not sure what the best way to fix this, the if statement above should
say is if ! resolved && image doesn't contain resolvconf but I don't
think you can do this in do_install.  A DISTRO_FEATURE of resolvconf
could be added to state that you are going to manage the DNS resolver
configuration.  The other option is to remove the above if statement.
Should systemd be setting up /etc/resolv.conf if resolved is not used?
If you not going to use resolved then you are probably going to use
something else. Or is this because systemd stops resolv.conf from
being created? but wouldn't that only happen if you disable SysV Init
altogether?

I can create a bug report if you think this is a genuine problem.

Cheers,
Martin.

