Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CE10E00D2E; Thu, 11 Apr 2019 00:20:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A77E00D14
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 00:20:40 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id w15so5242776wmc.3
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 00:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=gHueDPhlg6tz/+Xpy/gHl77vXljtVD4TsAZKL5ypdIQ=;
	b=iONDuByLEHNM21mMvIuZp0WB6p4GxeQNaMs4ys5EklO+AlLaN0clywXMyNnbElY+no
	kDiuQgXkDizx0+Hx709uiVctDUYGjm+LSC/0ikCabfv2wHgrgw9/HW4GBEBGKyMMn2+m
	WGLKpSRb5nmGht7+W4Olu9tVWh/twfLc3PFz4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=gHueDPhlg6tz/+Xpy/gHl77vXljtVD4TsAZKL5ypdIQ=;
	b=flR6bC+cYt7kTYESK+Pa0fe7EUnH2iA9baofYXGjrMyKCfmtEMUrO+qM1xMfvBnLRA
	VxJwGqt0uErFhuf3EmS6MoBHHLvrXty8G7ThgdYlGl7P3XzQ11JkVMPal8piBYxvqutW
	v7j12d2zIPw/LOD37fJy/sUefBYc03Lm3ZXSI1wdAkyix1uh2tOemhB9cdHFwAjbfw+b
	vToJGq1Qr/8jU2trSABOkGesZcJKp3GGr4mcp1kYSxtinEJTj7s+AVGEqea9TmJGsOQE
	cJHMwdVDBsMbIzrSfD3YIYdjgxIWM8YZkSNgA2JyayyKLkUwNA2eUnBELPfTKj3sMiiC
	q3Fg==
X-Gm-Message-State: APjAAAUsK719rQsANVLr3rxW3+JvEZBQBD65Lbs+b2DwbyeFM5fAOhhn
	6FwPAL9wM88C3kWZlv+1ECe/iA==
X-Google-Smtp-Source: APXvYqynH31+773evqPkD37JY2XMXKwZmd2GYKN39FH+6sn6b77znheLZ1xs8iIJ0pPoE5yFQWQWAA==
X-Received: by 2002:a7b:c4d2:: with SMTP id g18mr5417261wmk.108.1554967240027; 
	Thu, 11 Apr 2019 00:20:40 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	i28sm106527711wrc.32.2019.04.11.00.20.38
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 11 Apr 2019 00:20:39 -0700 (PDT)
Message-ID: <7c1d84b0957f2831a7add461f73e3d9108176e9b.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Date: Thu, 11 Apr 2019 08:20:36 +0100
In-Reply-To: <05dd3911-b195-1d1f-b218-e4b41d80ec72@gmail.com>
References: <90d55754e9381759c8b70ebca0b880e6013f17f0.camel@linuxfoundation.org>
	<f8b3661d-a6cc-494e-de49-e462ba935535@gmail.com>
	<680dff761ebd04f8f240d12339b31569c70c48da.camel@linuxfoundation.org>
	<05dd3911-b195-1d1f-b218-e4b41d80ec72@gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: [OE-core] Eclipse support dropped with immediate effect
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
X-List-Received-Date: Thu, 11 Apr 2019 07:20:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-11 at 08:42 +0530, akuster808 wrote:
> 
> On 4/10/19 3:11 PM, richard.purdie@linuxfoundation.org wrote:
> > On Wed, 2019-04-10 at 05:56 +0530, akuster808 wrote:
> > > On 4/9/19 8:52 PM, Richard Purdie wrote:
> > > > I'm sorry to have to say this but the project is terminating
> > > > its
> > > > official eclipse plugin support with immediate effect.
> > > Does this affect the stable branches as well?
> > Yes, I think we'll just be removing the target from the autobuilder
> > entirely.
> 
> Have we every removed a feature from a release? Do we need to doc
> this ?

Its not so much remove as not release. No, we haven't and yes, we do
need to document it in the release notes.

Cheers,

Richard


