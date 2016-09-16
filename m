Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 244C2E00CCC; Fri, 16 Sep 2016 17:00:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A46BEE00CC5
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 16:59:59 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id b187so5844083wme.0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 16:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vfKknnZ88Br1Umf33/GJRWJxSQ95YGeGzOQEv6Qy/ro=;
	b=dzrb9EQgb1dlkGIG6zomQn8c5rZoLMQrFnH9QLxrVtLBW+xa+VrS36UxL/KXwZ6VEC
	EGvBmEB/rK83ul8MBnTH7s/6JrKmAqmODaD9G6vsdoDuBSD0/cX2Qweyysebvlt8wB4O
	R1zwlIndPprUbCQ2mtj15/gX9GFX/l2/EeC5TO3qxwmhuVe3jaTl3nwG6RMsyjPlIHw9
	BF9a4tORNAR5AUnrR4h1lpsI7JHGAO1TRhaT3tae5pH5XPBSsL0XfPHmoOW+B1TZiClS
	PSNq68zYdk5o0A9ogF2GN5imOCDS0clmHsFzY6Y5ekezS6h5sZrWDlOF93x5dCHAT6wF
	DdXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vfKknnZ88Br1Umf33/GJRWJxSQ95YGeGzOQEv6Qy/ro=;
	b=kf9GV0jM5Hk0IYzT6w8v9pY6wa2/6Vt9hd7L9dj9T8fjgApn3tez/3sK9AAkHjHUb2
	LTU4doQ+bHy/Ksqj584W4oArfdGz6QUP9qrLz+XnGMV/o2JoqceG7nAcRo1NdEev2P/4
	/UhehVa0zkfmqjZdRGLhN4MsGhmLPDyCvjEEXhNzjJ7R5dKmt5fr/X0A7+zvRgKd8ZGw
	WmsMRaAbGLF3q8Mj5ol5EFUf3XAlZ+WWI1IunpC2j0soaEe3i1VRVEYSOg62oZRGc3EJ
	s1OXhq1hWb2VBIuGuaZsFDtNvgK9ig5wDrMEr8RuOQ581OTVnfj3/JY+YK73H8IKWWFz
	/tMg==
X-Gm-Message-State: AE9vXwP699MrH3yLCoDJoyk930YB7PsFV8Cz0Qj5/IOcDXVAkHSDtUnoKk9tzj4kud4UQVVZiPp8mHgYSxkXpg==
X-Received: by 10.28.103.133 with SMTP id b127mr918wmc.82.1474070398923; Fri,
	16 Sep 2016 16:59:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.190.233 with HTTP; Fri, 16 Sep 2016 16:59:58 -0700 (PDT)
In-Reply-To: <CAJTo0LZ0Z+_JaTO4ZW2VoKOPZvbwsmcYqUVRssPMoaKLq46UPw@mail.gmail.com>
References: <DUB127-W345DAE7A51AB5AFFFEA9D0DAF30@phx.gbl>
	<CAJTo0LZ0Z+_JaTO4ZW2VoKOPZvbwsmcYqUVRssPMoaKLq46UPw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 16 Sep 2016 16:59:58 -0700
Message-ID: <CAJ86T=WLsY1uUH8LgRNTJ9E_w350siME9m_ySMCdWgqU6CBKPQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: QA Host Contamination in autotools/pkconfig based recipe
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
X-List-Received-Date: Sat, 17 Sep 2016 00:00:04 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 6:33 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 16 September 2016 at 13:40, Chris Trobridge <christrobridge@hotmail.com>
> wrote:
>>
>> The install line in the makefile is "cp -af $(APP_LIBXX_FILES)
>> $(DESTDIR)$(libdir)/", so I am at a bit of a loss as this should preserve
>> ownership.
>
>
> It does - the build happens as you (uid 1000) so the file gets installed as
> 1000.  This is why makefiles should generally use "install" instead, as that
> will reset owner.  automake has built in support for this, otherwise just
> patch out "cp" and use "install" instead.

If using install doesn't work for some reason then replacing "cp -af"
with "cp -af --no-preserve=ownership" would be an alternative.

> Oh and:
>
> inherit autotools pkgconfig
> B = "${S}"
>
> Just inherit autotools-brokensep instead.
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

