Return-Path: <madoga@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53EE6E00C94; Tue, 11 Dec 2018 10:21:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madoga[at]protonmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [185.70.40.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1187 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Dec 2018 10:21:57 PST
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
	[185.70.40.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFFCAE00BB7
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 10:21:57 -0800 (PST)
Date: Tue, 11 Dec 2018 16:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1544551329;
	bh=Oo9o5XRqrA74oMD6dx7xfRjH/4cQBU18qLl5jbjIZJo=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	Feedback-ID:From;
	b=WudzPpY/K+rGdGqWITtRLfYzfYMtHSC/pi4yJetopZtxK7mgk2GFJWKvpibYzHfsv
	/gNOcoGyk7lcQEws4Ru7Xvsc0q7DvHdizz6qqd+FD89nGFRfc52U30IJHgQS159iRu
	Q6fQvdj80qUDUyhs8Fzg3Qpf+j393tUGcofwdFLw=
To: Mark Hatle <mark.hatle@windriver.com>
From: madoga <madoga@protonmail.com>
Message-ID: <irVSgqSP9OMlHzsyuT1Qc3PpAXc0tNR2Hk3h2KsBqymJ_YwbpYcN5vMAmVtVzjnIS6Tj9IknIbyLjoHZHPT5Hc-VS1pcj9jSqnaUFwjfvHY=@protonmail.com>
In-Reply-To: <d3949cbc-5155-202d-8591-23319220b21e@windriver.com>
References: <T9S3hRvMw_5pENs_xGzABmQbU_6FXXTtPnPwIWfY9FWVlsXo7SN3XOQ58JyP9AVLVdsnZjYe_jRhCOSjR1NNXy4Q86fFWF-DM0c_oCCSvtk=@protonmail.com>
	<bb0bcf7f-7250-9f74-b191-d057496942e9@windriver.com>
	<gYPGW9AlaXI8UYYprw9Q8lCvlQx05jxnlgKFgK2gkrD07YPNUn4grABgAhEF98IhdVUjWq72DRZez0lSyNWiBRIL19NHEo57JUWSlhfKPS0=@protonmail.com>
	<d3949cbc-5155-202d-8591-23319220b21e@windriver.com>
Feedback-ID: 0hd8diSz-ERuYTTSeMaMs35R2I6XUlWHNfgIdkRMsU8awNem8isLl5bIfhU0ez-0XmRosu-bJlGUk1AAdiucNQ==:Ext:ProtonMail
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] FILESYSTEM_PERMS_TABLE / fs-perms.txt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: madoga <madoga@protonmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Dec 2018 18:21:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


On Monday, 10 de December de 2018 17:12, Mark Hatle <mark.hatle@windriver.c=
om> wrote:

> On 12/10/18 4:14 AM, madoga wrote:
>
> > > On 12/5/18 11:12 AM, madoga wrote:
> > >
> > > > Hello List,
> > > > I am trying to configure my entire filesystem by using FILESYSTEM_P=
ERMS_TABLES
> > > > variable pointing to my custom fs-perms.txt, but it does not work. =
While I
> > > > debugged package.bbclass looking for any error or failure, I found =
something
> > > > strange with os.chmod & os.lchown methods (at function fix_perms):
> > > >
> > > > Fix the permission, owner and group of path
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >
> > > > def fix_perms(path, mode, uid, gid, dir):
> > > > if mode and not os.path.islink(path):
> > > > #bb.note("Fixup Perms: chmod 0%o %s" % (mode, dir))
> > > > os.chmod(path, mode)
> > > >
> > > > -1 is a special value that means don't change the uid/gid
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >
> > > > if they are BOTH -1, don't bother to lchown
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >
> > > > if not (uid =3D=3D -1 and gid =3D=3D -1):
> > > > #bb.note("Fixup Perms: lchown %d:%d %s" % (uid, gid, dir))
> > > > os.lchown(path, uid, gid)
> > > > I have hardcoded mode variable to =E2=80=9C0333=E2=80=9D, just for =
testing: os.chmod(path,
> > > > 0o333)and I have seen that permissions were been configured into a =
=E2=80=9C0711=E2=80=9D. Also
> > > > I am going to ask about os.lchown, due to my filesystem is still be=
en owned by
> > > > my user and my group.
> > > > Does anyone have an idea about what is going on? Has somebody have =
the same
> > > > problem?
> > >
> > > The commands run under the pseudo environment. Pseudo captures these =
commands
> > > and stores them in a database it can 'replay' at any time.
> > > It only make them in the actual filesystem if permitted by the host.
> > > You must look at the filesystem results in the live system (running p=
seudo) or
> > > in the results of the build -- otherwise what you are looking at is n=
ot valid.
> > > (BTW this is the reason that the commended code was left in that func=
tion. In
> > > case something is wrong, just remove the comments and you'll get note=
s on what
> > > it is doing to help debug. This shouldn't be necessary unless you are
> > > developing the function itself.. but that is why they are there.)
> >
> > Thank you for your reply Mark!
>
> pseudo replaces fakeroot. Fakeroot can't capture some of the items that a=
re
> needed [and a few other reasons).
>
> > Does the pseudo environment allow to set the entire rootfs by using fak=
eroot? Perhaps this is not the right way to make it, I am not pretty sure a=
bout that. I would like to obtain my rfs with a concrete permissions when b=
itbake finishes, folders, executables... Is there another/better way to acc=
omplish?
>
> psuedo is just a LD_PRELOAD library that is connected to a database that
> captures permissions changes to files..
>

What do I need to use Yocto under a pseudo environment?
The problem I was describing before was without using LD_PRELOAD and LD_PRE=
FIX. Now, I have added both into my local.conf:

LD_PRELOAD =3D "/usr/lib/x86_64-linux-gnu/pseudo/libpseudo.so"
LD_PREFIX =3D "/usr/"

But BitBake doesn't like it and I cannot find to much information about thi=
s issue...

Thank you!
Mario


> > About debbuging bb.notes, I have already removed the comments and every=
thing seems working OK.
>
> This tells me that it's likely working properly and you are not in the ps=
eudo
> environment. You need to be in that loaded environment with the correct
> database attached to look at the set permissions. Any task in the system
> prefixed by 'fakeroot' will do this for you.
>
> --Mark
>
> > Best Regards,
> > Mario
> >
> > > --Mark
> > >
> > > > Thank you
> > > > Best Regards,
> > > > Mario



