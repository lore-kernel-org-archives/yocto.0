Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CDFE009C2; Wed, 17 May 2017 00:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A610E00901
	for <yocto@yoctoproject.org>; Wed, 17 May 2017 00:28:05 -0700 (PDT)
Received: from [192.168.10.231] (unknown [103.29.142.67])
	by kozue.soulik.info (Postfix) with ESMTPA id 784421020F8;
	Wed, 17 May 2017 16:28:53 +0900 (JST)
Mime-Version: 1.0 (1.0)
From: Ayaka <ayaka@soulik.info>
X-Mailer: iPad Mail (13G34)
In-Reply-To: <c1ba3232-e5d0-0a15-c33f-8218d652ebee@collabora.com>
Date: Wed, 17 May 2017 15:28:02 +0800
Message-Id: <40E7EC9F-E57E-4EF0-A1A3-7ADCB911B469@soulik.info>
References: <20170516141808.26629-1-ayaka@soulik.info>
	<20170516141808.26629-2-ayaka@soulik.info>
	<20170516184422.GA1041@linux-uys3>
	<c1ba3232-e5d0-0a15-c33f-8218d652ebee@collabora.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v3 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Wed, 17 May 2017 07:28:09 -0000
Content-Type: text/plain;
	charset=big5-hkscs
Content-Transfer-Encoding: quoted-printable



=B1q=A7=DA=AA=BA iPad =B6=C7=B0e

> Romain Perier <romain.perier@collabora.com> =A9=F3 2017=A6~5=A4=EB17=A4=E9=
 =A4U=A4=C82:48 =BCg=B9D=A1G
>=20
> Hello,
>=20
>=20
>> Le 16/05/2017 =88j 20:44, Trevor Woerner a =88mcrit :
>> Randy,
>>=20
>> Neither of the issues that were identified in your v2 of this patch were
>> addressed in this v3. Namely:
>>=20
>> 1) please use your real name (first, last) in your signed-off-by line
>> 2) please don't create a package from this recipe whose name doesn't incl=
ude
>>   the recipe name (i.e. please don't create "rockchip-vpu" from a recipe
>>   "rockchip-mpp"), suggestions were provided
It is a isolated library. I would suggest a new library named rockchip-mpp-v=
pu.
>>=20
>> Aside from the email headers and the version of git used, this patch is
>> identical to the v2 you submitted.
>>=20
>> Best regards,
>>    Trevor
> +1
>=20
> And please, include a changelog in your new version, at least in the
> cover letter, something like:
>=20
> Changes in v3:
> - Item1 fixed
> - Item2 fixed
>=20
> Changes in v2:
> - Item1 fixed
> - Item2 fixed
>=20
>=20
> Thanks,
> Romain


