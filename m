Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB1B1E00B9F; Tue, 16 Oct 2018 15:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE82E0095C
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 15:36:29 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id g201so19534337vsd.12
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 15:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3OUk3Q9vvb+JpxTKS9s9KNHSvSmbL65w0KEbu6KO0oU=;
	b=YV/VEOfHTixsqi/3XjneQ5Wdg90KoLdXRIt26aABKpoxAT97xXbuF9LjVTXNY4qFlu
	pwGOvmgoMGk5ZlMMec5Jcot5p44yVsosgAWrdLUXx3cou1R8Mb2dhu20tzdxTpsubqXI
	k5Xn87rO+tGOnsZKhIpE/HcOEYsMQgXu9IaP6RyM9E2FcduUuB3gNWSYZ7TnGBS/0QGD
	4xrzn173rTXADMJZBImO8AKP3L4QmviBgvsil0z1aLe/qBQBon0Dhc1t2p98lsRGLvS0
	fbG3KmsDVV1LY9D6Lyk4MPyIaJJGDDboPFGcdpMaavPW7o4EBNs+I+DdBa3Kxfo0bPPn
	ba9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3OUk3Q9vvb+JpxTKS9s9KNHSvSmbL65w0KEbu6KO0oU=;
	b=FWTO26ADPDFNpoiXLhceCmTF3WLRwqZ4tW430b8xAGNHfaj/5Bcg2c+mqCBBSC+gaD
	iUubVWPMQ5p9oUyGWONcFShdIPerxsrGi8YXYG+XNLFjKa8mscq9NJts6uSI/Xrpyhv2
	6rmKHruft7mrcs0YV7OdsZKCEDglyF/f+/eK9Fv1iqCTapjelV+asLIw0jokHv/uImJ9
	gTB+iDF7FHSj9MKiiSi9UaJjvnw89tR16DAEI5tJJyU8ktaWPX1M2+v8lzRSlOaT2PqA
	bYWgWmVglVIptCySCcDnCHBHu5t+BJOJIol6qt91E0FFhuTmyjeCLG4AKNYan96XagsB
	2nOQ==
X-Gm-Message-State: ABuFfojFqhLOtO+q47UGaxNUCwenqli4Dj//Ma/Sr4RggRlqZv8iTknS
	aIhkTTTL1lojdRaa288vVamzhJ+64uZxKteJb5E=
X-Google-Smtp-Source: ACcGV61rsjx4TlwdNvkIxT5yxK2SIXAevIo6+/F0ZKYn5lCFeZsk/vNzjEJpk/wNkIfKt15PapQY9u5B7LCeCzueFn4=
X-Received: by 2002:a67:1f4d:: with SMTP id f74mr9382386vsf.222.1539729388983; 
	Tue, 16 Oct 2018 15:36:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2748:0:0:0:0:0 with HTTP; Tue, 16 Oct 2018 15:36:28
	-0700 (PDT)
In-Reply-To: <CAJTo0LZoR4ywkGpaCBZfJHWZP_UdtsdYqqzoeA4XyiFS3f3Q8A@mail.gmail.com>
References: <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=qcm1Eyy-mYABFcCdRA@mail.gmail.com>
	<CAJTo0LZ=eCkuygCcfLVaoGgLyVY2Ljf7SVOYX_gAXRvWGCDUqQ@mail.gmail.com>
	<CAEhQi8kM6sy9Gq4fkCWMeABV9ZKTak2YTQFzib3GT7t5Wm7fLw@mail.gmail.com>
	<CAJTo0LYj47+tp3cfN9_9rdw-gFz8MWy2Mwq4Beqb25hwKSbAwA@mail.gmail.com>
	<CAEhQi8m5Vs9dyoFkGefqU5NHcvJzf_nMmzWEOk6fdxRznDSGfw@mail.gmail.com>
	<CAJTo0LZoR4ywkGpaCBZfJHWZP_UdtsdYqqzoeA4XyiFS3f3Q8A@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 16 Oct 2018 15:36:28 -0700
