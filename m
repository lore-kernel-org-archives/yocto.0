Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF295E0083E; Tue,  7 Apr 2015 09:33:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E717E00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 09:33:15 -0700 (PDT)
Received: by wiaa2 with SMTP id a2so25877373wia.0
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 09:33:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=5zpFxjVARCFtP7WGtHF3fnltomB9Qmyy6NNDHQvDZlI=;
	b=N5O3k8Q228yv5xCEUE9Wb9rLEsAqDkObveSwdc6CkoabuP0ajIQIUFXjo0i6kqZoTZ
	YmmZCB6ErpJo2YJhHwU/qSGt3CzwGY9luOdzTU52bfq/TVg8URQd74YQ3LadQ1Rjwisb
	lSSOq8i9WWC4CQLEJIi1JgghluEW/t86yqFQhlCJOaZadeVlo3+CtAJH+jRBMxXrSA45
	Zt1+Czsg9qaWzjp8KYtg+BxBwGHVdBCWs9H2RMVnW6lwOSxT+3A950mJcNTr06ySeJ+w
	MWil3s/ydXLRrxSjht2wXmlt6nKpt55xdiJSROGFD6M5N1hBIyAysRDmtuMGANThFNf1
	6QMA==
X-Received: by 10.194.62.52 with SMTP id v20mr41934461wjr.137.1428424395072;
	Tue, 07 Apr 2015 09:33:15 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id l1sm11700245wiy.20.2015.04.07.09.33.13
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Apr 2015 09:33:13 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 7 Apr 2015 18:33:57 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150407163357.GD22953@jama>
References: <5523EF34.1000604@mlbassoc.com> <20150407161935.GC22953@jama>
	<552405DA.6080801@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <552405DA.6080801@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Tue, 07 Apr 2015 16:33:17 -0000
X-Groupsio-MsgNum: 24360
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0IvGJv3f9h+YhkrH"
Content-Disposition: inline

--0IvGJv3f9h+YhkrH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 07, 2015 at 10:29:14AM -0600, Gary Thomas wrote:
> On 2015-04-07 10:19, Martin Jansa wrote:
> > On Tue, Apr 07, 2015 at 08:52:36AM -0600, Gary Thomas wrote:
> >> I'm building for multiple ARM i.MX6 platforms.  These have
> >> the same SoC, but slightly different peripherals. As far as
> >> I can tell, they should be able to share everything except
> >> for a few ${MACHINE} specific packages, e.g. the kernel and
> >> u-boot.
> >>
> >> Sadly, that doesn't seem to be the case.  The architecture
> >> specific packages are being split into two categories - plain
> >> ARM/Cortex-A9 and those that have i.MX6 specific optimizations.
> >> For example, after building a complete image (on the order of
> >> core-image-sato), I have this split:
> >> $ ls tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/
> >> acl                  gst-player                 libsamplerate0        =
 modutils-initscripts  shadow-sysroot
> >> alsa-utils           gst-plugins-bad            libsm                 =
 mpeg2dec              shared-mime-info
> >> apmd                 gst-plugins-good           libsndfile1           =
 mplayer2              speex
> >> atk                  gst-plugins-ugly           libsoup-2.4           =
 mtdev                 sqlite3
> >> attr                 gstreamer                  libtheora             =
 ncurses               startup-notification
> >> base-passwd          gstreamer1.0               libtirpc              =
 neon                  strace
> >>      ...
> >> gst-ffmpeg           libpostproc                matchbox-wm           =
 scrnsaverproto        zlib
> >> gst-fluendo-mpegmux  libproxy                   mkfontdir             =
 settings-daemon
> >> gst-meta-base        libpthread-stubs           mkfontscale           =
 shadow
> >>
> >> $ ls tmp/work/cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi/
> >> alsa-lib      gst-plugins-base           imx-gpu-viv  libfslparser   l=
ibsdl      xf86-video-imxfb-vivante
> >> cairo         gstreamer1.0-plugins-bad   libdrm       libfslvpuwrap  m=
esa        xserver-xorg
> >> firmware-imx  gstreamer1.0-plugins-base  libfslcodec  libglu         p=
ulseaudio
> >>
> >> It's the second category that is causing problems.  They do not
> >> seem to end up in any shareable sstate at all.  If I try to rebuild
> >> using only sstate, i.e. build my complete image to success, then
> >> remove 'tmp' and rebuild, using the sstate-cache from the first go,
> >> all of the above packages (alsa-lib, ..., xserver-xorg) are all
> >> rebuilt from scratch.  Those recipes do seem to end in my sstate-cache,
> >> but they are never reused from it.
> >>
> >> What would make this happen?  How can I prevent it?
> >>
> >> As is, sstate is not really shareable between these i.MX6 targets
> >> as so much is being rebuilt all the time...
> >>
> >> Any ideas or pointers gladly welcomed.
> >
> > Try openembedded-core/scripts/sstate-diff-machines.sh
> > to see why.
> >
>=20
> Can this work if I build for the two machines in separate trees?

Yes, you can generate the report in each tree separately and then
compare them in one of them.

> Also, I'm really trying to find out why a build for the same machine
> doesn't reuse sstate, in the same build tree, back-to-back builds
> (no metadata changes)

Sorry, is "the same build tree" something else than "the two machines in
separate trees" or are you testing both?

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--0IvGJv3f9h+YhkrH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUkBvUACgkQN1Ujt2V2gByFpwCfX16q02HpAdtaFPpjthRP1H4q
eQYAn1xSuRMIFkOxHfvhOjiP5hO3JFV9
=onmn
-----END PGP SIGNATURE-----

--0IvGJv3f9h+YhkrH--
