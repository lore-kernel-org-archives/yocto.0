Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DDDDE00770
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 04:07:59 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id 6174E4AA4; Wed, 12 Dec 2012 12:07:58 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id E2ACE4AA4;
	Wed, 12 Dec 2012 12:07:57 +0000 (GMT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Tim Coote <tim+yoctoproject.org@coote.org>
In-Reply-To: <CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
Date: Wed, 12 Dec 2012 12:07:53 +0000
Message-Id: <2D72F639-44DB-41E5-A1E0-223072FC1AA3@coote.org>
References: <C56AD576-BC63-4357-A090-C0DA3D5398C1@coote.org>
	<CAJTo0LZPSPeKkTcDQ+F_i8w=wUvNxEQeU7T6x4g5aE4cPz4G+w@mail.gmail.com>
	<A994F48C-F169-4B59-9706-891A05CDB785@coote.org>
	<CAJTo0LYQe6NRA+3FZOrsB0Caun7DVi=58re1jMO2baTuxKrQSQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 12 Dec 2012 12:07:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

ok. Thanks.=20

just spotted the split between rpm / rpm5 and yum. I suppose that the =
knock on is managing multiple repos for different update managers.

don't suppose you know if there are material differences from a =
packaging/dependency point of view between rpm4 and rpm5?

is there an eta for smart in the mainstream core?
On 12 Dec 2012, at 11:43, "Burton, Ross" <ross.burton@intel.com> wrote:

> On 12 December 2012 11:31, Tim Coote <tim+yoctoproject.org@coote.org> =
wrote:
>> Am I right in thinking that yum isn't in the standard recipes?
>=20
> Yum, no.  Zypper is in oe-core and is used when you construct a =
RPM-based image.
>=20
> (note that Zypper is being replaced by Smart in oe-core master)
>=20
> Ross


