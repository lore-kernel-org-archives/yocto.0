Return-Path: <madoga@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF54E00C89; Mon, 10 Dec 2018 02:23:34 -0800 (PST)
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
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [185.70.40.135 listed in list.dnswl.org]
Received: from mail-40135.protonmail.ch (mail-40135.protonmail.ch
	[185.70.40.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C13E00C7D
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 02:23:29 -0800 (PST)
Date: Mon, 10 Dec 2018 10:14:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1544436854;
	bh=1tu9MwtePfWEdl1fDt8KPOwiS6Kx++aIc+2O5wchqVo=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	Feedback-ID:From;
	b=FVTOUlJGU7+VHTuZ7YsR3gdmB9pgxFZgp72YQax2vbVpPrxruCc9bgioXE0TzVLSb
	Edoxp5/1YGdmPPQaXufqF1I19wEk84OwCfkCEhS3k852S0IJkuPI5sRgCqc0TaMFtM
	FWZfkjSpMpgX9x8REs4r/U9UzL4u2ppUOa3B6bL8=
To: Mark Hatle <mark.hatle@windriver.com>
From: madoga <madoga@protonmail.com>
Message-ID: <gYPGW9AlaXI8UYYprw9Q8lCvlQx05jxnlgKFgK2gkrD07YPNUn4grABgAhEF98IhdVUjWq72DRZez0lSyNWiBRIL19NHEo57JUWSlhfKPS0=@protonmail.com>
In-Reply-To: <bb0bcf7f-7250-9f74-b191-d057496942e9@windriver.com>
References: <T9S3hRvMw_5pENs_xGzABmQbU_6FXXTtPnPwIWfY9FWVlsXo7SN3XOQ58JyP9AVLVdsnZjYe_jRhCOSjR1NNXy4Q86fFWF-DM0c_oCCSvtk=@protonmail.com>
	<bb0bcf7f-7250-9f74-b191-d057496942e9@windriver.com>
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
X-List-Received-Date: Mon, 10 Dec 2018 10:23:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> On 12/5/18 11:12 AM, madoga wrote:
>
> > Hello List,
> > I am trying to configure my entire filesystem by using FILESYSTEM_PERMS=
_TABLES
> > variable pointing to my custom fs-perms.txt, but it does not work. Whil=
e I
> > debugged package.bbclass looking for any error or failure, I found some=
thing
> > strange with os.chmod & os.lchown methods (at function fix_perms):
> > # Fix the permission, owner and group of path
> > def fix_perms(path, mode, uid, gid, dir):
> > if mode and not os.path.islink(path):
> > #bb.note("Fixup Perms: chmod 0%o %s" % (mode, dir))
> > os.chmod(path, mode)
> > # -1 is a special value that means don't change the uid/gid
> > # if they are BOTH -1, don't bother to lchown
> > if not (uid =3D=3D -1 and gid =3D=3D -1):
> > #bb.note("Fixup Perms: lchown %d:%d %s" % (uid, gid, dir))
> > os.lchown(path, uid, gid)
> > I have hardcoded mode variable to =E2=80=9C0333=E2=80=9D, just for test=
ing: os.chmod(path,
> > 0o333)and I have seen that permissions were been configured into a =
=E2=80=9C0711=E2=80=9D. Also
> > I am going to ask about os.lchown, due to my filesystem is still been o=
wned by
> > my user and my group.
> > Does anyone have an idea about what is going on? Has somebody have the =
same
> > problem?
>
> The commands run under the pseudo environment. Pseudo captures these comm=
ands
> and stores them in a database it can 'replay' at any time.
>
> It only make them in the actual filesystem if permitted by the host.
>
> You must look at the filesystem results in the live system (running pseud=
o) or
> in the results of the build -- otherwise what you are looking at is not v=
alid.
>
> (BTW this is the reason that the commended code was left in that function=
. In
> case something is wrong, just remove the comments and you'll get notes on=
 what
> it is doing to help debug. This shouldn't be necessary unless you are
> developing the function itself.. but that is why they are there.)
>

Thank you for your reply Mark!
Does the pseudo environment allow to set the entire rootfs by using fakeroo=
t? Perhaps this is not the right way to make it, I am not pretty sure about=
 that. I would like to obtain my rfs with a concrete permissions when bitba=
ke finishes, folders, executables... Is there another/better way to accompl=
ish?

About debbuging bb.notes, I have already removed the comments and everythin=
g seems working OK.

Best Regards,
Mario

> --Mark
>
> > Thank you
> > Best Regards,
> > Mario



