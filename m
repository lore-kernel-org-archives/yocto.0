Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D27E00D9F; Wed,  6 Mar 2019 10:23:32 -0800 (PST)
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
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F304E00D08
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 10:23:24 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id r5so14526331wrg.9
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 10:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=wHfGr3VClEZBF7H4vKAqtUZbC+IywHlnCKfQr74PJYo=;
	b=ErxD6tqWPm5KOmFEdJU7Fu3khbmMPa5PaPj7hiJq5SSppZm0qeg4jJ0ItVG1imWNP6
	+DijakneXo8jtVR1UJVVKQ6+eklf4UFrBV+uXly2P7D6WA1pVG+9p8TgRpVFJykhgNwv
	bOIsbU3fZEPiGNQtUH+A5mwKOpfei37I8hVgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=wHfGr3VClEZBF7H4vKAqtUZbC+IywHlnCKfQr74PJYo=;
	b=gd+zXFd0E8OyqcSoxNIpyqSjGlPaRtAIICk+6WkUAHYuzB/6CyCOZgPrL0gjoDsrdf
	s1TterhdWgQVa0x+jBdbgw812Kef7UJZWReSQms0gIKr8KdP/qAfvdkUUOQoEqYPQ0Bq
	Ft2Kige+gAV6gg3n3o7VKk+aj7Kd5RQwxNMhwLCIZ6JnVr4XUgXFXhiULagg+lmS4DQf
	KFsr5HU2M9140TTmh4mu+UI90BqKPj4a4WF3ljYQp1HsEblYcfZWRzgzRtpWZGcsf9gy
	llZKyDUDWkK0rQytxu+9cwUDuO29JJWmUMSX5XQ1mvViHAj5NEnDlsyeTHYP1YISg53S
	KSDg==
X-Gm-Message-State: APjAAAUB2UYslyzRbP9CIRvO3u32LvaGJXxew9/MyouUY9JuLdko/4pS
	P2/i8JaXjNXcustfEL3nUemuHqRQe2o=
X-Google-Smtp-Source: APXvYqyGmrRvMWFzWugp8FOs2226FEwkTLCchtvWa8taER05HSswP7r1tlwcgOWgGWPA9BMerYagxg==
X-Received: by 2002:adf:dd8a:: with SMTP id x10mr4140950wrl.117.1551896603781; 
	Wed, 06 Mar 2019 10:23:23 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id f7sm2642082wru.3.2019.03.06.10.23.22
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 06 Mar 2019 10:23:23 -0800 (PST)
Message-ID: <fd98415c1d3aebb569a588bfa0faf9f3d86ca9cd.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>, yocto@yoctoproject.org
Date: Wed, 06 Mar 2019 18:23:21 +0000
In-Reply-To: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
References: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Subject: Re: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 18:23:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-03-05 at 18:28 -0800, Kaz Kylheku (poky) wrote:
> Hi,
> 
> I'm working in a Yocto 2.5 environment.
> 
> In my own layer, I added a bbappend targeting python which does this:
> 
>    FILES_${PN}_remove = "${libdir}/python2.7/encodings"
> 
> Now this didn't take effect as I expected. I had to do a "bitbake -c 
> cleanall python" to rebuild the package.
> 
> In any case, all I have in the image now, as I expected, is these
> four 
> files, vastly reduced from dozens:
> 
>    /usr/lib/python2.7/encodings/{aliases,utf-8}.{py,pyc}
> 
> Now, if I comment out this FILES_${PN}_remove variable assignment, I 
> cannot get the previously removed encoding modules to re-appear in
> my 
> image! I tried "bitbake -c cleanall" on python, and blowing away its 
> build directory. It didn't work; still there are just those four
> files.
> 
> How do we get Yocto to react to FILES changes, short of blowing away
> the entire build tree?

Maybe related to this change:

http://git.yoctoproject.org/cgit.cgi/poky/commit/bitbake/lib/bb/data_smart.py?id=f7f5e30667e1ad8e1ca76ee331be2843f2976bfa

?

Cheers,

Richard



