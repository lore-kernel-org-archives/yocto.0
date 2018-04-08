Return-Path: <farzanemostafa@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 059C8E00B30; Sun,  8 Apr 2018 06:09:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (farzanemostafa[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.6.129.82 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic317-27.consmr.mail.bf2.yahoo.com
	(sonic317-27.consmr.mail.bf2.yahoo.com [74.6.129.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 689D9E00A96
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2018 06:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1523192970; bh=zPfjfIc1dNjidxj8qBggyOcbqh7jJepv27s0K+EdCkw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=JhaZuuG4LNsoYulDFZ3pJ02v17LJqcFb1ox6IOzKiUoNzBqLu+aMqz6tCklMkM7BU15lfJIXHmYrTsjSGMHhXJT7iE2Q7Vrf+iVfOxmpfV+3nY+4kvoWuEXjphLhhKVdMj1j7sZ906Rpeo6N5How8T/NYyuX9dmdywlKUVSY2zGPedfeor4Ay9UedX5EZEBc6KZt8H6aOnOve+TyU/U12kWpj7i5+NH5PaYBPJlJS7dhX9SETpE19rRIvLUuTn2QuQGdlKqOmN9qnF1YNVDR6fegX3dbfglSOjCv2JQGmoV/nmsxz08OwgtU3l8rouaM7vb6H8+rMgShKZnIrGpwUw==
X-YMail-OSG: sFmp850VM1kinGHv36ofRfKEYpaBMWLLuafQLcBZ9ghVdHZYzPjv85tAIUx09qq
	7BOZotl_CwZ82kkQKiN_Lf0GHY3hPsGNrI33vvzBrXMGFgmSfLh8mrxJpzkvtwdCUbQtZvJL_GDk
	w673MOJVns7YqVvRVfK1FdDa5lhYtq6mf1qSCkkAul4edLUL_nbCuHBrrq3N4fi0sElSTjUihT_g
	kmo6nIo1dcMQpHzDzccPix2D5BKmpZ7iq7rS2R2NU0eBi2J0obeZsO.tn7aXy0YEEV5GbNWZnXRP
	X2eFmvEbAik87x.d7BgOY24zAUu395.lNbgR_AdybBLdcj99sk3QyaJ07wZuNfiQVhgXS8ODZF7c
	ujSWSmROq0xQvZm9wsrz0aKkK8JiBB95IQp7UK5wXZgJxBkiFwLmqVOEUZbKNXagAFVCPBYbrIel
	Ax8SAaSsf8s_kaKbtqc6rS8QouUIszIgMlfoDoD2MZ_IVjtK7EoIDu5o9HTx9s.n6WqmT
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic317.consmr.mail.bf2.yahoo.com with HTTP;
	Sun, 8 Apr 2018 13:09:30 +0000
Date: Sun, 8 Apr 2018 13:09:27 +0000 (UTC)
From: Mostafa Farzane <farzanemostafa@yahoo.com>
To: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <1779056233.383965.1523192967392@mail.yahoo.com>
In-Reply-To: <355c797a-a34b-2326-62bf-ca503edc82f5@intel.com>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
	<355c797a-a34b-2326-62bf-ca503edc82f5@intel.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11745 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Sun, 08 Apr 2018 13:09:32 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_383964_1491869618.1523192967390"

------=_Part_383964_1491869618.1523192967390
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Thanks alot,
I added=C2=A0TOOLCHAIN_TARGET_TASK =3D "libsrtp-staticdev" to my image inst=
ead of libsrtp. But I get:
=C2=A0* calculate_dependencies_for: Cannot satisfy the following dependenci=
es for libsrtp-staticdev:=C2=A0*=C2=A0 =C2=A0 =C2=A0 libsrtp (=3D 1.5.2-r0)=
 *=C2=A0* opkg_solver_install: Cannot install package libsrtp-staticdev.
    On Sunday, April 8, 2018, 2:33:26 PM GMT+4:30, Anuj Mittal <anuj.mittal=
@intel.com> wrote: =20
=20
 On 04/07/2018 02:46 PM, Mostafa Farzane wrote:
> Hi,
> I need to add libsrtp to my yocto image. So I added libsrtp to
> "IMAGE_INSTALL". But I faced the following errors:
>=20
> Unknown package 'libsrtp'.
>=20
> Collected errors:
> =C2=A0* opkg_solver_install: Cannot install package libsrtp.

That is because there's no package named libsrtp. Please see:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#I.27ve_included_a_package_=
in_my_image_but_files_I_expect_to_be_there_are_missing.2C_what.27s_the_issu=
e.3F


$ oe-pkgdata-util list-pkg-files -p libsrtp
libsrtp-dbg:
libsrtp-dev:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/aes.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/aes_cbc.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/aes_gcm_ossl.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/aes_icm.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/aes_icm_ossl.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/alloc.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/auth.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/cipher.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/config.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/crypto.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/crypto_kernel.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/crypto_math.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/crypto_types.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/cryptoalg.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/datatypes.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/ekt.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/err.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/getopt_s.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/gf2_8.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/hmac.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/integers.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/kernel_compat.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/key.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/null_auth.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/null_cipher.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/prng.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/rand_source.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/rdb.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/rdbx.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/rtp.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/rtp_priv.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/sha1.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/srtp.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/srtp_priv.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/stat.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/ut_sim.h
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/include/srtp/xfm.h
libsrtp-staticdev:
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /usr/lib64/libsrtp.a
 =20

------=_Part_383964_1491869618.1523192967390
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div></div>
            <div><br></div><div><span><div style=3D"font-family: &quot;Helv=
etica Neue&quot;, Helvetica, Arial, sans-serif;">Thanks alot,</div><div sty=
le=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif=
;"><br clear=3D"none"></div><div style=3D"font-family: &quot;Helvetica Neue=
&quot;, Helvetica, Arial, sans-serif;">I added&nbsp;TOOLCHAIN_TARGET_TASK =
=3D "libsrtp-staticdev" to my image instead of libsrtp. But I get:</div><di=
v style=3D"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-=
serif;"><br clear=3D"none"></div><div style=3D"font-family: &quot;Helvetica=
 Neue&quot;, Helvetica, Arial, sans-serif;"><div>&nbsp;* calculate_dependen=
cies_for: Cannot satisfy the following dependencies for libsrtp-staticdev:<=
/div><div>&nbsp;*&nbsp; &nbsp; &nbsp; libsrtp (=3D 1.5.2-r0) *</div><div>&n=
bsp;* opkg_solver_install: Cannot install package libsrtp-staticdev.</div><=
/div></span><br></div>
           =20
            <div id=3D"yahoo_quoted_3361735987" class=3D"yahoo_quoted">
                <div style=3D"font-family:'Helvetica Neue', Helvetica, Aria=
l, sans-serif;font-size:13px;color:#26282a;">
                   =20
                    <div>
                        On Sunday, April 8, 2018, 2:33:26 PM GMT+4:30, Anuj=
 Mittal &lt;anuj.mittal@intel.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div dir=3D"ltr">On 04/07/2018 02:46 PM, Mostafa F=
arzane wrote:<div class=3D"yqt9460702117" id=3D"yqtfd31770"><br clear=3D"no=
ne">&gt; Hi,<br clear=3D"none">&gt; I need to add libsrtp to my yocto image=
. So I added libsrtp to<br clear=3D"none">&gt; "IMAGE_INSTALL". But I faced=
 the following errors:<br clear=3D"none">&gt; <br clear=3D"none">&gt; Unkno=
wn package 'libsrtp'.<br clear=3D"none">&gt; <br clear=3D"none">&gt; Collec=
ted errors:<br clear=3D"none">&gt; &nbsp;* opkg_solver_install: Cannot inst=
all package libsrtp.</div><br clear=3D"none"><br clear=3D"none">That is bec=
ause there's no package named libsrtp. Please see:<br clear=3D"none"><br cl=
ear=3D"none"><a shape=3D"rect" href=3D"https://wiki.yoctoproject.org/wiki/T=
echnical_FAQ#I.27ve_included_a_package_in_my_image_but_files_I_expect_to_be=
_there_are_missing.2C_what.27s_the_issue.3F" target=3D"_blank">https://wiki=
.yoctoproject.org/wiki/Technical_FAQ#I.27ve_included_a_package_in_my_image_=
but_files_I_expect_to_be_there_are_missing.2C_what.27s_the_issue.3F</a><br =
clear=3D"none"><br clear=3D"none"><br clear=3D"none">$ oe-pkgdata-util list=
-pkg-files -p libsrtp<br clear=3D"none">libsrtp-dbg:<br clear=3D"none">libs=
rtp-dev:<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/ae=
s.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/aes_cbc=
.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/aes_gcm_=
ossl.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/aes_=
icm.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/aes_i=
cm_ossl.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/a=
lloc.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/auth=
.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/cipher.h=
<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/config.h<b=
r clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/crypto.h<br =
clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/crypto_kernel.=
h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/crypto_ma=
th.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/crypto=
_types.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/cr=
yptoalg.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/d=
atatypes.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/=
ekt.h<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/err.h=
<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/getopt_s.h=
<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/gf2_8.h<br=
 clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/hmac.h<br cle=
ar=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/integers.h<br cle=
ar=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/kernel_compat.h<b=
r clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/key.h<br cle=
ar=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/null_auth.h<br cl=
ear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/null_cipher.h<br=
 clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/prng.h<br cle=
ar=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/rand_source.h<br =
clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/rdb.h<br clear=
=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/rdbx.h<br clear=3D"=
none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/rtp.h<br clear=3D"none"=
>&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/rtp_priv.h<br clear=3D"none"=
>&nbsp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/sha1.h<br clear=3D"none">&nb=
sp; &nbsp; &nbsp; &nbsp; /usr/include/srtp/srtp.h<br clear=3D"none">&nbsp; =
&nbsp; &nbsp; &nbsp; /usr/include/srtp/srtp_priv.h<br clear=3D"none">&nbsp;=
 &nbsp; &nbsp; &nbsp; /usr/include/srtp/stat.h<br clear=3D"none">&nbsp; &nb=
sp; &nbsp; &nbsp; /usr/include/srtp/ut_sim.h<br clear=3D"none">&nbsp; &nbsp=
; &nbsp; &nbsp; /usr/include/srtp/xfm.h<br clear=3D"none">libsrtp-staticdev=
:<br clear=3D"none">&nbsp; &nbsp; &nbsp; &nbsp; /usr/lib64/libsrtp.a<div cl=
ass=3D"yqt9460702117" id=3D"yqtfd14820"><br clear=3D"none"></div></div></di=
v>
                </div>
            </div></div></body></html>

------=_Part_383964_1491869618.1523192967390--
