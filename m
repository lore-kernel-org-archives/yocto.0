Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 801A1E00CAB; Mon,  4 Mar 2019 03:17:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.41 listed in list.dnswl.org]
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
	[209.85.167.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5ED2E00994
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 03:17:15 -0800 (PST)
Received: by mail-lf1-f41.google.com with SMTP id 131so3231348lfa.5
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2019 03:17:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=9w/9kbisjAUOk6YhLOEeR4vox/qco2oF0Wf4cIItQfw=;
	b=PywqADvAvNdr59U1Lhb5gtBKfr70RuXozD3GkHcg7BYEp5Di5B8PeH8ZCGP+mKEQua
	MHPhFJ9GTmPYMMu+X3zKD1D7UciexJiF7AtzfNGV9WT7qcpuvPMRF8hJ5WS6mLaX9kik
	byTH5/3M8/wnVCaFfblhQzoQOspqCb9QwEPgzGBqh2dyywE4U4+b/ZuNV6JP1jv6yZku
	N2lMnH9apRhNI4A/thsWloRpgQpKiQo1mOwQJuF+qOAzXD4KC0VCJ3la1Za3xQ6lZFDA
	+nh2iTF4bY+R68y8gKgqtmNlvrMiczFsLAgGdlS6vU/kaCyaX+aJ01k4LXHuIEhmKDG8
	GmXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=9w/9kbisjAUOk6YhLOEeR4vox/qco2oF0Wf4cIItQfw=;
	b=cVZM7N24FnEz0Pwr3sfFmVVO3WJ1iLbZBP2gBcJvoFz9Nyh46dAHetQYLQkqd/TPYB
	gob8gk90ufCStdLbdXGMvVnwArjYcThMoYILwkZloji7m0w806ndoUbWiIQlms53ZRgg
	pRMns4Vl0mPySNtkyw8tNvzDKLwxFiRnTLa7Yh8XoiDdr6uRUa96BSvI7YMVvE+nS0ov
	f+FFuCiX1xbphZOFtW8GhBehl8x52Ql9Jg3NwkEsAa2Bh2xOvMqOdP3GHykc2LbqDB4O
	pxK9ezYO781TvgzYAVAGLm3HMt/o9oUitpiUxTBFGYvB20izVtnSfAv1jpwOK+L7Q65l
	rW4g==
X-Gm-Message-State: APjAAAUx2z31DTnfxz57dAvDiJmmccnGGatyIVfYsW/sBtEL7tYqFot1
	aWPxS+n2WPZYuUxkAd9NaSkFgyT67mKXXSaFiHinBg==
X-Google-Smtp-Source: APXvYqx3QAHi6IF5QkDgtPPJaj2CnKa+A1gWwFIei4pHTnvXXSVwFlPuoBXVeLMGItekxPkSZuJx+vlyJOvDmsIwyuI=
X-Received: by 2002:a19:c90d:: with SMTP id z13mr10490535lff.126.1551698234558;
	Mon, 04 Mar 2019 03:17:14 -0800 (PST)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 4 Mar 2019 12:17:03 +0100
Message-ID: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Multiple ubifs partition
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
X-List-Received-Date: Mon, 04 Mar 2019 11:17:16 -0000
Content-Type: multipart/alternative; boundary="00000000000011ccad058342e610"

--00000000000011ccad058342e610
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm trying to build a distribution that has multiple partitions. The
desiderata is something like:

- rootfs.ubifs mounted on /
- data.ubifs mounted on /data
- opt.ubifs mounted on /opt

I was wondering if there is a standard way to achieve the goal. I see that
there is a tool called wic, but it does not seems to support ubifs. I could
post process the tarball image and doing stuff with my scripts, but I'd
prefer doing this in a single bitbake run. Can you suggest something?

Thanks,
Gabriele

--00000000000011ccad058342e610
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>I&#39;m trying =
to build a distribution that has multiple partitions. The desiderata is som=
ething like:<br></div><div><br></div><div>- rootfs.ubifs mounted on /</div>=
<div>- data.ubifs mounted on /data</div><div>- opt.ubifs mounted on /opt</d=
iv><div><br></div><div>I was wondering if there is a standard way to achiev=
e the goal. I see that there is a tool called wic, but it does not seems to=
 support ubifs. I could post process the tarball image and doing stuff with=
 my scripts, but I&#39;d prefer doing this in a single bitbake run. Can you=
 suggest something?</div><div><br></div><div>Thanks, <br></div><div>Gabriel=
e<br></div></div>

--00000000000011ccad058342e610--
