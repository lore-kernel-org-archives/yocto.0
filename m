Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F3AE00CB2; Thu, 17 May 2018 06:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1A8BE007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:00:52 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id a22-v6so2071794pfn.6
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/t13M4vmhVYq8gcdwt5aUpVI7oTaxXzFKfC12r4+AKc=;
	b=ZIdnnGQWTCrkIEupEWpUvPYgjG2W2lUbx8omI2eAYDFsXCB8V7TcymtIA4K7c2Qltk
	fvXKAp8/ioXOcp+Vqvxq8ssDMMnjBWt3mB4+dGgzlIc8cfd+iFKlDkUFz9k3mRMhtsg/
	1fCNN251bBH5lDkrDL9XlaZQ9Qay0mLY6yqt01obVgmig/peaJWhjpRvxpyLcX2S+niE
	iLOfUoGZPJmsc6iY4tZpkyTT1orhMhsqAEv9cbr2cYgfmea85SnRbHTAOO7anR7gRWCx
	TYUJkiCjM0NK0GlMyELntzAYAqcz5TmH8yug5F0Wt1QEiI1EUcsKpmJxnNt9rAB4o2c5
	8qew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/t13M4vmhVYq8gcdwt5aUpVI7oTaxXzFKfC12r4+AKc=;
	b=Lal0dsxk5newVNt0rZErynQ4uIoppLmIntgTIjYkxFEbQZdiks2UbL/ssMDfzVzkcQ
	YrHap7OvtxtDnBNHmMlS0Pn/ZLNCbtWulvByehwiIhVe0IeukXTLM6JiKa+mvogh57gg
	B5dnbU7KTmY4GY2cGM67CpXR535Kb79PCSoFfkH1+JxweN73Cv61HgFB5p08ihVBNdM8
	I1qMUOYyauLBhN9RsBWxKwBtVkZVe8hJOBMqA0mqiJZqhNmCLJhYcf26OrrTNXFvSCjr
	JQ7HM+GnZk6hMivVoRDkFNY+a0Qvy0gAgTkQOsRACTvarZISCAMhAIMptmBTgz76fjvt
	y8kw==
X-Gm-Message-State: ALKqPweND7SHgz/wr+n4sdkliFCY3Z7TJVaFZMdjV2RETHYIRrdTGqy0
	yVy7QOkFUbKjo6lSFFhGdsqu1RcX
X-Google-Smtp-Source: AB8JxZqAnoz1B03AJibN1NmWJONCClfz6QmRIFR3ikxMKbyU0/3ex/e1Wiy9VVmdRh46JBQS0DiDwQ==
X-Received: by 2002:a65:5a4a:: with SMTP id
	z10-v6mr4068489pgs.243.1526562051774; 
	Thu, 17 May 2018 06:00:51 -0700 (PDT)
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com.
	[209.85.192.178]) by smtp.gmail.com with ESMTPSA id
	u16-v6sm10395009pfl.39.2018.05.17.06.00.50
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 17 May 2018 06:00:51 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id p12-v6so2061766pff.13
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 06:00:50 -0700 (PDT)
X-Received: by 2002:a65:57cf:: with SMTP id
	q15-v6mr4000530pgr.185.1526562050443; 
	Thu, 17 May 2018 06:00:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:950c:0:0:0:0 with HTTP; Thu, 17 May 2018 06:00:50
	-0700 (PDT)
In-Reply-To: <d8bc33da-e352-7408-c5ab-2c175529f90d@faresoftware.it>
References: <d8bc33da-e352-7408-c5ab-2c175529f90d@faresoftware.it>
From: Mirza Krak <mirza@mkrak.org>
Date: Thu, 17 May 2018 15:00:50 +0200
X-Gmail-Original-Message-ID: <CALw8SCXUh3bUVc-+uno4i5yv-y7eqQ4niPVmwfm3x4HP4ZJiMA@mail.gmail.com>
Message-ID: <CALw8SCXUh3bUVc-+uno4i5yv-y7eqQ4niPVmwfm3x4HP4ZJiMA@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Configuration network from qt5
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
X-List-Received-Date: Thu, 17 May 2018 13:00:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 17 May 2018 at 14:18, Mauro Ziliani <mauro@faresoftware.it> wrote:
> Hi all.
>
> Which the betst choice to perform the network configuration in Yocto Krog=
oth
> from a qt5 application?
>
> The configuration should be made without external script, using dbus.

Well you probably need to use a network manager that you can control
trough D-Bus. NetworkManager, ConnMan, systemd-networkd etc.

If you are using ConnMan you can use this:
https://git.merproject.org/mer-core/libconnman-qt

There might exist similar libraries for other network managers but I
am not aware of any.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: https://mkrak.org

