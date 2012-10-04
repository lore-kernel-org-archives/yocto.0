Return-Path: <ramana.gollamudi@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95413E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 23:07:08 -0700 (PDT)
Received: from 172.24.2.119 (EHLO szxeml208-edg.china.huawei.com)
	([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.3.4-GA FastPath queued)
	with ESMTP id AQA01939; Thu, 04 Oct 2012 14:07:06 +0800 (CST)
Received: from SZXEML410-HUB.china.huawei.com (10.82.67.137) by
	szxeml208-edg.china.huawei.com (172.24.2.57) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Thu, 4 Oct 2012 14:06:43 +0800
Received: from SZXEML534-MBX.china.huawei.com ([169.254.2.70]) by
	szxeml410-hub.china.huawei.com ([10.82.67.137]) with mapi id
	14.01.0323.003; Thu, 4 Oct 2012 14:06:43 +0800
From: Venkata ramana gollamudi <ramana.gollamudi@huawei.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How do you release distros produced with Yocto? How
	should I? 
Thread-Index: AQHNofNcHO/Z1JsyjEKUdDS+7bwbew==
Date: Thu, 4 Oct 2012 06:06:43 +0000
Message-ID: <36ED13F3654AE54CA763E6821D93A5711047AB47@szxeml534-mbx.china.huawei.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.96.93]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
Subject: Re: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Thu, 04 Oct 2012 06:07:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 02, 2012 at 12:43:27PM -0400, Jerrod Peach wrote:
> I was thinking about doing something very close to that in actual Yocto,
> except I'd store only the revisions/branches that were different from wha=
t
> the bb file prescribed in local.conf.  I ran that idea by a couple of
> colleagues separately and they both immediately pointed out a concern: th=
ey
> didn't want to have two different places that could manage the revision o=
f
> the package, i.e. local.conf and the package bb file.  They don't like ho=
w
> that works in the system we have today.  Instead, they wanted to branch a=
ll
> the metadata and have people update individual bb files with different
> revisions as necessary.  That leaves only one place to manage the revisio=
n:
> the package bb file.  Doing all that branching concerns me (it seems
> heavier-weight than it needs to be, at the very least), but I can't say
> specifically why branching the bb files is harmful.  If you guys can thin=
k
> of a reason why, let me know.  If you think it's reasonable, let me know
> that too.

We have solved this issue by adding OS_VERSION variable to local.conf
Let say your product (OS) should be released in versions, Ex: 1.0 , 1.1 or =
1.1.1 etc.
Which is built from packages of different versions. So each package contain=
s <pkgname>.inc and <package>_<version>.bb file.
revision number and patches are maintained in <package>_<version>.bb and al=
l common part under <package>.inc.

Now the problems comes to mapping the package versions to your product(OS) =
version.
This is done having a file included into disto file listing out all the PRE=
FERRED_VERSIONS and PREFERRED_PROVIDERS for all packages.
      ex: conf/disto/include/osversion_1.0.inc
And this is included to disto file like
      require conf/disto/include/osversion_${OS_VERSION}.inc

This file is freezed after your one version release.
Next version will add a new file osversion_1.1.inc overiding to pick all th=
e required package version changes to make your product version.

This will allow you to release multiple product(OS) versions and clearly ma=
ps the package version, creating individual distributions.
You can even build older version product by just giving OS_VERSION=3D1.0 in=
 local.conf
This eliminates branching all together.

Regards,
Ramana=

