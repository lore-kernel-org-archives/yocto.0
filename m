Return-Path: <w@tolkien.email>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93835E00566; Tue, 14 Aug 2018 10:29:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.70.40.27 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 347 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Aug 2018 10:29:47 PDT
Received: from mail4.protonmail.ch (mail4.protonmail.ch [185.70.40.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15497E0049F
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2018 10:29:47 -0700 (PDT)
Date: Tue, 14 Aug 2018 17:23:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tolkien.email;
	s=protonmail; t=1534267439;
	bh=KOhYp7hcgCNdt1PM250ilozkXAXCN4kyGe9Kg6n3wUE=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=M0hzREieU/68W9isQgfhXxKpXOZBGO1cPFNACw4pgplX5WUVvp17NzXD4H16LGkpd
	tIZUKfhBKB6mvD/hXTaW7rfvnKTm/xKgCtyIEgcpCrV7JumnBxGvR9D8XGfrgyRw6k
	YxXfKgGnmbyjJsz7UFtOxV+tFpcYuMdY0iSgAdeM=
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Wolfgang Tolkien <w@tolkien.email>
Message-ID: <mS53N569fcClyxgI3UBtt6uEVjgy0xehVx2O-uj8rDBcYewIzdYfU1i5a_LPyrp9LF_wPxqoK0Acu9_sltB6BEjvdL9x4CxiBxWCkXy7W1k=@tolkien.email>
Feedback-ID: ViJOJooDpCW9ZJDpR0_AgFeSbLYnIh1UKu2DLqxShSUVxesnK5QhckaNHn9X6OllezKyU4UDbY3NFvyzyU-gCg==:Ext:ProtonMail
MIME-Version: 1.0
Subject: Creating meta-ocaml layer - how to handle system-wide OCaml library manager?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Wolfgang Tolkien <w@tolkien.email>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2018 17:29:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I need some help and direction:

I've started working on a 'meta-ocaml' layer to add support for the OCaml l=
anguage to Yocto:

https://gitlab.com/wtolkien/meta-ocaml

However, many OCaml projects seem to rely on the 'findlib' library manager =
(http://projects.camlcity.org/projects/findlib.html) which keeps all inform=
ation in a fixed system-global path.

This seems to conflict with Yocto's sysroot concept. Also, 'findlib' handle=
s dependencies, which is obviously something Yocto would normally do.

What's the best way to handle this? Try to make do without findlib? Ideally=
 I'd like to end up with an 'ocaml.bbclass' file that just needs to be incl=
uded, but maybe that's not achievable?

For example, here is findlib's default directory setup when installing it o=
utside of Yocto:

About the OCAML core installation:
=C2=A0=C2=A0=C2=A0 Standard library:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/loc=
al/lib/ocaml
=C2=A0=C2=A0=C2=A0 Binaries:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/local/bin
The directory of site-specific packages will be
=C2=A0=C2=A0=C2=A0 site-lib:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/local/lib/ocaml/site-lib
The configuration file is written to:
=C2=A0=C2=A0=C2=A0 findlib config file:=C2=A0=C2=A0 /usr/local/etc/findlib.=
conf
Software will be installed:
=C2=A0=C2=A0=C2=A0 Libraries:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 in <site-lib>/findlib
=C2=A0=C2=A0=C2=A0 Binaries:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /usr/local/bin
=C2=A0=C2=A0=C2=A0 topfind script:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 /usr/local/lib/ocaml


With Yocto (this doesn't seem right...):

About the OCAML core installation:
    Standard library:      /opt/src/sumo/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/image/opt/src/sumo-test/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/recipe-sysroot-native/usr/lib
    Binaries:              /opt/src/sumo/build/tmp/work/x86_64-linux/findli=
b-native/1.8.0-r0/recipe-sysroot-native/usr/bin
The directory of site-specific packages will be
    site-lib:              /opt/src/sumo/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/image/opt/src/sumo-test/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/recipe-sysroot-native/usr/site-lib
The configuration file is written to:
    findlib config file:   /opt/src/sumo/build/tmp/work/x86_64-linux/findli=
b-native/1.8.0-r0/recipe-sysroot-native/usr/etc/findlib.conf
Software will be installed:
    Libraries:             in <site-lib>/findlib
    Binaries:              /opt/src/sumo/build/tmp/work/x86_64-linux/findli=
b-native/1.8.0-r0/recipe-sysroot-native/usr/bin
    topfind script:        /opt/src/sumo/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/image/opt/src/sumo-test/build/tmp/work/x86_64-linux/ocaml-=
native/4.03.0-r0/recipe-sysroot-native/usr/lib


Many thanks,
Wolfgang


