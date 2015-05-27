Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D99AE009A1; Wed, 27 May 2015 11:07:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mkarascybi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35402E005B9
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 11:07:43 -0700 (PDT)
Received: by iebgx4 with SMTP id gx4so19956940ieb.0
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 11:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GIvYGsYBIF1PHtTeX3kd7U6kx/nXGVcgdrlljcwnKGA=;
	b=Bmeb1KJ/oPdw8ZVTTJRzHWED0wFbPF413beA7VlIcQZ94zoSjmD5imsbZiTYZwUF12
	1gdSeUv2XO0X5EtNi2rw00GlBlYUMzAkNkPgTvHvHbiKBS7vTKRN8VDi4sbEEJD7ppuH
	0VVGMYciI1+Sn4lmBcmuquqVCp8MvThnkUF4CSCMla5c2B5uAZrtlH94/CE9PDYDffXB
	sYnYB4a9XKFwUHCb3thAjBfmbw+yh9xDq45Mm2yEUtt4OU6t2a0pEo/eJwDrIbpmzwrt
	R3lz2tH4sBRvcYAXbY2HhOsnKnDCAt+dMlyBXeMvtNbMjqEbgd4h8qkyaWM/kVOXVkVp
	+BiA==
MIME-Version: 1.0
X-Received: by 10.107.15.149 with SMTP id 21mr40108525iop.44.1432750062403;
	Wed, 27 May 2015 11:07:42 -0700 (PDT)
Received: by 10.36.73.71 with HTTP; Wed, 27 May 2015 11:07:42 -0700 (PDT)
Date: Wed, 27 May 2015 14:07:42 -0400
Message-ID: <CADu_VSa5W1E+GCiXgkaXGRoJ7g4kz4WZ7M=GZvbAgL_KCYgodg@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Start openvpn with my own config at startup
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
X-List-Received-Date: Wed, 27 May 2015 18:07:46 -0000
Content-Type: text/plain; charset=UTF-8

I have an ovpn file I'd like my system to start up with.  I was able
to install the openvpn file into /etc/openvpn using a bbappends file -
but the system doesn't start openvpn like the openvpn docs describes.

How do I set up openvpn to launch with my config file at start up?

Thanks

