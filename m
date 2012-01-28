Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B67BE00599
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 15:25:38 -0800 (PST)
Received: by pbcc11 with SMTP id c11so3381660pbc.35
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 15:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=EsumZI1m0i9XZUA+BGNyYpay1CwMy4uZUdxrFv/3CZ0=;
	b=oY+bg9eS6VIwAQ5hOqNmcOMEtENHO5mQcIm5L9iehqcQQyhEvnOkGb0hUeTOuPb3Fw
	pqdg/FFklQONPGkv2uHUosZPZA3760y0kQNzU9snAywmih3zmn0PCKQAAKjDpehoNaD5
	nHdeLPn3DCHEKWrrVYc+Uchzv7oAKhrJAIq80=
MIME-Version: 1.0
Received: by 10.68.189.69 with SMTP id gg5mr27035158pbc.41.1327793133883; Sat,
	28 Jan 2012 15:25:33 -0800 (PST)
Received: by 10.143.77.17 with HTTP; Sat, 28 Jan 2012 15:25:33 -0800 (PST)
In-Reply-To: <1AECC3C0-6BFC-4584-B201-30122DB2229D@gmail.com>
References: <1AECC3C0-6BFC-4584-B201-30122DB2229D@gmail.com>
Date: Sat, 28 Jan 2012 18:25:33 -0500
Message-ID: <CADkTA4Mc7cLnF3g7G1DyHqBfuveVPpaybs=2aTRB61TSRDeomQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Understanding the git commits for Yocto and meta
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
X-List-Received-Date: Sat, 28 Jan 2012 23:25:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 28, 2012 at 9:51 AM, James Abernathy <jfabernathy@gmail.com> wr=
ote:
> While I've read enough to think I understand git, I get confused when it'=
s
> applied to real situations like Yocto. =A0If I look at the Yocto Developm=
ent
> Manual, Appendix A, A.5.2.4 Changing Recipes-kernel,=A0It brings up some
> questions.
>
> 1. The way I see it, when you guys commit something to the linux yocto
> master or meta there is a commit string associated with that commit. =A0N=
ot to
> any certain branch of the git repository, right?

I'm not following your terminology. There's a git has that is used to
update the SRCREVs
for bitbake, but that hash is always on the meta branch. Bitbake likes
git hashes, but the
kernel build infrastructure talks branches .. since humans can
remember branches, but
not git hashes.

>
> 2. =A0So if I'm building an image for atom-pc using Edison branch, the fi=
rst
> SRCREV I'm interested in is=A0yocto/standard/common-pc/atom-pc branch. =
=A0But
> the commits I see at
>
> =A0http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3D=
yocto/standard/common-pc/atom-pc
>
> are commits not associated with Edison, but Master, right?

They are all just commits on the board branch. edison has a snapshot
in time the SRCREV
that is used. Master marches on, but the commits that were current in
the timeframe of edison,
will always be there.

>
> 3. =A0How do I find the commit string for a particular branch, like Ediso=
n,
> for something like yocto/standard/common-pc/atom-pc?

I'm not following the terminology again. Maybe if you describe what
you are trying to
achieve ? git will tell you what branch has any commit .. just use git
branch --contains <hash>

>
> 4. =A0To me, branches are things like Edison, Bernard, etc. =A0But on the=
 page:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/refs/heads?h=3D=
yocto/standard/common-pc/atom-pc
>
> yocto/standard/common-pc/atom-pc, master, and meta are all listed as
> branches. =A0What is the difference??

edison and bernard are yocto branches. The kernel is a separate
repository and can actually be
used standalone (which I do). It has branches for it's meta data and
to isolate board changes.
A particular kernel repository is referenced by the yocto kernel
recipes. They are what follow the
yocto branches .. not the kernel itself.

>
> 5. =A0The second SRCREV seems to be associated with meta. =A0How does tha=
t
> relate to my whole confusion on branches.

A board build is composed of two things the meta data (configuration,
patches) that
describe the BSP and the actual code changes (the board branch).

>
> 6. =A0To me, if you are working with Edison and a particular BSP, then th=
ese 2
> commit strings should be constant forever, right?

Yes, for the official / known BSP. If you do local work, you can of
course have your
own tree and advance both.

Cheers,

Bruce

>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

