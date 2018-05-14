Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DE37E01454; Mon, 14 May 2018 08:06:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB6CE0084E
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 08:06:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w4EF53pn025174
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 May 2018 08:06:10 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 14 May 2018 08:05:42 -0700
To: Rudolf J Streif <rudolf.streif@gmail.com>, akuster808
	<akuster808@gmail.com>,
	"akuster@mvista" <akuster@mvista.com>, <yocto@yoctoproject.org>
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
	<9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
	<d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
	<fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <8fe4ffc7-4300-46c1-ae31-aee3861a66d6@windriver.com>
Date: Mon, 14 May 2018 10:05:41 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Mon, 14 May 2018 15:06:55 -0000
X-Groupsio-MsgNum: 41138
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature";
	boundary="mTRcGQ9hKatebEzf8e1CqVPCYfTLbdi0R"

--mTRcGQ9hKatebEzf8e1CqVPCYfTLbdi0R
Content-Type: multipart/mixed; boundary="OkUXkOIzX1PR3tEedNEcecuHQgmudRrqB";
 protected-headers="v1"
From: Mark Hatle <mark.hatle@windriver.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>,
 akuster808 <akuster808@gmail.com>, "akuster@mvista" <akuster@mvista.com>,
 yocto@yoctoproject.org
Message-ID: <8fe4ffc7-4300-46c1-ae31-aee3861a66d6@windriver.com>
Subject: Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now
 part of python*-core
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
 <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
 <9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
 <d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
 <fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
In-Reply-To: <fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>

--OkUXkOIzX1PR3tEedNEcecuHQgmudRrqB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 5/11/18 1:19 PM, Rudolf J Streif wrote:
> Thank you, Mark. Much appreciated and understood.
>=20
> Would you be open to tagging the layer for rocko to the right commit an=
d
> applying the patches sent to the mailing list by Armin and Kai to maste=
r
> so that we have known points to move forward?

I'm going to try to sync with Joe later today.  I'll make sure that we br=
anch
rocko..  If Joe can't get to the sumo work this week, I'll do my best to =
get it
done.

--Mark

> Thank you,
> Rudi
>=20
>=20
> On 05/11/2018 10:45 AM, Mark Hatle wrote:
>> On 5/11/18 12:28 PM, Rudolf J Streif wrote:
>>> Echoing this: may I ask what the current maintenance status of
>>> meta-selinux is. It appears that no updates have been made for more t=
han
>>> 9 months. This is of course not to blame anybody but out of concern t=
hat
>>> the layer is falling behind even more and to find a solution.
>> The answer is the current set of people are horribly overworked and bu=
sy, so
>> day-to-day updates have been 'sparse'.
>>
>> Usually we update meta-selinux about the time of a release, and thus a=
re due.
>>
>> The last update of meta-selinux was about the time of the Rocko releas=
e, so what
>> is in master is definitely current as of Rocko.  (I did the last set o=
f updates
>> -- so I know it did work as of Rocko release.)  The master needs to be=
 branched
>> as Rocko... master needs to be updated to be Sumo compatible.
>>
>> My assumption is that once Sumo is formally released (any minute now),=
 we'll
>> collection all of the patches and get them into place and spend some t=
ime
>> cleaning them up...
>>
>> It looks like Joe is already working through this effort.
>>
>> (Only speaking for myself,) I don't have time to do day-to-day mainten=
ance of
>> meta-selinux any longer -- nor do I have the indepth knowledge to unde=
rstand
>> when not to do something.  I filled this role purely out of necessity =
since
>> nobody else was doing it.
>>
>> So with that said, if anyone wants to help, we're all open for help he=
re...  I
>> doubt there would be any objection to adding or replacing existing mai=
ntainers
>> and/or giving more people push access.
>>
>>> In addition to Armin's patches there are two patches submitted by Kai=

>>> Kang at Windriver:
>>>
>>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917=
=2Ehtml
>>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918=
=2Ehtml
>>>
>>> Curiously enough, the second patch has been applied to master but not=

