Return-Path: <w@tolkien.email>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB562E00D48; Wed, 29 May 2019 15:37:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [185.70.40.27 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail4.protonmail.ch (mail4.protonmail.ch [185.70.40.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B452EE00D45
	for <yocto@yoctoproject.org>; Wed, 29 May 2019 15:37:11 -0700 (PDT)
Date: Wed, 29 May 2019 22:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tolkien.email;
	s=protonmail; t=1559169429;
	bh=mNaRVDDbSqK6hZXI60R8BX5jzNmKzPtKnkrZmX5AM8w=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	Feedback-ID:From;
	b=ERrEKr04EBVxAKLz5GJi4I+mIeyb4aF26E/nCVA304+djZee1FGhZSR2QTED4NIPp
	fwFzJRXZ745KVEploeK2uCvgKAc2L7QX8tYESDCeKbTOxk+jqaOIsxzndLUDxiBnjd
	ASQCxfIVZx7XHXcGb9MoGXSmzn4hG67vKo3WujD8=
To: Richard Purdie <richard.purdie@linuxfoundation.org>
From: Wolfgang Tolkien <w@tolkien.email>
Message-ID: <4Mklk4xKXpgIf9dueA8b9iCg-NG3yLTrfkOh1lp-DFykEH_6iWsrYXfeueNQuxFvp8CSqYBjkCo4NEe7NV1eC7hAR24odoLZGA46at_1vrc=@tolkien.email>
In-Reply-To: <49b4f2b21ece083360e23e612a59bec2fadeb374.camel@linuxfoundation.org>
References: <7As9_zcZlHPteOw6wNtYJxOjL2RahJDKXMGg5yLB6d-95M4XrIDRKROQzsg53io7ErueGn2nhWJSfl8xwuxT8m4-jg2AT6P0GWQ0xAmaynM=@tolkien.email>
	<49b4f2b21ece083360e23e612a59bec2fadeb374.camel@linuxfoundation.org>
Feedback-ID: ViJOJooDpCW9ZJDpR0_AgFeSbLYnIh1UKu2DLqxShSUVxesnK5QhckaNHn9X6OllezKyU4UDbY3NFvyzyU-gCg==:Ext:ProtonMail
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.7: SSTATEPOSTUNPACKFUNCS_remove not working
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Wolfgang Tolkien <w@tolkien.email>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 May 2019 22:37:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks,

not sure I follow: 'SSTATEPOSTUNPACKFUNCS_remove' is not valid any more and=
 previously only worked because there was a bug?

Also, what about running bitbake-dumpsig on the task sigdata and finding a =
line containing

"_remove of" (and nothing else)


That doesn't seem quite right...

Cheers,
Wolfgang




=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Wednesday, May 29, 2019 2:27 PM, Richard Purdie <richard.purdie@linuxfou=
ndation.org> wrote:

> On Wed, 2019-05-29 at 21:17 +0000, Wolfgang Tolkien wrote:
>
> > Hi there,
> > I'm upgrading from Yocto 2.5 to 2.7. I have a recipe that (for
> > legacy reasons) builds a 32bit "-native" executable. I am disabling
> > uninative by setting
> > SSTATEPOSTUNPACKFUNCS_remove =3D "uninative_changeinterp"
> > This worked well with Yocto 2.5, but with Yocto 2.7 I'm getting
> > ERROR: When reparsing virtual:native:my-32bit-
> > recipe_1.0.bb.do_populate_sysroot, the basehash value changed from
> > <before> to <after>
> > ERROR: When reparsing virtual:native:my-32bit-
> > recipe_1.0.bb.do_populate_lic, the basehash value changed from
> > <before> to <after>
> > ERROR: my-32bit-recipe-native-1.0-r0 do_populate_sysroot: Taskhash
> > mismatch <hash1> versus <hash2> for virtual:native:my-32bit-
> > recipe_1.0.bb.do_populate_sysroot
> > [... lots of these...]
>
> I suspect the reason this appeared is a bugfix in bitbake:
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/bitbake?id=3Df7f5e30667e=
1ad8e1ca76ee331be2843f2976bfa
>
> which means this removal is now correctly being accounted for in the
> checksum. In your particularly case you were relying on the bug :(
>
> Cheers,
>
> Richard



