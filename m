Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC87CE007AA; Mon, 22 May 2017 17:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.44 listed in list.dnswl.org]
Received: from resqmta-ch2-12v.sys.comcast.net
	(resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A934E00524
	for <yocto@yoctoproject.org>; Mon, 22 May 2017 17:16:46 -0700 (PDT)
Received: from resomta-ch2-02v.sys.comcast.net ([69.252.207.98])
	by resqmta-ch2-12v.sys.comcast.net with SMTP
	id CxUudpYPmdlFQCxVFd9jDy; Tue, 23 May 2017 00:16:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1495498605;
	bh=vWUQXGhzhBGv3gh5q1ZXNzWc5PJN2U/vR8VwfFWOdck=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=Bx10SMTBtPZPvd/PsDQNTYAZ9hmetBNNfDPBnhG9pkDAjLS1LnIkjgC6vrpUOAkgE
	ytz+ptu24p4YvpQloGyyuv/+Eu0gm7JamE4TOhcwQbzVrY0ZjRdbOJ8nogm014mlpy
	+93A53eU94IwzHAe5d1pjeuTVpz88DvGjhenGW2dO1zokxPa1JforB64LDJbUd7vdV
	GNmT6Lv3fuTndpGLqIvpvH33dVmju8xLGDDPsDB3jFDnV+5AtfKE4HLW/3jx6Kuvx7
	rOvvYSh2pnFd1sigtjHvEPeWFoMdTxuiKZrUv0EP6wl0OeWo998YKLqpHw5iSkk5HX
	mjrVFwoe7lA0g==
Received: from [IPv6:2601:18f:800:acc1::cc14] ([IPv6:2601:18f:800:acc1::cc14])
	by resomta-ch2-02v.sys.comcast.net with SMTP
	id CxVEdEbGLgFBHCxVEdYPEA; Tue, 23 May 2017 00:16:45 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <151909c6-8fb5-e6b7-6695-6a1bfed1b0af@linux.intel.com>
Date: Mon, 22 May 2017 20:16:44 -0400
Message-Id: <E5A9D4EF-FB89-4A78-B78E-997BDECD307A@comcast.net>
References: <3222F3C5-34FC-4373-B40F-5AA8EF9C904E@comcast.net>
	<151909c6-8fb5-e6b7-6695-6a1bfed1b0af@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfBRoG+/1EzAnFX3qL0rWCpY6/Q0X0blS6iJmNJaGhZER4SaLoRk/PQ2qkM/5sbubehCiaIqwT9luc3aLYJWAFW/HX9cL4SJeg5Wy2ISllGW6auNoLM41
	SyUFJpJq0LuhZPIcbQOhYryYGwzSJJTdQPxMETecguOPKjvfG0HMYyr49eyFL6JqqM266eLP/wD5vKpDj8hO1aCLCeg7NJctF7Zt5lzpOIhHVNllU5AAJ3yX
Cc: yocto@yoctoproject.org
Subject: Re: unmodified binary RPM installed on rootfs?
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
X-List-Received-Date: Tue, 23 May 2017 00:16:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks for the response, Alex.

I took your advice and have a fairly simple recipe working now.  =
Basically it unpacks the binary rpm and then reforms a new rpm.  Seems =
to work fairly well but I have yet to fully test it.  I do like this =
solution in that the rpm dependencies are checked which is nice (I was =
using =E2=80=94nodeps previously).

Of course, I decided to go for the gold and attempt to get this recipe =
to handle a binary .tgz file that contains itself multiple rpm files =
(one is binary, the other is a source rpm for the kernel modules).  I =
added a do_unpack_extra function to do an rpm2cpio | cpio operation on =
the binary rpm=E2=80=A6 and now see cpio malformed errors.  My guess is =
the rpm uses compression=E2=80=A6 but shouldn=E2=80=99t the rpm2cpio =
handle that??

Thanks again for the advice.

Russell


> On May 22, 2017, at 8:59 AM, Alexander Kanavin =
<alexander.kanavin@linux.intel.com> wrote:
>=20
> On 05/22/2017 02:43 AM, Russell Peterson wrote:
>> I am fairly new to yocto and I think I=E2=80=99m having trouble =
installing an
>> RPM on the rootfs. What I am trying to do is install an arm64 binary =
RPM
>> file straight onto the root file system without a recipe=E2=80=A6 =
just use the
>> native rpm tool to put it there.  There are several reasons why I=E2=80=
=99m
>> experimenting with this.  Seems fairly simple but I have now been
>> messing around for days with little to show for it.  Here is what =
I=E2=80=99m doing=E2=80=A6
>=20
> Yocto does not currently support installing 3rd party RPMs. Even if it =
would install, whatever contents it has would very likely not work due =
to mismatches between the environment where the rpm was built and the =
environment where you are installing it. And --nodeps would only make =
the problem worse.
>=20
> You have to write a recipe.
>=20
>=20
> Alex
>=20


