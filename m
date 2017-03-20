Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 948A8E00AA2; Mon, 20 Mar 2017 10:34:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 074BCE007B5
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:34:19 -0700 (PDT)
Received: by mail-wr0-f195.google.com with SMTP id l37so19109332wrc.3
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=asnWEx0lfsxfdrbJyg5ddDAajWU8vZIDymC+vhMJqIE=;
	b=gYJOQZYLkaC/rykpFRwsShs3UrgXwjiWuJOvri/In2bbUdtLy0qbGBHUiYEjZ9tUyQ
	Uv1Lvztj3TiY03ubbbU4rTK51OmN+kcb1IOe05y1l4KYq4dyJ42PBmo4im0o3uPi+t/2
	kzDf7+yMSX3WEhLR6FnUmE0nCMOMLQoZWZyq+NLcQx4L4Owa5hWmz5LhDHDSF/4p2z6W
	/Qer5iwkca5hgfsTvpm8Q3l3YHXC0TtMhPDLt5VlMs9PTYKZvbE0jTzwT1knCDWbYv38
	AW8V0Qb+GL8e6eXp+TtAVTXGGJcOP3BgYXw+ZkMqzRKZT9Z8wIq3WEaPtY/IGJuFRwg3
	yj0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=asnWEx0lfsxfdrbJyg5ddDAajWU8vZIDymC+vhMJqIE=;
	b=LH65SvARjIsfTXf2KFHm2uuUi1pM//fNbdt3+fgUOE2PKBNOBk+zVVsC5lYrbspSr4
	wivPWsc5nQpF3Rg7zisqslEo6MgXHcbpx0W6/TIXfk97CXc1QUReybIPDEMzvJcfX/UV
	60pV1McpOR70SAa79a5ydF+NeJLaB7SdqhMDzsCzTK4UDzAbcxnrWmqiROs8adzWdlnB
	Camz9bdGh4E3wnUxnoChhHsiKIhBsfrTqDcRuNux4/fHrhuXwS2expQ0b/LxfGUtppfh
	GEnHMrLYSSJsk1EPlz+RoPVOdVFK7JoJnYXISiphHaThgMkzJtAdP6BvFmobX35mBOb1
	qVog==
X-Gm-Message-State: AFeK/H1Q1RBg8Zb8hTSt2/St/Cr3/CWRzwdTpKK8V+HTUC7apjHbHQXtxhzRoy00cWq/mg==
X-Received: by 10.223.166.180 with SMTP id t49mr25819951wrc.15.1490031258854; 
	Mon, 20 Mar 2017 10:34:18 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	s17sm21712266wrc.25.2017.03.20.10.34.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Mar 2017 10:34:18 -0700 (PDT)
Date: Mon, 20 Mar 2017 17:34:16 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170320173416.GJ28563@carbonA>
References: <20170315201844.26804-1-fabien.lahoudere@collabora.co.uk>
	<20170316101427.2b406e44@host0.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170316101427.2b406e44@host0.betafive.co.uk>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] Remove orphan bbappend
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
X-List-Received-Date: Mon, 20 Mar 2017 17:34:21 -0000
X-Groupsio-MsgNum: 35126
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3hAdtgBjtgL7p0NQ"
Content-Disposition: inline

--3hAdtgBjtgL7p0NQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 16, 2017 at 10:14:27AM +0000, Paul Barker wrote:
> On Wed, 15 Mar 2017 21:18:44 +0100
> Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
>
> > gstreamer1.0-omx_1.2.0.bb and gstreamer1.0-omx_git.bb have been removed
> > from poky on master branch, so related bbappend should be removed.
> >
> > Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> > ---
> >  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend              | 14 --------------
> >  recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend | 13 -------------
> >  2 files changed, 27 deletions(-)
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> >
> > diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> > deleted file mode 100644
> > index 49ba376..0000000
> > --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> > +++ /dev/null
> > @@ -1,14 +0,0 @@
> > -#
> > -# Need to make this conditional to gstreamer1
> > -#
> > -SRC_URI_append_rpi = " \
> > -             file://0001-config-files-path.patch \
> > -             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
> > -             file://0002-fix-decoder-flushing.patch \
> > -             file://0003-no-timeout-on-get-state.patch \
> > -             file://0004-Properly-handle-drain-requests-while-flushing.patch \
> > -             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> > -             file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
> > -"
> > -
> > -FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
> > diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> > deleted file mode 100644
> > index 9bcc446..0000000
> > --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> > +++ /dev/null
> > @@ -1,13 +0,0 @@
> > -#
> > -# Need to make this conditional to gstreamer1
> > -#
> > -SRC_URI_append_rpi = " \
> > -             file://0001-config-files-path.patch \
> > -             file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
> > -             file://0003-fix-decoder-flushing.patch \
> > -             file://0003-no-timeout-on-get-state.patch \
> > -             file://0004-Properly-handle-drain-requests-while-flushing.patch \
> > -             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> > -"
> > -
> > -FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
>
> Khem already has a patch staged for this which also drops the patch
> files themselves:
> https://github.com/kraj/meta-raspberrypi/commit/ff914ff62267336a602c3dc96e959900795f5617
>
> Thanks,
> Paul
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

This will come in with Khem's PR. Stay tuned.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--3hAdtgBjtgL7p0NQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljQEpcACgkQJrqo2vax
FPZXAQ//dsZqwzXOB88G5xcvqL1liZKmooUq6JTDilC0kiyOKL0TdvmT02MOioEi
pm6ruDvwFE2QIz63z/Gc3vsmF7nhGLMNDLjTDE7cp5DRynNcstq9kI9DQw95xY5G
IlUcRllSlp+DM2wYtxDE6hlfn7yUPDVseD+J8aQQMXxlLLKGjJxlNOl5a5E+52WR
fPKbe9L9CCrRLmAjg6b7Esc67312Ny3Z+fTUK/04ghw2bO+qWJzVxiR22vWcZhPo
tO1aRBf0gc5ZJ1OjU7ICWztsvhFdiVsy6zZhEjLDMuCH+QHiTDJjAQvo4q7wsrXL
SPxr2SjvqvDZ0Jy2OU4GsFKM0dBcqbL9NtkGmrseNLrY/DsrOtmG+aXYIyEVJBVm
aAdy5EKkdKASxX7RMsjhBIcqyx5n6/t8QWDcCIq20Tz8X5YqVJwqtWt9e+jNXBla
yAk37121m9wX2mFtmSH8T2gzwb0+eERDA5dkTn9KRw6nblCJbibKZGxt7d9SVkKm
DEupDJjVh31zf66hSmG2KZV7FPMxWUy1+QjrveUrvb25PsZxDDkXbVnqhMRPaSNO
jxyTODb33ZNg5bpclP6yUs94HagWn6dmsKK2oHelxmXPqvknT7Iy/5MaoC8StLLb
+WspO+/04IlmbuVdyA8Ty3+9esnvSB0FbUteIyOFEGqNhASU0P0=
=maSB
-----END PGP SIGNATURE-----

--3hAdtgBjtgL7p0NQ--
