Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83D97E00E77; Thu, 19 May 2016 08:24:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A800DE00E6C
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:24:34 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id w143so21836374wmw.3
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 08:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Fvi0xcwNyxVFPCium/C3CrY/JEOdHVO0V2YTVDs46vc=;
	b=tik5Y0ozNWqmkGqwqnooZw+sp2AusUTHsEYMvM76z55CY34wAoJ96H79zoV+Or8U/+
	tVpMpnqgmrLTVvW73q0F7hs5R1FAItC4vxRZzkXCY07UUtgoau++wcdJp67n5qyRHVs2
	XtdFMoHChaaOphS6tzQ3VPS2wUt+7GioqnlZ71/Ex/loTzhmEbrAabzeLcv91vMhBkEW
	lH2xgriRqv1mz2C7ah8iJOn+5NDx0Z7GVonJElbWCro9SqoGzURH0nzMBueXRE1zbYMp
	Qfwy3KC2LKPtKekeUMzMJ5++u2Bh1aeP+RQDWE3ypP+cgoZJ0hPewC32xQpZEOP58SY1
	x/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Fvi0xcwNyxVFPCium/C3CrY/JEOdHVO0V2YTVDs46vc=;
	b=fjLn75HqzU7+bCUNNWVwAUPRWT23D6ft4PDtbJnmH50bPtk84evHAcBImYQoUSa+AL
	BILuxLbCwhiaSAtjdGJpQ2Rns6SpocIaOq4JIo/crja/BM85R9XMS2PepsLgOZe7ne/e
	T7DA8CteQB1Gtc4gghAtRHbnQ4n4Tv7MPXR/4pkfzAbyTuAenwj9Z2KqfAIHoIr/LFEU
	cpcYY5Tu1viPRfOyIlpl0bYPYrXD1/dKy1Fjo8DR3LBKceX/5INNnvEWeaeITdgKTeHY
	qwhaVKx01/Nzc3GE0KReOqK+VBnURrfavL8NXDKatVa7cPTIl/+X97FCltGq5MlEqKQ4
	PIDQ==
X-Gm-Message-State: AOPr4FVbUhgA/ndgs/+09sdjr8qQV7z+U3Ff3feT5RCS0PNGlENfa0GRgoPSp9ADUYU4Mw==
X-Received: by 10.194.165.226 with SMTP id zb2mr15316426wjb.172.1463671473975; 
	Thu, 19 May 2016 08:24:33 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	p129sm15358820wmd.13.2016.05.19.08.24.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 08:24:33 -0700 (PDT)
Date: Thu, 19 May 2016 17:24:31 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160519152431.GD9848@resin.home>
References: <1463157153-19020-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1463157153-19020-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Update to tip of tree
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
X-List-Received-Date: Thu, 19 May 2016 15:24:36 -0000
X-Groupsio-MsgNum: 30079
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8w3uRX/HFJGApMzv"
Content-Disposition: inline

--8w3uRX/HFJGApMzv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 13, 2016 at 09:32:32AM -0700, Khem Raj wrote:
> Drop the patch which is upstreamed slightly differently
> use VMCS_INSTALL_PREFIX to /usr via EXTRA_OECMAKE
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Merged to master. Thanks.
--
Andrei Gherzan

--8w3uRX/HFJGApMzv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdqvAAoJEHO76Gt+erfPa7AP/2PVQJ3XSlNmwJXRpO50TxcS
zNh2wle/xf7So79xg0G/vdT+o/AFPVGSNnjmGWwouLVjm1HYTL3Bwowh8AIHWPci
19zNbYqlmdikJgHqbF/z8v32lDFErbxiqzor3Gv4Yq1ipUr/26Luq0tYt32d6VLA
0HAqZhodxEnBfoHmtxzboqVm5guwb/Lr/id9j7uo/PyEcebNIFg3U6vj8u7uEMxI
+GIv0mVoqAf+OwaU3P8KedFqmdKJlLmFg0mHwu5x0940vUbUmBl2cKduImuwRRWB
Nd4slPcGzMa5B0/DmTFboEFOo8m8P6Su99WFzsVcUJ+UmtUXnndZ1I/XZe83PnlH
uQosWe/WPmQP1hNvqEHWGFJnb1Z/VgkEMCiPkwo6WBo3jLlFTmLMOEDV+fYbR/x7
5eeuJeQIFjRAz5lTe8lWk0QsSMhZoYrQ1FRAnalMIEUz8jufOPqQQWxpOUW1GfOk
a4shIBODtaBbR0DegkpcOeey//q+XQZL6GGCNDei6KCttU9bDgNUfZXlDvFnwzFP
71EnkyV5125ux03IcTxoRHQ1ZRwA65EIi2WgY/bBH+fuHxh34JPd7t5RSWEkv7jG
zTHJees5lp41TWV7e0OEj2qoeC79xFQ3t1PyG1s8Temb8sDA4PxDhvoc+Q8l6o5w
tL+xrrdkZBW+tB2rLMxH
=1oHT
-----END PGP SIGNATURE-----

--8w3uRX/HFJGApMzv--
