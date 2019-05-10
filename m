Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82A96E00D6F; Fri, 10 May 2019 01:08:38 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.173 listed in list.dnswl.org]
Received: from mail-it1-f173.google.com (mail-it1-f173.google.com
	[209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B972E00D4F
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 01:08:37 -0700 (PDT)
Received: by mail-it1-f173.google.com with SMTP id q65so7985805itg.2
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 01:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/NsvDGsCN4Q/7YBpyWSM5kYchq4FbarvuXGRzav9bVA=;
	b=kmX2vv5X9a0YF3ZntgWRY5MA6mOV6lgoErBy3rAVlrr6JXpI0dlZ0zoHw6taY4it20
	kwCehT3yOrqPtTACXJWjU2zvzU0ZH5hicKhomqiobLn8Mal8GWpfwVguMMlCWY7uaKHg
	s/A3i6ToaSoQj2Ec4DG1ls4fgTbPZ5xG4JRnhT7RMLKTanLLFPbvFaGFd0qV93m6wJfr
	iUidRh9KX7Jea9XPoJGXtAS5QnbevrwozdPObzenGKSD7w0CdkwUcwjO53rtSMnGxyJu
	Jyk3HSplpUQ/qHcAzu0cF6kyZ1cy572DdkvWM0DgNL8/3EWvNeg+qd2fyiZXFtjvzcFT
	36ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/NsvDGsCN4Q/7YBpyWSM5kYchq4FbarvuXGRzav9bVA=;
	b=apHKWFmicgvCKdoANX2TLQPy1/tgzOfPRS517phqJkp7T+nF/Acvnn9h025gNOQpaz
	KSbZO+uRT2JuPNQpacXyjgo6DbNzwEOSfDlga+hf82fLJ+/H080j0l0bbOSYNQBNjhgn
	XBxLX1hTkpZMSLuS8GzhudmO/VGCIRXbpGXh31E+XLdNR4t3LUFZnGNP0eCDw0x++jew
	Y1PkRFrzYX7S3uQujYmwpooJ5yZBxh+pbarjLPQQVqIEF4PW23zKArcoKCKS3me750zS
	+e/iAQ5sEFScwuNuXPdg/eB1hTOJCO7ogR1bUSxGfkk5PJwLMwS1c1fxYuMkWcW+iuZM
	CKlw==
X-Gm-Message-State: APjAAAX1HaydaAtLo8bx5/WQeJM4VgDZLPsWxUHYK9JKc5BXWzSHjCtI
	Dj81IWbIV1rgj8l9juRqTAlOEWdyWjqCH5vTfnc=
X-Google-Smtp-Source: APXvYqxSA/g7S0/JQgvZDIwh+vSuYMvuFz45UPXyvjN5VWJiUKHx+z0bS0H1r4cCZL6nKh7oTx7U+CuorT78WufvlN4=
X-Received: by 2002:a24:2c8a:: with SMTP id i132mr6220105iti.130.1557475717454;
	Fri, 10 May 2019 01:08:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a507:0:0:0:0:0 with HTTP; Fri, 10 May 2019 01:08:36
	-0700 (PDT)
In-Reply-To: <CE2E43470FE5444A811B580382FE5EDF55CB31764F@KEMPMAIL2.woodward.com>
References: <CE2E43470FE5444A811B580382FE5EDF55CB31764F@KEMPMAIL2.woodward.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 10 May 2019 18:08:36 +1000
Message-ID: <CAA=hcWTsEjcrBj7U6tT3hGpWSp8ykATBOuP17=dUBR-5hb3=_A@mail.gmail.com>
To: Lukasz Zemla <Lukasz.Zemla@woodward.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto image systemd debugging
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
X-List-Received-Date: Fri, 10 May 2019 08:08:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Lukasz,

> What do you mean by debug?
> In most cases 'systemctl status <service>', 'systemctl --failed',
> system-analyze
> and journalctl are efficient. Sometimes I set
> 'StandardOutput=journal+console'
> in service file to just see output during booting.

There is an ofono.service which failed by systemd service, but there
were no problems if I start it manually, the systemctl status
<service>', 'systemctl --failed' told me it failed but did not tell me
why it was failed and what was the cause. Hence I asked how to debug
it, I guess your advice is to change following ofono.service
StandardError='journal+console', correct?

cat /lib/systemd/system/ofono.service
[Unit]
Description=Telephony service
After=syslog.target

[Service]
Type=dbus
BusName=org.ofono
ExecStart=/usr/sbin/ofonod -n
StandardError=null

[Install]
WantedBy=multi-user.target

Thank you.

Kind regards,

- jh

