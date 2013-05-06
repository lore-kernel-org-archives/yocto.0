Return-Path: <mhalstead@linuxfoundation.org>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8052E0137F
	for <yocto@yoctoproject.org>; Mon,  6 May 2013 04:10:04 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id kx1so1985463pab.13
	for <yocto@yoctoproject.org>; Mon, 06 May 2013 04:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type;
	bh=LDptSJsYwGY1FYPS8JZ/6x/6PqxF0vFurF6R4AzQP3A=;
	b=VX2aEC8HdN4B8lELX2XzR7WBJWuoyi5DKEUEss/lMTZ+fuoIWEF+eo2h9mZIx7HEBT
	inANQatmHBdJXJYo2nWeyhSi4Z2cWW8ZcQzqDpuH59SD/7xzjA6i/KIZ1RrZqAILiwdk
	A9bQxIBogi0Rnao4Ia+xxmJQU6ln0eemje0OY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:message-id:date:from:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type:x-gm-message-state;
	bh=LDptSJsYwGY1FYPS8JZ/6x/6PqxF0vFurF6R4AzQP3A=;
	b=STUP/QDMzRyVg3Wpv1GdhyTPAtfOw4ACETZSJBNHsaf5Q6aOveQ8EMVrHuU6P2/xD+
	aA1PKQen90WcIrGarU6eL7wns1OJxV0xlwTH2b7wywrnJuSIDDmR6+yTbOp1UsOoxUnk
	xBwZC7+QVzIdHoV+KQXyZnddzpOIXYl3bNKUGnqmVbVCVlSGR0UepSsY9Cl7zVglO8LZ
	jGOSrcoFspRbsoeYr1q8kVZe8Vpkfbl1wOG2FuQqM/R8xC1l4JY5+5LPdOxNOPLsK8xT
	Qc7b+qa+FCmTg622j8pNnSFMDNavFEFWWN4oEUikSiwsKE7gpKHHkaKxN9m4YvELJXTb
	Cehw==
X-Received: by 10.68.176.37 with SMTP id cf5mr25176640pbc.173.1367838604259;
	Mon, 06 May 2013 04:10:04 -0700 (PDT)
Received: from [192.168.1.67] (static-50-43-57-222.bvtn.or.frontiernet.net.
	[50.43.57.222]) by mx.google.com with ESMTPSA id
	qr7sm23519154pbc.16.2013.05.06.04.10.03 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 06 May 2013 04:10:03 -0700 (PDT)
Sender: Michael Halstead <mhalstead@linuxfoundation.org>
Message-ID: <51878F86.4060406@yoctoproject.org>
Date: Mon, 06 May 2013 04:09:58 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.4.6
X-Gm-Message-State: ALoCoQlv1JSJLYCI/dqbjchOZqR65HE5hwOjSXs9/wF4L3FVW3ll3AkLm27N14MgQo9Idt8hW+Bt
Subject: Bug Trend for WW18 - new automated charts
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
X-List-Received-Date: Mon, 06 May 2013 11:10:04 -0000
X-Groupsio-MsgNum: 13579
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="------------enig759F1EE884A1E127BB967297"

--------------enig759F1EE884A1E127BB967297
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bug trend data is now gathered automatically and displayed using
detailed interactive charts. Hover your mouse over various parts of the
charts for more detail. The dynamic axis labels will sometimes omit text
for readability but the relevant data is displayed in the chart. Data
for each week is taken from 23:59:59 UTC on the Sunday ending the week.
Daily data is collected during the last second of that day in UTC.
Numbers from previous periods have been regenerated using these times
for consistency.

The charts are currently displayed on their own pages but in the future
will be embedded into either the main Yocto Project website or the wiki.

Find the new style trend charts links at
https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend

Or view them all at once at https://wiki.yoctoproject.org/charts/combo.ht=
ml

--=20
Michael Halstead
Yocto Project / System Administrator



--------------enig759F1EE884A1E127BB967297
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with undefined - http://www.enigmail.net/

iQIcBAEBAgAGBQJRh4+KAAoJEDNzFwYBhhlp3YYP/R9QF27d5BCpuT5s2opP+rap
GhgHFVOLCcxQ3g7oDtQqt14Eq5YX1QFXqiSlYJ4O8rq6otpwM8pWM2lPDsagWhK5
EoYCW5Hg61cjzGcqeLqYqj3RoNnx1p5J4fbq7gy0l86IC6N6qmDg1OpnKr780RSQ
dXfy2xwf1JmLfa9qta8aXEz3dpcxCOOQsUizW80KRZAAuK65EQtYJ8nmtGXhqz76
3PMbgdqqXD5ewOb/MDXO2ogyxjo/bBmjTPm1tHaMoKdlC7rIfcR/tceIUJJMO7w8
NJZD9RqECQMLyHn34VpOnZTpMZBtP390VAfTXS+wV/W1SCSispGaNHj80HOGJSxC
I7yWHtGqzhxEezDU2JXW7utGylHMOehybKohAHQUA7t+muvOHOfXr1jEVYgCy1gX
ZfxSW4eb6MKNO+26vbqwyD6Gr2KvrvnMNqmqp6KBC+ic4bQvudtdUdLhPsyHM9Tz
BQg1CZFIj2DLow1VZD16U8qmPFubguEBoM9q2dNn06FMojY1c8HnNgh0moeeEHk0
2K2gDYScbqyJWFV78IQdtMeQS4yFrgoZpOCwPsuXJlmSdNLupjTNRaPxEtZMAK0y
3YJGfKQ7Ja6vtQ3Nlsl8oxRSOB1hsKO1EZIMqCiv+TIXabqYTBU4lvK40QgNYtv/
qvP3awII7CYw3y0t2OcM
=m+UU
-----END PGP SIGNATURE-----

--------------enig759F1EE884A1E127BB967297--
