Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F24CE007B8;
	Thu, 12 Dec 2013 10:45:32 -0800 (PST)
X-LoopCount0: from 10.170.28.41
X-IronPort-AV: E=Sophos;i="4.93,879,1378875600"; d="scan'208";a="356031882"
From: <Michael_E_Brown@Dell.com>
To: <michael@yoctoproject.org>, <yocto@yoctoproject.org>
Date: Thu, 12 Dec 2013 12:45:29 -0600
Thread-Topic: [yocto] Git clone over http broken on git.yoctoproject.org
Thread-Index: Ac7qwuPhca5xmfQCRC+m3mgElU7tGAMpqI+0
Message-ID: <DB6E482E89290547898851B8CC9D8110013217D962@AUSX7MCPS302.AMER.DELL.COM>
References: <DB6E482E89290547898851B8CC9D8110012F80E185@AUSX7MCPS302.AMER.DELL.COM>,
	<5294C950.2030509@yoctoproject.org>
In-Reply-To: <5294C950.2030509@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Git clone over http broken on git.yoctoproject.org
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
X-List-Received-Date: Thu, 12 Dec 2013 18:45:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm having the same issue now with:
    http://git.yoctoproject.org/git/meta-intel.git
    http://git.yoctoproject.org/git/meta-intel-contrib.git
    http://git.yoctoproject.org/git/poky.git

HOWEVER, if I use "https" instead of "http", it all WORKS OK. NOTE: Some re=
pos work over http, some don't. Working: meta-selinux, yocto-autobuilder, f=
or example.

Same configuration. Locally pulling http which is running over a CNTLM prox=
y and then through our corporate Microsoft Proxy.

Failures all look like:

git clone --mirror http://git.yoctoproject.org/git/poky.git
Initialized empty Git repository in /home/michael_e_brown/yocto/poky.git/
error: RPC failed; result=3D52, HTTP code =3D 100

Success looks like:

git clone --mirror https://git.yoctoproject.org/git/poky.git
Initialized empty Git repository in /home/michael_e_brown/yocto/poky.git/
remote: Counting objects: 215240, done.
remote: Compressing objects: 100% (54010/54010), done.
Receiving objects:  28% (60268/215240), 19.96 MiB | 818 KiB/s =20
  ... cut ...

--
Michael

________________________________________
From: Michael Halstead [mhalstead@linuxfoundation.org] On Behalf Of Michael=
 Halstead [michael@yoctoproject.org]
Sent: Tuesday, November 26, 2013 10:16 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] Git clone over http broken on git.yoctoproject.org

On 11/25/2013 01:32 PM, Michael_E_Brown@Dell.com wrote:
> Several repositories have broken git pulls over http on git.yoctoproject.=
org.
>
> Working:
>
> $ git clone --mirror http://git.yoctoproject.org/git/yocto-kernel-tools
> Initialized empty Git repository in /home/michael_e_brown/f10/sources/f/y=
octo-kernel-tools.git/
> remote: Counting objects: 1067, done.
> remote: Compressing objects: 100% (462/462), done.
> remote: Total 1067 (delta 711), reused 958 (delta 603)
> Receiving objects: 100% (1067/1067), 273.41 KiB | 251 KiB/s, done.
> Resolving deltas: 100% (711/711), done.
>
>
> Broken:
>
> $ git clone --mirror http://git.yoctoproject.org/git/linux-yocto-3.10
> Initialized empty Git repository in /home/michael_e_brown/f10/sources/f/l=
inux-yocto-3.10.git/
> error: RPC failed; result=3D52, HTTP code =3D 100
Failing with an HTTP continue code is sort of odd. I wonder if you are
going through a proxy which could be causing this issue only for larger
repos like the kernels. I think the content length header might be wrong
or undefined for large objects at the moment which could give certain
proxy software trouble. I've tried to correct those headers. Can you
test again?

I tested with git version 1.7.9.5 and no proxy and was able to clone all
the kernels.

Michael Halstead
Yocto Project / System Administrator


> All of the kernel pulls appear to be broken in the same way (3.10, 3.8, e=
tc)
>
> URLs taken directly from the cgit HTTP url listed.
> --
> Michael
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



