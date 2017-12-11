Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5A17E00D69; Mon, 11 Dec 2017 04:08:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E70DE008FB
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:08:05 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id w10so37735999qtb.10
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 04:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Qllz5Qpre1CYVfZSgh7K6zPmMKTXL47KcDnaH2jInXE=;
	b=QqIjReEW/zSqENfHX0glV3zRbKCmy4pG72XVq9JnsWXKws2WUhskVrY+RqjkRmZutT
	e9Huyril5Dex7p50dXtpSm36qxvsomjEap9Rbe1X1DNblgmMTQKxajvicCYeMqFsf/I+
	lSHb9FJTYwHISCbt2NAt4s3xTNVF/B25wjEny/wkUO0q9kYFsTE78/QkrguSozZQa1Lz
	fPVIT3ID3FyyOqGX2Nb15Xz2hO+Rhm2opW+sN4DE9xSo+YxhOcqi3/DUZdB5AjVEdYp8
	lezmUbRZ16KkBSA+Fd5Q3ZTK8tvTuOmhY564y7be6S3VgidgeMHP+VKhe84+aUO9/pmK
	IAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Qllz5Qpre1CYVfZSgh7K6zPmMKTXL47KcDnaH2jInXE=;
	b=IUclOxfkDdobuv4SIOkUcQsKyAvcBjb1UBZxCNoDdOblZTEB/o3aiZnKjHVKiV6Oqo
	K1s3kmuIVosOmFviA9PEPWQq9Hrt5QSkN+JI6c0mcHwduiEuYYxQK7fze6CUnzJLVttZ
	lBMTlgz+5Y0QEtZuPyHtKT6qDrLoq5KXRuCn78OpnPC//m/KaIJ4hxoA7LkNPkSQAI4N
	MBMCHO15iZphGVxoWhbYaSmdEgJWktDXmj7D2WHL9S5i7QZEl7uhRnD9+4bhBXoTBREA
	k2tUdvSNINmTq7fnxLGNRal4rfwccRJNRu9r3/zpfjPW4FM408ji9eVAsybwu0b/Ar4b
	86fA==
X-Gm-Message-State: AKGB3mLab7gm2OtMznoZ3gkLs558CgSQSP1rEiqIrsgNMyTOzk81v0Gt
	i0KMK6H2jy8bPHDyDBSI+iiwdUucEcIZ6zOzBgAw1A==
X-Google-Smtp-Source: ACJfBotiDVmdDHaMxGwrkbBWjI5+PAd59KqDdpBqEOvzLDBqv9f6yhBQYibzg/+DfgzxZTA8blals0qh8M5u/mSr70M=
X-Received: by 10.55.200.90 with SMTP id c87mr228668qkj.132.1512994084975;
	Mon, 11 Dec 2017 04:08:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Mon, 11 Dec 2017 04:08:04 -0800 (PST)
In-Reply-To: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 11 Dec 2017 13:08:04 +0100
Message-ID: <CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Mon, 11 Dec 2017 12:08:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com>:
> Hi all,
>
> As a quick announcement, the layer documentation for meta-raspberrypi
> is now available on Read the Docs:
> http://meta-raspberrypi.readthedocs.io/en/latest/
>
> The latest documentation is shown by default and covers the master
> branch. Using the version box in the bottom right corner of the page
> you can also switch to the rocko or pyro versions. This is
> automatically updated whenever changes are pushed to the documentation
> in meta-raspberrypi.
>
> Raspberry Pi seems to be a very common platform for newcomers to
> OE/Yocto and so I think it's really important that this layer is well
> documented and is easy to use. Please submit pull requests or open
> bugs if you think any of the documentation can be improved.
>
> We use Sphinx (http://www.sphinx-doc.org/) plus Read the Docs
> (https://readthedocs.org/) integration for this which I think is a
> pretty good setup for layer documentation in general. If anyone wants
> more details so they can do something similar for another layer then
> please let me know!

Great work and this will definitely be appreciated by all the
meta-raspberrypi users.

One little thing though, the current "theme" used which I assume is
the default Sphinx theme is not optimal IMO.

readthedocs does apply its own default theme [1] if you do not provide
one in your custom conf which looks much better (that is the look that
docs.readthedocs.io has) which is easier to read and navigate. I
believe that most developers are familiar with it as many other
projects that host documentation on readthedocs use this theme
(including the Linux kernel and more).

[1]. http://docs.readthedocs.io/en/latest/theme.html?highlight=3Dtheme

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak

