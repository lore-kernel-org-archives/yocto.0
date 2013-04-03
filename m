Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED121E01508
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 00:19:46 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fa11so736658pad.27
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 00:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=5rtxw5Puinf1smVCjGZfYl/CJA6FTwRWMQzHcCL7340=;
	b=XxDU/T3ZC56oQ/85SutB2zaHh7dj1KA5xuEMQ59Geim1bOkZ4MB54Ov+XavsPTJUXu
	O1LDlclCPFzEcThB3y7atRggZDUs3zrKT5/G0CqzucVzixhr5Z0KvscqHURbpSfKE+r0
	oBVf3mULO8PBIuoUvu2sdSXa3ZzSdj/fIWD6PVXgFXFBtR3TU+wWh5ZBoKvW+LRGc/pe
	Cs2RM4sFrbmsVKQVDKDBU5bz4I6tNw70YMbYjfKvGxpZvCGgaSqml+u/9gExV8ZTnDo9
	IweCMSm0c3vppSP9Cn36FEKbOwaadafOkQ1nHlHt0FUZyqu/CnbTU+n0ggq5+30Q2/zN
	7bHg==
X-Received: by 10.68.251.98 with SMTP id zj2mr844282pbc.95.1364973586737;
	Wed, 03 Apr 2013 00:19:46 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id to7sm5797444pab.0.2013.04.03.00.19.44
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 03 Apr 2013 00:19:45 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5573599.m179gzsbCm@helios>
Date: Wed, 3 Apr 2013 00:19:51 -0700
Message-Id: <03C66681-CF32-4497-A81A-759D0389E8EA@gmail.com>
References: <1364965911-17324-1-git-send-email-raj.khem@gmail.com>
	<1991749.pLqSkOTN3J@helios>
	<60D429A1-E760-4284-90E9-151A76521FBC@gmail.com>
	<5573599.m179gzsbCm@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-yocto][PATCH] poky.conf: Use weaker assignment for PREMIRROR
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
X-List-Received-Date: Wed, 03 Apr 2013 07:19:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Apr 2, 2013, at 11:56 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> On Tuesday 02 April 2013 23:44:06 Khem Raj wrote:
>> On Apr 2, 2013, at 11:41 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com>=20
> wrote:
>>> I'm not sure this is a path we should be going down; potentially we =
could
>>> end up having to use ??=3D for just about everything.
>>=20
>> whats is downside of using ??=3D instead of ?=3D
>=20
> The volume of changes to the config that this will require, a minor =
memory=20
> usage increase (I suspect), but more importantly it increases the =
complexity=20
> for the end user. Right now ??=3D is used sparingly.



>=20
>>> Wouldn't you be better off using your own separate distro config =
(perhaps
>>> copying poky.conf instead of "require"ing it) and then the user can =
just
>>> set it with "=3D" ?
>>=20
>> yes. however you are then always on lookout for changes happening in =
poky
>> policies then you need to mimic in your distro config
>=20
> Wouldn't it be the reverse at the moment? We do add new things to the =
poky=20
> distro config when we need to test them and those new things might not =
be=20
> desirable in your configuration.
>=20

no, if one is tracking upstream and wants to remain compatible its lot =
better to take in all policies
and then customize it. and once released the policies are not changed =
anyway. Its easier to test and customize
your distro that way since changes are incremental examples are when new =
QA checks are enabled you want to fix
your own layers quickly and its one less hassle to keep syncing policies =
when your distro and you can get quicker
response to fallouts if any. =46rom personal experience including it has =
been a better way and indirectly is more integrated.

After all poky is a reference distro policy, whether we should recommend =
to copy it or include it in custom distros,
either ways is fine with good reasons. You sound like supporting the =
second case, I am impartial to whatever is the
recommendation there are good and bad of both approaches.

I am also interested in hearing from other yocto users how are they =
consuming poky policies=20


> Distro configs should remain fairly static once initially set.

after releases yes but not when you are building next gen which is for =
active development.

> FWIW, we do call=20
> out any needed changes between releases in the migration information =
within=20
> the documentation.


yes as I said once needs to sync.=

