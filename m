Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18750E00874; Tue, 11 Nov 2014 09:51:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A983DE0072A
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 09:51:24 -0800 (PST)
Received: by mail-oi0-f52.google.com with SMTP id u20so7286275oif.39
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 09:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=PyxKjuRVVrl4bob1lzeyXZQ1AJ6obtztoWy9mVdsGb4=;
	b=ZdnAezME6/sCggv3sYgX6GKoKlgJPWsZFCwtOqugHympBQadkq2+9Wnym7SeJWgWmr
	IVzmrIPiMtVrv51h3ywL0a+/S4q3PISjlc/rSlxnrbbP9gdk25VoSy+FrEGgtxz4X4bW
	jGokPurR88p3wm1Cpna3cm51Fo2key4poROzvo40Cjud6nf8vZ7xXeczHPld/hVuvMc7
	cxWqjamkKALh03i4fvrMFeFt3gH5A7+96T+hfukNzCT/DvPQXYxFIc9VCxhvb9utPIQJ
	KRR3d7Wd+q+09xsSjQvQ4iZ3dbRIy3BvAiujRK69zKbIOR+7z4wbgtfhjI4BXHsUtnru
	V5XA==
MIME-Version: 1.0
X-Received: by 10.182.20.195 with SMTP id p3mr33502512obe.42.1415728283998;
	Tue, 11 Nov 2014 09:51:23 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Tue, 11 Nov 2014 09:51:23 -0800 (PST)
In-Reply-To: <D087E4B4.4DDB7%belen.barros.pena@intel.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D08793BD.4DAD5%belen.barros.pena@intel.com>
	<4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>
	<D087C161.4DC2F%belen.barros.pena@intel.com>
	<CAByxTR-TLaK2NSwctbqH2rpTx9Lvhj_b3h32oYb1otfbV_inOA@mail.gmail.com>
	<D087E4B4.4DDB7%belen.barros.pena@intel.com>
Date: Tue, 11 Nov 2014 11:51:23 -0600
Message-ID: <CAByxTR-AS8DcboJH-iP5kgw3OitUKEYP7ZK5riJsuVX1bNNUpg@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Tue, 11 Nov 2014 17:51:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>Toaster

>https://bugzilla.yoctoproject.org/enter_bug.cgi?product=3DToaster

>Cheers

>Bel=C3=A9n

What about bootloaders? Where would I file a enhancement for different
boot loaders (U-Boot, Lilo, etc.). Would be good if we had a boot
loaders layer.

On Tue, Nov 11, 2014 at 10:09 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
>
> On 11/11/2014 15:46, "John Unland" <opensourcejohn2112@gmail.com> wrote:
>
>>>A kernel configuration module for Toaster is something that we'd like to
>>>see at some point. And the branding one I agree it would be great to
>>>have.
>>>Feel free to open Bugzilla entries for both.
>>
>>Under what catagories would these two be filed under?
>
> Toaster
>
> https://bugzilla.yoctoproject.org/enter_bug.cgi?product=3DToaster
>
> Cheers
>
> Bel=C3=A9n
>
>

