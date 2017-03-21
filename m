Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 830F4E00A16; Tue, 21 Mar 2017 09:43:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04FA4E00992
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:43:46 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n11so16441367wma.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=oZT5loYvSJTLJKNrirHUa3hyBQSZkUmdrY+/Wc7do08=;
	b=e15VChkuPLALYdznXLmxIYxmvzTuWeOhptQXo2kZD1RfFoqhd0Dr0C5Ln17UYgfXUf
	7983gd6ytCpgqlTauMifczIb+nZ0tXL5oqjBOlXbFnBha1eeLO84HhQeLxHL6F2uQ8WS
	71s9VBqMiovtCzpevMv2XsX7Q4g5NFR2jrvgZw8laOGjT3NqAMgnZf5juX1kwb0EtWWN
	aeR1dEZfr89IkhmyGzAHMlyhs8IbAG5KoXiJ/Ggm/h241xX+Jb77RNYrZOVsQuLCmpzb
	jhfxH8kbkYam1WRnoo/1X1YsJlzY3WWDGGul9wcM67Efx/hgJ2+VqHFDLdxRatlqcSC9
	A/7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=oZT5loYvSJTLJKNrirHUa3hyBQSZkUmdrY+/Wc7do08=;
	b=nRpaKLbZ6Qse3mPdOF+u65Miqn+VYhiL4D8ux353XQcdNj7DDllP4P6o8GtWxI0Bq3
	Qb1XIHwJjBjuzy3LKUgh7n+6u4ERf412nVYjy2XUb5Eq4RJcc9APEyNbrMPpEI40cfXV
	YmrbXGRUvwAx2wdMMIsYuYa70u2T7O0tOuumdTnF7kcYpXslYhkj5Wt1BpOIh6v/XdyQ
	bOy8oQbXjcJNFOJcZ+G7mx68ZlcYTUncikU7ML5hHoE1+JqG8DFygOwa/ApceHOZSDPN
	6W5CwmjInOlTGqqHWfDqWZzm7G2bgKvTxT1SzODGEX4CIFoLVc6zcbKCPPxWks227FSU
	GsiQ==
X-Gm-Message-State: AFeK/H3rufEK7wnuEhUADz0QenJjrcg+/n7QvX0tIP+pBkHD1VmLMDReXwggi+GBjxZ4cA==
X-Received: by 10.28.148.143 with SMTP id w137mr3666176wmd.72.1490114625538;
	Tue, 21 Mar 2017 09:43:45 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	32sm25586247wrr.64.2017.03.21.09.43.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 09:43:45 -0700 (PDT)
Date: Tue, 21 Mar 2017 16:43:43 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170321164343.GE21801@carbonA>
References: <1488814083-7886-1-git-send-email-maxin.john@intel.com>
	<20170307120724.344b8587@lap0>
	<c82ee003-af8a-9538-fe57-dd9e143b255d@gmail.com>
MIME-Version: 1.0
In-Reply-To: <c82ee003-af8a-9538-fe57-dd9e143b255d@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-omx: remove bbappend for version 1.2.0
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
X-List-Received-Date: Tue, 21 Mar 2017 16:43:47 -0000
X-Groupsio-MsgNum: 35153
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bi5JUZtvcfApsciF"
Content-Disposition: inline

--bi5JUZtvcfApsciF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 10, 2017 at 05:36:19PM -0800, Khem Raj wrote:
>
>
> On 3/7/17 4:07 AM, Paul Barker wrote:
> > On Mon,  6 Mar 2017 17:28:03 +0200
> > "Maxin B. John" <maxin.john@intel.com> wrote:
> >
> >> OE-Core rev: aa06a18d59eb391d1a7ace9daa0681bdf8daf17f
> >> removed gstreamer1.0-omx_1.2.0 recipe.
> >>
> >> Signed-off-by: Maxin B. John <maxin.john@intel.com>
> >> ---
> >>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
> >>  .../0001-config-files-path.patch                   | 137
> >> --------------------- .../0002-fix-decoder-flushing.patch
> >> |  16 --- .../0003-no-timeout-on-get-state.patch             |  16 ---
> >>  ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
> >>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
> >>  ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
> >>  ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115
> >> ----------------- .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >> |  14 --- 9 files changed, 493 deletions(-)
> >>  delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
> >> delete mode 100644
> >> recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >
> > I got a parse failure on all my scheduled builds last night. This patch
> > fixes the builds for me :)
>
> These are now staged in kraj/master on my github with few other changes.

... which made it to master.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--bi5JUZtvcfApsciF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljRWD4ACgkQJrqo2vax
FPa16w//R1ru5keDP7NomIKibfQK1ZCYREUXLj7Vs//1J6Qwj5YPtCQTsXY8Azc1
1TeX9H9qdjVAJkPiDRA6VD/b4/ie9q1bZ8JzXUFjiirN0APF+EzaSxAjJ9v1oyZv
wrS0R9JPC/d94AgqDKx7SUJoRc8G2mWGHttSGv/icLqkFnbIxy6eV1jZDx8nKKKF
dYn+CGMR2cBq+f29XldJqbJYhAnbAHAWE6JSzRQLD3xySgz6UuHkhGO3LOAN2/Yg
BQHM90ju6lOTWJK+DF+SXn6eZwf18x2qX6tFhoUa0gePPuzvELnq4sdknHPYAlka
j0ceidjspFTjtuZGpcmXUhazY+p7/nKj/txYvRUT7Cj5v2T7e20h15+fbhMVpRlu
pasbGWrqLjH1mXr/A2lqPszDmJv9LYRMyBvuA26BTpGbZre20zwALADXZnMJ8vCn
2fff4Dqp/fDD0pBY7T1ZNkJiNb3XwWZz8TXDGp0586VYHq0bsWCn6e5BVcdrHLGy
cvyrxWI5YFdgYAOiTCyCj52aG5NoO1bo2VXKHv8vL2jw2GbuK0kwB8cjIeOQZEFp
j3sREbtsXOLHJC0EQmb4Br8GkugsuwJClfi056cIc/fZKP6QydCXfxheRKzFAWdD
MJ0q1F1msXXvTtDIjxqXIm1YQbdCcgI8mFmZoNNZC7PCtGwIVoA=
=DMaG
-----END PGP SIGNATURE-----

--bi5JUZtvcfApsciF--
