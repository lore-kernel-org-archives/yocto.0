Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1721B4C80A8A
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 01:28:15 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6J6SBkf029008;
	Tue, 19 Jul 2011 01:28:11 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1srAsQWs5LCwJtyg852EF3wmMboeLBBcdb6Y3iKB4-eb+Q@mail.gmail.com>
Date: Tue, 19 Jul 2011 01:28:11 -0500
Message-Id: <43F25E96-A0D5-470A-980F-2AF0B4E30834@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-2-git-send-email-galak@kernel.crashing.org>
	<1311052872-10569-3-git-send-email-galak@kernel.crashing.org>
	<CAMKF1srAsQWs5LCwJtyg852EF3wmMboeLBBcdb6Y3iKB4-eb+Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/5] tclibc-*glibc: Utilize TARGET_FPU for gnuspe setting
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
X-List-Received-Date: Tue, 19 Jul 2011 06:28:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 19, 2011, at 1:08 AM, Khem Raj wrote:

> On Mon, Jul 18, 2011 at 10:21 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>> Its possible that BASE_PACKAGE_ARCH isn't set to ppce500 or ppce500v2 =
when
>> we build native toolchains.  So we can utilize TARGET_FPU being set =
to
>> "spe" to determine if we should enable the gnuspe ABI.
>>=20
>> Signed-off-by: Kumar Gala <galak@kernel.crashing.org>
>> ---
>> meta/conf/distro/include/tclibc-eglibc.inc |    2 +-
>> meta/conf/distro/include/tclibc-glibc.inc  |    2 +-
>> 2 files changed, 2 insertions(+), 2 deletions(-)
>>=20
>=20
> similar change is needed for tclibc-uclibc.inc as well. something like
>=20
> TARGET_OS_powerpc =3D
> "linux-uclibc${@['','spe'][bb.data.getVar('BASE_PACKAGE_ARCH',d,1) in
> ['ppce500', 'ppce500v2']]}"

I can add it, but unshure if anyone has e500/spe working with uclibc.

- k

