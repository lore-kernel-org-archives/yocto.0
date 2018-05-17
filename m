Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36A0E00929; Thu, 17 May 2018 03:46:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7AE0E007DA
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 03:46:43 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id 94-v6so5171102wrf.5
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 03:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=W3vWPWxfyESEg8JDgocLOvz1juLivHHUvwhdBqNGWOY=;
	b=KT65E3y/CcMES6pGIHJ9e+5VYga8T6WXIFmRLwT/zF5TehRSio5r/e69qPmebeeKd+
	wXg6XGvdd1mcamfPtMDxLV+RPzHl51xX0gYGoYnDjJol98XzaLQKdsjtfqHoPq39wxTz
	nj/xlR39qcLIwboHzK1vsrk863T2BNzX8Y37AyYNmxfHgDUMmiq/cumCzAOKyw8MFGU+
	hP//dTt7OJsqdyZ420VwlgOxxnXxks+JDvRKz5j3CfJURfl2kIS7e5lO5hI105eD01MW
	vyS9AVQPYMNAA0Hm+NnLa/Vbc9NK041iTUZiSvf+PPHvvw8J9AinGpKmBhSHx2ehrGUE
	zxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=W3vWPWxfyESEg8JDgocLOvz1juLivHHUvwhdBqNGWOY=;
	b=jfU+/F0EUhhWSoLStOzXc1sxp3GhNK2MzYBBdu6BjRNtvf2SviKU+hjkpWJhjZKrLJ
	EARWevK/J1VR3TBcDoYm+mOTp14Q9Ae65jzxEE7WZMaNLD7FEyw7A7G0xxJzzzBceq3r
	C0uRENqVT6SSgjEAnseeXmy/m3rMZ2j5/RyqgL+6zpXinJ94Q/a05MstWdfYibvAzGGS
	eM0p1AXNt8sCrRQgjtXBvhzMkczls/dSUlK02Si98zLV9Pd4Qv/QgAR8uFSylwOyD0Hd
	Z+oiDpV2lIlZXoqn5UNH+hV+cNTZVe7luudJQXR3Ra2LIaQFYpCa8sk2flEKdywOPLOG
	J8fQ==
X-Gm-Message-State: ALKqPwe/yHcJWf56Ev1IG0fDJi4xIIcr/a7pRJJw0QrHgBT6CyBaCFBn
	gRQSx/mSvC77awys0N8SSbU=
X-Google-Smtp-Source: AB8JxZoMK1aLsZ9vTLQA24UrKOLP86pycz+plHhfLm4AzVfsIroM2mI/+aLEXdK39VO15+qCs0RrcQ==
X-Received: by 2002:adf:a294:: with SMTP id
	s20-v6mr3625471wra.114.1526554002270; 
	Thu, 17 May 2018 03:46:42 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	k126-v6sm6491701wmg.6.2018.05.17.03.46.40
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 17 May 2018 03:46:41 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 17 May 2018 12:46:40 +0200
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20180517104640.GA1398@jama>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
MIME-Version: 1.0
In-Reply-To: <20180510191145.GA1954@jama>
User-Agent: Mutt/1.9.5 (2018-04-13)
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Thu, 17 May 2018 10:46:44 -0000
X-Groupsio-MsgNum: 41169
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 10, 2018 at 09:11:45PM +0200, Martin Jansa wrote:
> > > 5) nativesdk-libxcrypt fails to build (not sure which change caused=
=20
> > > this, it build OK with sumo since the=A0-std=3Dgnu99 addition.
> > > ../git/crypt-sunmd5.c:189:13: error: 'snprintf' output may be truncat=
ed=20
> > > before the last format character [-Werror=3Dformat-truncation=3D]
> > >  =A0 =A0 =A0 =A0 =A0 =A0 =A0"$" CRYPT_ALGNAME "," ROUNDS "%u$%s$",
> > >  =A0 =A0 =A0 =A0 =A0 =A0 =A0^~~
> > >=20
> >=20
> > something new, I will look into reproducing this.

The fix from you worked for me, thanks!

> > > I didn't get very far in testing, because our old kernel fails to bui=
ld=20
> > > with gcc8 and there are some other issues caused by other master=20
> > > changes. But it doesn't look too bad (in my small test, lets see what=
=20
> > > bitbake world will show), thanks a lot for new gcc.
> > >=20
> >=20
> > yes, older kernel needs fixes, especially to disable new warnings.
> > the mips/ppc fixes that I put out there might be helpful to cook up=20
> > fixes for older kernels if running into same issues.
>=20
> In this case it fails with Error: .err encountered for many drivers. It's=
 not the same case as in:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2015-February/32561=