Message-ID: <CAJ86T=WDcdfJyWz9bCqSYfBA-OR_SZjg8mcDAeZjfhCELn2+OA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [poky][meta] already-stripped ignore if set for any other package then INSANE_SKIP_${PN}
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
X-List-Received-Date: Tue, 16 Oct 2018 22:36:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 16, 2018 at 6:47 AM, Burton, Ross <ross.burton@intel.com> wrote=
:
> It's only already-stripped that needs to be on PN, because the
> stripping happens before packaging.  When already-stripped files,
> there are no packages yet.
>
> Ross
> On Tue, 16 Oct 2018 at 14:22, M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
>>
>> Ok so it is not supported to have the already-stripped on a package leve=
l? I cannot set it on PN because I have some so-files that is already strip=
ped and others that is not so that was why I wanted to create a package for=
 the already-stripped so-files and use the already-stripped on that package=
. Anyway thanks for the help I ended up creating a new recipe for the alrea=
dy-stripped so-files. But is all the INSANE_SKIP flags only supported for P=
N? I think I have seen dev-so used on an package level?

The key point is when the QA test is run. In the case of
"already-stripped", the test is run as part of split_and_strip_files()
in package.bbclass, ie as part of the normal stripping process. As
Ross mentions, it's therefore run before the build output is split
into packages.

The "dev-so" QA test is run as part of do_package_qa() in
insane.bbclass and can be disabled on a per-package basis.

As far as I know, there's no documentation to say which QA tests can
be disabled on a per-package basis and which can not. If you want to
be sure you need to read the source. Start by grepping for the QA test
you are interested in and also for "package_qa_handle_error" (which is
the function which is called when a QA test fails). Those two together
should help locate the place where the QA test is run... and from that
you can inspect the code to see if/how INSANE_SKIP is applied. For
example, in the case of "already-stripped", the test is run from
split_and_strip_files() and only INSANE_SKIP_${PN} is checked:

  http://git.openembedded.org/openembedded-core/tree/meta/classes/package.b=
bclass?h=3Dsumo#n1010

(In this case, the code could perhaps be even clearer if checking
whether "already-stripped" is found in INSANE_SKIP_${PN} was done once
at the start of the function, rather than being determining again and
again for each file inside the "for every elf file" loop).

>> BR
>> M=C3=A5ns Zigher
>>
>> Den m=C3=A5n 15 okt. 2018 kl 22:23 skrev Burton, Ross <ross.burton@intel=
.com>:
>>>
>>> Ah yes, of course.  Stripping happens *before* package splitting, so
>>> it doesn't make sense to have it set on PN-package1.  Just set it on
>>> PN and it should work.
>>>
>>> Ross
>>> On Mon, 15 Oct 2018 at 08:18, M=C3=A5ns Zigher <mans.zigher@gmail.com> =
wrote:
>>> >
>>> > Hi,
>>> >
>>> > Sorry I see now that there is a typo. What I mean is that in the defa=
ult package I am not suing INSANE_SKIP but for packag1 I need already-strip=
ped
>>> >
>>> > INSANE_SKIP_${PN}-package1 =3D " \
>>> > dev-so \
>>> > already-stripped \
>>> > "
>>> >
>>> > But I continuously get the error that they are already-stripped. So i=
s it supposed to work because I don't understand  the code in the package.b=
bclass since it looks like it is only checking for already-stripped in ${PN=
} and not ${PN}-package1?
>>> >
>>> > BR
>>> > M=C3=A5ns Zigher
>>> >
>>> >
>>> >
>>> > Den fre 12 okt. 2018 kl 16:30 skrev Burton, Ross <ross.burton@intel.c=
om>:
>>> >>
>>> >> On Thu, 11 Oct 2018 at 18:14, M=C3=A5ns Zigher <mans.zigher@gmail.co=
m> wrote:
>>> >> > I have been struggling with a problem where I need to create a pac=
kage in a recipe and set already-stripped for that package. The package in =
question is not the the default one so I am trying to set it by using
>>> >> >
>>> >> > INSANE_SKIP_${PN} +=3D " \
>>> >> > dev-so \
>>> >> > already-stripped \
>>> >> > "
>>> >>
>>> >> You say no the default one, but PN is "the default" one, so that's
>>> >> probably why that doesn't work.
>>> >>
>>> >> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

