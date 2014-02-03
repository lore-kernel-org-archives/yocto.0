Return-Path: <me@padamj.com>
Received: from mail-pb0-f52.google.com (mail-pb0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE2ABE006B6
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2014 21:13:13 -0800 (PST)
Received: by mail-pb0-f52.google.com with SMTP id jt11so6662075pbb.11
	for <yocto@yoctoproject.org>; Sun, 02 Feb 2014 21:13:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=OyblIt8fIzKYeDKQp6GJctqU58/iHzKDEgVknM4qxso=;
	b=V033YOcBd7dslm/2o/+RjwQ3NrLSNmvKy3Xu8E8FG5hEyh+81fKZ7ao3F+8pXDVXXq
	PTAwjO6vTO1yuuHp/SQj3Z/1PQ48NCEPMYcmIbjyUPQYy368K21G1zGtSzda78kv15gJ
	qvIb+KVZk6Mxk4yGChztUKAvk8olMLdwGwhrbhR44v2ZwwfUpjM4/akHFWWfEGuj3KsZ
	/nXqxO5OjqlCq2bhHGh1dXojjAF0T84Ne9PA8v7YIFu8cnd54Gs91oQMkaXd90VAmYem
	M7SGxzir9Z3Zz50xQBSiSOcyF5BfzyLMlF7nMYM3JRsM0ynZqSWHwyfneskaHN1i1rYJ
	z5cQ==
X-Gm-Message-State: ALoCoQl7GFjgiyHbnOI3yotj55a4TqNOL6RKL5CB314P8psh+AkfYED7uX4HambdATLQ+f9qyFOF
X-Received: by 10.66.139.169 with SMTP id qz9mr35652289pab.16.1391404392852;
	Sun, 02 Feb 2014 21:13:12 -0800 (PST)
Received: from [172.16.1.4] ([103.25.205.2]) by mx.google.com with ESMTPSA id
	dr1sm51756431pbc.18.2014.02.02.21.13.09 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 02 Feb 2014 21:13:11 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: "Padam J. Singh" <me@padamj.com>
In-Reply-To: <0268212B-3E3E-4B1D-93EC-F0619C6EA499@padamj.com>
Date: Mon, 3 Feb 2014 10:43:05 +0530
Message-Id: <47A3F29D-1AE0-4097-A025-0BE897698EA9@padamj.com>
References: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
	<CAJTo0LZ-RgJw+x1C5MmmOhUm1Pd-TdYoiZgABPOrESD876aoLg@mail.gmail.com>
	<0268212B-3E3E-4B1D-93EC-F0619C6EA499@padamj.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1827)
Subject: Re: Help with ipset bitbake files
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
X-List-Received-Date: Mon, 03 Feb 2014 05:13:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

What could be the possible reasons for a recipe to get packaged =
correctly in an RPM, shows as being installed in the final image =
generation, yet none of the files actually show up in the rootfs?

I am trying to add a recipe for version 6 of the ipset utility. I have =
been able to get dozens of other recipes and my own applications =
working, just this one is giving me issues.

Thanks,
Padam


On 31-Jan-2014, at 19:23 , Padam J. Singh <me@padamj.com> wrote:

> Hello Ross,
>=20
> Thanks for the help!
>=20
> I was able to see that both the images/ and packages-split/ipset had =
the binary. The root_fs does not have this file. The building of final =
image shows that the ipset rpm is being installed.=20
>=20
> I have added ipset to the top-level image :
> IMAGE_INSTALL +=3D "ipset"
>=20
> Any clues?
>=20
> Thanks,
> Padam
>=20
> On 31-Jan-2014, at 17:26 , Burton, Ross <ross.burton@intel.com> wrote:
>=20
>> On 31 January 2014 11:45, Padam J.Singh <me@padamj.com> wrote:
>>> When executing this recipe, all steps completes OK. However, the =
compiled
>>> binaries are not included in the final RPMs or the final images.
>>=20
>> If you include the output of "find" in both image/ and =
packages-split/
>> then it would be possible to debug this.
>>=20
>> FWIW, FILES_${PN} already includes ${sbindir}/*, so your assignment
>> isn't achieving anything.  Also note that your second EXTRA_OECONF
>> line is overwriting the first.
>>=20
>> Ross
>=20


