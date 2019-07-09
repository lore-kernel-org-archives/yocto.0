Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B1DE00D3A; Tue,  9 Jul 2019 02:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3465FE00CF4
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 02:02:43 -0700 (PDT)
Received: by mail-qt1-f194.google.com with SMTP id a15so20848242qtn.7
	for <yocto@yoctoproject.org>; Tue, 09 Jul 2019 02:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=prm5y77wk+fGgbGZRXl4wZTrPgpAMCy37vzAwiEoiaA=;
	b=kQr3EtsrJ/B6e+WIN0eahZgpr4DuyWBUu0Bj3qYGWQUoNZjDVGXcKD4zgJC6vW0UbM
	TOyVhi6vtbegEAksfVM5JPoHOoBagXLm37qpyKmDKGpH273XcyHLkl9FKmBpGpKN2H/J
	Rvf7Wp5UEYT4r6T4tWC65LnRB7n4LpTB/L7+0V4vUfsRxC4FMxu+gzIJuYbR8IkgW7Gi
	db2YYCg6r4qBlTdbgijLzUEfEINae3BDtCHrHT5rILeTdjhqvpXuZEdNsyLVFPx9X3gZ
	og+Zn6MF51Uliwulx5hz/3alGmKRw6BVaHxj9ivvzqnjrW2uqolW2GW2ZOe4F06LamRB
	vfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=prm5y77wk+fGgbGZRXl4wZTrPgpAMCy37vzAwiEoiaA=;
	b=T40hHj7BvdJBAZxaIB8Zr1T8BQftczEM6pYRNFVcYhBcpdxAMHoHww/M6/Q+NdgwVk
	q/bnoygXIZpbx5ubM361X0gDrJrhs2YTvMK3lKZPeTLKXNKqqbYDFF5MVfzzTcx73mUb
	cOli8WIdruzAr028rplxX/2yll74kcHav1MhkUQR72sQ4toRVbta8G1UbcUTFBCxEjvB
	cy41WzARshD+B8NWEk0VRdlccAqaJx5NAMUJYRsiyGzihLPFMe3821BjFvaAkSfv06jN
	DJPo0jTf8kb69yywd+YSyawlZSQLXfog6JsbD0wt4l407E3im8I8IVlPdmGeMIrDGzrB
	fEeA==
X-Gm-Message-State: APjAAAU7PwjfVUfarnQFw//JkYjNwH0nkKxFmPwi6g3LPFq64x+iISJO
	NyyICsr/EMCjkhVhq4e4FOMbcBmGPvmkvnmiowLrXzxHPRk=
X-Google-Smtp-Source: APXvYqzxXS5VaweU/w3M+DYT8P0YzHsWwvkTQPmjXbbn3usOxl2+zV+rIrrLLUKp2L0Y7f1DaQhS9/3yfYQfVxMHf1Y=
X-Received: by 2002:a0c:96e7:: with SMTP id b36mr18427295qvd.155.1562662962816;
	Tue, 09 Jul 2019 02:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+Ob8ZcYRYaFcyFopckNiTMR8ZTJW5vcM1cO+DZM7-0aR3+rA@mail.gmail.com>
	<CAGAf8LzyVbxJ--aDihMZyokOo+Sn18s=4vQvX91Y5jBpvbc_Bg@mail.gmail.com>
	<CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
In-Reply-To: <CAG+Ob8YYxVf4d9LEjL5Z9KEm3zP4xBMHr-H46rqumXOLLJAZyA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 9 Jul 2019 11:02:31 +0200
Message-ID: <CAGAf8Lx0gUQorBVBGUCURDXW6JexowXTWsfAcdu+DMxTRrb2vQ@mail.gmail.com>
To: Onur Eser <onureser12@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Meta-Qt5] "Unknown Module: declarative" Error While Creating Toolchain
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
X-List-Received-Date: Tue, 09 Jul 2019 09:02:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Onur,

I am not subject matter expert in Qt layers... Here is what I found
while searching for an answer to the problem...

Here is the .bb causing to you problems:
https://github.com/meta-qt5/meta-qt5/blob/sumo/recipes-qt/qt5/qtquick1_git.=
bb

It is sumo branch. I noted that thud branch does NOT have this .bb (it
is rearranged, and this .bb removed).

meta-qt5 has there for thud: qtquickcontrols_git.bb and
qtquickcontrols2_git.bb (for 5.11.3 version).

Kludge: maybe you can try to build the whole thing using thud branch?!

Hope this hepls,
Zoran
_______

On Tue, Jul 9, 2019 at 10:38 AM Onur Eser <onureser12@gmail.com> wrote:
>
> Hello Zoran!
> Thank you for your answer, but that page is about the missing packages in=
 your configuration. There is no a missing dependency in my configuration. =
