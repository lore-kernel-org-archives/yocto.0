Subject: Re: Linker error undefined reference to `_rtld_global_ro'
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 05:42:22 -0700
References: <659b0db3-ad58-0686-e88a-191327606088@gmail.com>
In-Reply-To: <659b0db3-ad58-0686-e88a-191327606088@gmail.com>
Message-ID: <3944.1595508142893213324@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nALdYONKVaMh0n2tS4fG"

--nALdYONKVaMh0n2tS4fG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,

>=20
> can you try setting GLIBCPIE =3D "" in local.conf and see if that helps

I set GLIBCPIE =3D "" in local.conf but the result is the same. The linker=
 issue "undefined reference to `_rtld_global_ro'" still occurs.
Do you have any other ideas what I could do?

--
Rob

--nALdYONKVaMh0n2tS4fG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem,<span style=3D"white-space: pre-wrap;"><br /></span><br />
<blockquote><span style=3D"white-space: pre-wrap;">can you try setting GLI=
BCPIE =3D "" in local.conf and see if that helps</span></blockquote>
I set&nbsp;<span style=3D"white-space: pre-wrap;">GLIBCPIE =3D "" in local=
.conf but the result is the same. The linker issue "undefined reference to =
`_rtld_global_ro'" still occurs.<br /></span>Do you have any other ideas wh=
at I could do?<br /><br />-- <br />Rob

--nALdYONKVaMh0n2tS4fG--
