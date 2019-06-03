Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2DB1E00D44; Mon,  3 Jun 2019 08:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CD9FE00D36
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 08:30:44 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id x24so14653510ion.5
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 08:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=973XdxTtHcxmIiop01R4hIkl1chWf3NCXlVxWqjRA44=;
	b=tW638iFC77ds9W4tNBoN2GPwB4JUmUu2rv9GhJ3UcVTbPQ27sXvPQ5cx2CcR0JTea5
	izzBISixWizYnXgEKTyopeexcEjZMmqCUl8zJG0D7HM65AIe5Jq8rPNsAjSDLg8bKUuZ
	fqxammAPY5/YK58Dus3SvzXALOubWzMuXkxY6ezn+yBpaJXXRP/qB+im1zEptAUTJwqq
	82omwY2AEzgGH16oQWG+npAhk6JC0SzphyZSMuncrBI5M0QJdWDJTFFAMSbi9/t9ZcI4
	NA9nQ/2k1QiPH478JNBALgNgbi68NmVMW8Uk0JGrX35c8AT8/at7GdpHUblwSJHAKjGD
	S2Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=973XdxTtHcxmIiop01R4hIkl1chWf3NCXlVxWqjRA44=;
	b=CwMzXEz1jUq5hXO7JE2BtgEYAXrQfNJqo3Tsh/SWqNEdBEnDZJPa8NoIa28vj1Ud9y
	DH64tzWQYhoVQs4QSj91kvZ6T8XaH8MPQO+0XJiVP098m9gqaRdlWFXjLOwz3UXph68f
	ekYAND+y7tqb0QNclxouWiKifhNqxqQ4rd0Q9tyQWKtb9UgksYE/sMWWNB2KX2HODgJk
	f27yWxvbBMYK9Lqi9NlKJXvGkD5eCnuGZZaqDE6s8U5YmvqNAbzLfx16RthMS8anxpJS
	POG8UO9VL6MtKfs86sEwQ9J2m3VPwR+1z8Uj02KE9Mirck284ccO+wFZGt9WpJKmYYea
	SxZQ==
X-Gm-Message-State: APjAAAW6qUpr32g6k6FRBZh/RcnhZUqDWI+bi6QihOXxLGxM64QftFUM
	avDE3xCOsg4DMbO3yRu5euBO25BFflDWxZ3/xHB8RG4W
X-Google-Smtp-Source: APXvYqwGjrx0OS7tALPa1jxK2+4Kv4qvj/2SKOplxURqZkbGFxCg3k+bUt9FMcWF+bPOx/4SCAcIK0fVHCAY+IXC6gM=
X-Received: by 2002:a6b:bc02:: with SMTP id m2mr18175631iof.25.1559575844241; 
	Mon, 03 Jun 2019 08:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190601144016.GA19383@archworkstation>
	<CAAfyv35XN0SiU8PQ0ZL9tXSk52FxkCsOjuXoxYM35egNL6DTxw@mail.gmail.com>
	<20190601182556.GB19383@archworkstation>
	<CAAfyv37b6xSxKE=HYEUkDOQkTYPP_fom73bpf-k07-jT0p6kuQ@mail.gmail.com>
	<20190603140546.GA28701@archworkstation>
In-Reply-To: <20190603140546.GA28701@archworkstation>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Jun 2019 16:30:33 +0100
Message-ID: <CAJTo0Lab3g3xnpzSCo-Uu2_q7ujGzWEhrB-0WyBAs=zG=v7GaA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails while attempting to install hostapd package
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
X-List-Received-Date: Mon, 03 Jun 2019 15:30:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 3 Jun 2019 at 15:06, Morn=C3=A9 Lamprecht <morne@linux.com> wrote:
> I also have DISTRO_FEATURES_BACKFULL_CONSIDERED =3D
> "sysvinit" in my config (also had it during the
> failed builds), I thought it would prevent
> sysvinit from being added/backfilled to the
> DISTRO features ? So I'm not sure why
> DISTRO_FEATURES_remove is also required in this
> case ?

The variable is DISTRO_FEATURES_BACKFILL_CONSIDERED, in case that
wasn't a typo when writing the mail.

Ross

