Return-Path: <tranmanphong@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DA86E00D75; Thu,  7 Dec 2017 17:19:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tranmanphong[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 433B5E00D73
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:19:49 -0800 (PST)
Received: by mail-pg0-f47.google.com with SMTP id j4so5740587pgp.1
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 17:19:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Dc7wj3vfmQ4A5CNviXK357sf707sYNzcl/OPSW7s09I=;
	b=XFNZcpLMt9+zTtlq+13iAxwjADSAuhHf5NyzJrtiZTjO8IuHvb9HybzOnZ+vt2ViHy
	izv1ZmdKJpUFo+YaLHW1jBWe7tlXXYc/BvxL8xXhJKUBXcbu+X3ApGBb5Oyo5rpLwH1+
	7sbChk1ycIg7JChUqE7udvLfGsBcuj3SvyuwKbd7cD1KQSPWp2ScHpwKuJ69AHAVZhjO
	/UAuXgilNdtadklsAPKMTN3TUS7AoVlg7p43TI0rZ4Yw23INAM6ZWNqgDnPfe+ANUODr
	OHRYpSEt04qRutpKFa1UZ4UwwGuxDfCoNIS/6L9BytzsZIT3W7YCGciQCxqcn3cmlVdd
	ZWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Dc7wj3vfmQ4A5CNviXK357sf707sYNzcl/OPSW7s09I=;
	b=shfITF2MWila2pY7VTnJ5eyAVTWc7dT1R0rJjSEaaMUrTg+iLfdbfHA+WTvnFbMl0X
	t28twz8aMtX2BQFQ4dIWKvUSgI+GrCkRcwbKV6OdLOFlFQWzyWIz5brKmbR5keHU2DPV
	KJyVDrWDkSFqctnQit17jzY/C1gsFYmhQBop9vlrudKaeRaoB5ZARquG5kF5KSrIxz4b
	/fabJNw6EJ1Bdx021HBQPrBuVXAEenlNOdVpY1jjQUOOZZgvcmMN0MyGpJgYD6C/63Me
	HwnjemuIgB9u+GBhEfpl+UI76LDumlVuswJMe6xR+UNHe5FDehfUu63rCvs49KRqKj5q
	5O+Q==
X-Gm-Message-State: AJaThX4Zj6DlwWa40n6kLHkkRVX9R29cCprdu3iYZNZg+nZ2uLhwJPgW
	vmPkoUzwJJbW+jwsuCrgihNgUw==
X-Google-Smtp-Source: AGs4zMaTq6+aYXQPXhS06w9eWxGdP/06GQvdgq+sh/8ZYpp81RBo24SvoHYQLgMfQe++1KqCcy9nfg==
X-Received: by 10.101.98.83 with SMTP id q19mr26769944pgv.71.1512695989598;
	Thu, 07 Dec 2017 17:19:49 -0800 (PST)
Received: from phongtran-ThinkPad-T430s.net.fpt ([1.52.33.90])
	by smtp.gmail.com with ESMTPSA id
	x188sm10612762pgx.33.2017.12.07.17.19.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 07 Dec 2017 17:19:48 -0800 (PST)
From: Phong Tran <tranmanphong@gmail.com>
To: ross.burton@intel.com,
	yocto@yoctoproject.org
Date: Fri,  8 Dec 2017 08:19:36 +0700
Message-Id: <1512695977-5500-1-git-send-email-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Approved-At: Fri, 08 Dec 2017 02:01:57 -0800
Cc: Phong Tran <tranmanphong@gmail.com>
Subject: [meta-gplv2][PATCH] gettext with -Werror=format-security -Wall
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
X-List-Received-Date: Fri, 08 Dec 2017 01:19:50 -0000

Hi Ross,

Please apply this for master, pyro, rocko.
Thanks

Phong Tran (1):
  gettext: fix compilation with securityflags enabled

 ...grep-fix-compile-error-Werror-format-secu.patch | 88 ++++++++++++++++++++++
 recipes-core/gettext/gettext_0.16.1.bb             |  1 +
 2 files changed, 89 insertions(+)
 create mode 100644 recipes-core/gettext/gettext-0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch

-- 
2.7.4


