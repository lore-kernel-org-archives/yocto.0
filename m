Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF58E00994; Wed,  4 Apr 2018 08:48:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7111AE00903
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 08:48:52 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id q84so26897965iod.10
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 08:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KfNz1NAXlibGq1q+vlHiGhfV6KCT2MSh5bX8C5ZUHNQ=;
	b=J93F0/8bgxyTB/Mug31xjS1Dvsf8VoMa0ngFPTyNq/XCyjX48goo7FKaPAD1ONDnXP
	bpLdcTokFSv8bZgw7tcC/XFMv2OV7OdrvxNCoYQoyxLN4VMl1vKV/Sw7QOjN0R/ITGl1
	hr8qgkSNVbVJsnp1VfZsRqSEYKN2vQxiN8LjnIZtQQDJovG/AdC316sLwb2UN+ZOXvwc
	NePi2nXZXt1qN8qmu/jIJTkVDFjByhOvomhhK2reqRP9dR3BMa6kDKSKFG6O0ntJTNMF
	frjMyPSgyq4o+wIHKRCCy9gWUEQKA2w8n0jNiSkNGeMs5dA3fHn1F1RQHIuAGRFO0E7G
	TMuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KfNz1NAXlibGq1q+vlHiGhfV6KCT2MSh5bX8C5ZUHNQ=;
	b=YZQ9WO9wH8YFdylCP49sdcsuhJBCA+RirEdmIZfZ5Rcq/Fd6Ahh2ECr1K1zgVkG9qm
	wxXSw9FNgo2PmPSxSU+7pm1A05MN3Kkw+yc+vgDvSIAlz1vlL+bwbmdwubi76GTFFTgi
	btP9o5YJfizBPO1jtzmd2vImg5eJvjegefDfFz2ZgDW4GNplZqm3regQOxRa9jup7bO8
	88KJbrccj74QT0LWvUzCjaTitYuk1/WURvH0HFeav9kN2T25S2U2I9JOZ1GIrBN5CLHr
	1WLnLlVxcEABeEG87cLcYL9vBMVmXw3FO6CsKNeiHKagGalpzV4AbC+EonvgRWKrFPt0
	DXFw==
X-Gm-Message-State: ALQs6tAItgkdleXSJ4UszMZdE+RWOAAg0pCkSpfldvdDVQdb79a+qtGp
	ogKIPBBeGLq+QcU0ydH5KP868vK3Kf0vGscPW3jo8A==
X-Google-Smtp-Source: AIpwx49c97wwsi/BIcpEqS1oKX1YbJJMhiMBO6CkZ2LTJTcVgN0W30ay6NbGaaIMJ4Y6NKh8t1Rf6VaJOMFt+7DZ7uE=
X-Received: by 10.107.133.95 with SMTP id h92mr4177394iod.227.1522856931610;
	Wed, 04 Apr 2018 08:48:51 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 04 Apr 2018 15:48:41 +0000
Message-ID: <CAFzUWG=mpaXdjF09r8x_rYbxyVq6we5XB8uSbkXtEche0LWeJw@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Setting a custom hostname using git revisions?
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
X-List-Received-Date: Wed, 04 Apr 2018 15:48:52 -0000
Content-Type: multipart/alternative; boundary="001a113f139c73d476056907c2f7"

--001a113f139c73d476056907c2f7
Content-Type: text/plain; charset="UTF-8"

Hi all,

I looked at the bitbake manual, but if I have a custom layer that's checked
out at a specific revision, how can I access the variable containing the
revision to embed it into the hostname variable?

I would want to append the hostname variable in:
recipes-core/base-files/base-files_%.bbappend which is currently set to
"${MACHINE}".

Instead, I would like something along the lines of
"${MACHINE}-${LAYER_REV}".

Thanks,

Giordon
-- 
Giordon Stark

--001a113f139c73d476056907c2f7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I looked at the bitbake manual,=
 but if I have a custom layer that&#39;s checked out at a specific revision=
, how can I access the variable containing the revision to embed it into th=
e hostname variable?</div><div><br></div><div>I would want to append the ho=
stname variable in: recipes-core/base-files/base-files_%.bbappend which is =
currently set to &quot;${MACHINE}&quot;.</div><div><br></div><div>Instead, =
I would like something along the lines of &quot;${MACHINE}-${LAYER_REV}&quo=
t;.</div><div><br></div><div>Thanks,</div><div><br></div><div>Giordon</div>=
</div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"g=
mail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a113f139c73d476056907c2f7--
