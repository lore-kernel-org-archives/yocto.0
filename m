Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49528E00C0F; Wed, 29 Nov 2017 01:30:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1708DE00B5F
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 01:30:53 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id t8so4745235wmc.3
	for <yocto@yoctoproject.org>; Wed, 29 Nov 2017 01:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=9LhIH1FJaYnngF8EI9HX5GhosZJUA44YwNMm+UqJ9NQ=;
	b=w+CIWj2KZuYdQ+QG3zqaOntySnfEKtb6Ws+O1mMd8QqPRAKFa4tOx4oRj9+C/hH3wW
	0oPsYe9z8HgQVnWvzN9A4u4+kE9IqOAxly/P3f4exv08PjzSKOA28jL5TFze6Ttstoeu
	NzIx42heVqBLk/yprQShpC4XwSFe9J6aZPBEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=9LhIH1FJaYnngF8EI9HX5GhosZJUA44YwNMm+UqJ9NQ=;
	b=BA9m/FdIMmcrGRhdAZ05lI8hK0zhn12naa7Xs8NzVgTLUdU+lFbQSLGib0Yh6BRTOD
	svZfI/dUZbwip2CJ4qZWCrUAyH4Zb14PurKJUK2KL7daf+cboAGlgKT3i81GUTYCzFAG
	Y2ud+/dZ8/VNYEcP/SV2B/VKu6UiTWCY6Nm4X3FH95yK0d+l2yxKessyhbfo+1EzpM2r
	ra+H5uBEvbRUFqalHRz9ox9TpTgpdhc5O0vR348YcTOWrkAZ1WmkW4NgUVs9p1t7G3Ee
	xVYds4MtDz2heCVpA05CrTG2L+eJWG3b5hgeIpz9D19EWq7TWwfNxuY3DOV2Q7NJ7zqo
	qCyg==
X-Gm-Message-State: AJaThX61gJxpZehdEhkV0QEWiZmfjxXFk2qZDPazD+PBMLyhGce80XJJ
	KYeAzeiAzkWDxWFZg6RtuFwp03rgCAA=
X-Google-Smtp-Source: AGs4zMZ5oJ3k7oDLx1RkiD8DVW46RDIRLvuh/t93M/oHDhKk8/wtevQ5lx5rtOxiCdJb5tV6U1akkQ==
X-Received: by 10.80.160.198 with SMTP id 64mr7018887edo.242.1511947852471;
	Wed, 29 Nov 2017 01:30:52 -0800 (PST)
Received: from ?IPv6:2003:a:f1f:7600:c041:cd11:3c89:2665?
	([2003:a:f1f:7600:c041:cd11:3c89:2665])
	by smtp.gmail.com with ESMTPSA id 26sm1195144eds.67.2017.11.29.01.30.51
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 29 Nov 2017 01:30:51 -0800 (PST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <7085a873-0594-f4e4-03ba-c72fc156d6c9@advancedtelematic.com>
Date: Wed, 29 Nov 2017 10:29:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Invalidating tasks
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
X-List-Received-Date: Wed, 29 Nov 2017 09:30:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi all,

I've got two tasks, `do_A` and `do_B` (they are really IMAGE_CMDs if
it's important). Now I want to introduce a third task,
`do_check_A_and_B`, that will test that `do_A` and `do_B` have produced
a correct result. If the test fails, I want to invalidate results of A
and B, so that they re-run next time I run `bitbake some-image`. Is it
possible? I've seen some "invalidate_task" functions in bb.siggen and in
bb.runqueue, but I'm not sure about how to use them in a recipe/bbclass.

Thanks,
Anton Gerasimov



