Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49E5EE00805; Sat,  7 Jan 2017 08:50:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1831AE007C2
	for <yocto@yoctoproject.org>; Sat,  7 Jan 2017 08:50:13 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id y143so587407pfb.1
	for <yocto@yoctoproject.org>; Sat, 07 Jan 2017 08:50:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version;
	bh=WQYFSQf+ESEkYFjooLVuRU6H4TR7q7hrxu5HQSJX+NQ=;
	b=fzH+kd7DwFitr6mv7fRmcHt3HHavxvEjwAIqHZxBjQbS4tbp+iLssiY2Txsj+B8xD1
	lfijjk5T6foShAPnI12JaUhTiaycnrnSYMHq0Gqj63Tf3ZEAq9E0CvzzZFkXCS0gL5Fz
	V/Kg85T8gmiHz3Q+kirPLKW4YCieRk632EnygrdJyqWpL6S7m5DACJDbAj+eFai/oLnQ
	Sk9wJ1WMcTTtgj+t+3pPK/yarunyFmjwDJO3xN9r2nR2l7clK+5han9Tf1a/98i8A4N6
	4liCUzCN7Z34I+Zx3dksWwlcgCbIVB1ds9sV/GO8QOOnngwwlAuedKkproG50ifUYf99
	twcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version;
	bh=WQYFSQf+ESEkYFjooLVuRU6H4TR7q7hrxu5HQSJX+NQ=;
	b=b7i4qLH9UBsSrap3YxvX7/o8GdyyVDonJyfzSVVtc3bzT3Zu9j9zBh5VkeDycnBEY7
	DdwqGW4ohMB5no18V0umhY1GB0SZ135xz3fWgpwbcAOuTNdSmyGkHLeXx0rcNdhdw6Yt
	vHdTfKt1waJGjm7oQxbZkKqnhSN6RyC28pWIsdnI+HCE1a15DDxP1HcwYK49SZvceNGA
	rXc5VPuFDV3MT38KDkESau8f8V+AfRC6zRqLKdWfL9YpFUA5XjfDlP/QxQeWQExUM6zp
	FWjEOFpcLPfdEFob9RctOXbM5Nzt+an9rCNfNnbU3EbHfqYmymw/4xn7OZ42nX+DhgAW
	7CEQ==
X-Gm-Message-State: AIkVDXI+tmTXVA7hFoDAu/kaztPWTMgzfnE18uIU/uGeez1qjRaStsfyKBd1qPcPktrJ/Q==
X-Received: by 10.84.134.169 with SMTP id 38mr20598075plh.67.1483807812580;
	Sat, 07 Jan 2017 08:50:12 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	p5sm154995418pgk.23.2017.01.07.08.50.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 07 Jan 2017 08:50:11 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 07 Jan 2017 08:50:10 -0800
Message-ID: <5483735.7nETbaK7K8@rjs-zotac.streifs.net>
User-Agent: KMail/5.3.3 (Linux/4.8.15-200.fc24.x86_64; KDE/5.27.0; x86_64; ; )
In-Reply-To: <5870B3A6.1060205@topic.nl>
References: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
	<1783218.8DiePDOEFx@rjs-zotac.streifs.net>
	<5870B3A6.1060205@topic.nl>
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
X-List-Received-Date: Sat, 07 Jan 2017 16:50:15 -0000
X-Groupsio-MsgNum: 33695
Content-Type: multipart/signed; boundary="nextPart3764905.KqhZ4MB1tz";
	micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3764905.KqhZ4MB1tz
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday, January 7, 2017 10:23:50 AM PST Mike Looijmans wrote:
> On 06-01-17 18:17, Rudolf J Streif wrote:
> > Hi Colin,
> > 
> > The correct way of doing this is a package postinstallation script that is
> > run by the package manager after the package containing your application
> > is installed on the target system.
> > 
> > You add to your recipe:
> > 
> > pkg_postinst_${PN}() {
> > #!/bin/sh
> > echo "whateveryouneed" >> ${D}/etc/inittab
> > }
> 
> Problems are that if you upgrade the application on target, it'll be
> included twice, and that when you remove the application, the inittab
> entry remains. If inittab itsef gets upgraded, the entry will be gone.
> 

For the former, you use your imagination and scripting skills to see if the 
entry is already there and remove it or you use pkg_preinst_${PN} to remove 
the entry before installing.

For the latter pkg_prerm_${PN} and pkg_postrm_${PN} are at your disposition.

The problem you stated is actually independent of the build system. It is part 
of the package management. For RPM, for example, the scripts get copied into 
the respective sections of the package manifest:

pgk_preinst -> %pre
pkg_post_inst -> %post
pkg_prerm -> %preun
pkg_postrm -> %postun

Accordingly for the other package management systems.


-- 
Rudolf J Streif

--nextPart3764905.KqhZ4MB1tz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJYcRxCAAoJEIZ1K5Tj0cm6TjwIAKivH8SxSRMl8A/lK1bFoO5i
d3tEoY1VCqte8yVzbix9EWQArige4kA/V0JPYedOGhPgtRlIFaO8AahXBwYsRcOa
8s4VQQtsOnv77ut8SCDZsflyH+utfHyzqr7l+psQjMMHDE0CEttkLzjmA/hj+3H3
TIpT40HJCcdYoKgAldMP6WY2KVO77b9cnXFmE/qC8gILeptB6ru4kjDZLn9x+RfH
T24ZMeCQ5ftZV/d5iI/+/AHCo3BCkKKVBLfGTetAOaWfBy/7c7kKE0Lvy2iNVg1E
YX5iw/7KT7DEZaodUs3iW7LM1a88mRlTtWZTpJgXbFJ2JGwiI8gBGt8yqna2lAs=
=ZdVn
-----END PGP SIGNATURE-----

--nextPart3764905.KqhZ4MB1tz--
