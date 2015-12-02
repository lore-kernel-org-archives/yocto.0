Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29747E007B1; Wed,  2 Dec 2015 13:57:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B95E00404
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 13:57:23 -0800 (PST)
Received: by wmuu63 with SMTP id u63so233611602wmu.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 13:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=nzJdTQLUwS+tOlWFKWjDU0+8/MCi45fx2/Lzp/T9rE8=;
	b=iGxR8Om92det3Ao0UyAvpl64vZ4UpS2Ty6ZaUWfMo8Yc08b5mVJo4lvOl587haIwf0
	UFwOniTG1MJdleXdIvQE+MmqOVhljlWF3AuPEzEh6RYr1AAH6iB5hQCAEjdNbUacSt4r
	JByl2NQgjN4HYopxe5KN/IayxfD+6zNa60mwNvvW2sUwgjOD6PEbPBfHUslsF8ooQRNZ
	xnUV25gBwaq44Imxg2xWg5DxtQaLEl/PRB3WcIzGnocSl/1iP8akQyV17pfU43fAwWtQ
	hh48RYCWelxZ9OX4oKLGd+mXA9y0TFrTBjFM1mikOV9CaCYOIN8GQ2KmwVA6g2XnH78f
	9/uQ==
MIME-Version: 1.0
X-Received: by 10.28.177.10 with SMTP id a10mr45753411wmf.4.1449093442773;
	Wed, 02 Dec 2015 13:57:22 -0800 (PST)
Received: by 10.194.140.38 with HTTP; Wed, 2 Dec 2015 13:57:22 -0800 (PST)
In-Reply-To: <BN3PR0501MB1090C01F20FE5C9C83BFAB6CBB0E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <BN3PR0501MB1090C01F20FE5C9C83BFAB6CBB0E0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Date: Wed, 2 Dec 2015 13:57:22 -0800
Message-ID: <CAJ86T=VQK7=zZQnh=CJ6nJ0VV2Ruy=Mm+nZXuVk1C9y6v34LqA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fixing build when changing kernel PREFERRED_PROVIDER
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
X-List-Received-Date: Wed, 02 Dec 2015 21:57:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 2, 2015 at 1:08 PM, Bryan Evenson <bevenson@melinkcorp.com> wro=
te:
> I'm on poky/dizzy-1.7.2 and I'm in the process of updating to poky/dizzy-=
1.7.3.  I'm using an Atmel processor, so while I'm at it I'm pulling in cha=
nges from meta-atmel (over at https://github.com/linux4sam/meta-atmel, dizz=
y branch).  One of the commits I pulled in was this one: https://github.com=
/linux4sam/meta-atmel/commit/ae10c274a681adebb1b59ea1173e6a8c603b66f1.  Thi=
s renamed the kernel package from linux-yocto-custom to linux-at91.  After =
this change when I tried to build the image, I was greeted with a very long=
 list of files and the following error:
>
> The build has stopped as continuing in this scenario WILL break things, i=
f not now, possibly in the future (we've seen builds fail several months la=
ter). If the system knew how to recover from this automatically it would ho=
wever there are several different scenarios which can result in this and we=
 don't know which one this is. It may be you have switched providers of som=
ething like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in t=
hat case you need to execute the clean task for both recipes and it will re=
solve this error. It may be you changed DISTRO_FEATURES from systemd to ude=
v or vice versa. Cleaning those recipes should again resolve this error how=
ever switching DISTRO_FEATURES on an existing build directory is not suppor=
ted, you should really clean out tmp and rebuild (reusing sstate should be =
safe). It could be the overlapping files detected are harmless in which cas=
e adding them to SSTATE_DUPWHITELIST may be the correct solution. It could =
also be your buil
>  d is including two different conflicting versions of things (e.g. bluez =
4 and bluez 5 and the correct solution for that would be to resolve the con=
flict. If in doubt, please ask on the mailing list, sharing the error and f=
ilelist above.
> ERROR: If the above message is too much, the simpler version is you're ad=
vised to wipe out tmp and rebuild (reusing sstate is fine). That will likel=
y fix things in most (but not all) cases.
> ERROR: Function failed: sstate_task_postfunc
>
> I issued 'bitbake -c clean linux-at91' and then 'bitbake -c clean linux-y=
octo-custom'.  Linux-at91 cleaned without issue, but when I tried to clean =
linux-yocto-custom I got an error saying "Nothing PROVIDES 'linux-yocto-cus=
tom'".  That in itself makes sense as there is no longer any recipe for lin=
ux-yocto-custom.  However, I'd like to avoid deleting the entire tmp direct=
ory.  I don't have the speediest machine and I'd like to avoid wasting a da=
y if there was a simpler solution.
>
> Is there a less destructive fix to this problem than deleting the tmp dir=
ectory, or is that the only safe way to fix this problem?

If you can restore the old linux-yocto-custom recipe (e.g. temporarily
git revert the commit that removed it) then you should be able to run
it's clean task.

Deleting tmp is probably safer and quicker though. It certainly should
not take a day to recreate it if you keep your downloads and sstate
directories intact.

> Thanks,
> Bryan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