The recipe "qtdeclarative" is already added.
>
> Note: Sending again because sent as PM accidentally.
> Thanks anyway!
> Onur
>
> Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, 9 Tem 2019 Sal, 10:5=
9 tarihinde =C5=9Funu yazd=C4=B1:
>>
>> Maybe this:
>> https://www.technexion.com/support/knowledgebase/resolving-dependencies-=
issues-in-yocto/
>>
>> Zoran
>> _______
>>
>> On Tue, Jul 9, 2019 at 7:59 AM Onur Eser <onureser12@gmail.com> wrote:
>> >
>> > Hello All,
>> >
>> > I have talked to my BSP provider and they have solved the conflict fil=
es issue with an update. Now I am able to create and boot a Yocto Image wit=
h Meta-Qt5 recipes and 'dev_pkgs' in it. But still cannot create a toolchai=
n. Nor with I guess it is trying to compile something before qtdeclarative,=
 but these 'something' depends on qtdeclarative.
>> >
>> > My image is core image is Weston. I added the line 'inherit populate_s=
dk_qt5' to my core-image-weston.bb file. And tried both commands 'bitbake m=
eta-toolchain-qt5' and 'bitbake -c populate_sdk core-image-weston'. The res=
ult is the same.
>> >
>> > I cut just the error part of my output:
>> >
>> > | cd qdeclarativefolderlistmodel/ && ( test -e Makefile || /home/closx=
/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+git=
AUTOINC+b2476dcd53-r0/recipe-sysroot-native/usr/bin/qt5/qmake -o Makefile /=
home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquick1/=
5.10.1+gitAUTOINC+b2476dcd53-r0/git/tests/auto/declarative/qdeclarativefold=
erlistmodel/qdeclarativefolderlistmodel.pro ) && make -f Makefile
>> > | Project ERROR: Unknown module(s) in QT: declarative widgets
>> > | Makefile:88: recipe for target 'sub-qdeclarativecomponent-make_first=
' failed
>> > | make[2]: *** [sub-qdeclarativecomponent-make_first] Error 3
>> > | make[2]: *** Waiting for unfinished jobs....
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:113: recipe for target 'sub-qdeclarativecontext-make_first'=
 failed
>> > | make[2]: *** [sub-qdeclarativecontext-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:138: recipe for target 'sub-qdeclarativeengine-make_first' =
failed
>> > | make[2]: *** [sub-qdeclarativeengine-make_first] Error 3
>> > | Makefile:63: recipe for target 'sub-parserstress-make_first' failed
>> > | make[2]: *** [sub-parserstress-make_first] Error 3
>> > | make[2]: Entering directory '/home/closx/poky/build/tmp/work/cortexa=
9hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/=
tests/manual/declarative'
>> > | make[2]: Nothing to be done for 'first'.
>> > | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/manual/declarative'
>> > | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/manual'
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:163: recipe for target 'sub-qdeclarativeerror-make_first' f=
ailed
>> > | make[2]: *** [sub-qdeclarativeerror-make_first] Error 3
>> > | Project ERROR: Unknown module(s) in QT: declarative
>> > | Makefile:188: recipe for target 'sub-qdeclarativefolderlistmodel-mak=
e_first' failed
>> > | make[2]: *** [sub-qdeclarativefolderlistmodel-make_first] Error 3
>> > | make[2]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/auto/declarative'
>> > | Makefile:45: recipe for target 'sub-declarative-make_first' failed
>> > | make[1]: *** [sub-declarative-make_first] Error 2
>> > | make[1]: Leaving directory '/home/closx/poky/build/tmp/work/cortexa9=
hf-neon-poky-linux-gnueabi/qtquick1/5.10.1+gitAUTOINC+b2476dcd53-r0/build/t=
ests/auto'
>> > | Makefile:45: recipe for target 'sub-auto-make_first' failed
>> > | make: *** [sub-auto-make_first] Error 2
>> > | ERROR: oe_runmake failed
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_compile_ptest_base (log file is located a=
t /home/closx/poky/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/qtquic=
k1/5.10.1+gitAUTOINC+b2476dcd53-r0/temp/log.do_compile_ptest_base.29566)
>> > ERROR: Task (/home/closx/poky/meta-qt5/recipes-qt/qt5/qtquick1_git.bb:=
do_compile_ptest_base) failed with exit code '1'
>> >
>> > What do you guys think the reason of this issue may be? Any solution o=
ffers?
>> >
>> > My full output:
>> > https://paste.ee/p/PupWr#Epvqnw9FoasgQEBhIXqQ8hH7veMcRybX
>> >
>> > Another source issue again?
>> > Have a lovely day!
>> > Onur
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

