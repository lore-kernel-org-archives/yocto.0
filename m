Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03030E008CA; Mon, 11 Mar 2019 10:46:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C83E0053F
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 10:46:12 -0700 (PDT)
Received: by mail-it1-f170.google.com with SMTP id z124so14745itc.2
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 10:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7ejxytxrsacGbAKXnNRJSvxDlkY46vB/bcSqkC3ZAqU=;
	b=QmEnWs9Lhs+NimRhfpTIiZRs6qFjTLVm6MhQwaEJuBtUzlfPxs6WgE2vjZsdT774gW
	a3fr0zNitxaJyjcC0z7C2Nlck8D+9Y+NmW/eNsTdYmQKmO+7QyDG5+j9hsbg4gg24QuW
	FOsugt0a6juEpXJWy4Qj5gA5PakVDm4Sodk2sZYCJCnLYwkCxmgas7MkK3nz9BNblhx3
	M8eGeBpOSBfUx3MLMCJ8DFcXHDEJ3P4/gYAJ0TKaB2NOmaiwmQdHOIjwDVqF0XJ4KIF2
	NyGNZYs8qa2MXpqDb7VjQE9KI2WQoDImuJu249IQCxcWRF7WuOLGPXPsPNF5h7GeEFdN
	Nkkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7ejxytxrsacGbAKXnNRJSvxDlkY46vB/bcSqkC3ZAqU=;
	b=K0YxtVQ4nrWXW3iSIu9t90J7owiwYNf2D1yd6Y+9DjLdWk63olxQVwNVwTKaUnGoFe
	9GRR5rqwp+2zY55R+x32V5Zqfce4XS2RWX2zESUJXtUnsEZyxWq20mas70BduVULCjbO
	/cmO6bz8RDcuapWoG8DsJtAtrCzmNl6WBiCG3Qpvw3++7cZsl6eXOwpSHOtyDuFsMZU3
	gJpqHuizxTNPzj+uIcm1Ij8NVxSSB1FNDbbU716nSqFWQGxCschpq/Q1ibPtglc2xkjO
	Y2snclKkhHMz9RUu6p318L/TmJWtRvYAXL2U20kJEV/PsaDzutaS7RrU2lIzqSqH5we0
	Ki/g==
X-Gm-Message-State: APjAAAUS/+m0xXKkXYgdDskT4kpPeh2d7FF+jywUjA1yOKCSbFYWtYiD
	M3kP4+EMueJML92min37P94ApIB7qIbsXfK0OWdcLoKq
X-Google-Smtp-Source: APXvYqwby4MPsnFe0iKDPZNuTfBArtlOa+yfE2zp6Z1eRawC8mWQm3sBGAhq5rXFAHXLR2SEMl9mCijFDA9M+uFDet4=
X-Received: by 2002:a24:2fcb:: with SMTP id j194mr148394itj.125.1552326371680; 
	Mon, 11 Mar 2019 10:46:11 -0700 (PDT)
MIME-Version: 1.0
From: Marco <cavallini.koan@gmail.com>
Date: Mon, 11 Mar 2019 18:46:00 +0100
Message-ID: <CAFQ+Dii+ufAHPg7OLsbMDTCDBnpC1Q2dDKEDz0_6yWZjmSLbeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: PREFERRED_VERSION ignored
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
X-List-Received-Date: Mon, 11 Mar 2019 17:46:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,
using Yocto version 'rocko' I have a custom layer defining a new
recipe and a distro.
I have a recipe openssl_1.0.1u.bb in my meta-custom layer.
My meta-custom layer.conf has BBFILE_PRIORITY_meta-custom = "9"

In my meta-custom layer I have a distro configuration saying
PREFERRED_VERSION_openssl = "1.0.2o" so I expected to build 1.0.2o but
when I build bitbake openssl is always selected the 1.0.1u

Same problem if I set PREFERRED_VERSION_openssl = "1.0.2o" in the local.conf

Is there an issue or am I doing something wrong?

--
Marco

