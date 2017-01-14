Return-Path: <roger@sentientblue.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 853FEE00655; Sat, 14 Jan 2017 11:45:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [109.224.233.103 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from pamail.gradwell.com (linmainlb.pa.thw.gradwell.net
	[109.224.233.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9327E004E5
	for <yocto@yoctoproject.org>; Sat, 14 Jan 2017 11:45:47 -0800 (PST)
Received: (qmail 18598 invoked from network); 14 Jan 2017 19:45:45 -0000
Received: from unknown (HELO ?10.0.1.192?)
	(roger@sentientblue.com@[73.231.167.180])
	by 192.168.50.232 with ESMTPSA (DHE-RSA-AES256-SHA encrypted,
	authenticated); 14 Jan 2017 19:45:44 -0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Roger Smith <roger@sentientblue.com>
In-Reply-To: <23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
Date: Sat, 14 Jan 2017 11:45:42 -0800
Message-Id: <656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
	<a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
	<23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
To: Clemens Lang <Clemens.Lang@bmw-carit.de>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Sat, 14 Jan 2017 19:45:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Jan 13, 2017, at 12:50 AM, Clemens Lang <Clemens.Lang@bmw-carit.de> =
wrote:
>=20
> Hi,
>=20
>=20
>> On 12 Jan 2017, at 23:59, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>>=20
>> As far as I know pseudo and the security introduced in 10.11 that =
affect
>> preloading is likely the biggest technical problem...  everything =
else is just
>> "it's not Linux=E2=80=9D.
>=20
> With System Integrity Protection disabled, pseudo should still work as =
it did before, if that=E2=80=99s an acceptable step for you.
>=20
> If it isn=E2=80=99t, Apple=E2=80=99s new limitations can also be =
worked around in pseudo by hooking the exec(2) and posix_spawn(2) =
syscalls, checking if the binary to be executed is under system =
integrity protection, making a copy without the SIP-bit if it is and =
transparently running that copy instead. That code would need to be =
written, though (Let me know if you want to do that, I have the code for =
a different project.). It=E2=80=99s probably only a matter of time until =
Apple prevents that from working, too, though, e.g. by making some =
standard system tools signed binaries that no longer load preloaded =
libraries.
>=20
>=20


This topic could have been clarified better, since there are multiple =
ways to =E2=80=9Cbuild=E2=80=9D Yocto Project in  MacOS X,

Is Building Yocto project on a POSIX system, a desire for the Yocto =
project? It would allow support on all bsd UNIX=E2=80=99s including =
macOS


There are many teams inside Apple that use Linux systems for one reason =
or another. They would appreciate  building open source tools out the =
door without some other additional overhead..=20

Replacing a platforms POSIX version of tools with gnu versions  because =
your build environment didn=E2=80=99t like it, seems like a step =
backwards for these types of initiatives.=20

Curious to know about long term support for POSIX systems.=20

Apple spent alot of time and effor years ago to vertify OS X as POSIX =
compliant.

Roger


