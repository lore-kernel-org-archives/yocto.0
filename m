Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56067E00CBE; Mon,  1 Jan 2018 18:48:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8975CE0095C
	for <yocto@yoctoproject.org>; Mon,  1 Jan 2018 18:48:32 -0800 (PST)
Received: by mail-ot0-f172.google.com with SMTP id v40so31955531ote.13
	for <yocto@yoctoproject.org>; Mon, 01 Jan 2018 18:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Di0KuasP3Do7GPsmhYcpTcZAnETf7QVqac6VKUhnvh4=;
	b=ZcGc2aYOILzx1Je7iTwy/XG7dMZo3wxkL6egTYt5FPosHkbjsCKL+Mn3xmBqLp5TU4
	K7EBe7nVEdGPkAZ6vQ8INY0AazMKWNsKt0wvd2wguIG4VpQ7S8u7jb3tpGSESK89Q1Mp
	+JJlC4A77QvfjH3Y1NL+6oPAIhWcXV7XeS4LWHsVkcKJ86kFhyo071XQaWFfPYuqYd3N
	I8Y5RA2ITy2Gug9RE8TjX4agBn+I8H7/KV/mYkEgDs+RdizQwU5aHuuNf+r6Aio7hGPK
	CjanZGs1XT9zJ0Ixk1t1XZuj6X0pebSdwlqfxnlwp+nJZHClysYShYUdKdDeVIQJNntl
	Xt1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Di0KuasP3Do7GPsmhYcpTcZAnETf7QVqac6VKUhnvh4=;
	b=tkfMgTL/REZhZdLdlQA+Y2+jp3EUJSYRg96HjmXWbyYyh5i2oJO0tvKqOMf0NpS1d6
	BWW/Gpw07f3/Q98Xd8cu9OCDqgS/O0BOgX6fnmV2HyjF+4bVLlTzmU970ZwN2g5yPlsO
	kVNQLvqW5uRRI/FZAJRIxTMRxqmlES+JgSGirnVFXCntRWqi+DLfeEUIj3YNXHYuuqPL
	z4Z2Swwxz6nuupZTXcuOrwbon4jxO8lCTLlcyC/Zt0Wkpxsaxk3yBBeFP8VUTsH9LnOz
	fB49/gbht9IDn33630GTDUpGwkUSSuP+3PdrvX+z86uhs08D94ehWHuABVUEkREiBDWW
	10/g==
X-Gm-Message-State: AKGB3mLZO03PzaiNyJZNzQUIofr6u/AcVYH+VAVvfZDX8NorAzrE0hk/
	ODY0o719sFs7iGMBDYUcRaw1Ozqz36pWKwX8zL7frr9I
X-Google-Smtp-Source: ACJfBouQPrSpX5CG8Kq8fSzVuU7K1zeEh3RZFwr5JhvxjP0g6nOoj0Tc+Hv2+woszoOy+WQuUu4BjpXdUDDvpvb9W48=
X-Received: by 10.157.41.147 with SMTP id n19mr36238466otb.132.1514861312240; 
	Mon, 01 Jan 2018 18:48:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.58.101 with HTTP; Mon, 1 Jan 2018 18:48:31 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 2 Jan 2018 03:48:31 +0100
Message-ID: <CAOT_U5ZGes4LpufyUn94UZ2-rApSNjR68=On67j_km0+1Jc7=A@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Installing python packages from a git repository
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
X-List-Received-Date: Tue, 02 Jan 2018 02:48:34 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
in the setup I've inherited we're hosting our own devpi server
for the purpose of embedding apps in our os image.

We went for this option, instead of directly pushing to PyPI
as to not pollute the public repo with development and
unstable eggs.

This came with a price of needing to extend the pypi.bbclass
to point to the correct server, occasional URL errors and another
server to maintain.

I am secretly hoping that it isn't a horrible idea to have yocto install
a python app directly from the git repo (with the existence of a proper
setup.py). The expected result being less things to worry about.

What are the approaches you're using to install a custom python apps
into the build?


Be Well :)
Alan