>>> the first one.
>>>
>>>
>>> There is also an issue with building SELinux with systemd. The layer
>>> enables auditing:
>>>
>>> meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =3D
>>> "--enable-audit,--disable-audit,audit,"
>>> meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
>>> ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', ''=
, d)}
>>>
>>> Apparently the --enable-audit switch is passed to meson when running =
the
>>> configure task, which meson does not appreciate. I am not that famili=
ar
>>> with the audit feature nor with meson, so I currently have no idea on=

>>> how to fix this the right way.
>> audit feature is useful outside of selinux, so my understand was that =
audit
>> itself was moving into core during the sumo time frame (if it hadn't a=
lready
>> been oved.)
>>
>> I don't know anything about meson, so I can't speak to that...
>>
>>> Further, refpolicy_git does not build anymore as the YP specific patc=
hes
>>> do not apply anymore since upstream changed.
>> The refpolicy is and has always been crap.  I've been talking to a few=
 people on
>> IRC about working to replace the refpolicy with a policy that can be g=
enerated
>> dynamically based on the contents of the recipes.  I don't know if tha=
t is
>> really going to happen, but I hate the way it's currently implemented.=

>>
>> One of the key issues about the refpolicy is that you need to be an ex=
pert at
>> this (which I never claimed to be) in order to make any reasonable dec=
ision --
>> add to that any specific policy needs to userstand overall system desi=
gn, and I
>> wouldn't trust any of the refpolicy items as they stand in meta-selinu=
x.
>>
>> --Mark
>>
>>> Thanks,
>>> Rudi
>>>
>>>
>>>
>>> On 05/07/2018 10:20 AM, akuster808 wrote:
>>>> On 04/14/2018 07:08 PM, Armin Kuster wrote:
>>>>> Missing or unbuildable dependency chain was: ['meta-world-pkgdata',=
 'restorecond', 'libselinux', 'python-importlib']
>>>>>
>>>>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>>>> ping
>>>>> ---
>>>>>  recipes-security/selinux/libselinux.inc | 2 +-
>>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-secu=
rity/selinux/libselinux.inc
>>>>> index bd5ce8d..51d0875 100644
>>>>> --- a/recipes-security/selinux/libselinux.inc
>>>>> +++ b/recipes-security/selinux/libselinux.inc
>>>>> @@ -8,7 +8,7 @@ LICENSE =3D "PD"
>>>>>  inherit lib_package pythonnative
>>>>> =20
>>>>>  DEPENDS +=3D "libsepol python libpcre swig-native"
>>>>> -RDEPENDS_${PN}-python +=3D "python-importlib"
>>>>> +RDEPENDS_${PN}-python +=3D "python-core"
>>>>> =20
>>>>>  PACKAGES +=3D "${PN}-python"
>>>>>  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site=
-packages/*"
>>>
>>>
>=20



--OkUXkOIzX1PR3tEedNEcecuHQgmudRrqB--

--mTRcGQ9hKatebEzf8e1CqVPCYfTLbdi0R
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQEzBAEBCgAdFiEEgAwdHgEr3cvOW/v9fv796/r0vvkFAlr5pcYACgkQfv796/r0
vvlLAgf9FHBrFzHZq7u1fthUonQbEB0+uCfSt+32n18IUeqoUIED6QMm3QlbmGj9
IF4HrstFi3rmerYHSC4M7KzDPNP+b4JxQwoa/QeQBBWcwz3B3dmb8ZYLh+aFFP+4
GpZMcX2hgeG+WnsvJ3H7sKxjK8+1hrP3UqyR9NOmaGg35QN9rIFYGW81SwqlM1dK
m0zia6sHkm+rphzE0gCYg7ddIjsjA37x6XVfmNYBy1jC3tZyxk1508Zodnw8c3s4
Devms3scN6p6+3vjdQGo5j5erl/izcTiw0mmRbh+/wOQIQk8GGknVkynn4x0q7RX
FHuDm2nfaG8QPiZ6oljAnE/aMcZlcQ==
=IA2w
-----END PGP SIGNATURE-----

--mTRcGQ9hKatebEzf8e1CqVPCYfTLbdi0R--
