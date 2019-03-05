Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA330E00BCC; Tue,  5 Mar 2019 14:50:42 -0800 (PST)
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
	*      [209.85.221.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C54E0097C
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 14:50:42 -0800 (PST)
Received: by mail-wr1-f67.google.com with SMTP id n2so11258912wrw.8
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 14:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=6weJ12GNo6Xkx6udQSaWTswDC3OlGp0lo0Fe7IKB0BI=;
	b=Of56Z1ShRMYAU7zITOSfaqZkeTGkIts+rGa4fm2ofTIXJrWgfdlru+IxuQP8/2742b
	F5RIXCB9deHWZSWessAHnzHFKGBLzEYh0n4VKEHrP3LxfWMQWm1rSa5OYif1kayfmIg4
	D8MnkGMR1yS7VnUjBtAdpcNPr7nnD/PDYEDGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=6weJ12GNo6Xkx6udQSaWTswDC3OlGp0lo0Fe7IKB0BI=;
	b=qrq3AwdvGCmGYHX5sW898NQupAZHR1D3jZ/TxT3ZGPjQ5gzTj7+iW+vf3t3cc+b0BS
	fjBFKTgJ62UNzrUsBzu2WFFu0f1Za8BFoTaO1Pf4GX4FIUbiIxT0RWtZUFEv1sDVmWld
	/HTRAmXTMgSHAZaCQIw2jkIqC0ZuMLmBQ690G7iT+ABsgeSColNy5I7FN4RB7NOQE0QB
	ppynPJVmI2GTl8pkv5q25n3FgpSVhVSva5vSxTl2AgFoXMlzk29K/ijVr/BwET/dQ2gL
	r7E/cYF2vg1mViubN50TtJVg1PTEwMK3ZksGNM7w3u7gS/UMgx3z5C/XYjLyRVnzIreu
	14GQ==
X-Gm-Message-State: APjAAAXfFeKI/NHEqYjsuituZv5rbZLGStFltvT4ejvumhsiz4B8bKhf
	jDf8ip83fG9UkUBRoTJj+TbvbA==
X-Google-Smtp-Source: APXvYqy2VSfz9LTZ0OfGlFG+KSS0vgRva35Q56NCFFS69ty0s9xcCsrX7QkDlGxuj6CGST4o16MxBA==
X-Received: by 2002:adf:9f54:: with SMTP id f20mr789251wrg.88.1551826241340;
	Tue, 05 Mar 2019 14:50:41 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 132sm140008wmd.27.2019.03.05.14.50.40
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 05 Mar 2019 14:50:40 -0800 (PST)
Message-ID: <905307c29324d701044d2d1b2fd0952edd3fbc36.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alejandro Del Castillo <alejandro.delcastillo@ni.com>, 
	"opkg-devel@googlegroups.com"
	<opkg-devel@googlegroups.com>, ChenQi <Qi.Chen@windriver.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 05 Mar 2019 22:50:38 +0000
In-Reply-To: <90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
References: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
	<90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
User-Agent: Evolution 3.31.90-1 
MIME-Version: 1.0
Subject: Re: [opkg-devel] [opkg-utils] Question: why update-alternatives from opkg-utils chooses /usr/lib to hold database?
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
X-List-Received-Date: Tue, 05 Mar 2019 22:50:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-03-05 at 16:05 +0000, Alejandro Del Castillo wrote:
> 
> On 3/5/19 12:11 AM, ChenQi wrote:
> > Hi All,
> > 
> > Recently I'm dealing with issue from which some discussion raises.
> > I'd like to ask why update-alternatives from opkg-utils chooses
> > /usr/lib 
> > to hold its alternatives database?
> > I looked into debian, its update-alternatives chooses /var/lib by
> > default.
> > Is there some design consideration? Or some historical reason?
> 
> Update-alternatives used to be on the opkg repo. I did a search
> there 
> all the way to the first commit on 2008-12-15 [1], but even then 
> /usr/lib was used. I can't think of a design consideration that
> would 
> make /usr/lib more palatable than the Debian default.
> 
> Maybe someone with more knowledge of the previous history can chime
> in?
> 
> [1] 
> http://git.yoctoproject.org/clean/cgit.cgi/opkg/commit/?id=8bf49d16a637cca0cd116450dfcabc4c941baf6c

I think the history is that the whole of /var was considered volatile
and we wanted the alternatives data to stick around so it was put under
/usr.

That decision doesn't really make sense now since only parts of /var
are volatile..

Cheers,

Richard



