Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4825.1576491323742344524
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 02:15:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNK5LVQJ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: vashok890@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F793E010D9; Mon, 16 Dec 2019 02:15:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (vashok890[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9DE8E008C8
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 02:15:22 -0800 (PST)
Received: by mail-pl1-f171.google.com with SMTP id d15so4263017pll.3
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 02:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=6Ww1dlYyd/0riv72/grjoLTfQXN327sXolFAX/WS9Dc=;
        b=fNK5LVQJLpPSRBOaZfcX913sC+3maBecBZ209FoMlao/rSxycwNaDl6JR5S1gjeSzD
         nv4gocwlj+K5Cx2iu4yYWlsWEBNIEt1QTAVM7kBloLwu+u7EKIxGwNIiV3ty4/4VNCV4
         oGPyWTClvtMfGplT4lYhuh4XYV/NTqfUqhNUjsAGi7K3RICDDnLlFz/FPqTV6MEBHToF
         9YpPN4HE6S42IKm3w8JPdkyN6ledFNNDaSNCWwbJXe6o/eBFMC0WJSL/jpKObwldD/jE
         /oLyir3SYIvefeEGoAYaMIzUs1EAJ5qGiFjTbwaqnbS+LwkCtkKdyrBbynwzrYivCVnX
         z5jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=6Ww1dlYyd/0riv72/grjoLTfQXN327sXolFAX/WS9Dc=;
        b=LySGKl4pua6/mxd8TW15pbbl2oIa+LwcD6gsnzbHPN7pj0A/f178C2qzAk5eAdZX46
         pB8I7EDal5kbCEF/NxSIbz9eSIftk6tWJS/7rrpyh/qVCTgR8keqiEzOLUnLiidDx5bj
         NKO3EfpWv6RWK8TuNoDoqWcFduGZkr2IiXdmlY/+dQVsm4jPXG1qGwtP2lFFWyNLwbt2
         TJFpd9WRGH8jXsjabx+WF0mx2CnpYh9oiw+n2pIFv+ePINDh8z+IYpj75jC0IMP5hYMv
         WGPhsJxZy9+nRo7zS7TkcT1O6Leju2t4Cu+ZLkm+Gq3qdaUOP/NPHjygFBnhGwLHc4vl
         guJw==
X-Gm-Message-State: APjAAAXDiH1xa5bzZX4666ICD5Zcp2bDy8invSQUQY2z8h16j/OsIPCo
	IdUSGC7zP2KGHuPKtgRTr6/3o8HT67A=
X-Google-Smtp-Source: APXvYqzE4fPaEzImCKcjiqx5s+gEI2r36kY6OTDQJijpfZFeOxm3t0+q0WFoTFLxvE5UoxaD+8s7Ng==
X-Received: by 2002:a17:90a:35e6:: with SMTP id r93mr16889704pjb.44.1576491321714;
        Mon, 16 Dec 2019 02:15:21 -0800 (PST)
Received: from [10.232.24.20] ([72.163.220.28])
        by smtp.gmail.com with ESMTPSA id j22sm18588824pji.16.2019.12.16.02.15.20
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Dec 2019 02:15:21 -0800 (PST)
From: "Varun A" <vashok890@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Audit 2.3.2 BitBake generates rpm but unable to run it
Message-Id: <4A641F33-12A6-4557-A9CB-9A1B6FE036B2@gmail.com>
Date: Mon, 16 Dec 2019 15:45:18 +0530
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.9.1)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9C3AC1D9-BB7B-4BC7-9502-82AEEF3C08A7"

--Apple-Mail=_9C3AC1D9-BB7B-4BC7-9502-82AEEF3C08A7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi all,

I have installed audit 2.3.2 rpm that I have generated using 2.3.2 =
BitBake file I did
 service auditd start >>>>>>>No errors

 The command does not throw any errors. But=20

service auditd status
auditd is not running >>>>>>>>>>>shown as not running

But status shows as not running.Can anyone help out with this?

Regards
Varun=

--Apple-Mail=_9C3AC1D9-BB7B-4BC7-9502-82AEEF3C08A7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space;" class=3D""><div class=3D"">Hi =
all,</div><div class=3D""><br class=3D""></div>I have installed audit =
2.3.2 rpm that I have generated using 2.3.2 BitBake file I did<div =
class=3D"">&nbsp;service auditd start &gt;&gt;&gt;&gt;&gt;&gt;&gt;No =
errors</div><div class=3D""><br class=3D""></div><div class=3D"">&nbsp;The=
 command does not throw any errors. But&nbsp;<div class=3D""><br =
class=3D""></div><div class=3D""><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; background-color: rgb(255, 255, 255);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">service =
auditd status</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; =
background-color: rgb(255, 255, 255);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">auditd =
is not running &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;shown as not =
running</span></div><div class=3D""><span style=3D"font-variant-ligatures:=
 no-common-ligatures" class=3D""><br class=3D""></span></div><div =
class=3D"">But status shows as not running.Can anyone help out with =
this?</div></div><div class=3D""><br class=3D""></div><div =
class=3D"">Regards</div><div class=3D"">Varun</div></div></body></html>=

--Apple-Mail=_9C3AC1D9-BB7B-4BC7-9502-82AEEF3C08A7--
