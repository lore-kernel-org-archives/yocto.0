Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50824E00CBD; Mon, 17 Jun 2019 04:31:40 -0700 (PDT)
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
	*      [209.85.167.43 listed in list.dnswl.org]
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
	[209.85.167.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1FF8E00C43
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 04:31:39 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id y198so6244662lfa.1
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 04:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1eXUcRMInTFs933reMDGENrUp7+CQenooNHP3c/xUb8=;
	b=CQpT/HulvGGHjOrMDyDlveXkKzj0Ztr18PH7bsE7k1Cx3hG+Vxs3LgIfb1B0GeAnFc
	xWleZyTRsm9Gn10zvcB9T82dhrjKVspXMZgQkPGcXFntrcjcvOMrB+yY1aDPGcz8NxN6
	rXGFWErOBiVpNupKN8kjloNJqFc/QY2g73M19zf3B08fmdWPNPGq0H62gjDDJBJKG1Zk
	Rxa/B9YmbiDEg5WuEHgKA4zilUhnbN1/Ks2hGrDYFW+VUm1we5FzLIzkxhGPS4JwyfZz
	AhDJd69yhMiUR9bkphJGLI1n4jOgTddDq9q4flrNSmhsLmDg/XZ9HDLamI7eMt1ySBWx
	lPIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1eXUcRMInTFs933reMDGENrUp7+CQenooNHP3c/xUb8=;
	b=ogotB6R6R2NOzIWj9W6PJS61+GrGY5uvpaGNGZP4LCD0I4ucFjhmLiVxpqlH+3gwNM
	wOKw00pEFwvVbnknor22jMqTDi73cd0jEmorJfs3hm8oYZcrzbC7bIl9EigRY2Ftvv1I
	4UsIO8kI3c5RzKRhoxEkslLWe5XcFtCOD7/wsMkzTU+k6gQz6x1MUbsL80wIuzyFpAVS
	EmF3JjaRhCqwC2/TlzjnfmG/poUpesj/16m/xzPREL6p/VhSfTVqUHofeiha1jNzy9Vz
	qSiNistzp8Lb2K8ZtahosnKe3s3poY57FLg7UVd5wNYVOpfZUvsfgqsOp7Xv4DOpIL/B
	FuuQ==
X-Gm-Message-State: APjAAAVQtfRvSeL7jDc0OnJcwDf8aVietXVIFuwyZOc5h5RIoRq39tqV
	fUSQxl5Ctei3cSgklFRzC0uRjdPBPV6nCrhwmL2/3j4r
X-Google-Smtp-Source: APXvYqxAF9oFehxcoPbfYLIUu3OWjpHIxsAwLfUlz1ilUOSHXIRAgRei97Qt18GuuFNZ4yoO3SVkshk3eu7Kl5JTtSI=
X-Received: by 2002:ac2:5324:: with SMTP id f4mr14522778lfh.156.1560771098603; 
	Mon, 17 Jun 2019 04:31:38 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 17 Jun 2019 13:31:27 +0200
Message-ID: <CAAx3WaCCPCnnTmwtr6p=nZ1Z2CG=Ohq8JHzuGTcWZx-ZYrkxGA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Share SSTATE_DIR between instances
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
X-List-Received-Date: Mon, 17 Jun 2019 11:31:40 -0000
Content-Type: multipart/alternative; boundary="000000000000e87460058b83567c"

--000000000000e87460058b83567c
Content-Type: text/plain; charset="UTF-8"

Hi all,

is it a good idea to share the SSTATE_DIR between a docker container (used
with GitLab pipelines) and the local bitbake instance? They both work on
the same MACHINE.

Gabriele

--000000000000e87460058b83567c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>is it a good idea to=
 share the SSTATE_DIR between a docker container (used with GitLab pipeline=
s) and the local bitbake instance? They both work on the same MACHINE.</div=
><div><br></div><div>Gabriele<br></div></div>

--000000000000e87460058b83567c--
