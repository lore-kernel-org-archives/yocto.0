Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB05E0097C; Mon,  5 Dec 2016 10:42:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37A93E00924
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:42:31 -0800 (PST)
Received: by mail-ua0-f176.google.com with SMTP id 51so357525237uai.1
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=h37zbw8DOHLFb/hq9/N4c2hHrRUQfAU2gJysMfIN4TY=;
	b=WT83uCd8FrjYfC0WsfggT96TwlObJ6uLqSJj2ayEvlan8UR685iXCGlJNYuRSBnZwa
	r3j5WZ7un/57L3tb/M0eevD8sNSwGoFPV12xTUgnKtIj1T1/Z21IagkQS/sDkTC0/jzv
	WSnvPQEiTv6hLgKFI1Q7XkQlb5zZ7//5q2ZtaGEUSqhhToJ06butsKbBzRkr6mTQyxhv
	38UTKDeoQKQmc90BJ5AS2RUeKp4igFpaXSlEyWdNqc6woiOV+vQYwkxfqXL1of2EIX16
	2pj1t0ytw/j3whP81lY7onQXPnyR9qabr6WIdKZEvrrTgtDys8lm/n1Jzcl8qmcyNQdp
	rp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=h37zbw8DOHLFb/hq9/N4c2hHrRUQfAU2gJysMfIN4TY=;
	b=ebpW5mSYKn6ow2JuTR34ug69t1GFql4JZDby2w6JpDpkA+LcUMeYrYMsQGbcv6bPbl
	3OoL54S/K3TAy4xliJQkvIlJzDkI4GBelxAWaopnlEfhFV+/7YBotdB+24jeAr44ej21
	z9jkS46e4k3cAODnsR3CwC4cXlqzWja6QbyeF7ctX6CnR4+ZkaTCjYoV3flGy2LSGkr+
	0X8IIlISbhTpY9RJKUo0EgcNM4JkoYKtklcy399+PYnotDb9iVcL/cR6NtxjxZ2ron+0
	LhMLZIOP9oivb13AweuueRDhBXSFgCw9RhtwbUv3ihrJyYK5Q7yUVA4ao1YtkXerOUBO
	c6AA==
X-Gm-Message-State: AKaTC0302+RSc3jxgErUtPl2AsaWpdDmhDQvWJcPa3z7v2xLCSK/0w9V0DMdstvDXHKqo8nhMiSH2mQsU8xbKA==
X-Received: by 10.176.84.8 with SMTP id n8mr9939370uaa.29.1480963351119; Mon,
	05 Dec 2016 10:42:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 10:42:00 -0800 (PST)
In-Reply-To: <CAKV_0ei2fHx-byfoVD85KFEpKkA23jgoVC9PUyK=6gJZQGTugA@mail.gmail.com>
References: <CAKV_0ei2fHx-byfoVD85KFEpKkA23jgoVC9PUyK=6gJZQGTugA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 10:42:00 -0800
Message-ID: <CAMKF1spKHmuzxvW=JtWp7LPRFfDkb24A4sdUp7-hL1dqU16Mgg@mail.gmail.com>
To: Brian Avery <avery.brian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] RFC BuildAppliance future
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
X-List-Received-Date: Mon, 05 Dec 2016 18:42:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 5, 2016 at 10:04 AM, Brian Avery <avery.brian@gmail.com> wrote:
>   Please note, this is going out to 3 lists in an attempt to insure that =
no
> one who would be impacted by this change misses it. Implied spam apology
> included.
>
>   The Yocto Project currently provides a virtual machine image called the
> Build Appliance
> (https://downloads.yoctoproject.org/releases/yocto/yocto-2.2/build-applia=
nce/).
> This image can be run using either VirtualBox or VMware. It enables you t=
o
> build and boot a custom embedded Linux image with the Yocto Project on a
> non-Linux development system.  It is not intended for day to day developm=
ent
> use, but instead, is intended to allow users to =E2=80=9Ctry out=E2=80=9D=
 the tools even if
> they do not have access to a Linux system.
>
>   We are considering replacing the VM based Build Appliance with a set of
> containers (https://hub.docker.com/r/crops/poky/, or if you want a user
> interface (https://hub.docker.com/r/crops/toaster-master/ ).  These
> containers currently provide most of the functionality of the Build
> Appliance and should shortly be at feature parity with the Build Applianc=
e.
> We are actively adding to and supporting the containers as some of our
> developers are using them in their day to day development in order to
> benefit from the host isolation and ease with which other distributions c=
an
> be tested.
>
>   This is an RFC to see what features in the Build Appliance are importan=
t
> to you but would not be provided by the container solutions.  If the
> community would be just as content using the container approach as using =
the
> VM based Build Appliance image, then we=E2=80=99d be better off deprecati=
ng the
> Build Appliance and applying those resources elsewhere.  If there are
> important features the Build Appliance provides which the container solut=
ion
> does not, or cannot provide, we=E2=80=99d love to hear what they are!

Personally, I dont use build appliance but I think using containers is a go=
od
step forward, provided, we can address all build host OSes that
virtual appliance
could.

Build appliance is also a sort of "eat your own dog-food" for ensuring that=
 we
are doing ok on preparing cloud images for deployment. Hopefully we wont
lose that testing, may be we can add another image to cover that.

>
>=E2=80=A8Thanks in advance for any feedback,
>
> -Brian
>
> an Intel Employee
>
>
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
>

