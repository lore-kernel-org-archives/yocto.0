Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8889E008D3; Mon, 31 Oct 2016 10:00:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F0DCE00724
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 10:00:08 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id c17so19252675wmc.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 10:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=554Tm27W0k+PPLICeUoACl+BTIcgLyBb08QcLRCG2bg=;
	b=kFekKbxmbieXqSYDU087fgCLlpHeDfvWI8yjmyHuZrp3dgfURmKN+u+RVIaESaX1Vl
	wRjfFMKh3z/4jFNSE3QWJ6R4UWQoI6TKaMclrGXXnJY9Hqx73u3yI9V3kzsEjmXppLGE
	fEi7Fwxn9JdgYpLPoW/J5WHqHhLDIrl0wY7+rO1i4pzHuT4ArDtmRjgQFsQjk2fAX66m
	NX/G2YbczJoIxFxMc2x64J4gzO5kAEY7OCdKKD145kJext2uL9uWEw07yqSDfpjwztyN
	B+E3ah37vwEWQ6+gLhFrFF1diINGsclQvXhqw7ZEfJS08aotbVPgScWgjlUUphoc7IDi
	HyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=554Tm27W0k+PPLICeUoACl+BTIcgLyBb08QcLRCG2bg=;
	b=jjCyqJSU0LTUpuBUli3wqVifo7fdr2sXWS/N1oZNDlxFXapnU2kxhOAizWW2m0b+wD
	o67weJ7iWlpPAZ06gFuepcZFiC/1B0WkFzkttGsdhEwd3JKeYepO61++flkA40mZ4XWC
	T0xuSG3QsOaNKcOjh13/uWg+GsgGOULYkXoSNdGsuL+OFg46s46/wcn6M+Ltx87wMw0l
	9KfmSFsnbW7r43F3ZsU547kkSivPaGMPO8h/U4Wcr9ggo4KWrV0fA7dmxMSeH+M13zUf
	TwIPDfoqp6ow0AWFucf4N7wkusoroexmSQoaNCTlEPD04AZ27oatSZiOCb5m1/fJCMUX
	xQPw==
X-Gm-Message-State: ABUngvdA6HEIp5u9OpDRsLsLk2HqH8KgiKxc2W0qwtBw0Oj9Q+UvXsUqVY6mUQLJRrUnQA==
X-Received: by 10.28.208.71 with SMTP id h68mr10869558wmg.14.1477933208136;
	Mon, 31 Oct 2016 10:00:08 -0700 (PDT)
Received: from carbonA (host86-163-63-150.range86-163.btcentralplus.com.
	[86.163.63.150]) by smtp.gmail.com with ESMTPSA id
	hb5sm30908436wjc.5.2016.10.31.10.00.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 10:00:07 -0700 (PDT)
Date: Mon, 31 Oct 2016 17:00:06 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161031170006.GH3276@carbonA>
References: <1474523274-3883-1-git-send-email-schnitzeltony@googlemail.com>
	<1474523274-3883-7-git-send-email-schnitzeltony@googlemail.com>
	<20161031141011.GA9939@carbonA>
	<7D7B27EF-25D7-491A-B19F-098CDEA59106@gmail.com>
	<20161031164425.GD3276@carbonA>
	<73809C16-06E2-4B0D-8519-09FD485CCF26@gmail.com>
MIME-Version: 1.0
In-Reply-To: <73809C16-06E2-4B0D-8519-09FD485CCF26@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: build vc4-fkms-v3d.dtbo
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
X-List-Received-Date: Mon, 31 Oct 2016 17:00:19 -0000
X-Groupsio-MsgNum: 32712
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LiQwW4YX+w4axhAx"
Content-Disposition: inline

--LiQwW4YX+w4axhAx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 31, 2016 at 09:52:59AM -0700, Khem Raj wrote:
>
> > On Oct 31, 2016, at 9:44 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >
> > On Mon, Oct 31, 2016 at 09:41:18AM -0700, Khem Raj wrote:
> >>
> >>> On Oct 31, 2016, at 7:10 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> >>>
> >>> On Thu, Sep 22, 2016 at 07:47:54AM +0200, Andreas M=FCller wrote:
> >>>> For those who want to run closed source driver with mesa. See furthe=
r details
> >>>> at [1]
> >>>>
> >>>> [1] http://anholt.livejournal.com/47717.html
> >>>>
> >>>> Signed-off-by: Andreas M=FCller <schnitzeltony@googlemail.com>
> >>>> ---
> >>>> conf/machine/include/rpi-base.inc | 1 +
> >>>> 1 file changed, 1 insertion(+)
> >>>>
> >>>> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/includ=
e/rpi-base.inc
> >>>> index 69774f4..737e842 100644
> >>>> --- a/conf/machine/include/rpi-base.inc
> >>>> +++ b/conf/machine/include/rpi-base.inc
> >>>> @@ -38,6 +38,7 @@ KERNEL_DEVICETREE ?=3D " \
> >>>>    overlays/w1-gpio-pullup.dtbo \
> >>>>    overlays/pi3-miniuart-bt.dtbo \
> >>>>    overlays/vc4-kms-v3d.dtbo \
> >>>> +    overlays/vc4-fkms-v3d.dtbo
> >>>
> >>> There is a problem with this change. It seems like this dtb overlay is
> >>> not availble in kernel version above 4.4. Don't know exactly why.
> >>>
> >>
> >> Interesting, did you apply latest firmware patch ?
> >
> > You mean kernel update patch, right? No I haven't but the sources seem
> > to not deploy this dtbo:
> > https://github.com/raspberrypi/linux/tree/rpi-4.8.y/arch/arm/boot/dts/o=
verlays
>
> I see. I think it could be an oversight in 4.8

Looks like indeed.

--
Andrei Gherzan

--LiQwW4YX+w4axhAx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYF3iWAAoJEHO76Gt+erfPn4sP/0IWIDsEVyoS2gJXRHPLxjvC
W5KsCB1UmqOxF5OtIYwhNsK0klM0qZpGsF2o58Qntly04g3STuzXNS6HC3nZKWKP
X/gWmfNAfq2b+oFTQWqA0B69h/4nHpHPd7DqlZlP303sW4P/9j+UbVLX+FQ06crJ
EinuC2SHwt89Kh4/ahSm2f6YsJmXKmipk0RHe2+UyiI2kTc6XrqY6D15MnJEH1jE
dp51UDIbx3maueYN2xZHErsa5V3KfECNfqo5VDWZ5UTE/Fvfpy98rqsQ/knbnGAh
91zZ/HB6TpWthcKmasOUXwVv3dVd2Q2eZHbtEPaE5i+go/SMnjI6wO9/z3bdbprS
MGdmhbHgZBXUiGTth0nKEPKbN3PUXXBAX0W5kNS8ekF8n5av0gArzldT1VnvQPc3
WHNeO/VLy+8D/u/2WuqI9KCCLoKMqdq9onEZj+GcqBKlT3QZywNW4dpu6JzMKdFq
XyHPchP1fbaiS+CSccYw7Wso1SNiwgV9A8m80Azv8J8biiV2pQKf2vBL1V8x4Khl
MmXdoNEkLWO7Fe/rjLPG8txf/vzECIpFcm2En1AHLWK6O4xQvWB/OKBqtPvIL2OJ
v9aiIPDySPYp0oO9anjjuB4AePDfpao58RInyS3xbqwWQarTtj6lMulmzHVTK/VX
Wx4aPiCRoKRSJBFXVeXP
=eykE
-----END PGP SIGNATURE-----

--LiQwW4YX+w4axhAx--
