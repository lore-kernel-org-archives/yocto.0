Return-Path: <cliff.brake@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B212FE004CF
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2011 15:21:12 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywb3 with SMTP id 3so4296153ywb.35
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2011 15:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=9tUEU2AgNG/yHQa70AbX50XeR/loFKKI7hKZVjSV6Ts=;
	b=CY9GC0f7O4XxOlkNrIrv9cO3wlEcjnyu9YqKmioOO34F8aemnCxUHPInhJOs8sbrLj
	KIEqVszrf0OBeC2Y+6/heytbjLYM21RZQfy1fLCYM6PQ7GIyrF2fnu3LnECyyOfJ8MNw
	dhm/SXkL6/CuEbo57lzqhFefSnOHpQszqJ/VE=
MIME-Version: 1.0
Received: by 10.236.129.228 with SMTP id h64mr6395853yhi.101.1317939671849;
	Thu, 06 Oct 2011 15:21:11 -0700 (PDT)
Received: by 10.236.209.97 with HTTP; Thu, 6 Oct 2011 15:21:11 -0700 (PDT)
In-Reply-To: <CAOd_LFyn7fXbo3s86q3r9-eGRdBgYtCb-yJvX80N3Jwmxur0DA@mail.gmail.com>
References: <CAOd_LFyn7fXbo3s86q3r9-eGRdBgYtCb-yJvX80N3Jwmxur0DA@mail.gmail.com>
Date: Thu, 6 Oct 2011 18:21:11 -0400
Message-ID: <CAOd_LFxtB+_db3cJHfgZiPE7AUKgrajz5EgE9sE2oM4hNQJi_Q@mail.gmail.com>
From: Cliff Brake <cliff.brake@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: http://www.yoctoproject.org/downloads/pseudo URI failing
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
X-List-Received-Date: Thu, 06 Oct 2011 22:21:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Looks like pseudo managed to build, I just got prematurely alarmed by:

WARNING: Fetcher failure for URL: 'None'. Fetch command export
HOME=3D"/home/cbrake"; export SSH_AGENT_PID=3D"2994"; export
SSH_AUTH_SOCK=3D"/tmp/keyring-ptLxSd/ssh"; export
GIT_CONFIG=3D"/scratch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/sys=
roots/x86_64-linux/usr/etc/gitconfig";
export PATH=3D"/scratch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/sy=
sroots/x86_64-linux/usr/bin/armv5te-linux:/scratch/pp/pp-oe-2011-2/build/tm=
p-angstrom_2010_x-eglibc/sysroots/x86_64-linux/usr/bin:/scratch/pp/pp-oe-20=
11-2/build/tmp-angstrom_2010_x-eglibc/sysroots/x86_64-linux/usr/sbin:/scrat=
ch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/sysroots/x86_64-linux/u=
sr/bin:/scratch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/sysroots/x=
86_64-linux/sbin:/scratch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/=
sysroots/x86_64-linux//bin:/scratch/pp/pp-oe-2011-2/sources/openembedded-co=
re/scripts/native-intercept:/scratch/pp/pp-oe-2011-2/build/tmp-angstrom_201=
0_x-eglibc/sysroots/x86_64-linux/usr/bin/armv5te-angstrom-linux-gnueabi:/sc=
ratch/pp/pp-oe-2011-2/build/tmp-angstrom_2010_x-eglibc/sysroots/x86_64-linu=
x/usr/bin:/scratch/pp/pp-oe-2011-2/sources/bitbake/bin:/home/cbrake/bin:/us=
r/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/scrat=
ch/pp/pp-oe-2011-2/sources/openembedded-core/scripts";
/usr/bin/env wget -t 5 -q --passive-ftp --no-check-certificate -P
/scratch/pp/pp-oe-2011-2/sources/downloads
'http://www.yoctoproject.org/downloads/pseudo/pseudo-1.1.1.tar.bz2'
failed with signal 8, output:


On Thu, Oct 6, 2011 at 6:14 PM, Cliff Brake <cliff.brake@gmail.com> wrote:
> The following URI is not working for me:
>
> http://www.yoctoproject.org/downloads/pseudo
>
> Thanks,
> Cliff
>
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> http://bec-systems.com
>



--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
http://bec-systems.com

