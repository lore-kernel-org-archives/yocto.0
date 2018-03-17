Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AE93E00D59; Fri, 16 Mar 2018 20:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f47.google.com (mail-pl0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B16DCE007F2
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 20:16:04 -0700 (PDT)
Received: by mail-pl0-f47.google.com with SMTP id w15-v6so6972682plq.9
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 20:16:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=idgCfEljTjOzmLKSbHTiVYFJz8G1KnSoagANFESe8DQ=;
	b=MbC9fEyGD77WfCx3+P23u3CBTFEHBI1RcH87OQZSMta4hxSiqTdZmYEwget6k51bDA
	msqujnWTcS4VZ2dvxc7fMRw3xAIv7tbm7WydSsUH+S0dcjKm+eQSt/Updh0Ja40Hbg5+
	VUlMFFGFZCy9TS84wA/Dueq+jzgMmriSULI42HG+uC+rigKhv+QHq0yg+S8ZbYObhfs4
	c0N74ZyCALnFF7Z98EERiHA8BOk0oE4wHH/AtFh20NSx9VN1L9n2S/95jFgxpy+uV+qF
	3P9r3O53xvp5ym/Z970Tp5+8w9Zuse0ftsU9sQ1/rWekyQegdLXhmWsETCKMpMdC/rmt
	isrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=idgCfEljTjOzmLKSbHTiVYFJz8G1KnSoagANFESe8DQ=;
	b=GPEgVQkmsKL6T0fIDKe9LOVNQyTsaXPJIemMitg6h2HxjbnbXyKzOcdIomXI3anQe+
	yUTlwSYdlFKjFzqZgT/JMpd2bh+zoNZB7bo5TvulJgyLWr2a+OC0J+MjECyLVBK+71sY
	+fFl3RiFesBLky+iYxDr0zznjaJYkq6l9LmPyWKAwKOaqe3ueDj+YsgnqbyM8vYrVYo5
	z2YBQBtRturjxgnWZvdGThU7bI7IubmW+JYXUxONz3dbuTCG0sP8/3eUao7IBLj3G5ql
	R+tC+Cb3ZvHvByXECsESs0QJabbjHiR70NwSVe2MuqCki6EtM1cPOkQMLm5RmpmVFMI8
	wqLw==
X-Gm-Message-State: AElRT7H8/uqsJP2vqGUAwuDu/nhJXb04JqJa+DX8D8Kf4Zu6Tndak7Np
	oYHln9uqTfyLZbnLcHFnq01nZl5iUkTM+aBcPLw=
X-Google-Smtp-Source: AG47ELvIvB7GgQ6gELdBsd5xXk6m88ZT+N5aw0fYZ54mPLyq8cw/a03vy92T24OHv6EvVcEdA6RBJ9LqzZHDeUtfwgk=
X-Received: by 2002:a17:902:158b:: with SMTP id
	m11-v6mr4352892pla.300.1521256563701; 
	Fri, 16 Mar 2018 20:16:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.241.68 with HTTP; Fri, 16 Mar 2018 20:15:33 -0700 (PDT)
In-Reply-To: <CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
References: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
	<alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
	<CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 16 Mar 2018 20:15:33 -0700
Message-ID: <CAMKF1srwxEa4SN+PQKcMw9O1FUyjmTFLEz4ihme1s-0dr07zeQ@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenCV with python3
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
X-List-Received-Date: Sat, 17 Mar 2018 03:16:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 15, 2018 at 10:29 PM, Tim Orling <ticotimo@gmail.com> wrote:
> Ditto for Robert=E2=80=99s comment. Please look at the bitbake manual and=
 understand
> what the syntax means [1].
>
> Also,  =E2=80=9Cpython-foo=E2=80=9D means the python2 version. The defaul=
t PACKAGECONFIG [2]
> for opencv builds for python3. You need =E2=80=9Cpython3-opencv=E2=80=9D.
>
> Finally, I would encourage you to use CORE_IMAGE_EXTRA_INSTALL [3] rather
> than IMAGE_INSTALL in the local.conf context.
>

FYI This suggestion is fine, however it is not sufficient. There is an
inherent assumption that image
is inheriting core-image which is implied and not explicitly
mentioned. many users do not inherit
core-image hence this suggestion will be moot for them.

