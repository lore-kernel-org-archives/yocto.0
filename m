Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C46B5E0073A; Thu,  8 May 2014 09:18:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 20701 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 09:18:48 PDT
Received: from mail-vc0-f169.google.com (unknown [209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 094F1E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:18:48 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id ij19so3578996vcb.14
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 09:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=eRhfUSeOipnSJK2wXahqRL8CEzITvdDM1lNrDtu1FbM=;
	b=rLQSbZaBSYXUjULT06/lssr2WWdWQOmL3AZG7RcOgPrFpTZqvcrq14bpTfX0vEWt8A
	KofmgTLeO/puMq0xaEQ29geqxNa16mWNLDcDUCs5qricAvnCYoA0QE1i5cW6bNJt+k5c
	y/2e8Z8V8jZPQlftyl7VceYXI75+6bjfwq4OxN0VMgPZzO4jGn71xaVZ7Qmdm4rw/f2Y
	VO2NbJDjXxsv79HCiVBE2EtrsQd1HaCdBhTc58hd6Fa2sN7khN/+aewXJjt80EhOwY07
	0WFf0A88TZRNP5lTsZ4iKNXnrtQHPcWXEL6bI9+ds2ZkwArIr9lUK1lBd7OaV1mDG8Y8
	jM/A==
X-Received: by 10.221.42.135 with SMTP id ty7mr3895597vcb.14.1399565927766;
	Thu, 08 May 2014 09:18:47 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	nh9sm1423036vec.1.2014.05.08.09.18.45 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 May 2014 09:18:46 -0700 (PDT)
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 8 May 2014 18:19:08 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20140508161908.GQ30955@jama>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <4880759.hcBN3hRDv1@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org,
	OE-devel <openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] GStreamer 0.10's future
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
X-List-Received-Date: Thu, 08 May 2014 16:18:50 -0000
X-Groupsio-MsgNum: 19459
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="i/CQJCAqWP/GQJtX"
Content-Disposition: inline

--i/CQJCAqWP/GQJtX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 08, 2014 at 04:07:19PM +0100, Paul Eggleton wrote:
> On Thursday 08 May 2014 15:48:40 Burton, Ross wrote:
> > Hi all,
> >=20
> > Sorry for the cross-post but I want this to have a wide audience.
> >=20
> > For the 1.7 release I want to move GStreamer 0.10 from oe-core into
> > meta-multimedia, and ensure everything in oe-core has ported to
> > GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
> > unmaintained so we don't need to be shipping both versions anymore.
> >=20
> > Everyone in agreement?  Should I expect any hate mail over this?
>=20
> +1
>=20
> The next question is does that mean for the "old" libav (which gst-ffmpeg=
=20
> depends upon), do we move that as well or drop it?

libav was migrated to oe-core quite recently and there is couple of
recipes in meta-oe, meta-webserver depending on it/ffmpeg so moving to
meta-multimedia wouldn't be very easy.

meta-multimedia/recipes-multimedia/sox/sox_14.4.0.bb:DEPENDS =3D "libpng li=
bav libsndfile1"
meta-multimedia/recipes-mediacentre/xbmc/xbmc_git.bb:DEPENDS =3D "libusb1 l=
ibcec libplist expat yajl gperf-native libxmu fribidi mpeg2dec ffmpeg samba=
 fontconfig curl python libass libmodplug libmicrohttpd wavpack libmms cmak=
e-native libsdl-image libsdl-mixer virtual/egl mysql5 sqlite3 libmms faad2 =
libcdio libpcre boost lzo enca avahi libsamplerate0 libxinerama libxrandr l=
ibxtst bzip2 virtual/libsdl jasper zip-native zlib libtinyxml libmad"
meta-multimedia/recipes-multimedia/musicpd/mpd_0.18.9.bb:DEPENDS =3D "alsa-=
lib libsamplerate0 libsndfile1 libvorbis libogg faad2 ffmpeg curl sqlite bz=
ip2 pulseaudio"
meta-multimedia/recipes-multimedia/vlc/vlc.inc:   faad2 ffmpeg flac libxpm =
libxinerama fluidsynth alsa-lib libdvdcss \

meta-oe/recipes-multimedia/nonworking/minidlna/minidlna_1.0.25.bb:DEPENDS =
=3D "flac libav jpeg sqlite3 libexif libogg libid3tag"
meta-oe/recipes-support/opencv/opencv_2.4.bb:PACKAGECONFIG ??=3D "eigen gtk=
 jpeg libav png tiff v4l"
meta-oe/recipes-graphics/gegl/gegl_0.2.0.bb:PACKAGECONFIG[avformat] =3D "--=
with-libavformat,--without-libavformat,libav"
meta-oe/recipes-multimedia/libpostproc/libpostproc_git.bb:DEPENDS =3D "liba=
v"
meta-oe/recipes-multimedia/mplayer/mplayer2_git.bb:DEPENDS =3D "libvpx libd=
vdread libtheora virtual/libsdl ffmpeg xsp zlib \

meta-webserver/recipes-httpd/cherokee/cherokee_1.2.98.bb:PACKAGECONFIG[ffmp=
eg] =3D "--with-ffmpeg,--without-ffmpeg,libav"

But I would like to see migration to libav-9 which currently has negative D=
_P
(mplayer2 already depends on 9*, but there are few recipes which fails with
libav-9 too - see earlier world builds for list).

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--i/CQJCAqWP/GQJtX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlNrrnwACgkQN1Ujt2V2gBwRngCfbW2cfI0RjGM3a1VT5wSTIGkA
DusAn2BnXqpG8KAqQkRQuXV/8Oi9hwvf
=FPrl
-----END PGP SIGNATURE-----

--i/CQJCAqWP/GQJtX--
