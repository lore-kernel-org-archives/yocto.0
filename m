Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mail.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7441E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 09:42:07 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r4NGg3NI028226;
	Thu, 23 May 2013 09:42:03 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Thu, 23 May 2013 09:42:02 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 May 2013 09:42:02 -0700
Thread-Topic: [yocto] Problem with Python in pre-built SDK
Thread-Index: Ac5X1HLV3OP1OcBwQx22VIpGcp5SIA==
Message-ID: <481D2694-9ACC-4715-A64C-F6C5E13D33C5@spidercloud.com>
References: <C7D08B87-2D4D-4CBD-BC91-379B187C2AEE@spidercloud.com>
	<CAJTo0LY8Toagve-1A0JC7Qg_p5ptp6Q2SOgH3=_+CuxgPrrBzg@mail.gmail.com>
In-Reply-To: <CAJTo0LY8Toagve-1A0JC7Qg_p5ptp6Q2SOgH3=_+CuxgPrrBzg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python in pre-built SDK
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
X-List-Received-Date: Thu, 23 May 2013 16:42:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Thanks for responding.

On May 23, 2013, at 3:37 AM, "Burton, Ross" <ross.burton@intel.com> wrote:

> On 16 May 2013 22:53, Ben Warren <Ben.Warren@spidercloud.com> wrote:
>> I'm having other Yocto problems using the stock Ubuntu x86_64 toolchain,=
 so decided to install
>> one using the instructions in section 2.1.2 (Using a Cross-Toolchain Tar=
ball) of the "Yocto
>> Project Application Developer's Guide".
>=20
> What are these other problems?  Ubuntu should work fine as a host.
Other issues were mainly due to me working my way up the Yocto learning cur=
ve.  I'm now able to build a working image using Ubuntu's host tools.

That said, I'm looking at moving building away from Ubuntu and on to our co=
rporate build servers, which run CentOS 5.  Some of these are running a 32-=
bit OS and some a 64-bit one, and default Python has to be 2.4.  I've hacke=
d bitbake to use another Python installation, but don't want to rely on the=
 host compiler tools.  All of our existing targets (non-x86) use cross-buil=
ding tools which are self-contained.  I'd like to have something similar fo=
r this target since it's much easier to version control.  From the Yocto do=
cumentation, it looks like getting bitbake to make me an SDK is the answer.=
  Too bad it doesn't seem to be that easy :(=20
>=20
>=20
>> ImportError: No module named fcntl
>> =3D=3D=3D=3D=3D=3D=3D=3D
>>=20
>> So it looks like the Python included with the SDK is crippled or mis-con=
figured:
>=20
> Yeah, the Python we build is split up massively, so clearly the SDK is
> missing the packages that are needed to run bitbake.  But as I said,
> using our SDK to build is over-complicating things as Ubuntu should
> work fine.  What problems were you seeing?
>=20
> Ross

regards,
Ben=

