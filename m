Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3BD2E006C3
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 03:31:35 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id E45814AA6; Wed, 12 Dec 2012 11:31:34 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 70DF1436F;
	Wed, 12 Dec 2012 11:31:34 +0000 (GMT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Tim Coote <tim+yoctoproject.org@coote.org>
In-Reply-To: <CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
Date: Wed, 12 Dec 2012 11:31:30 +0000
Message-Id: <A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding package management
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 11:31:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks, Ross. That fixed that. Either I had finger trouble before when =
invoking rpm or I needed to remove the ? from the ?=3D in =
PACKAGE_CLASSES ?=3D "package_rpm"

Am I right in thinking that yum isn't in the standard recipes?

Tim
On 12 Dec 2012, at 11:18, "Burton, Ross" <ross.burton@intel.com> wrote:

> On 12 December 2012 11:13, Tim Coote <tim+yoctoproject.org@coote.org> =
wrote:
>> I'm trying to add package management to a yocto build. My preference =
would be yum/rpm on a rh/centos/fedora distro (as that's the distro used =
elsewhere), but I don't think that's feasible.
>>=20
>> I've added:
>> [code]
>> IMAGE_FEATURES +=3D "package-management"
>> IMAGE_INSTALL_append +=3D " apt perl"
>> [/code]
>=20
> Why are you adding apt when you said you wanted rpm?
>=20
> Just ensure IMAGE_FEATURES has package-mangement and set
> PACKAGE_CLASSES to "package_rpm".
>=20
> Ross


