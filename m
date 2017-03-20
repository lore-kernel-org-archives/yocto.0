Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41EB8E00AC0; Mon, 20 Mar 2017 00:13:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4464E00A51
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 00:13:34 -0700 (PDT)
Received: from [192.168.10.231] (unknown [103.29.142.67])
	by kozue.soulik.info (Postfix) with ESMTPA id 68CD21006ED;
	Mon, 20 Mar 2017 16:14:16 +0900 (JST)
Mime-Version: 1.0 (1.0)
From: Ayaka <ayaka@soulik.info>
X-Mailer: iPad Mail (13G34)
In-Reply-To: <ecedddc3-cc61-bfb3-3303-0cdc474fc902@rock-chips.com>
Date: Mon, 20 Mar 2017 15:13:22 +0800
Message-Id: <72A08F38-DA62-46DE-B054-0229E16B4DAD@soulik.info>
References: <1489946065-28272-1-git-send-email-ayaka@soulik.info>
	<1489946065-28272-3-git-send-email-ayaka@soulik.info>
	<ecedddc3-cc61-bfb3-3303-0cdc474fc902@rock-chips.com>
To: Jacob Chen <jacob2.chen@rock-chips.com>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [PATCH 2/3] recipes-multimedia: gstreamer: update to 1.10.4
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
X-List-Received-Date: Mon, 20 Mar 2017 07:13:37 -0000
Content-Type: text/plain;
	charset=big5
Content-Transfer-Encoding: quoted-printable



=B1q=A7=DA=AA=BA iPad =B6=C7=B0e

> Jacob Chen <jacob2.chen@rock-chips.com> =A9=F3 2017=A6~3=A4=EB20=A4=E9 =A4=
W=A4=C811:11 =BCg=B9D=A1G
>=20
> Hi randy,
>=20
>=20
> ayaka wrote on 2017=A6~03=A4=EB20=A4=E9 01:54:
>> I need a various of features from the new version.
>>=20
>> Signed-off-by: Jacob Chen <jacob-chen@iotwrt.com>
>> Signed-off-by: ayaka <ayaka@soulik.info>
>> ---
>>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend  | 4 ++=
++
>>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend | 4 ++=
++
>>  recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend | 4 ++=
++
>>  recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend              | 4 ++=
++
>>  4 files changed, 16 insertions(+)
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad=
_%.bbappend
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-bas=
e_%.bbappend
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-plugins-goo=
d_%.bbappend
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
>>=20
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbap=
pend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
>> new file mode 100644
>> index 0000000..5f2255f
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PV=3D"1.10.4"
>> +
>> +SRC_URI[md5sum] =3D "2757103e57a096a1a05b3ab85b8381af"
>> +SRC_URI[sha256sum] =3D "23ddae506b3a223b94869a0d3eea3e9a12e847f94d2d0e0b=
97102ce13ecd6966"
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bba=
ppend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
>> new file mode 100644
>> index 0000000..0bc9c6e
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PV=3D"1.10.4"
>> +
>> +SRC_URI[md5sum] =3D "f6b46f8fac01eb773d556e3efc369e86"
>> +SRC_URI[sha256sum] =3D "f6d245b6b3d4cb733f81ebb021074c525ece83db0c10e932=
794b339b8d935eb7"
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bba=
ppend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
>> new file mode 100644
>> index 0000000..5176458
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PV=3D"1.10.4"
>> +
>> +SRC_URI[md5sum] =3D "cc0cc13cdb07d4237600b6886b81f31d"
>> +SRC_URI[sha256sum] =3D "8a86c61434a8c44665365bd0b3557a040937d1f44bf69cae=
e4e9ea816ce74d7e"
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend b/recip=
es-multimedia/gstreamer/gstreamer1.0_%.bbappend
>> new file mode 100644
>> index 0000000..83c4c1d
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
>> @@ -0,0 +1,4 @@
>> +PV=3D"1.10.4"
>> +
>> +SRC_URI[md5sum] =3D "7c91a97e4a2dc81eafd59d0a2f8b0d6e"
>> +SRC_URI[sha256sum] =3D "50c2f5af50a6cc6c0a3f3ed43bdd8b5e2bff00bacfb766d4=
be139ec06d8b5218"
>=20
> We don't need to update gstreamer version in master branch.
>=20
> It's already 1.10.4.
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/recipes-multimedia/gst=
reamer/gstreamer1.0_1.10.4.bb
Then just drop this patch, I forget my poky is still old. I didn't update it=
 for more than halt of year.=


