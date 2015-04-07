Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18CBEE0083E; Tue,  7 Apr 2015 09:18:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B06DE00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 09:18:53 -0700 (PDT)
Received: by widdi4 with SMTP id di4so23788162wid.0
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 09:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=vuWQO44eCnLqp0hpbChvWaj8R9r7YFAYzBjZc+ISR9M=;
	b=rhmsQOBn7CAyNafwQASGeUsQxAIbonfFojk+giYNeQVCVLRmVo2wQTIVliiOPNhE4D
	xmY9S0SPhUKCCw+IFW5ltKt53qFq9c18CmFAnS5Wc6TEu9GxHo4xuCUal7NcALcccd/M
	mIZBGv4bxodYhHAVC52TTM4r+NyImYXoVmhI6Se00D0obUmAERJQ2T+Iuo7j+NcuGUcw
	MeOo1lg1TUJ06Ten3TrzvlqIWzzy7HXmoqLo8NZyuuYVYeaQLceFEVdDUYqPYctXsLKU
	MDAO1s7ziow+E018UXXMHy3UcvHk4lwlfm5Hp2ree/4ctCwGl4Ya85Nz3+wjpWCalJMd
	XEew==
X-Received: by 10.194.3.77 with SMTP id a13mr26632304wja.104.1428423532829;
	Tue, 07 Apr 2015 09:18:52 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id
	dz4sm11652122wib.17.2015.04.07.09.18.51
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 07 Apr 2015 09:18:51 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 7 Apr 2015 18:19:35 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150407161935.GC22953@jama>
References: <5523EF34.1000604@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <5523EF34.1000604@mlbassoc.com>
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
X-List-Received-Date: Tue, 07 Apr 2015 16:18:57 -0000
X-Groupsio-MsgNum: 24358
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UFHRwCdBEJvubb2X"
Content-Disposition: inline

--UFHRwCdBEJvubb2X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 07, 2015 at 08:52:36AM -0600, Gary Thomas wrote:
> I'm building for multiple ARM i.MX6 platforms.  These have
> the same SoC, but slightly different peripherals. As far as
> I can tell, they should be able to share everything except
> for a few ${MACHINE} specific packages, e.g. the kernel and
> u-boot.
>=20
> Sadly, that doesn't seem to be the case.  The architecture
> specific packages are being split into two categories - plain
> ARM/Cortex-A9 and those that have i.MX6 specific optimizations.
> For example, after building a complete image (on the order of
> core-image-sato), I have this split:
> $ ls tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/
> acl                  gst-player                 libsamplerate0         mo=
dutils-initscripts  shadow-sysroot
> alsa-utils           gst-plugins-bad            libsm                  mp=
eg2dec              shared-mime-info
> apmd                 gst-plugins-good           libsndfile1            mp=
layer2              speex
> atk                  gst-plugins-ugly           libsoup-2.4            mt=
dev                 sqlite3
> attr                 gstreamer                  libtheora              nc=
urses               startup-notification
> base-passwd          gstreamer1.0               libtirpc               ne=
on                  strace
>     ...
> gst-ffmpeg           libpostproc                matchbox-wm            sc=
rnsaverproto        zlib
> gst-fluendo-mpegmux  libproxy                   mkfontdir              se=
ttings-daemon
> gst-meta-base        libpthread-stubs           mkfontscale            sh=
adow
>=20
> $ ls tmp/work/cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi/
> alsa-lib      gst-plugins-base           imx-gpu-viv  libfslparser   libs=
dl      xf86-video-imxfb-vivante
> cairo         gstreamer1.0-plugins-bad   libdrm       libfslvpuwrap  mesa=
        xserver-xorg
> firmware-imx  gstreamer1.0-plugins-base  libfslcodec  libglu         puls=
eaudio
>=20
> It's the second category that is causing problems.  They do not
> seem to end up in any shareable sstate at all.  If I try to rebuild
> using only sstate, i.e. build my complete image to success, then
> remove 'tmp' and rebuild, using the sstate-cache from the first go,
> all of the above packages (alsa-lib, ..., xserver-xorg) are all
> rebuilt from scratch.  Those recipes do seem to end in my sstate-cache,
> but they are never reused from it.
>=20
> What would make this happen?  How can I prevent it?
>=20
> As is, sstate is not really shareable between these i.MX6 targets
> as so much is being rebuilt all the time...
>=20
> Any ideas or pointers gladly welcomed.

Try openembedded-core/scripts/sstate-diff-machines.sh
to see why.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--UFHRwCdBEJvubb2X
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUkA5cACgkQN1Ujt2V2gBwWqQCgiDO02tvCY1aEmZkqHSxPIxM6
80IAniENy0Co4LZaRSUEg7l1vGtOAfgv
=l0Gd
-----END PGP SIGNATURE-----

--UFHRwCdBEJvubb2X--
