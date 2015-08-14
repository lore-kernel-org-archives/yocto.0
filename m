Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C891E009BC; Fri, 14 Aug 2015 02:10:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6FBDE00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 02:10:26 -0700 (PDT)
Received: by igui7 with SMTP id i7so8365346igu.1
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 02:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=po3EUFtH/4SAX0pHdrOqF0GzxQqiXlwjcSOFaUbtsiA=;
	b=n7h3sNulKmTYebrJrxQfzbAZl77KgR+HWJ07U9i9g1+e0MFNleuq8K4iK8+55KGO8d
	ay16wr/yhALtrZ2fDCBnU3bKmqa8FumcNusgUkfrGrf9obmIdmfKuztoZRDuaQpcJ+CD
	ur/id08j56qpIF6gqvgA78vM+s3fW4I53T6R/b/kkiGVL323MhtBpF2sqIEu0NLKkc1e
	YkbteythRt8126YHgxStdyaq6/mU37FZI/yrXXE/wzRcrbsvRaeE9Zge9kYcvNn7nrBi
	gtZkfUoRlZqorn4JVZePqtpMlAoTNT9dgrWRH6km1ov/rIAyyXcsRNgMlsOLWbo6nF1x
	jBBg==
X-Received: by 10.50.59.148 with SMTP id z20mr1687850igq.77.1439543425690;
	Fri, 14 Aug 2015 02:10:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Fri, 14 Aug 2015 02:09:56 -0700 (PDT)
In-Reply-To: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
References: <DB59870584238C45879465F0A2E5C3F17B44E5@IRVEXCHMB14.corp.ad.broadcom.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Aug 2015 02:09:56 -0700
Message-ID: <CAMKF1soN=1h66GjO6Rbt2vxnPR=66s_6ZSKW16J6oOMM6UYz2Q@mail.gmail.com>
To: "Luke (Lucas) Starrett" <lstarret@broadcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: External toolchains
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
X-List-Received-Date: Fri, 14 Aug 2015 09:10:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 7, 2015 at 10:35 AM, Luke (Lucas) Starrett
<lstarret@broadcom.com> wrote:
> Hi,
>
>
>
> For various reasons, we have a need to work with pre-compiled external
> toolchains, in this case, the 2014-09 Linaro aarch64 release.  A key
> difference between this specific toolchain vs. the Fido/1.8 out of the bo=
x
> toolchain (4.9.2 + patches?), is that the Linaro version is built with
> --enable-multiarch.  We end up with applications built with search paths
> such as /lib/aarch64, /usr/lib/aarch64, etc,  but libraries installed in =
the
> normal /lib, /usr/lib paths.  Obviously if we use the built-in toolchain
> recipes in 1.8, life is good, search paths match install paths.
>
>
>
> I wanted to understand a couple points.
>
>
>
> 1)      What are the long term goals/roadmap are in this area specific to
> Yocto/OE?

OE provides provisions to hook in external toolchain thats where it
ends. Its a moving target since the specifics of internal toolchain
and metadata
change all the time, so external toolchain recipe has to constantly modify.

>
> 2)      Where is the =E2=80=9Cright=E2=80=9D place to deal with this?

external toolchain providers they need to keep it in sync

>
> a.       Configure (based on detected toolchain capability)



>
> b.      Install (override library destination?)
>
> c.       Other?
>
> 3)      Any other examples that can be used as a reference?
>
>
> I=E2=80=99ve seen a few emails in the archives that seem to touch on this=
, but none
> that really seemed to come to any conclusion.


there is external-sourcery-toolchain recipe that you can use as
template, but since people generate toolchains
with different infrastructures and options its simply not a
supportable model, it never ends and cant be defined.

