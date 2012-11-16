Return-Path: <josh@hipro.co.in>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C99CE00498
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 21:34:06 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id kp12so1681566pab.35
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 21:34:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version:x-gm-message-state;
	bh=Th5ZNAN5mrIhad8oQ3+EKUhL2k8WzTCmAM1FPMyvLi8=;
	b=Tdugg+XnRcJraHKI0MyKjJja38WXbUFcKVmTIuvYdYVgzDU/a9ZxqAc7S5FM/L0x+h
	o8kILvFPw+JQ6rYckbbyaNr371AFya3SY6B2kHX3AwQvkrInSZHCadEM5CXajz0jkLXU
	nWdzsTLgOskjRHeD5FYwCy262lOBOS6MLekVuLVhj+G2ag8Fnih25Hg6Fr6eaUN4g9Je
	gYDgf+nRCqpFPG6pUa3LI9iEagtWiafqfsRecTCXgU8GWw1p8WtJtOwPR7oDovE2/4Mx
	UQHZ9zPYCmOsPzkxV6VJicqdhvvdyfpthXaJCC8w/d/2p59GbrrsQSSycUcxLgTAmBjb
	5GLQ==
Received: by 10.68.143.162 with SMTP id sf2mr11540116pbb.137.1353044045983;
	Thu, 15 Nov 2012 21:34:05 -0800 (PST)
Received: from [192.168.10.241] ([59.99.251.45])
	by mx.google.com with ESMTPS id c7sm477823pay.10.2012.11.15.21.34.03
	(version=SSLv3 cipher=OTHER); Thu, 15 Nov 2012 21:34:05 -0800 (PST)
Message-ID: <1353044032.4160.11.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Liu <treebody@embedstudy.com>
Date: Fri, 16 Nov 2012 11:03:52 +0530
In-Reply-To: <tencent_4D0038032A743D29372622A1@qq.com>
References: <tencent_4D0038032A743D29372622A1@qq.com>
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.4.4-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlLHBgFuM5P7poPs5v7Cj+W2jYMNXwueCfLKO4IODTewxCyC6arQxFyb9HZCK5r7uxaPc5c
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: questions about writing a recipe
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
X-List-Received-Date: Fri, 16 Nov 2012 05:34:06 -0000
X-Groupsio-MsgNum: 10553
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-HGxO1IxAbRLexYWWQQZW"

--=-HGxO1IxAbRLexYWWQQZW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Liu,

On Fri, 2012-11-16 at 11:06 +0800, Liu wrote:
>     I'm writing a recipe and come up with a question.I want to invoke
> the the workdir of package A in my recipe of package B. I tried to use
> the variable WORKDIR,but it represent for the workdir of B in the
> recipe of package B. So is there any good ideas about this ?=20

Basically, you are trying to use a variable from one recipe in another
recipe. I guess, there is no direct way of doing this. However, you can
echo the ${WORKDIR} of recipe A to a file inside the ${STAGING_DIR} and
then read the contents in recipe B. But, you should make sure that the
recipe B gets executed after recipe A.

Also remember, if you have specified INHERIT =3D "rm_work" in your
local.conf then the work dir will be removed after the tasks of a
package are completed.

IMHO, depending on files from another package's workdir is a bad idea.
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-HGxO1IxAbRLexYWWQQZW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAlCl0EAACgkQWw85XwuSFMIUdACfavf8mjJdMxHd/7J1tF078cju
oasAnjWq65HeLa4FkMmWtkkywdZFtgQd
=lWR5
-----END PGP SIGNATURE-----

--=-HGxO1IxAbRLexYWWQQZW--
