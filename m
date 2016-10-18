Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42060E00D0C; Tue, 18 Oct 2016 05:41:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8EEE00D01
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 05:41:13 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp2-g21.free.fr (Postfix) with ESMTP id B50DF2000D2
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 14:41:12 +0200 (CEST)
Date: Tue, 18 Oct 2016 14:41:12 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: Yocto list discussion <yocto@yoctoproject.org>
Message-ID: <1132601620.150136748.1476794472685.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <CAHiDW_F+xxV35z+MMVHwb2Qvp_4+w69a41d9dtEgBT2atE-Psw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [89.225.253.195]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: Re: Using debian packages management
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
X-List-Received-Date: Tue, 18 Oct 2016 12:41:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Jussi, it solved my issue (more explanation below).


> From: "Jussi Kukkonen" <jussi.kukkonen@intel.com>

> I suspect this is related to meta-oe taking over some X
> initialization when you add it to bblayers -- this maybe exposes a
> bug in the deb packaging implementation. In any case I can say that
> a deb-based core-image-sato builds fine without meta-oe.

You were right...
With the bitbake-layers utility, I checked the "appends" but not
the "overlayed" (BTW, -overlaid- would be better!?). And meta-oe
provides a version 2.0 of xserver-nodm-init, which triggers some
problems with debian.


> Note that you may have to wipe TMPDIR after bblayers changes if
> you're testing this.

I didn't have to. I simply set PREFERRED_VERSION_xserver-nodm-init
to "1.0" and I got my image!

But this raises another comment: I added the whole meta-oe layer
for a single recipe (ttf-dejavu). And I inherited unwanted side
effects.

So what is the best practice?
- to copy/paste the recipe into a dedicated layer?
- to modify the conf/layer.conf of meta-oe to include a single folder?



> I have a bug on improving the X initialization mess in oe-core vs
> meta-oe ( https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5546 )
> but please file one on the debian packaging issue if it does not
> exist yet.

I just read your bug report=E2=80=A6 and this problem is quite old.
Before it gets corrected in 2.3, it could be helpful to put a note
in the different Yocto manuals, to draw attention of newcomers to
this rather frequent problem.



@Khem Raj: I realized my answer was maybe a bit harsh and I want
to apologize.  This was just an amused comment that every time I
try something described in the manuals, this fails miserably. And
every time, I have the feeling that my config is close to the
default one. But the goal of Yocto is highly ambitious and it
implies knowledge in many Linux fields!


Michel

