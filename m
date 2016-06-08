Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDD45E00CED; Wed,  8 Jun 2016 11:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A11F2E00CCA
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 11:01:13 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id 72so588894qtb.0
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 11:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tyvCtSSHSv4Ry7V1/meuXY35OuijzJAH6nl6fMvu57I=;
	b=jchGP3RD2G2rvXPj0mb1M8Tm86Pu9ZYyewYrqTMHZjsKN8zcFx2KpO2UA3/15GgNIV
	bg429PIjFnJ28bCO6qDM0KtzrCg58kg4xFFgdNe+ZVzSWOboAbDARoRgcycWLdE3is6P
	2N29UWzKbny9ygGSh6+5kMaJF5eQbB8e8R3i5ZrpRfIOB1nPKxp5eE7lilZUDkMnzQ24
	Ti1l35bkFFFnbcCSyh3W5iAoURFbd9Fsn+ZtSpI963ibcFVwJ3TBvRBbgV7w66ejaTHz
	9wcvEqu81SyDzIXRqPlzaImej8bWyHgWE/NngfTBnAiCv9p7328oSJb77Jaj9exE1EEX
	kLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tyvCtSSHSv4Ry7V1/meuXY35OuijzJAH6nl6fMvu57I=;
	b=XFmvNKmIHs6hC1iuyLNx/R2rP18u7NyaUHf9qneraecs0GuWMSWVVYssz00kE9JxkT
	iJ4HaDWa0ISnlNRNtzeZCX+zMT08j3h20+0Mg5O+6FaBhAamCf0iiNc3YQtawbtZsNTE
	pmJyAw0NKAvuGYHJfjBli0C6eROS+nKR8MMhHKWLMeXkTFWh6GhLcJpg9QxSSjexYWTl
	/FgxBiWbGBt6P8YG9L//SuCX8PoBu7GrDxZV9bz6eB/9sCTqT+8oPLgnnfv7iuHCak9V
	JCCJjfsb38JnFv+aB1Y02iADy0VwzvKg/FaH4fTkz9iFUhiyuEHX5IX1/P3oWnZi7Q0t
	EAtg==
X-Gm-Message-State: ALyK8tKCJif6HYJIUhVRiWClA0CKUkSLyIrTXKJX0dn3H5nNMqrjOHOHNSdpAnim16ZxRbYxWQ9ltr++SNIb0w==
X-Received: by 10.237.41.5 with SMTP id s5mr6034498qtd.71.1465408873160; Wed,
	08 Jun 2016 11:01:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.35 with HTTP; Wed, 8 Jun 2016 11:01:12 -0700 (PDT)
In-Reply-To: <CAEeWubL6=JcOBLbFdHmuikXuAvryCECnVHJ7fx5J2oShhnU7FA@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoF=KA=wmKu=+Zd6UOaQ=waZQgjvCQz=z8h+QtUgbYXoiTA@mail.gmail.com>
	<6693315.UnGygSzkB8@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubL6=JcOBLbFdHmuikXuAvryCECnVHJ7fx5J2oShhnU7FA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Wed, 8 Jun 2016 11:01:12 -0700
Message-ID: <CAGMdoFny4KP+EN9=Seg0B3RdL6S98AeiH38QJCgwPU3KHbx0TQ@mail.gmail.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, Diego <diego.ml@zoho.com>,
	yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Wed, 08 Jun 2016 18:01:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 8, 2016 at 1:58 AM, Oleksandr Poznyak
<oleksandr.poznyak@gmail.com> wrote:
> Hi, Edward.
> Your approach is valid. But RREPLACES is not enough.
>
> You should define that your package and original ones are conflicting and
> that it provides the same as original one for other packages.
>
> So in your recipe:
>
> RPROVIDES_${PN} =3D "sysvinit-inittab"
> RREPLACES_${PN} =3D "sysvinit-inittab"
> RCONFLICTS_${PN} =3D "sysvinit-inittab"

Thank you, Oleksandr and Paul, for your help and clarification.

And in case my hijacking of this thread caused OP's last question to
be ignored, I apologize and wish to put the thread back on track for
him:

On Mon, Jun 6, 2016 at 6:27 AM, Diego <diego.ml@zoho.com> wrote:
> Hi Oleksandr,
>
> In data venerd=C3=AC 3 giugno 2016 20:56:32, Oleksandr Poznyak ha scritto=
:
>> I found that that=E2=80=99s an issue with rpm packages. I didn't expect =
there might
>> be some issue with rpm. If you really don't care which package managemen=
t
>> system to use, switch to deb:
>>
>> PACKAGE_CLASSES =3D "package_deb"
>>
>
> Thanks for looking at the problem, unfortunately migrating away from rpm =
is
> not an option for me at the moment. Is there a bug report for this rpm
> problem? Should I open one?

