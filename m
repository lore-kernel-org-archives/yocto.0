Subject: Re: Unable to extract tar file #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Jan 2021 06:08:13 -0800
References: <20210108120858.ldwzi6ra4xp6jji2@qschulz>
In-Reply-To: <20210108120858.ldwzi6ra4xp6jji2@qschulz>
Message-ID: <19927.1610114893397118723@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kCwJoLSpdhsxJ3jpA5fw"

--kCwJoLSpdhsxJ3jpA5fw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 04:09 AM, Quentin Schulz wrote:

>=20
> On Fri, Jan 08, 2021 at 04:00:54AM -0800, Vijay Rakesh Munganda wrote:
>=20
>> On Fri, Jan 8, 2021 at 03:15 AM, Quentin Schulz wrote:
>>=20
>>=20
>>>=20
>>> On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh Munganda wrote:
>>>=20
>>>=20
>>>> On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:
>>>>=20
>>>>=20
>>>>=20
>>>>>=20
>>>>> Hi,
>>>>>=20
>>>>> On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrot=
e:
>>>>>=20
>>>>>=20
>>>>>=20
>>>>>> Hi Paul Barker,
>>>>>>=20
>>>>>> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed.=
 I can
>>>>>> only see it in the downloads directory.
>>>>>=20
>>>>> S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"
>>>>>=20
>>>>> This is the root directory of your archive and should be used for `S=
`
>>>>>=20
>>>>> Cheers,
>>>>> Quentin
>>>>=20
>>>> By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error g=
ot
>>>> eliminated, thank you.
>>>>=20
>>>> Now, how can I install the file under
>>>> opentok_linux_llvm_arm64/lib/libopentok.so into the rootfs?
>>>>=20
>>>> I tried the below code but got an error as *install: cannot stat
>>>> 'lib/libopentok.so': No such file or directory*.
>>>=20
>>> If you go into ${WORKDIR} of your recipe (tmp/work/<arch>/<recipe name=
>),
>>> what is the path to libopentok.*.so?
>>=20
>>=20
>=20
> Do you have B set up somewhere in your recipe?
> Otherwise try ${S}/lib/libopentok.so for the source path.
>=20
> Quentin

Thank you! it worked.

Thanks,
Vijay Rakesh.

--kCwJoLSpdhsxJ3jpA5fw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 04:09 AM, Quentin Schulz wrote:<br />
<blockquote>On Fri, Jan 08, 2021 at 04:00:54AM -0800, Vijay Rakesh Mungand=
a wrote:<br />
<blockquote>On Fri, Jan 8, 2021 at 03:15 AM, Quentin Schulz wrote:<br /><b=
r />
<blockquote><br />On Fri, Jan 08, 2021 at 03:07:43AM -0800, Vijay Rakesh M=
unganda wrote:<br /><br />
<blockquote>On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:<br /><b=
r /><br />
<blockquote><br />Hi,<br /><br />On Fri, Jan 08, 2021 at 01:19:51AM -0800,=
 Vijay Rakesh Munganda wrote:<br /><br /><br />
<blockquote>Hi Paul Barker,<br /><br />No, ${WORKDIR}/tokbox directory is =
empty, it is not getting placed. I can<br />only see it in the downloads di=
rectory.</blockquote>
S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"<br /><br />This is the root=
 directory of your archive and should be used for `S`<br /><br />Cheers,<br=
 />Quentin</blockquote>
By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error got<br=
 />eliminated, thank you.<br /><br />Now, how can I install the file under<=
br />opentok_linux_llvm_arm64/lib/libopentok.so into the rootfs?<br /><br /=
>I tried the below code but got an error as *install: cannot stat<br />'lib=
/libopentok.so': No such file or directory*.</blockquote>
If you go into ${WORKDIR} of your recipe (tmp/work/&lt;arch&gt;/&lt;recipe=
 name&gt;),<br />what is the path to libopentok.*.so?</blockquote>
</blockquote>
Do you have B set up somewhere in your recipe?<br />Otherwise try ${S}/lib=
/libopentok.so for the source path.<br /><br />Quentin</blockquote>
Thank you! it worked.<br /><br />Thanks,<br />Vijay Rakesh.

--kCwJoLSpdhsxJ3jpA5fw--
