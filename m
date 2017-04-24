Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6231FE00A9B; Mon, 24 Apr 2017 15:36:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.175 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70FACE00867
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 15:36:52 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id c45so126509630qtb.1
	for <yocto@yoctoproject.org>; Mon, 24 Apr 2017 15:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+chfm1R7UihTPayRWunW6rTaW5XiurJX/TirfOMecW4=;
	b=nQEnSmXoh/SITzFYcRdSAc1/HFY42xZKQu45ICsBfCu7UFEguLYpjJ15FLFyFIq9Ip
	vLh7R9omcwBNrcAtB20NyPcTjmeeXZVz8LzxZ4pZp7WScycGt6zLHGHdOoZTLYDAOClL
	7EHUYsCmxQgif+EXOlyxU/TBfVsiL23Khx/1gjLo/EwFMz4oUXQ6/wuiJhUrWOSbEWOr
	T4l8B8Uym1r2qtU5aP1jEsG00ig8Xps66rZqxZX44IpUqBCO6wHsJcCdQiFYd1fCF7L3
	unfi3io9tsLBmIFfF0BIp64uJuQ/YmJtm814IgYXPmdPOEFFuEaoSyrnlQjCJ7wPPqK5
	p2BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+chfm1R7UihTPayRWunW6rTaW5XiurJX/TirfOMecW4=;
	b=lETic6EATyzOQJKEBSkPqKZDAfkKmZGgtny/Qex3Nf8rMTNjJ9In8HukaswzuURe4d
	6XKQZwWngNY14EITlceqAjODciw+TklJRa0zZ84jzC7oY65Sqwhvo05cJXR2MLebQtg9
	4n28KPDMXGK4kqD9kwBcnZdckiduSfAeAJu0AVMvqu5KlTxnbjGWiVdE60U/c5ibtsOZ
	ZC8/8ZnTAK60855i87zw9iSxRNjVTVJvXZkVgBXC5Nm4bVOmQ+TWBHXI667pTr5I0EEV
	h3IwZgJZ9HXQvsIte7Ujbyxv9DbU6yAOITucEcSph9X8uOVJFwmeBIEU7FxMDemGllVE
	uAmA==
X-Gm-Message-State: AN3rC/4C9hE02on5nvz0cXXKbmLaoh7UXxA0M8bYLDIyFZmUTQneNUJh
	5GDzPQL/BiHeUw4FpaTeC70vwCnSZQyO
X-Received: by 10.200.41.108 with SMTP id z41mr27050102qtz.68.1493073412423;
	Mon, 24 Apr 2017 15:36:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 24 Apr 2017 15:36:31 -0700 (PDT)
In-Reply-To: <CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
	<CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
	<CADkTA4OgpwhRtmR4+4kurnhBUQoap3E3kKoRTe4fNMBFOEp8hw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Apr 2017 23:36:31 +0100
Message-ID: <CAJTo0LYc-Ken=sp55QB1sz78s30gpVYjOzuL8w-J5oZ4DjM0Pw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 22:36:54 -0000
Content-Type: multipart/alternative; boundary=001a11405e8a5f17a5054df13e6c

--001a11405e8a5f17a5054df13e6c
Content-Type: text/plain; charset=UTF-8

On 24 April 2017 at 01:31, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:

> I see that it was the 4.1 kernel, which is expected to fail. I haven't
> looked into backporting gcc7 fixes
> that far, but if there's demand, it is something we can consider/look into.
>

There's demand in that the gcc7 merge is blocking on either kernel 4.1
being fixed or removed.  Your choice. :)

Ross

--001a11405e8a5f17a5054df13e6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 24 April 2017 at 01:31, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"=
mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>I see that it=
 was the 4.1 kernel, which is expected to fail. I haven&#39;t looked into b=
ackporting <span class=3D"il">gcc7</span> fixes</div><div>that far, but if =
there&#39;s demand, it is something we can consider/look into.</div></block=
quote><div><br></div><div>There&#39;s demand in that the gcc7 merge is bloc=
king on either kernel 4.1 being fixed or removed.=C2=A0 Your choice. :)</di=
v><div><br></div><div>Ross=C2=A0</div></div><br></div></div>

--001a11405e8a5f17a5054df13e6c--
