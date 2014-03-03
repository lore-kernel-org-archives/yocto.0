Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85130E009BF
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 16:02:50 -0800 (PST)
Received: from [109.224.171.0] (port=32308
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WKGLJ-00063c-0K; Mon, 03 Mar 2014 00:02:49 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <99216291-F434-4282-BF02-B5815A13F313@keylevel.com>
Date: Mon, 3 Mar 2014 00:02:47 +0000
Message-Id: <3A728F19-FEF3-43E4-BC2A-CD7F5062DB73@keylevel.com>
References: <DB981723-A2BE-4924-8C87-91DC5E300380@keylevel.com>
	<D44F773C-8F8B-46EE-85FB-2BEA4E290BDA@gmail.com>
	<99216291-F434-4282-BF02-B5815A13F313@keylevel.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1874)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: QA issues when building gstreamer1.0 under 'danny'
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
X-List-Received-Date: Mon, 03 Mar 2014 00:02:50 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 2 Mar 2014, at 22:40, Chris Tapp <opensource@keylevel.com> wrote:

>=20
> On 2 Mar 2014, at 22:27, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>>=20
>> On Mar 2, 2014, at 2:17 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
>>=20
>>> What do I need to do to get these bits added to the image?
>>=20
>> well you need to add the files to appropriate packages. If packages =
don=92t exist
>> then add packages to PACKAGES variables and then FILES_<packagename> =
=3D =93${libdir}/<soname>=94
>> something on those lines=20
>=20
> Ok, but shouldn't this already be done by the gstreamer1.0 recipe(s)?

I've switched  to using the 'danny' branch of meta-gstreamer1.0 =
(https://github.com/dv1/meta-gstreamer1.0).

Seems to have done the trick ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




