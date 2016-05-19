Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07802E00E6D; Thu, 19 May 2016 07:41:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C57E00DAA
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:41:48 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id s63so7053274wme.2
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Jit4MPL71PuFkPtaDewlOeJgvsN/avo0jvPHFCt+GNg=;
	b=YyMJadWp+HjeZhGglmC0pR/PzsxapeEXXSJL9j2/4eA5PF2dJYCO0ek+TUmt8r9okJ
	pH8yzKAj5LTUoMm1EEDsuPc0cj74rE7VVXKvIItjN5rPsYkfX9yU78cluzqQSfAqPY+2
	157kkVlg4MeGG/XMYiIYrAsb50xN2SKXmir0RGHZjnh2sKxTV7Ee/pVSpqGOD2byi0n9
	Ui03iU6/uJWN+87qHmn5lZX9NOfORpzAtqAvjYZWkwCZeFPsbSUkv7MZVbw2URtv5U3a
	5E4f0Vs8EomkSQaAZAlqVNfxmCFvJhM4nkFyrwXzIOMC5HejbBSTMMgMucppOTgM1Rif
	0aXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Jit4MPL71PuFkPtaDewlOeJgvsN/avo0jvPHFCt+GNg=;
	b=m1jdUHeg1VISBf4skS9Ty3N76cDbkzVnxJQMISHa3TtWYvif/UcqP4qf4ma/UZuhl9
	N8WrgsTMjZKvWtl2KKdFBjdHqH70xP1iShzzoKROhSmr12YMPuIuRjiu+VwT40fV2h+m
	E0lAm+uZ1isldhCWOz5Zy0/FTn2s60lhnHOrN7NSO5YUFWskifiLEmX1SYaBJGTRMeqz
	lcE9AaCb2grOlnFYqGXNr5zs3KCT1s4I98OzYI/Bh5zMrPVPOxfFiFZr6D/zMTfjCnrV
	Qof8AREIv8IY0x3g5LpKWcIph0T3rxt1Q2XaSDEbOq24tWe6J5CiD+e6NopAyJEMjXeb
	tEPw==
X-Gm-Message-State: AOPr4FVOB6cDpm5OVqWXPfeSWDMFV0TAqKrGp5lEHxKncDSHnpG4oTnG7iMxqJKsI/5Alw==
X-Received: by 10.28.63.148 with SMTP id m142mr13697297wma.85.1463668907452;
	Thu, 19 May 2016 07:41:47 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188]) by smtp.gmail.com with ESMTPSA id
	c194sm35674409wme.9.2016.05.19.07.41.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 07:41:46 -0700 (PDT)
Date: Thu, 19 May 2016 16:41:45 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519144145.GB3601@resin.home>
References: <1463220952-67318-1-git-send-email-herve.jourdain@neuf.fr>
	<025e01d1b1a2$305218c0$90f64a40$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <025e01d1b1a2$305218c0$90f64a40$@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 0/1] Support for .dtbo files for dtb overlays, required by firmware after 2016/04/12
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
X-List-Received-Date: Thu, 19 May 2016 14:41:51 -0000
X-Groupsio-MsgNum: 30071
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline

--s2ZSL+KKDSLx8OML
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 19, 2016 at 09:43:47AM +0200, Herve Jourdain wrote:
> Hi,
>
> Sorry, it seems there has been some mismatch in my test setup...
> So while .dtbo are required for 4.4.9+, there NOT to be used for 4.1.21 it
> seems...
> I will therefore send soon a v3 patchset, that will work fine for 4.4
> (what's laid out here is needed for 4.4) without breaking overlay support
> for 4.1.
>

I was just about to send you an email about this. It's fine. Let's fix
it in v3.
--
Andrei Gherzan

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdCpAAoJEHO76Gt+erfP39wQAJkjS2gx+cBRs5zU3DAbHL+N
/bYrSx30UoEInub6fQOb4bUlEH5kn46L/xG7Xq9PToes7qD2BVInB2ytZCaw0pbJ
jVO/3MOib3hkiDiH/ZMVX46Zszr2bPAPBeBhYn7ttSAPPPxwR7tRg6HMrQuEI9R+
DXHCsU33IGj4C9iqQmjolZdtj2uOWr1DLUhvYi1QPEBEVgrch/T6pe1aq9rmXUxF
xBEMrfkoGg2JRo1/4zfhxmX74Qo3WDlqmR0QIyiIM+JOemMotloNB1/3Nf8aS7UU
8CAHLgJ0Z5H8EqWHp+6phAF0RQK1my/YQ0ZwXIamQNojJtPkd1NgDt6EMOsjQx+3
7EHyHW6PuB+hpUEGduds75tvS7jT7iY0J6c+YOPS5EshXAOM0OcCV3lxibO+WNEO
xFPg2YOfmoqYhGj4vI/2nvpTLi3SsVALHykoxfTcseMDAKudsxYhH9/nM59ErZkC
KLFSJgsSxAKsBon/54icZttBSSZ5swVaY+vqczw/tdEJEaq0hzPk3XXWCLD21wnP
kNlLGdS6QsHsPUld5FL7hvysr0Av3srWrfihZnV/I4xXycFHxMyFnGsH4MbbPD4b
n4Kx/I7dgTlsCm57/klsRRu6SdUbnZWhn4cvfIQTL+UrtXWUFs+XYpnD3pZu3tTo
uZyTPfTJZOuWsToQVAzm
=QaPi
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--
