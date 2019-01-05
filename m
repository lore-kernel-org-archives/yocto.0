Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 724BAE00C99; Sat,  5 Jan 2019 10:52:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CD5E00B43
	for <yocto@yoctoproject.org>; Sat,  5 Jan 2019 10:52:40 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id t6so39349401wrr.12
	for <yocto@yoctoproject.org>; Sat, 05 Jan 2019 10:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=rpwbgdcjXC59KyD2CC3Flxcp77Zf7PKVcmePeg0EY+k=;
	b=iWzH1WZzudT2X46Yn5E1Uo7P8/DWoTelIymupZ7d1XXq4jZFjhKLBJs3OgLS45UMZY
	fJUaWG/XwBeiC3i4I4BK2SC8croqZWtZobL5V3PNQKy500CUzaKc8KcEqB/r2dAFlJWW
	ZHqr8UrpinOa8XK//Oq3VNcsJ7PolFTaitoT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=rpwbgdcjXC59KyD2CC3Flxcp77Zf7PKVcmePeg0EY+k=;
	b=X4zkPGFkdlReBXbbnmE7PECyvYIebVuKaieYQBVWZzflj8T48ECSzH3RkgJeUkAVlj
	/hRLz+sRBOUccxlb6wbWL+DObHpb5osl7epgqTO+1bb71ewWEAu9tsaUdX5nH7yQT/ps
	bC4MhKe5q6l0ZmXzsh7BNWdELjGiq7HvF/pzUavZgAI2gG5GEmE48HAZmLkSX8zePtvp
	T3CUPepnt9qDhhBqc+ex+l2/RPt3vFH3zyK9gKOMWV5K9qsuVT7unwHgWPpFt1LgOeTd
	z97VsjpIaZ9sBGMU0oPZp5w+hJPxTSJuZlW+OVRKgVz6GwuBlZIAk1O6uYNXPDWs3AuC
	VkhQ==
X-Gm-Message-State: AJcUukdToK2BMOUpHhFVbcijMXynCRpGpHkeo8tyOpdqGLBdRLlNlpmy
	sp3pWck/7H4ulqidMinbGj7/Kg==
X-Google-Smtp-Source: ALg8bN6FKkbYTLvz+SeRLCNCe+ayCe0SwvmOnxueenI57VZKXtTgzu6tP/tP6dD37jOlYLi3GQ6fpA==
X-Received: by 2002:adf:a743:: with SMTP id e3mr45606708wrd.56.1546714359937; 
	Sat, 05 Jan 2019 10:52:39 -0800 (PST)
Received: from hex.config (5751ab90.skybroadband.com. [87.81.171.144])
	by smtp.gmail.com with ESMTPSA id t63sm3164739wmt.8.2019.01.05.10.52.38
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 05 Jan 2019 10:52:38 -0800 (PST)
Message-ID: <db401220935541d71fbc28556c51db29937b9365.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Anibal Limon <anibal.limon@linaro.org>
Date: Sat, 05 Jan 2019 18:52:36 +0000
In-Reply-To: <CA+_AqitHQj3_FwKW4UvF_dcO5fo4P+5_iirXOqnR4sMKZiCf3Q@mail.gmail.com>
References: <20190103180218.6968-1-anibal.limon@linaro.org>
	<6fc3263d9097d1af78c96df089bfe1ca3184efdc.camel@linuxfoundation.org>
	<CA+_AqitHQj3_FwKW4UvF_dcO5fo4P+5_iirXOqnR4sMKZiCf3Q@mail.gmail.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support timeout failure type to XML result file
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
X-List-Received-Date: Sat, 05 Jan 2019 18:52:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2019-01-05 at 11:30 -0600, Anibal Limon wrote:
> 
> 
> On Thu, 3 Jan 2019 at 15:45, <richard.purdie@linuxfoundation.org>
> wrote:
> > On Thu, 2019-01-03 at 12:02 -0600, Aníbal Limón wrote:
> > > The ptest-runner support logging results to stdout and to a XML
> > file
> > > in stdout the ptest is mark as:
> > > 
> > > ...
> > > ERROR: Exit status is 1
> > > TIMEOUT: ptest-directory
> > > ...
> > > 
> > > Add the same support in XML file for example,
> > > 
> > > ...
> > > <testcase classname='ptest-directory' name='run-ptest'>
> > >   <failure type='exit_code' message='run-ptest exited with code:
> > > 1'></failure>
> > >   <failure type='timeout'/>
> > > </testcase>
> > > ...
> > > 
> > > [YOCTO #13088]
> > > 
> > > Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
> > 
> > Sounds good, thanks!
> > 
> > I have a feeling this will show up a few bugs but we should find
> > and
> > fix the ones which are timing out...
> > 
> > I'd still be interested in the time each directory takes too if we
> > can
> > get that as it would help us decide which tests to run.
> 
> The timeout is set to 5 minutes (300 secs) by default and currently
> there is no way to set a timeout per ptest, 
> I will create other patch to add the timeout value to stdout and XML
> file.

That is handy but what I mean is the execution time each one takes. If
we have test which take 5s its easier to run them regularly than tests
which take 500s. Having an idea of their relative execution time would
therefore be helpful.

I assume the timeout takes effect after no output for that period?

Cheers,

Richard


