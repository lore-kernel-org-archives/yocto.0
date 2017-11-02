Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88195E00C44; Thu,  2 Nov 2017 10:22:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1559BE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 10:22:26 -0700 (PDT)
Received: from oxbsltgw10.schlund.de ([172.19.249.27]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0LmgTP-1daQXt26Ut-00aG16; Thu, 02 Nov 2017 18:22:22 +0100
Date: Thu, 2 Nov 2017 17:22:21 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2083300646.252546.1509643341182@email.1and1.co.uk>
In-Reply-To: <9857d70a-0429-6777-d29d-e797cbd9bdd4@linux.intel.com>
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
	<214703149.187142.1509606640635@email.1and1.co.uk>
	<1752415703.224739.1509640006960@email.1and1.co.uk>
	<872a75ce-9471-09fb-e00d-0ae5da82634a@linux.intel.com>
	<198351249.226064.1509641440918@email.1and1.co.uk>
	<9857d70a-0429-6777-d29d-e797cbd9bdd4@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev36
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:Xi0giHHS3HJDpDVlNQ+R+vKcqrMLGDJTskZfNT8KUxzcdphEFT/
	k19uSNmRy9T+QaJLTei6//VEAGo0OfnzdJwx4Eq6IyHV3lKi1zuo0n4F+HBhVSklwoqbRPG
	sNmaq5LHeO97fJJPXcqP3Swx30x4tcUa9ZvMVK2iDgG9acgEcP+5qv56d0UmcdQ1VxSriqk
	05TtTR2/Y8goEYAPRJxFg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:fxqyG4FI04M=:ZEsu1+b7ScCZTYml+6DrDr
	nCEESFV35wfUS9UAD6sbWXE42bvXx/aZLKPqkDZZtvePqDActdFOieCSCNCGRfc8dDETQSEJg
	czOjCxZxRGjpc7uDgEE+vl4cm+btz1gFL52uhnXvprhhgAkJPWKlXW1L4ltR0DXvm2ACQdhPN
	cv6rLKyH7oDCzNZ2Lkbg814AnuDb/Y00omhlDH4aFKMnldLiG+zgF/XpP2D6YtxPN6LJGxw1M
	K9H3QJjyb+yum+ll9qEUO+TnCgYGWTsrjR6LfhOGf1jMKi0MI21y+nWvy3ZEfZQ6y7ToUp0NJ
	d+5eOfgiRAaSs8G84D1mJuxu1gpNW5Uj/fam6hOnXBb4LOG8IjDY61QxztjfTE8lEb5Lv/BZX
	70Lq0Hk8RbLDk8uCpslfKfo3tlzYN6nSgYGeFk84FnszcFeEZ4rCw87kXT9MygBBJZ4a7TjAZ
	ekVbX6np8AwGXkgbo3/yVa/S0SnWul2YtoV9+XFYCAII4cLlEvrHvsqlrQA4izPCoDjugvqlY
	cntPbFdMzhryD1o8efSCnl0n5dYvC6Hf4Y7d2bQ6+f5YhHQ/1rjdPMiaeaSkdjaytkr5DTbVS
	J5f3RfJgBBNvoHjQaOAJU6e2jMfjD0edydYj8pnBNuOKnlv7sz/8Rnhm+jri5B9zyS6wMICgw
	JEMZGteGRiKS+S2t9tSQYDV1iSCBDYnz1GdesA7JgvUkBIe6KAp+Z8G153cInibFNb+m/zM5e
	N0/gYImZ3auV73oHFNvCcv73druaiLeQ1XDyP/GyaVX4Aqm9Tz5LM58C5l8=
Subject: Re: Slightly varying builds
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Nov 2017 17:22:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 02 November 2017 at 16:59 Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:
> 
> On 11/02/2017 06:50 PM, Colin Helliwell wrote:
> >
> 
> > u-boot-w2_1.inc has the standard kind of recipe stuff. For creating env files, and files to be used for later signing, it has some _append steps, so I'm aiming to use 'DEP_IMG' to create the various files with different prefixes for the two variants.
> > Strangely though, an 'echo ${DEP_IMG}' is outputting the same value ("u-boot-prodn") from both recipes, even after a cleanall on both. Possibly some state info being pulled in somewhere?
> 
> Not sure if this will help, but start by not using the -dev suffix. It
> will clash with -dev packages produced by (any) recipe.
> 

Thanks Alex, that has indeed resolved the problem of DEP_IMG not changing.

Still getting the "trying to install files into a shared area when those files already exist" error on the second [-dvl] bitbake. And a cleanall throws

"ERROR: Multiple .bb files are due to be built which each provide u-boot:
  /home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2-dvl.bb
  /home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2.bb
A list of tasks depending on these providers is shown and may help explain where the dependency comes from.
/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2.bb has unique dependees:

/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2-dvl.bb has unique dependees:

It could be that one recipe provides something the other doesn't and should. The following provider and runtime provider differences may be helpful.
/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2-dvl.bb has unique provides:
  u-boot-w2-dvl
/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2-dvl.bb has unique rprovides:
  u-boot-w2-dvl-dev
  u-boot-w2-dvl-doc
  u-boot-w2-dvl
  u-boot-w2-dvl-staticdev
  u-boot-w2-dvl-dbg
  u-boot-w2-dvl-locale
  ^u-boot-w2-dvl-locale-.*
/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2.bb has unique provides:
  u-boot-w2
/home/colin/trunk/fsl-community-bsp/../meta-ln-karo/recipes-bsp/u-boot/u-boot-w2.bb has unique rprovides:
  u-boot-w2-doc
  ^u-boot-w2-locale-.*
  u-boot-w2-dev
  u-boot-w2-staticdev
  u-boot-w2
  u-boot-w2-dbg
  u-boot-w2-locale"

That doesn't seem to imply too much conflict, so might be something simple...
It's nearly dinnertime - :) - so I could, to make absolutely sure, try a thorough cleanout by deleting tmp/ and see what happens.

