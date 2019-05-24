Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E738E00B81; Fri, 24 May 2019 02:29:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ranshalit[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.174 listed in list.dnswl.org]
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CB09E00931
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 02:29:33 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id t64so6254165qkh.1
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 02:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=A51Sg+GkpZlOtZ7EvGfE0MA7hCQXzZT/0AP199Orf7M=;
	b=VfX+dMA/6m3QZdkb5BN2t15mQ9FumdZihg3nwo9lAN0OD/MYYzvF8s+6EKRPUatZpC
	wqEXHBUDT36TC+q7FiDe4ceu0QH7VM7gXpxSRFyyiy6Zb05LELbxeD8Q8f6m4gxlXCO0
	tgdGO0/pF09gKUTldOFUZHrzoDAM5jO1V4LHf+rHpZvZjk9nkOsA9i+7vFEGnBhzhfTj
	6ue6PqJqovpUO7q+nek4KB7AGRVRn4x1M4XkwPBHwjxqr/pUSbWz/VaN8cWQgWXf7+W3
	sgjayrBQl8nv7cLpP5w1UStizcap8UlGikWnlxCoCcO5n+xUg1OvAaBq0cIFLTQjA7c4
	/d/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A51Sg+GkpZlOtZ7EvGfE0MA7hCQXzZT/0AP199Orf7M=;
	b=mNczqHgPeChQN3OrhZhWqOeZfZZGGai76Fz1CWk4ka6/RJa5y+Ol5v/kVF1H/+MVHi
	6fFUoD0Wfc00g42HeGOY3x4amVVLnyWol4CowcM1ReX5OO1qSgt+Hw0/6p5Mw02XXGOp
	dyzutBoJ3rDAUu/pSVXHwsdHfSrqPuvt/jTy9M06TsY2SBt5lxgW7eiNKIB3VHwSLPax
	Y8fecyLJeLfEIIe4z8vgNU7e63lH73/j1U4PHEviPbvcqQtN0l3HQ/MCgK5frrgY3bcm
	NmX0w/GJGbux8xwBIeSve8qMFDEa6s1Awf3yqfB3AgLYBrMzz0QVXJuhomergXxtK0gL
	GCIg==
X-Gm-Message-State: APjAAAV4MVzEcPGYg4jLdQDgjXXsYB9kzbA1lrnUuHeQJEMKQlKEmWC5
	AeJUujho36/P3E5U2V7m5o/QF4xdg6kNXjbghX/mxrLO2kk=
X-Google-Smtp-Source: APXvYqyck2nCZz5AmIPLRgGNTBzRygBD+WTE33QwKvp2p8a8JoYfx4f2Fpp774vwAWDdt+gg9GDnavXNmI2gYbEGlxw=
X-Received: by 2002:a0c:ba93:: with SMTP id x19mr17555216qvf.107.1558690173135;
	Fri, 24 May 2019 02:29:33 -0700 (PDT)
MIME-Version: 1.0
From: Ranran <ranshalit@gmail.com>
Date: Fri, 24 May 2019 12:30:51 +0300
Message-ID: <CAJ2oMhLz9VHJoO_m8N7=jPN+3dxxCSZcsi8ZWMLtUtB0eGsOwg@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Finding recipe for ATOM N450
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
X-List-Received-Date: Fri, 24 May 2019 09:29:35 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

I searched for ATOM N450 recipe, but only found very old one:
https://old.yoctoproject.org/downloads/bsps/edison11/atom-pc
The problem is that we need newer gcc (above 4.8.2).

Should it be better to just use generic x86 recipe ?
https://old.yoctoproject.org/downloads/bsps/rocko24/generic-x86

Thank you,
ranran

