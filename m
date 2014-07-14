Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E2F6E0076F; Mon, 14 Jul 2014 06:33:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A44EAE0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 06:33:29 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ik5so7179476vcb.35
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 06:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:content-transfer-encoding;
	bh=ld3fTPO9+44NtrSD3NyuXuzu4y+U14rDreE7wF9yWW8=;
	b=HD44lOSPaPtxjYkrZfcB5KXNMNl23h2s75xNOMo4XvgLFdpys4Jn1LBJ0TD48auVde
	PV4n8CMKtyxrllvdC2U6vawHxkjMCscjqPoPriJy8fK1ZZEGmvl9LNyfiUqE347jkSV7
	OsOAoi24iGGTK7Ri6P2zErUwucNQGaV8ls1ZdQh/QtgFpkMob4YE8DRf9xuPSoX6x8lj
	SkfsodqVlcFXLV7QHOp6G0t6Z2q327SHj4AcTcz6xEwYF1u9xDkJ00hdTqx90jL8R76E
	lbLht2PXl6xXFpTZtLDAlNZOphWj41i+JSlPp8kCEhhMsHGXjmrYiDePuReotMdw6OKv
	6nig==
X-Received: by 10.52.232.200 with SMTP id tq8mr2479149vdc.32.1405344809368;
	Mon, 14 Jul 2014 06:33:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Mon, 14 Jul 2014 06:32:59 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 14 Jul 2014 09:32:59 -0400
Message-ID: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Make autotools use autogen.sh
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
X-List-Received-Date: Mon, 14 Jul 2014 13:33:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

First off, I have no expertise whatsoever autotools at all.  I know
they exist.  I know they make life simpler (somehow) for (some?)
people.  I shutter to think of ever trying to learn enough about how
they work to learn that they would make my life simpler.

But, I _do_ know how to run a shell script called "autogen.sh", if it
exists in a package I'm adding to my project.  And I have a project
that includes it;  and I do see that it runs all sorts of tools like
autoheader, automake, libtoolize, etc=E2=80=A6

One thing that it does run in the midst of all of that is "automake
--add-missing", which creates the INSTALL file for the package.

What is the best thing to do here=E2=80=A6
Should I inherit autotools and override do_configure with my own
version that just runs the (package supplied) autogen.sh?

Is there a way for autotools to run automake --add-missing?

Should I go figure out why the build fails in INSTALL doesn't exist?
(I'm going to start there, since my first two ideas haven't panned
out.  (Well, I haven't actually tried the first one yet, it just seems
silly to me to inherit autotools and then not use them.))

Should I try something else?

Thanks (as always) for any tips or pointers you might have.

--wpd

