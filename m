Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F753E013AB
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 04:46:51 -0800 (PST)
Received: by dadp13 with SMTP id p13so460726dad.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 04:46:51 -0800 (PST)
Received: by 10.68.224.233 with SMTP id rf9mr9304871pbc.162.1331210810949;
	Thu, 08 Mar 2012 04:46:50 -0800 (PST)
Received: from [192.168.10.207] ([59.99.251.45])
	by mx.google.com with ESMTPS id a2sm2589029pbc.16.2012.03.08.04.46.47
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 04:46:49 -0800 (PST)
Message-ID: <1331210795.2773.15.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 08 Mar 2012 18:16:35 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQm5EaH8I6Jf/c+IC5hW+Xwr4ckOnO1EI14tsILu3bqZjm+Lf6FFXMOYCVdpjh1GY5M87e5E
Subject: missing mouse cursor in X11
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 08 Mar 2012 12:46:52 -0000
X-Groupsio-MsgNum: 5197
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-zfI3HcFVq6An5fDuWtS2"

--=-zfI3HcFVq6An5fDuWtS2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	I installed the following X11 related packages in my custom-image

     1. xserver-xf86-dri-lite
     2. x11-common
     3. xserver-xf86-config
     4. xf86-input-mouse
     5. xf86-input-keyboard
     6. xf86-input-evdev
     7. xf86-input-synaptics
     8. xf86-video-intel
     9. mesa-dri-driver-i915
    10. xauth, xhost, xset, xrandr

The mouse is functional but the cursor is not visible in the X11. I did
add the following lines to the xorg.conf for the intel "Device" section

        Option "HWCursor" "Off"
        Option "SWCursor" "On"
       =20
But, greping the the Xorg log file for cursor gave me this output

> [3997367.193] (II) intel(0): Initializing HW Cursor
> [3997367.322] (WW) intel(0): Option "HWCursor" is not used
> [3997367.322] (WW) intel(0): Option "SWCursor" is not used

Should I do/install anything else in order to get a visible mouse cursor?

Regards
Joshua
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-zfI3HcFVq6An5fDuWtS2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk9YqisACgkQWw85XwuSFMLfmACggsaaevCg5Avelnnl3+WjOMzG
AGgAn3SN7g4vkyfWQXBB2FQftARehrkB
=c19t
-----END PGP SIGNATURE-----

--=-zfI3HcFVq6An5fDuWtS2--
