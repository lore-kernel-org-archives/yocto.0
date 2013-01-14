Return-Path: <dedekind1@gmail.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03EE8E00498
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 04:45:08 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jan 2013 04:44:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,468,1355126400"; 
	d="asc'?scan'208";a="271729631"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 14 Jan 2013 04:45:08 -0800
Received: from [10.237.72.160] (sauron.fi.intel.com [10.237.72.160])
	by linux.intel.com (Postfix) with ESMTP id DEDC62C8001
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2013 04:45:04 -0800 (PST)
Message-ID: <1358167593.2731.66.camel@sauron.fi.intel.com>
From: Artem Bityutskiy <dedekind1@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2013 14:46:33 +0200
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Subject: [ANOUNCEMENT] bmaptool
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: dedekind1@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 14 Jan 2013 12:45:09 -0000
X-Groupsio-MsgNum: 11494
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-tM/S5FzdE6AO8xxfTTeQ"

--=-tM/S5FzdE6AO8xxfTTeQ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yocto people,

I would like to announce the bmap-tools project here, because I think it
may be very useful for Yocto and some of the people who are using Yocto.

The bmap-tools project is about disk images, like direct HDD images, or
Virtual-machine images like vdmk or qcow2, etc. The project uses simple
ideas in a clever way to copy/flash these kind of images quickly.

Please, read all the details in the project wiki page:
https://source.tizen.org/documentation/reference/bmaptool

The project was created for Tizen IVI, but it is generic and is not
bounded to Tizen in any way.

I do not want to duplicate the bmap-tools documentation here, but
instead, let me just describe how we use it in Tizen IVI.

1. We produce raw images of 4GB in size.
2. Images have 3 partitions inside.
3. Images are rather sparse, we have only 1.2GB of data inside (total)
4. We publish compressed images, they take 300MiB
5. We also publish bmap file for the image, e.g., see the ".bmap" file
   here:
http://download.tizen.org/snapshots/2.0alpha/ivi/tizen-2.0_20130111.3/image=
s/ivi-2.0-alpha/

Now the key point: when users flash the 4GiB images using bmaptool, they
actually copy only 1.1GiB of data. E.g, when flashing to slow USB
sticks, it reducing writing time from 20Min to 4Min.

The other key point here: if we or others decide to produce 64GiB or
1TiB images instead, with the same amount of data (1.2GiB), the flashing
time will be almost the same.

The third key point here: images are compressed, and rather small, which
saves space and network traffic. When/if we make images 64GiB or 1TiB,
their .bz2 files will still be almost as small, because zeroes compress
very well.

If you think about a production factory case, you may see a lot of
benefits of using bmap.

Anyway, for the Yocto project, it would probably be nice if in the
window where you select the type of image to generate and its size,
there was a "generate bmap" check-box (on by default :-)).

Comments, questions?

Thanks,
Artem.

--=20
Best Regards,
Artem Bityutskiy

--=-tM/S5FzdE6AO8xxfTTeQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAABAgAGBQJQ8/4pAAoJECmIfjd9wqK0HH4P/3tJIPkUvwAFP39UrjPJJw90
ZK26fvAxl6bfT2RuYvmv4NV7kCmtI1nFFt89RAaXmAz2bIXCEyQamgPCzYhe5YxG
wtR5NHXEtWMp0OQ0iXTlDPODFBxdn8xD9b+c77ii/PSEYyAX8h1SjNsWjc70SkfF
EyLCyBfPI7FBbXW1/kHZWrGwk+P3s1z61lXtTcaQ1Kzd/7OCgPR4BJwP7r3xZIDN
uv/MSgw7GeeMRuyAQwYT52hCcAwYI2Kc2f83hW9huuzSef+8LUuINFvCoLlZiHAv
PUniSMq8r3wrh/VseRqT0mqWWmSa8rgOypOF9ohqvbdN+SjHIlgs3+9gThTMUOsq
jiqJJYIbku912wOzK1pE9RNvIVA5ROnA8qj11yuoYW+0gZTTQfqY04osPjxTK9dQ
A+N9yS0eyMU/jf/Do3pxLEmuDJ8bsGIYIlR6h6HYQfzXa6zprcUWA1DPE3OaZlLG
ljgYnLvm9JV8klMlAXiArvjYGEmcj6GZVbGGlPaW8FGV8dBTL+OsCSVhRfEKdXqo
7V5tkXFgaaY/MXc0jqQAO9qxww3KmmObrm7P0MP8TvWZpNwkhcVRp/6ShY7cHsyC
L2XPkqAsUGARQv9EkUG5M8PvBtJattoPKdPiOKwopPkjl3BcGJRwUT1ZM7PYQwGg
r4Ev9WfvvTNEKebLLgXI
=H7M1
-----END PGP SIGNATURE-----

--=-tM/S5FzdE6AO8xxfTTeQ--
