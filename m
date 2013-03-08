Return-Path: <eric@eukrea.com>
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB8BFE003AB
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 10:12:25 -0800 (PST)
Received: from e6520eb (pac33-2-82-240-38-71.fbx.proxad.net [82.240.38.71])
	(Authenticated sender: eukrea)
	by smtp2-g21.free.fr (Postfix) with ESMTPSA id 5E18A4B00BF;
	Fri,  8 Mar 2013 19:12:17 +0100 (CET)
Date: Fri, 8 Mar 2013 19:12:13 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: Hans =?UTF-8?B?QmVja8OpcnVz?= <hans.beckerus@gmail.com>
Message-ID: <20130308191213.102258ca@e6520eb>
In-Reply-To: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Fri, 08 Mar 2013 18:12:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Hans,

Le Fri, 8 Mar 2013 13:08:21 +0100,
Hans Beck=C3=A9rus <hans.beckerus@gmail.com> a =C3=A9crit :

> Hi. I have built some custom kernel modules (.ko) using a .bb that
> inherits from the module.bbclass. There is one main kernel module and
> the rest are dependent on the first. Building and installing the
> modules to the rootfs works fine. Next question is how do I control
> what actual modules are loaded at boot, or actually how do I control
> this through Yocto? To my surprise one of the kernel module loaded
> automatically!? How could this happen? I did not have an entry for it
> in /etc/modules. And what do I need to do to actually add entries to
> /etc/modules? Or is there some other mechanism that I should use. I
> tried going through the module.bbclass but must admit I lost it
> somewhere in the middle ;) Any guidance would be appreciated.
>=20
when the module is built by the kernel recipe you can use :
module_autoload and you can see somme usage examples here :
http://cgit.openembedded.org/meta-handheld/tree/conf/machine/palmtx.conf
http://cgit.openembedded.org/meta-handheld/tree/conf/machine/include/palm.i=
nc

maybe you could get inspiration from kernel.bbclass to do the same
thing in your recipe.

Eric

