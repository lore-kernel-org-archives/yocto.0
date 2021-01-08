Subject: Re: Unable to extract tar file #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Jan 2021 04:00:54 -0800
References: <20210108111544.3g5m5ivajln6mdpw@qschulz>
In-Reply-To: <20210108111544.3g5m5ivajln6mdpw@qschulz>
Message-ID: <26578.1610107254578379888@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Mha2NJAwlnZj3irPwaQF"

--Mha2NJAwlnZj3irPwaQF
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 03:15 AM, Quentin Schulz wrote:

>=20
> On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh Munganda wrote:
>=20
>> On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:
>>=20
>>=20
>>>=20
>>> Hi,
>>>=20
>>> On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrote:
>>>=20
>>>=20
>>>> Hi Paul Barker,
>>>>=20
>>>> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I=
 can
>>>> only see it in the downloads directory.
>>>=20
>>> S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"
>>>=20
>>> This is the root directory of your archive and should be used for `S`
>>>=20
>>> Cheers,
>>> Quentin
>>=20
>> By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error got
>> eliminated, thank you.
>>=20
>> Now, how can I install the file under
>> opentok_linux_llvm_arm64/lib/libopentok.so into the rootfs?
>>=20
>> I tried the below code but got an error as *install: cannot stat
>> 'lib/libopentok.so': No such file or directory*.
>=20
> If you go into ${WORKDIR} of your recipe (tmp/work/<arch>/<recipe name>)=
,
> what is the path to libopentok.*.so?
>=20
> Quentin

This is the path to libopentok.so tmp/work/aarch64-poky-linux/tokbox/1.0-r=
0/libopentok_linux_llvm_arm64/lib/

Thanks,
Vijay Rakesh.

--Mha2NJAwlnZj3irPwaQF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 03:15 AM, Quentin Schulz wrote:<br />
<blockquote>On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh Mungand=
a wrote:<br />
<blockquote>On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:<br /><b=
r />
<blockquote><br />Hi,<br /><br />On Fri, Jan 08, 2021 at 01:19:51AM -0800,=
 Vijay Rakesh Munganda wrote:<br /><br />
<blockquote>Hi Paul Barker,<br /><br />No, ${WORKDIR}/tokbox directory is =
empty, it is not getting placed. I can<br />only see it in the downloads di=
rectory.</blockquote>
S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"<br /><br />This is the root=
 directory of your archive and should be used for `S`<br /><br />Cheers,<br=
 />Quentin</blockquote>
By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error got el=
iminated, thank you.<br /><br />Now, how can I install the file under opent=
ok_linux_llvm_arm64/lib/libopentok.so into the rootfs?<br /><br />I tried t=
he below code but got an error as *install: cannot stat 'lib/libopentok.so'=
: No such file or directory*.</blockquote>
If you go into ${WORKDIR} of your recipe (tmp/work/&lt;arch&gt;/&lt;recipe=
 name&gt;),<br />what is the path to libopentok.*.so?<br /><br />Quentin</b=
lockquote>
This is the path to libopentok.so tmp/work/aarch64-poky-linux/tokbox/1.0-r=
0/libopentok_linux_llvm_arm64/lib/<br /><br />Thanks,<br />Vijay Rakesh.

--Mha2NJAwlnZj3irPwaQF--
