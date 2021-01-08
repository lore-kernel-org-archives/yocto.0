Subject: Re: Unable to extract tar file #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Jan 2021 03:07:43 -0800
References: <20210108092613.4plbcntlv72ax3a2@qschulz>
In-Reply-To: <20210108092613.4plbcntlv72ax3a2@qschulz>
Message-ID: <11979.1610104063355267335@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IViDF58hSQoC1JmRDjWX"

--IViDF58hSQoC1JmRDjWX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:

>=20
> Hi,
>=20
> On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay Rakesh Munganda wrote:
>=20
>> Hi Paul Barker,
>>=20
>> No, ${WORKDIR}/tokbox directory is empty, it is not getting placed. I c=
an
>> only see it in the downloads directory.
>=20
> S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"
>=20
> This is the root directory of your archive and should be used for `S`
>=20
> Cheers,
> Quentin

By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error got el=
iminated, thank you.

Now, how can I install the file under opentok_linux_llvm_arm64/lib/libopen=
tok.so into the rootfs?

I tried the below code but got an error as *install: cannot stat 'lib/libo=
pentok.so': No such file or directory*.

>=20
> do_install() {
> install -d ${D}${libdir}
> install -m 0755 lib/libopentok.so ${D}${libdir}
> }
>=20

Thanks,
Vijay Rakesh.

--IViDF58hSQoC1JmRDjWX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 8, 2021 at 01:26 AM, Quentin Schulz wrote:<br />
<blockquote>Hi,<br /><br />On Fri, Jan 08, 2021 at 01:19:51AM -0800, Vijay=
 Rakesh Munganda wrote:<br />
<blockquote>Hi Paul Barker,<br /><br />No, ${WORKDIR}/tokbox directory is =
empty, it is not getting placed. I can only see it in the downloads directo=
ry.</blockquote>
S =3D "${WORKDIR}/libopentok_linux_llvm_arm64"<br /><br />This is the root=
 directory of your archive and should be used for `S`<br /><br />Cheers,<br=
 />Quentin</blockquote>
By changing to S =3D "${WORKDIR}/libopentok_linux_llvm_arm64" error got el=
iminated, thank you. <br /><br />Now, how can I install the file under open=
tok_linux_llvm_arm64/lib/libopentok.so into the rootfs?<br /><br />I tried =
the below code but got an error as <strong>install: cannot stat 'lib/libope=
ntok.so': No such file or directory</strong>.<br /><br />
<blockquote>
<div>do_install() {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -d ${D}${libdir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;install -m 0755 lib/libopentok.so $=
{D}${libdir}</div>
<div>}</div>
</blockquote>
Thanks,<br />Vijay Rakesh.

--IViDF58hSQoC1JmRDjWX--
