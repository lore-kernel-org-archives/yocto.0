Return-Path: <csanchezdll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C76EE00BE2; Fri, 16 Oct 2015 09:18:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (csanchezdll[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E7D0E00B88
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:17:58 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so17363472wic.0
	for <yocto@yoctoproject.org>; Fri, 16 Oct 2015 09:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type:content-transfer-encoding;
	bh=7e5LnEuKb3V246xN8Z9jAmMK2ZbLOT4X5d6Qv6reVhM=;
	b=ecgfOIS977mlpMB5/n5xgqjyFA6hL0exY1V0F75VxAiHnuMDJ5EOadvK++/aL1F7HV
	CAXooCjA9uJrnEKh1SxtIP3LtVKgZHozuGT5+W2oQ76P+7TL+cnwgn1M46c8O2Y438Rh
	fM8zrPOKo/pEoj8vAIHquvpezkCDfayrN6XTy3L4QuFti4z+biOIbO8fjORg55+qjl6Y
	K5Av+vJ3jVtHWLkSKNpRE+zl/0sdayJfx8TN1tEJhU06/hEaefHEK4PQNRZqso4DzyoR
	n8CPTatOX0gMW+qup2h6uaYCI5AcMS3FFd3A+TdUIowafT/IcAtbl/ftJ4XVZ//oCR6q
	rz3g==
X-Received: by 10.180.198.48 with SMTP id iz16mr5836510wic.63.1445012277982;
	Fri, 16 Oct 2015 09:17:57 -0700 (PDT)
Received: from boole (galileo.kdpof.com. [80.38.102.19])
	by smtp.gmail.com with ESMTPSA id
	q1sm23365358wje.39.2015.10.16.09.17.56
	(version=TLSv1.1 cipher=RC4-SHA bits=128/128);
	Fri, 16 Oct 2015 09:17:56 -0700 (PDT)
From: csanchezdll@gmail.com (Carlos =?utf-8?Q?S=C3=A1nchez?= de La Lama)
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <7tvba8jf0e.fsf@gmail.com>
	<3362826.ZZ4Dx4hM6A@peggleto-mobl.ger.corp.intel.com>
	<7t4mhrw9db.fsf@gmail.com>
	<1454654.gobRdKJqMp@peggleto-mobl.ger.corp.intel.com>
Date: Fri, 16 Oct 2015 18:17:58 +0200
In-Reply-To: <1454654.gobRdKJqMp@peggleto-mobl.ger.corp.intel.com> (Paul
	Eggleton's message of "Fri, 16 Oct 2015 09:32:34 +0100")
Message-ID: <7tziziu6rt.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.3 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package inclusion
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
X-List-Received-Date: Fri, 16 Oct 2015 16:18:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Paul,

>> kernel-module-nls-utf8 (which goes into the image)
>> kernel-module-input (which does not make it to the image)
>>=20
>> and both appear in RRECOMENDS_packagegroup-base.
>
> You definitely have the kernel-module-input package created - right? Beca=
use=20
> it's an RRECOMMENDS, that package can actually not be produced by the ker=
nel=20
> (i.e. because the corresponding config option is 'y' or 'n' instead of 'm=
').

You got it. The package is not created.

I should have checked that before.

Thanks for your help, BR

Carlos

--=20
-Debemos anhelar no s=C3=B3lo la verdad, sino tambi=C3=A9n la virtud -sente=
nci=C3=B3
Pit=C3=A1goras-. El conocimiento que se obtiene mediante oro, y no a trav=
=C3=A9s de un
merecimiento virtuoso, puede apartarnos del camino recto y ser nefasto para
nosotros y para nuestro entorno.

Marcos Chicot, "El asesinato de Pit=C3=A1goras" (2013)

