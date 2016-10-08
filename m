Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44368E00CAA; Fri,  7 Oct 2016 20:05:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C138FE00C9D
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 20:05:42 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id f193so5409136wmg.2
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 20:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hVAu8w3U1UWuDMBFhAKfr1D7KXRwd8+IfQrUJ7D5xwg=;
	b=HCaOad/WgLE3k4hkaxs9+J1B98Dd0hy2vuFMZIQCmQmPExPXbQsvEou0Ct2vFKeGCy
	X5R4AIfFLq2O5zx7L0DTOKtaLb5BwdnOvoq3+VRSpJJHnlcBrMHmIFJhG8VVXxwicm7m
	L9IW/netBlW4ULIdvFiaVGO2WOuKiuktc4Idm/rqu5AYc4j/MyFRk1F/98Hn6Pz8ftqQ
	YBiLSBrt1Wg7iRbIuspTXCmq+vSQfuof1G3ShYbMefZ7F0KlYmxJAJTivgKOg1cCux7F
	yCtQm4R4g0dE4Wa8/ut1KM8Dlg5x/HLWa+Si7ioOAXtqPg+pfQNypAV4ICNgswUNTw4z
	GAgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hVAu8w3U1UWuDMBFhAKfr1D7KXRwd8+IfQrUJ7D5xwg=;
	b=T+YN49QwKd2BTO1enHKP8TSiqTsFqMe4k2vXK2/DflyuQdUUzkBFLi3ySFA4osQcLN
	ESNZdjtf/nrUcGKJI/2IfXIe0QZ37fx5NcrXy4DviGXsP1wuvFXgeiAqLpf5TijiCv3T
	dUPOdsSaJeHrPymrXj8Gp7J4swx5E7gAdps6c4SeXljAndnv1Y0/DA/V5mcHt/UmR9kO
	Ks/qb4pqyP37wS3erxoMwsSNpPfrWSORQQYLCTXMR8OlaSIyMmWvSVpr3uaF0tFA8CV7
	G2/piuMHKecAknsJfWo8/1WYOTRTdrbmUoEb+4VRxWlfYFL9FxaHby2vTtmQwC4sMJ1G
	vimA==
X-Gm-Message-State: AA6/9Rl5O/yN4usyTs2g0TJFTnKVQVV8bsaMKdjcJ5isWd0EhgILzDw5zDl8uR7RB5RbRJwq0H7VhyJl/3ndJw==
X-Received: by 10.28.66.1 with SMTP id p1mr1175176wma.53.1475895941577; Fri,
	07 Oct 2016 20:05:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Fri, 7 Oct 2016 20:05:41 -0700 (PDT)
In-Reply-To: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Fri, 7 Oct 2016 20:05:41 -0700
Message-ID: <CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sat, 08 Oct 2016 03:05:46 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert,

I see a couple of problems with this proposed patch. First, it's not
clear the existing code is broken. It calls getDeployNames() which
should detect the build artifact is "toolchain" and return a deploy
path of "deploy/sdk". If that is not working correctly, then that's
the code that should be fixed. Second, your patch dropped the "+
pipeline" from the command chain, which is used to set an error flag
in the event the copy failed. Third, you also dropped the portion of
the command chain that calculates the md5sums of the toolchain files.
(The fact that it appears, on the surface, that the md5sum files do
not get copied over would be a bug - although it seems like I tested
that at one time and it was working.)

    -Bill

On Fri, Oct 7, 2016 at 8:44 AM,  <gmane@reliableembeddedsystems.com> wrote:
> Hi,
>
> I use the latest and greatest yocto autobuilder:
> f9b4e02730a5e712ee9085e2480f9a3b8b00f56d
>
> It looks like Publishing Artifacts tries to find the toolchain instead of
> build/build/tmp/deploy/sdk (where it is built) here
> build/build/tmp/deploy/images/toolchain-x86_64
>
> This patch [1] fixes the problem for me.
>
> Regards,
>
> Robert
>
> https://github.com/RobertBerger/autobuilder-patches/blob/master/before-install/0004-PublichArtifacts-searches-toolchain-in-wrong-place.patch
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

