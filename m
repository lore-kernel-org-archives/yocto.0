Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B315CE00903; Fri, 23 Mar 2018 08:50:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C7CDE00474
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 08:50:46 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id e7so15695772iof.2
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 08:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version; 
	bh=I3fI5MYULcZHG4rXwcEekLnJTbuV9OCg4n5i/t9hZKI=;
	b=GsPyWZjoo2QYWqRjDUjANdOGbcX14jlllMBikSmkaqldnGsEM1gK5/l70djKiQO5VW
	R/MR8vm24hqfwbNdEUKCr8Xt3dvKtHgei7uTHs1AEzKqxAaTu4/sDWijQbiO/BMoAIUd
	dqoNPj/FBxSESfsdN/f3v9CinR/fizIFscNZG2eisK0KKWsDQOpszgCneK7r2TPX0RJP
	R0G8hm6xGekOaP9H3FGXXU5ljEH51/UTqO7bJRkXIVAVnvf85auMUXqyjPyln64jrYFo
	TJE36pSSbep6IlLFzdxKozwbSbVIA+1d3tZerz6mxAQ1d88TyOaDH86hOHNYEeHiQXVz
	2Qsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version;
	bh=I3fI5MYULcZHG4rXwcEekLnJTbuV9OCg4n5i/t9hZKI=;
	b=Qz+9EwCbMnNOKZygIL+NSpTMUQT7z0qk/pq830ZqzXvW6pyMo8J9524hF6zgvPUY4j
	CZR7EGA51CcjcHHzqylgEl+aYZoQSTimSDZ0I5lYMZqBcvDs9i7xxiJyLa7OCNfk3IIB
	B+ioYPnZRk0GZ1NTEjpj2yD+ABDJiltE+Muj8wWsa2082lkwtvReB1Hu6m12KKo5ssQE
	c4D0YQRsJbrPQnDJEs86SFVuVx2c4ygixNo5hcAFjNk/+VPkdRC5A0ep/NrirAWyM4/7
	i7VSnWB9u1kSyeIWJbzYPqGeN+4e/ePF3nnMEezpEnFbSacA6ns53BLfA3GTIOGd9k3m
	hGUg==
X-Gm-Message-State: AElRT7F+w1bXKQHGxIKd/c5qROTtY4cnEMZZpOd1NX98WrKMSh9lwb5P
	2uCDEZ+ywItUsaSzi41rfkOOBV6i
X-Google-Smtp-Source: AG47ELtKH2k84yG4Cu8uyYnC6dazhW+fcUfsVlCTQdM00DVVqYU5CIK9SjYnR/Oc9PxmNpBfcEYjZw==
X-Received: by 10.107.153.146 with SMTP id b140mr30163920ioe.296.1521820245417;
	Fri, 23 Mar 2018 08:50:45 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	b18sm6569038ioe.43.2018.03.23.08.50.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 23 Mar 2018 08:50:44 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1521820243.3242.187.camel@gmail.com>
To: pawanKumar <pawan4749@gmail.com>, yocto@yoctoproject.org
Date: Fri, 23 Mar 2018 10:50:43 -0500
In-Reply-To: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
References: <CALd6x_uezA39f9aRX_de7SrTCcdFUoLKW1_2URuVR_prMMhQsg@mail.gmail.com>
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Mime-Version: 1.0
Subject: Re: Bitbake failure:
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
X-List-Received-Date: Fri, 23 Mar 2018 15:50:46 -0000
Content-Type: multipart/alternative; boundary="=-W16Zc9D2FA7CSX+SsXkM"

--=-W16Zc9D2FA7CSX+SsXkM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-03-23 at 07:31 +0000, pawanKumar wrote:
> Hi team,When I tried to run (bitbate -c fetchall) it is giving error
> as
> "target do_fetchall is not found for image core-image-sato". 
> How to over come this error.

I believe fetchall was superseded by --runall. Try:
bitbake --runall fetch core-image-sato
> Regards
> Pavan.

--=-W16Zc9D2FA7CSX+SsXkM
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html><head></head><body><div>On Fri, 2018-03-23 at 07:31 +0000, pawanKumar wrote:</div><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir="auto">Hi team,<div dir="auto">When I tried to run (bitbate -c fetchall) it is giving error as</div><div dir="auto">"target do_fetchall is not found for image core-image-sato".&nbsp;</div><div dir="auto">How to over come this error.</div></div></blockquote><div><br></div><div>I believe fetchall was superseded by --runall. Try:</div><div><br></div><div>bitbake --runall fetch core-image-sato</div><div><br></div><blockquote type="cite" style="margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div dir="auto"><div dir="auto"><br></div><div dir="auto">Regards</div><div dir="auto">Pavan.</div></div>
</blockquote></body></html>

--=-W16Zc9D2FA7CSX+SsXkM--
