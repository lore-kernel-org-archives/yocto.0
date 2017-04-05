Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89BADE006CD; Tue,  4 Apr 2017 21:57:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0845E00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 21:57:19 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id t189so3280658wmt.1
	for <yocto@yoctoproject.org>; Tue, 04 Apr 2017 21:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zorA/eaGRQHRG8BHos5PS5lptX+/KJSytVFxsQnY/uw=;
	b=aAmkEZFYakCtmyTu869YWm3vjAumPBhCPc/GXKZ589jy189CzdgYd4fBlJEmKXBD9W
	NgkxdiMscGnaWDsoPtkdLVKWQ2PKrvhs3X/46pbBkmHhoVnGS76jq3LgkhskA+W/dGvw
	BDf+wtWXTukiqkHO499szsy92uR5jrynsiJcm8u3Thn+nNqAx9h6MrTkqfaqEhJh3Jau
	CCq9dzXvlJysuTgdMfZ4WKcR59uI4rvEGZLxuZbsL7YaFFd0c7m88MWOk3Y+X52BOXwK
	4QWPlx/BYKJmmR3s7RBmJLL3y/Q0GuwbEMzkQkHTSyywtykxx6uZeepMZ5xGBrvAmTzt
	vfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zorA/eaGRQHRG8BHos5PS5lptX+/KJSytVFxsQnY/uw=;
	b=buoqI/I4A5NibLLQtWV8r0/aK5f18hmPWLIVIE/YpwCalTQNsEGpKJKGc1MVmu1+ay
	vaZRepcHkwog5qbyHj7tm0lbxPngQV+9QkM9CG83UOrcHAgJkCxIMF87YTQKs3VOLoUX
	KYdxoL7gGMArYcwPRvaIapPbmqkLfEyCc1ZhEf+3ictGWk0PA4+fPc9zJlKIPZQN7qua
	ZQ1BRdp1Rv9wXGSlVeO7CGjEwddgxt7ndPE0Ig0q0OZi+vXmWk9R0OYZOcna+tViKCYu
	maHY5C0VktXDh9YxhQhGAgbYgpeVLXAo/XskL9sG/EOLbRLe+CrEMgMMLmJA7A0VyVF+
	KCmA==
X-Gm-Message-State: AFeK/H0dz++42zoLI5P0B8rWP28HgPCuN9qwNU/uqtF7TZxch6BVHG7m8Qgf3W1mvwwiSv45Sq5CGb1mv0eT0A==
X-Received: by 10.28.69.68 with SMTP id s65mr17768031wma.13.1491368238631;
	Tue, 04 Apr 2017 21:57:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Tue, 4 Apr 2017 21:56:48 -0700 (PDT)
In-Reply-To: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 4 Apr 2017 21:56:48 -0700
Message-ID: <CAMKF1sr1w8TVTVfLHd7LoT1Tm1bQCg7OFGRU9UpqoB9_SNDLTA@mail.gmail.com>
To: Natalia Theologou <natalia_th92@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IoTivity on Yocto project
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
X-List-Received-Date: Wed, 05 Apr 2017 04:57:20 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 3, 2017 at 10:10 AM, Natalia Theologou
<natalia_th92@hotmail.com> wrote:
> Hello,
>
>
> I need a help here.
>
> Is it possible to add to an existing image created with Yocto project the
> IoTivity? Maybe bitbake the IoTivity layer to rpm?
>
> Is it necessary to make an image including IoTivity?
>
>
> Please if anyone knows I would like a help.
>

add http://git.yoctoproject.org/cgit/cgit.cgi/meta-oic
to your layers and add packagegroup-iotivity to IMAGE_INSTALL

> Thanks in advance.
>
>
> Natalia
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

