Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C11E3E00B23; Fri,  6 Jan 2017 09:17:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85766E009BA
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 09:17:42 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 194so83386pgd.0
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2017 09:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:user-agent:in-reply-to:references
	:mime-version; bh=0y2t/0O5wwoplI6/X4qdZVEp16tGwYV6pK7tr2qxz6E=;
	b=d7vMnAYuiHNyX70J4FwbEhSM9kxH5TejgZVpIlOMHB1DMJdknG0jTsQp2Zhjcnx5ps
	hFgwZPG0GNeZE4iRdROIDLMgiNJuxIpGPo7PXmRwuKR8+VPbmufq8JUSDmkoQvjilGdb
	lc47oEy1fB29/xZvetrkbhK06Cs+1wYCOnjSVan/gffZ/m5aTIx+/tz2faG03zMCSvef
	/z1hdLSj1g07oUr9SnBTbXKQCrLMG8wJtOms7DZjpqqQT2MZQliqtEwSS9OTxoZNWQDd
	WgYe8g66tmYt3G/zPhiXvKcMOjQDLvmie+d7KWjK5aSxhFQMXlD6Rl1TCGvNk7CDTaG9
	Riew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version;
	bh=0y2t/0O5wwoplI6/X4qdZVEp16tGwYV6pK7tr2qxz6E=;
	b=a2nXupRPLRCRWr+RT54xF+J7SywhEe/6nXBQyT3NW7QhIiBRsr+gfq33lyZs1i2qiQ
	BbQ8H1xsGpqbom6KJ4awl3gkUk25vZ0x6OgzKpp0qWR4FGmRbVNRftNVNKH5dR9L2y/m
	jNVCvkgGntUhQQ703+CfcXxotCzz42+xvDiP/3yH/CCxNJr46cu8/5GupUA9FP1wS1Rv
	G2S0ajlrdfy+jiFPAubijY5WqPIDYUbDnh4JAP3EC85I6DmouSdL1TUJPLfecVjpG0JF
	tWK49+ClIODZQHjP38Jm7/fy3qZMiMmCZpH6u21qhGGEs69J42rNIgCL/9fm0qsynNsl
	TYsQ==
X-Gm-Message-State: AIkVDXKLdBfNBPM+Qv3QNGxM1EFOe+D6/IYw5iQqNT7N3DS7GhTw4sRuK21rHwNTGEfkoQ==
X-Received: by 10.84.164.231 with SMTP id l36mr169877064plg.33.1483723062056; 
	Fri, 06 Jan 2017 09:17:42 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	89sm161173071pfi.70.2017.01.06.09.17.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 06 Jan 2017 09:17:41 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org, colin.helliwell@ln-systems.com
Date: Fri, 06 Jan 2017 09:17:39 -0800
Message-ID: <1783218.8DiePDOEFx@rjs-zotac.streifs.net>
User-Agent: KMail/5.3.3 (Linux/4.8.15-200.fc24.x86_64; KDE/5.27.0; x86_64; ; )
In-Reply-To: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
References: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
MIME-Version: 1.0
Subject: Re: Adding to inittab based on image content
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
X-List-Received-Date: Fri, 06 Jan 2017 17:17:44 -0000
X-Groupsio-MsgNum: 33684
Content-Type: multipart/signed; boundary="nextPart1541201.JS5PyKFQ5d";
	micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1541201.JS5PyKFQ5d
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Colin,

The correct way of doing this is a package postinstallation script that is run 
by the package manager after the package containing your application is 
installed on the target system.

You add to your recipe:

pkg_postinst_${PN}() {
#!/bin/sh
echo "whateveryouneed" >> ${D}/etc/inittab
}

The build system will include this as the post install script into the package 
in the correct form for the package manager you are using e.g. RPM, DEB, IPK.

This will work when the build system installs your package into the system 
root or when executed on the target.

You can also distinguish the two cases:

pkg_postinst_${PN}() {
#!/bin/sh
if [ x"$D" = "x" ] ; then
   # shell commands for target execution
else
   # shell commands for build system execution
fi
}

In the case of target execution $D is not set.

Best regards,
Rudi


On Friday, January 6, 2017 1:39:40 PM PST colin.helliwell@ln-systems.com 
wrote:
> Hi,
> 
> I have a custom recipe for an application, and the app also needs an entry
> adding to inittab. I'd like to trigger this, obviously, only when the app is
> included in the image.
> 
> I came across some hints at how to do this -
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/recipes-c
> ore/sysvinit/sysvinit-inittab_2.88dsf.bbappend?h=dizzy - but the app isn't
> in DISTRO_FEATURES. (Right or wrong.., I include it in the image with a
> "CORE_IMAGE_EXTRA_INSTALL +=" in my image recipe).
> 
> Any suggestions on how to make this inittab addition conditional?
> 
> Thanks


-- 
Rudolf J Streif

--nextPart1541201.JS5PyKFQ5d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJYb9EzAAoJEIZ1K5Tj0cm6la4IAIMLGqDVVS9qnoVgWeomhbhm
mtmqMhLTCEzwlfo89kfcqQ2pt7DY1vr55bbPz0xsDVj0oxUQ53564tHTBVMFs0B3
uW9fuplck45S0EI5oJB9Q2SzRMp2DnP3SWgqqcMgXtZy0BDcSiZxTSptFwcL0hQR
h+yCGxLt1ASUxzduUd40tZoTMErcZ6RhLUqQM3pC6xq+id8T8gYknPWWi6DO6uak
vQgG13JWi04utNgnSrvHbVpL8lrefbS0OzlX47nJ8+Kn2Imb8wt5UEl0QlASavES
4eGuTsJgxJ7bdcALOpM9DR3sBok8QWokXOoDEcgamN71IkIH98fo/Sq7152apIk=
=K99Q
-----END PGP SIGNATURE-----

--nextPart1541201.JS5PyKFQ5d--