5.html
> nor arm version of this change, both are already applied in our
> 4.4.3 based kernel.
>=20
> I've tried to reproduce with vanilla 4.4.143 and it doesn't fail like thi=
s, vanilla 4.4.3 doesn't
> fail, so it's caused by one of our 10000 commits on top of 4.4.3 or the c=
onfig, need to dig a bit more.

Just FYI if someone needs similar fix, backporting this:
https://patchwork.kernel.org/patch/9170055/

fixed the issue for me, now I have successful kernel build.

The failing code was always in put_user calls, e.g. kernel/exit.s was showi=
ng:
@ 1581 "kernel-source/kernel/exit.c" 1
        .ifnc r0,r0; .ifnc r0r0,fpr11; .ifnc r0r0,r11fp; .ifnc r0r0,ipr12; =
=2Eifnc r0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif
        .ifnc r5,r2; .ifnc r5r2,fpr11; .ifnc r5r2,r11fp; .ifnc r5r2,ipr12; =
=2Eifnc r5r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif
        .ifnc r1,r1; .ifnc r1r1,fpr11; .ifnc r1r1,r11fp; .ifnc r1r1,ipr12; =
=2Eifnc r1r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif
        bl      __put_user_4
@ 0 "" 2

with the error triggered on the middle line.
/tmp/ccHq8ugv.s: Assembler messages:
/tmp/ccHq8ugv.s:1179: Error: .err encountered
/tmp/ccHq8ugv.s:1331: Error: .err encountered
/tmp/ccHq8ugv.s:4617: Error: .err encountered
/tmp/ccHq8ugv.s:6222: Error: .err encountered
/tmp/ccHq8ugv.s:8705: Error: .err encountered
/tmp/ccHq8ugv.s:14486: Error: .err encountered
/tmp/ccHq8ugv.s:14646: Error: .err encountered
/tmp/ccHq8ugv.s:14806: Error: .err encountered
/tmp/ccHq8ugv.s:14966: Error: .err encountered
/tmp/ccHq8ugv.s:15126: Error: .err encountered
/tmp/ccHq8ugv.s:15286: Error: .err encountered

That leaves only few issues in our internal components and strange failure =
with perf which fails to include various header files:
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
1:28: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
2:26: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
3:25: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
5:41: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
1:28: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
2:26: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
3:25: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
5:41: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
1:28: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
2:26: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
3:25: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
5:41: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
1:28: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
2:26: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
3:25: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/../../../include/linux/list.h:=
5:41: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/util/include/asm/byteorder.h:2:10: fatal er=
ror: ../../../../include/uapi/linux/swab.h: No such file or directory
perf/1.0-r9/perf-1.0/tools/perf/arch/arm/include/../../../../include/asm-ge=
neric/bitops/fls.h:1:56: error: #include nested too deeply
perf/1.0-r9/perf-1.0/tools/perf/arch/arm/include/../../../../include/asm-ge=
neric/bitops/fls.h:1:56: error: #include nested too deeply
=2E..

Cheers,

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWv1djAAKCRA3VSO3ZXaA
HGYZAJ9wYUnDMxjzPAuNppzIyDGYIJEYvACfbBUhdCp6EBpv1+EUczxS8PFLMis=
=EVOp
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
