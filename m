Return-Path: <giuseppe.diguglielmo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9FF6E0094C; Mon, 17 Apr 2017 14:19:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (giuseppe.diguglielmo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4560CE00826
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 14:19:49 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id a103so169051043ioj.1
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 14:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZJHQOdisA8uf3oTtzGFzTV6MrdFz/i/FoV9SKO8BchE=;
	b=E0IGDLQsNJQdx/x2sN+uz7YF8a64gWQGmz6B1ILastj03db9dcY56yZ4w/1rxNJkGE
	hWX4U7eYBB3gXLHJU2+yur7KEKvSIlDqtmlXaxP12gkD+/fGTT26ygxnQBMEcaOscnSd
	ob5JrmR9ibp/JhvnJC1Cb+bHDA0Ob6WexOx5Eoe3lYhw1XccOaIEOLLOP+Fd71oxEyHU
	rIM81ikEVZ9YB+yRcbJVWogjsMKWWotYQ2XvwBul7IO3BET9W9pL9crPuwa8aOlJrSeJ
	kCs7lyoJf/BF+Sg9oXgB3wLzBA97pmuq96t1rmUmSwdNNxJS6ij20r6OtqNdf5HygoyF
	z4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZJHQOdisA8uf3oTtzGFzTV6MrdFz/i/FoV9SKO8BchE=;
	b=ToWIl92Y20o5WzvzFVljJ/n2E1ZfsoWeRbl6ii8K40XymUctEUCQU6++d9+kRyO9/I
	AzRBHh8eBzfbQxZ67Kpet82tWkaEPsg5VSsnrG9oQouuJTA9gr6B3D4QcSFFXAy86gXX
	EF9+PTnGf3QlWnKpOYcRER5gcbo+kYqdlNVI7Iz//UZHgZbGjMnzQ7ngtipXuPBu/JHt
	YinVvpSMHkNDBT9nkKNB7JgrNS16WnqPxOvhtOld4pedXbgRIj+4uE6p8fA1ATAIrLdU
	r8Ai4u96ivYtLYcZh/RGxeDDsdG2+xO/foubpIgsCRlA59Ej5y5ula9ZjhugmkQl5rpb
	bssA==
X-Gm-Message-State: AN3rC/4utPNiEd7HmZea8mhCHXO1j1W8BYUTmUEUV/7g2COoKRqSGqI9
	9cSZ2kuRzmQENRVscv/zU8oyA5xXnw==
X-Received: by 10.36.156.2 with SMTP id b2mr10515549ite.4.1492463989355; Mon,
	17 Apr 2017 14:19:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.32.142 with HTTP; Mon, 17 Apr 2017 14:19:48 -0700 (PDT)
From: Giuseppe Di Guglielmo <giuseppe.diguglielmo@gmail.com>
Date: Mon, 17 Apr 2017 17:19:48 -0400
Message-ID: <CAOiuDAXJJq5zRUEZOOLiyp2WMXBr0EPh1oAthKL_LWhkCBGYAQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-tensorflow
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
X-List-Received-Date: Mon, 17 Apr 2017 21:19:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c08cd92ed410a054d6359c4

--94eb2c08cd92ed410a054d6359c4
Content-Type: text/plain; charset=UTF-8

Hi,
is there any of the meta- layers supporting the installation of Google
TensorFlow? Does a package-specific layer make sense in Yocto?

GDG

--94eb2c08cd92ed410a054d6359c4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>is there any of the meta- layers supporting the in=
stallation of Google TensorFlow? Does a package-specific layer make sense i=
n Yocto?</div><div><br></div><div>GDG=C2=A0<br></div></div>

--94eb2c08cd92ed410a054d6359c4--
