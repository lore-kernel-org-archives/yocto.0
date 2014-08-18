Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EE9DE006B5; Mon, 18 Aug 2014 12:16:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3118E004F5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:16:03 -0700 (PDT)
Received: by mail-wi0-f176.google.com with SMTP id bs8so4278130wib.15
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 12:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=nX9Y8rxFI52oCTIBtpICDvel5XEmlkPw4bW2ojSFI3c=;
	b=e+1mfyr5EqlmWIIeyvgz0Np2H9A9CpD0RutnfGv5hwWI2ok7CTJqQWkA1ke+suX0tt
	tJLnC+vdgOajbxBQ7C0btYgtA/YxAw8GD/VmD6zrR6cCnO6ZlZ7s0vPKa/GWyGjM37K6
	AuGhkLO0wadF5L6t9JoBFCRTbQ+vy9WaNraGXPgwXIgGhGZFwOLCDY8DfQnA47CM01+p
	2qFdIdMRApia94B4o6cnM5gkpoP2bJ6xJqYa1b72QMC4FAci6h0xo+VyMR2gzPUKaVzO
	Ynco8khIGSTziixOTJ8NCcBRTSkG47jhQh8sOv0A8CRgUzFY8sNe3kFmdhezRMmPHfUB
	X5nA==
X-Received: by 10.180.14.170 with SMTP id q10mr1074145wic.56.1408389362987;
	Mon, 18 Aug 2014 12:16:02 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12]) by mx.google.com with ESMTPSA id
	ch5sm44378980wjb.18.2014.08.18.12.16.00 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Aug 2014 12:16:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <2465494.QQQqIGCniD@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 18 Aug 2014 21:16:06 +0200
Message-Id: <74A46ECF-B623-42EE-A486-F305DD48384B@gmail.com>
References: <546B672E-C981-41EE-B2E3-655F24672A3F@gmail.com>
	<20140817173900.GH3660@jama>
	<7A586870-D626-4D2D-A72B-A9118712F317@gmail.com>
	<2465494.QQQqIGCniD@peggleto-mobl5.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1878.6)
Cc: yocto@yoctoproject.org, Gerd Hoffmann <kraxel@redhat.com>
Subject: Re: Fix for meta-oe/recipes-graphics/fbida/fbida_git.bb
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
X-List-Received-Date: Mon, 18 Aug 2014 19:16:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Am 18.08.2014 um 16:48 schrieb Paul Eggleton =
<paul.eggleton@linux.intel.com>:

> Hi Jens,
>=20
> On Sunday 17 August 2014 20:06:10 Jens Rehsack wrote:
>> Am 17.08.2014 um 19:39 schrieb Martin Jansa <martin.jansa@gmail.com>:
>>> On Sun, Aug 17, 2014 at 05:02:39PM +0200, Jens Rehsack wrote:
>>>> we played a bit with some tools before using a modified psplash to =
show
>>>> some guidance on hdmi-fb and there was an error in fbida which =
wrongly
>>>> mixes host-paths and target paths. Additionally - for Poky or OE =
it's
>>>> unnecessary to guess additional path to check - recipes will do
>>>> correctly.
>>>=20
>>> Please follow README and send it as inline patch to oe-devel ML.
>>>=20
>>> Thanks
>>=20
>> Hi Martin,
>>=20
>> 1) I do not send inline-patches
>> 2) I do not subscribe to more mailing lists just to send patches.
>>=20
>> Either it's helpful and maintainers accept it or it's not and when =
one uses
>> a search engine one applies it locally.
>=20
> You do want to avoid carrying these patches yourself indefinitely, =
right?
> If so, you'd rather they got merged rather than being missed by the =
maintainer=20
> because they weren't in the expected place or format - right?
>=20
> The way we accept and review patches is via our mailing lists; and we =
have to=20
> have more than one list because of the sheer volume of patches and =
discussion.=20
> Unfortunately we also have to force subscription in order to protect =
ourselves=20
> from spam. However, it's worth noting that you don't actually need to =
receive=20
> emails from the list in order to be subscribed - you can disable =
delivery in=20
> your account options.
>=20
> The procedures we have in place do require just a little bit more work =
on the=20
> part of the submitter, but that does translate to a huge reduction in =
work for=20
> the maintainers; and preserving our maintainers' sanity is important =
if we=20
> want to keep the system maintained ;)

It's a bit more difficult ;)

I took the patch from customers place to submit it in my spare time, =
because
mail setup at customers place is terrible. OTOH - dealing with "git =
send-mail"
is everything else than easy to setup and use. Since I'm a contractor =
for a
limited time in a project which lacks time for dealing such =
extra-effort, I
could only clone the repository and submit the stuff (without having any
chance to re-test in case of errors) after end of project.

You might check the list of open issues in the projects maintained or =
co-
maintained by me (some basic perl modules as Hash::Merge, =
List::MoreUtils,
MooX::Cmd, ... and libstatgrab and Packager::Utils needs some polishing =
to
get out before 2014Q3 of pkgsrc is branched) - with 50+ hours per week =
working
in the project and ~10h+ commuting and spending time with family and =
friends
and hacking on my projects - I do not see any time to setup a reasonable
environment for "git send-email".

So I accept patches in any way - I only care about unified diff and in =
case of
code changes, some unit tests.

Best regards
--=20
Jens Rehsack
pkgsrc, Perl5
sno@NetBSD.org






