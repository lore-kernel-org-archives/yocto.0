Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9157E00E02; Wed,  4 Sep 2019 11:09:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51ECEE00D35
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 11:09:25 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id o9so11762193edq.0
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 11:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=X+d8oJkMTRtigNUPbebxJlO0ah98EjB+Vo4aDDK37A4=;
	b=GyVcWdyGxk5MXB2MkZuefaAf5S2LmZdEYbIZWYxohZ5RjckSyEdyPqk16gvq5J1zOM
	ZI7JCgaZvkhCc3fhkoOWLMCVYHfYMIDDO60p+GAcFIzgbcJzMGRmpixhNlE6udLHyinP
	Qh4wk6DtwzPuVoZa9zVOEyKpjurg7mP8FEmdlAXNFPM9yFwjBeBSXxXXa5VGClLLXIVk
	pKU0uoH+/XJo6wD8mChIwF0zprizfCRbjiolMGYWznDfG/I9YVy1Io+V4UevA+eg2iOA
	/YjEjwzs4wkwn35P/ObwPCKS+uvRC/3VYE0bpRu4oEOD/6XIOf3btLLsorEuOWqXJisR
	zYtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=X+d8oJkMTRtigNUPbebxJlO0ah98EjB+Vo4aDDK37A4=;
	b=konlRJGpRsuUxtFM2RZTAzb1eYIY7tS13Ly/6UzPOTC42wqjhznhYbrcsey0U0exWZ
	7v4rEmQObMgpb/ikb/WnuZB9UGceGfxEsAVtvl3Cq8H9kfaE3911grF2kc/48pV7URyY
	TrhXaZX9vbl6OJLvQBf6tYwfvk8QSDPfCfp6IWzfX6I3lWV91CU7nRMfkQc2mhN12sEJ
	b9dtWKOdAcduwXy0csHGbAOcBobipBmUwDKDSKLisG6FnpXrKWxWcYJhTCd4jUn97x5V
	P70d5cA6o5ItHtepLGDGQPgylOD9zRr0zAbooTnlb9mHywMsggtXVuf5G5IgDo5WO82b
	Z+6Q==
X-Gm-Message-State: APjAAAVptE6sQkAgVylTtJQiXMzWdz7dqcY5+koJ6sBU27DVagNsCeL6
	DHUrUPTRmzb5V3aDDFXuYhyLaV4zKD8hpnMH5YQ=
X-Google-Smtp-Source: APXvYqzkcsVfcpUw0axUGO8Aiq0nlOYqU4F0SyofkOPLtnnH10iwQdRiRK0+lu2UT/PWneBMxMh23cIQkMcBxHWWtyY=
X-Received: by 2002:a50:ba0e:: with SMTP id g14mr7160853edc.241.1567620564419; 
	Wed, 04 Sep 2019 11:09:24 -0700 (PDT)
MIME-Version: 1.0
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
	<CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
	<d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
In-Reply-To: <d53675a5d3f44e9b89a63e505b738146@sakuraus.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 4 Sep 2019 20:09:13 +0200
Message-ID: <CAAfyv356RW8R4bR-LY0SGZ1CM3iaMtoCP+ewwD5HPenePJFaGg@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Wed, 04 Sep 2019 18:09:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 4, 2019 at 6:56 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> > -----Original Message-----
> > From: Belisko Marek [mailto:marek.belisko@gmail.com]
> > Sent: Wednesday, September 04, 2019 12:26 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [yocto] [meta-raspberrypi] Confusion about U-Boot setup
> >
> > Hi,
> >
> > On Tue, Sep 3, 2019 at 8:58 PM Greg Wilson-Lindberg <GWilson@sakuraus.c=
om>
> > wrote:
> > >
> > > I've configured a sumo build, by way of QT's boot2qt to use u-boot an=
d I am
> > seeing a u-boot prompt for keypress to drop out of automatic booting on=
 startup, but
> > I don't see any configuration scripts for u-boot (uEnv.txt or a script)=
 on the image or
> > in the build tmp/ dir.
> > >
> > > For the raspberry pi, how is u-boot configured on startup?
> > there is u-boot variable called bootdelay which can be set to e.g. 2 to=
 wait until
> > autoboot for 2 secs. I think this is the case. Thanks.
>
> There is a variable "BOOT_DELAY", that is used to tell the Raspberry Pi b=
oot loader to delay after setting up the graphics and before loading the ke=
rnel. This has nothing to do with u-boot.  There should be some way to chan=
ge the u-boot delay that waits for user input, among other things, I just h=
aven't been able to find it yet and was wondering if someone could point me=
 to where it can be found.
I think you need to look at u-boot source. Such thing is not available
in yocto IIRC.
>
> BR,
> Greg
>
> > >
> > > Regards,
> > > Greg Wilson-Lindberg
> > >
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > BR,
> >
> > marek

BR,

marek

