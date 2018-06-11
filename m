Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C799E0213E; Mon, 11 Jun 2018 06:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f44.google.com (mail-pl0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14B5AE01A50
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 06:46:48 -0700 (PDT)
Received: by mail-pl0-f44.google.com with SMTP id b14-v6so12380090pls.5
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 06:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=TAwRBGDhQSDZjYjNRnhEP0cFLCXN94lhWMGzL57m7vE=;
	b=PpBXthHXkHocwfTb5ccmPfWg+PoHLGhAdtHwEqp84hVx0dQyzHSW/LluYzOSHNNu/3
	baCC77YZWYbN3+XqHJ7rh1i+VIQxIhHt3J0aJcRdWgLoqrxaeDzPn+EaGOoWhicyyVCW
	rff4knyDC5plPaMxqBjngx5Y3WaR3IWPE4X+7nfD3YFSYxT2sK/uXRyXb26oy7JYmKIV
	BL9fS5yPTHCVyCZRIH0mk4e650sxzymUD/hR3Uh2JSXGgqb0VZ1ZrwN/IUcl3DVH8nfF
	ImRoXGLIxfpdazAvGJJjKqq8vwTHNb1fL/ZetKQmNVNnh939NkilV7ECaxxBy8Z16YU7
	Sx9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TAwRBGDhQSDZjYjNRnhEP0cFLCXN94lhWMGzL57m7vE=;
	b=D4vJI6f2b55enqE+m6ekf+/tdgDcCJXuRSukxG8FQSmpvwE8kGrFNOxqQniuC4RxMu
	/Tgps0HAKhWC2EWWHnInE5laf1j6Ap7rNZMSjBYuoAZTmqmwmsnjQ7JpRG3liGWIisUv
	BRivSbWxTjvmv6B4CURjzS8Lw/xMcQST0nlPscYYV5Au/JKMaTw4QstawoMJq0R99Y36
	FbPbd0eKLCBE4AxCvsGzOo4nkVQMHsm23M7pOqniSzpgOyHDvZcoIfQqd0Su8McHnnkW
	yOu6N3zMj4y20g4RNeFPxX9sDP6KLu6XvTYH/L5LO7YJWG63qbDsOHSdpv+SEZHr16Yt
	cGng==
X-Gm-Message-State: APt69E27DiL4LEYYNCtIMyQrP+OqepaYXx8aCIsk4PLLTcT1Dt9qEWcD
	HMT+iF428aOdrWQ7KVolKstXUWEeUQFoD38DBPirlw==
X-Google-Smtp-Source: ADUXVKLIH3vFHPwR8vOAacn67ZUKVQFfbOjtSwaoqI5Y+O4VKu/opXgF2Q6AkvjplsdfvX53dzqXXKUZevu4eefVu9k=
X-Received: by 2002:a17:902:b285:: with SMTP id
	u5-v6mr16373062plr.183.1528724808588; 
	Mon, 11 Jun 2018 06:46:48 -0700 (PDT)
MIME-Version: 1.0
From: Michael Habibi <mikehabibi@gmail.com>
Date: Mon, 11 Jun 2018 08:46:37 -0500
Message-ID: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Mon, 11 Jun 2018 13:46:49 -0000
Content-Type: multipart/alternative; boundary="0000000000002ce301056e5dfbcc"

--0000000000002ce301056e5dfbcc
Content-Type: text/plain; charset="UTF-8"

Our use case is to capture the license files, manifest (package/version),
and download information only for packages we modify/add. We use our own
layer to modify/add packages, everything coming from standard Yocto layers
are untouched.

Is there a way to generate this information on a layer-by-layer basis,
instead of a full manifest that includes all standard, unmodified packages?

--0000000000002ce301056e5dfbcc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Our use case is to capture the license files, manifest (pa=
ckage/version), and download information only for packages we modify/add. W=
e use our own layer to modify/add packages, everything coming from standard=
 Yocto layers are untouched.<div><br></div><div>Is there a way to generate =
this information on a layer-by-layer basis, instead of a full manifest that=
 includes all standard, unmodified packages?</div></div>

--0000000000002ce301056e5dfbcc--
