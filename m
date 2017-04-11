Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB190E00AD5; Tue, 11 Apr 2017 09:38:25 -0700 (PDT)
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
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D276BE0094C
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 09:38:24 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id w204so14704701wmd.1
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 09:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ekxZa0EwPwWf2HWyS4yNlozshkJJsybv4ULewJGyycc=;
	b=qOZGdug/WDF9TcUu6PhHByhYj6QYiTXriqg3d76sHP+befA+pBwzY+yD/Znt7noWqM
	Xkfwm7mSuAMcQwzGMSLsLOW1/Y777BApSog0x6k5zN5OOAfF4UwDTLcUrcv5akhI1Fv0
	sp87xgkF9WcXzokEOGuTTpZTtxRrHxYFbYXDUzx5R5SzNYpU4i1PyiZNk3wHeYuFOjJ7
	CF6UcuOLmLXRLyIFuOvyWA79FxsvbKpQvlWHqMGDAI4aZjHioQlUo+9VEK46aPtYFgRs
	m5AfngudfTkoCT0jO/qgihm4yHZTNaklOaHXOZDoQpKRXn9aRCR1DmMV1UUmZ74S3bhF
	cAlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ekxZa0EwPwWf2HWyS4yNlozshkJJsybv4ULewJGyycc=;
	b=uNJX6d6XFcKZMa/PA5zxBSUOn2x3tjANdW8cpYRen/L91GafTUwGzvIDzVS62qgP67
	SBuL0a3cpIHod/iFQx4hng4yJaA6jNHehB9ghOaFWNEGwgOewc64UNeE0a+LsKwDEomB
	b39Qql72gDJTXwqUKuSdJoYTWU5Llz2iMcgPBkByLdvL8kkzFoLlmY087/jT+lyoptCX
	E7bjqo8FiDUCtd4Eu3EesWsIlFR0/mzgzS1Bxh5MfLBFd/CSsVNHfL3HL81Zb41luVC7
	rirLQmg8LBkoWBbSwWzu2EC7MVkLAzb5up+Ns57Dsv437u7TJznMOlnUAUuxAXLn4BHy
	NNuQ==
X-Gm-Message-State: AN3rC/5dvUpg/B+rCgSPcu20VGaLccf0EC+89sYjteW05SrZ3H87s1+nfC79uiDe1vNvYHNW5Wvt9qva401rXw==
X-Received: by 10.28.221.212 with SMTP id u203mr5385605wmg.101.1491928703482; 
	Tue, 11 Apr 2017 09:38:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Tue, 11 Apr 2017 09:37:52 -0700 (PDT)
In-Reply-To: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
References: <83bd670ecdbc4d1885b66d8ba8ed8b0c@FE-MBX1014.de.bosch.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 11 Apr 2017 09:37:52 -0700
Message-ID: <CAMKF1srN+LVbeKChvrppj7kiFMRxdvWn_DN80X0AEv0ycnzpuQ@mail.gmail.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sub-directories from Git in SRC-URI
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
X-List-Received-Date: Tue, 11 Apr 2017 16:38:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2017 at 11:24 PM, Eswaran Vinothkumar (BEG/PJ-IOT-EL)
<Vinothkumar.Eswaran@de.bosch.com> wrote:
> Hallo,
>
>
>
> May I now is it possible to include a sub-directory from git repo in the
> SRC_URI of bitbake recipe.
>
>
>
> Also in SRC_URI is it possible to include a directory instead of a single
> file?
>
>
>
> I know I could create a tar file of a directory and include it , but I wo=
uld
> like to know is it possible to include directory as a SRC_URI.
>

if you have a setup where you checkout this component yourself e.g.
using android repo or gitsm to manage your yocto setup then you can
simply point your recipes to use file:// fetcher or even resort to
externalsrc to build in recipes where you point S to this common
directory for multiple recipes. I for one however like to defer the
fetching to bitbake in that case it will really fetch your component
once but will make copies locally for each component it builds. It may
not be as bad now a days with shared state and if the components are
not built so often its only a occasional thing.

>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
> Vinothkumar Eswaran
> BEG-PT/PJ-IOT1
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

