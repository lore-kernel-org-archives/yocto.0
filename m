Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 750E8E00717
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 14:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Content-Type:Mime-Version:Subject;
	bh=OQ+b/luyEpIFhvp3zOsL+UuOqS7+rRZJfEwGsb5vqbU=; 
	b=XoUNw1N1weYQiGeeekiX5L5tmry0zFkzKSoSAkRB8SOHVeoohACyt/7EZqiUC17Pa3rEOk61wZ+eVtKPevHodPXA90/KUB3GlvJMZ8piGa+/4CIP69ua+NJA9/Lkx0zW;
Received: from [109.224.129.17] (port=11711
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.77)
	(envelope-from <opensource@keylevel.com>)
	id 1TM3v2-0000dE-A4; Wed, 10 Oct 2012 22:34:20 +0100
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <28224C3A-5033-4D63-BB99-976C75EF24A6@keylevel.com>
Date: Wed, 10 Oct 2012 22:34:19 +0100
Message-Id: <A4740593-AB7E-4221-BEA8-F20CB1CC5337@keylevel.com>
References: <7EB7A8EA-43A7-45A9-8769-8E35AC63DC45@keylevel.com>
	<D956029D25CF204F948EA0FB515E1EE2264DCBE5@ORSMSX105.amr.corp.intel.com>
	<28224C3A-5033-4D63-BB99-976C75EF24A6@keylevel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Finding root cause of "host include and/or library paths	were used"
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
X-List-Received-Date: Wed, 10 Oct 2012 21:34:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 10 Oct 2012, at 20:51, Chris Tapp wrote:

> On 10 Oct 2012, at 18:26, Bodke, Kishore K wrote:
>=20
>>=20
>>=20
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Chris Tapp
>>> Sent: Wednesday, October 10, 2012 9:50 AM
>>> To: yocto@yoctoproject.org Project
>>> Subject: [yocto] Finding root cause of "host include and/or library =
paths were
>>> used"
>>>=20
>>> I'm trying to get libsdl_gfx to build. I've created a .bb file which =
runs and
>>> installs the relevant headers and libs in tmp/sysroots.
>>>=20
>>> However, I'm getting a QA failure:
>>>=20
>>> NOTE: package libsdl-gfx-2.0.24-r1: task do_populate_sysroot: =
Succeeded
>>> WARNING: libsdl-gfx: The compile log indicates that host include =
and/or library
>>> paths were used.
>>>       Please check the log '/media/SSD-RAID/build-denzil-git-sjs-
>>> cedartrail/tmp/work/core2-sjs-linux/libsdl-gfx-2.0.24-
>>> r1/temp/log.do_compile' for more information.
>>>=20
>>> The compile log has instances of:
>>>=20
>>> cc1: warning: include location "/usr/include/SDL" is unsafe for =
cross-
>>> compilation [-Wpoison-system-directories]
>>>=20
>>> The source uses autotools. I've had a look round the files, but it's =
not obvious
>>> to me where the above path is set (I'm definitely not an autotools =
expert).
>>> Can anyone give me an idea what I should be looking for? I suspect =
it may
>>> have something to do with a line from Makefile.am:
>>>=20
>>> libSDL_gfxincludedir =3D $(includedir)/SDL
>>=20
>> Did you inherit autotools in your recipe?
>=20
> Yes, that's in there.
>=20
>> You may have to patch your makefile not to use host header files.
>> Or, I think you can use ${STAGING_INCDIR} to override, at the time of =
your configure.
>=20
> Thanks. Are there any examples I can look at to see how to do this? =
I've not been able to find which file I need to change after 'unpack'.

I seem to have 'fixed' it, but I'm not sure I understand how! I've =
added:

EXTRA_OECONF =3D "--prefix=3D/any-old-thing"

to the .bb file. No warnings, compile log shows the correct include =
path:

=
-I/media/SSD-RAID/build-denzil-git-sjs-cedartrail/tmp/sysroots/cedartrail-=
nopvr/usr/include/SDL

>=20
>> Thanks
>> Kishore.
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Chris Tapp

opensource@keylevel.com
www.keylevel.com




