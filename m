Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91FB8E00DE5; Thu,  8 Feb 2018 16:25:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.252.207.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-02v.sys.comcast.net
	(resqmta-ch2-02v.sys.comcast.net [69.252.207.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF43E00D5F
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 16:25:18 -0800 (PST)
Received: from resomta-ch2-13v.sys.comcast.net ([69.252.207.109])
	by resqmta-ch2-02v.sys.comcast.net with ESMTP
	id jwVBeaNvkve36jwVCecARF; Fri, 09 Feb 2018 00:25:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1518135918;
	bh=iQNT+rV90ynhP1z0uSTqIWGuiImgi0dn8nog8Eh40Qs=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=Z3ToqWp8vBKErwjDwxOSqv7pNeyUb4dfwc8ruSxRxRVCsuuzyPC6/5XcnsgyOuiA8
	4Zge2CCE95cTcKHOPb9vs817ElkWzHbK6uUADIIgSegRA3NMmCPOyky1mIiHaTIemX
	rdMxlGpKx7sUSUkGAJr9B6WwhxLEit9Ui2+o6h5I5RqARvzb6HL4QfwP0gngII/O0k
	WTehg/lqekoBUOlF9DzStFsVezH+OSBFSyoe7OPECjupIZYi2xvhruqeA8PKltVQAs
	eYyuUUjhk63cqePOHjYeDDWqXLV5V05sVJaWsVBSfQdrZ1TbQJD3pHl54Ay22Hejco
	jBdYJNaZRiThA==
Received: from [IPv6:2601:18f:880:9aeb:707f:8a83:efda:d7db]
	([IPv6:2601:18f:880:9aeb:707f:8a83:efda:d7db])
	by resomta-ch2-13v.sys.comcast.net with SMTP
	id jwVAeUNPhXtXFjwVBeIshn; Fri, 09 Feb 2018 00:25:17 +0000
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
From: Russell Peterson <bluehills7@comcast.net>
In-Reply-To: <5c999223-a181-fbb1-17fd-3e0dc81096dc@linux.intel.com>
Date: Thu, 8 Feb 2018 19:25:15 -0500
Message-Id: <6E6DB1C2-21E3-416A-A1C3-D29924FB13F1@comcast.net>
References: <1B4071C2-44F7-452F-A62A-EF163C7231BE@comcast.net>
	<5c999223-a181-fbb1-17fd-3e0dc81096dc@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
X-Mailer: Apple Mail (2.3445.5.20)
X-CMAE-Envelope: MS4wfMiblEIoNeAra8ERrKkqrmYnSqk8izu+n0EoiobIK6wvifC5YZSJkJkRd9WkjIEJ8NGBpZop6sZuRYbo0je2SaO+bKrHfhRGT/mOzhvy9Zlhvtj4xPf9
	nWtltqx3aY1FqkBWgcb7dCxWVtj4Yq/4NlCTxFCfKHfBlIZvjwhP9uQTDQRn8vgea9vZ5ebO0faZwM++hJ87zk+C5b8jsqhTMOMxfvwpOeQvFN0CPqOtfET3
	r+gAITsGmjeos3D18BIOWg==
Cc: yocto@yoctoproject.org
Subject: Re: dnf error
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
X-List-Received-Date: Fri, 09 Feb 2018 00:25:19 -0000
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks, Alex.  That was indeed the problem.

For those searching for answers to similar issues I will add what my =
particular issue was.

The package I was adding had python scripts in it.  The make process for =
the package used the python distutils.core setup function.  I didn=E2=80=99=
t write the code=E2=80=A6 I=E2=80=99m just creating a recipe for it.  =
This in turn copies the scripts to various locations but in the process =
of doing that modifies the #! at the start of the script to use the =
hosttools path to python.  Not very cross-build friendly.  I simply =
patched the makefile to use the =E2=80=94executable=3D/usr/bin/python =
argument.  All this does is prevent the #! modification.  Builds fine =
now.  Bit of a hack but I will speak with the developers to create a bit =
more cross build friendly options.

Appreciate the help, Alex.

Regards,

Russell


> On Feb 8, 2018, at 1:26 AM, Alexander Kanavin =
<alexander.kanavin@linux.intel.com> wrote:
>=20
> On 02/08/2018 03:17 AM, Russell Peterson wrote:
>> core-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf
>> Last metadata expiration check: 0:00:00 ago on Thu 08 Feb 2018 =
12:07:06 AM UTC.
>> Error:
>>  Problem: conflicting requests
>>   - nothing provides <xxxxxxx>/hosttools/python needed by =
ofa-kernel-4.2-r0.mymachine
>> ERROR: core-image-initramfs-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>=20
>=20
> Something in ofa-kernel rpm package is erroneously referring to =
.../hosttools/python. Rpm takes that as a dependency that must be =
satisfied.
>=20
> Find out what it is and how it happens.
>=20
> Alex


