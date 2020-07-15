Subject: Re: Linker error undefined reference to `_rtld_global_ro'
To: yocto@lists.yoctoproject.org
From: "Robert Varga" <robert.varga@getinge.com>
X-Originating-Location: Karlsruhe, Baden-Württemberg, DE (217.240.134.124)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jul 2020 07:36:19 -0700
References: <faf2f2ae-5bfe-2493-1445-ebfaaafde328@gmail.com>
In-Reply-To: <faf2f2ae-5bfe-2493-1445-ebfaaafde328@gmail.com>
Message-ID: <11273.1594823779014710167@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6u3i4lmlHZm12nVBfexj"

--6u3i4lmlHZm12nVBfexj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you for instructions...

>=20
> build SDK for arm64. e.g. MACHINE=3Dqemuarm64 bitbake -cpopulate_sdk
> core-image-sato

After long attempts I finally managed to create an SDK with qemuarm64. How=
ever, I did not use the core-minimal-sato as suggested, but used the same s=
etup as in my-image.bb (which is based on the core-image-full-cmdline).
With this new SDK I then did the same experiment and compiled the applicat=
ion, and it worked! There were no linker error messages.
Now the question for me is, why did it compile with qemuarm64, but not wit=
h my settings?
Is there anything else I can do to isolate the issue?
Thanks for your support so far.

--

Rob

--6u3i4lmlHZm12nVBfexj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"line-height: 1.42857; white-space: normal;">Thank you for ins=
tructions...</div>
<div>&nbsp;</div>
<blockquote><span style=3D"white-space: pre-wrap;">build SDK for arm64. e.=
g. MACHINE=3Dqemuarm64 bitbake -cpopulate_sdk</span><br style=3D"white-spac=
e: pre-wrap;" /><span style=3D"white-space: pre-wrap;">core-image-sato</spa=
n></blockquote>
<div>After long attempts I finally managed to create an SDK with qemuarm64=
. However, I did not use the core-minimal-sato as suggested, but used the s=
ame setup as in my-image.bb (which is based on the core-image-full-cmdline)=
.&nbsp;<br />With this new SDK I then did the same experiment and compiled =
the application, and it worked! There were no linker error messages.</div>
<div>Now the question for me is, why did it compile with qemuarm64, but no=
t with my settings?&nbsp;</div>
<div>Is there anything else I can do to isolate the issue?</div>
<div>Thanks for your support so far.</div>
<div>&nbsp;</div>
<div>--&nbsp;</div>
<br />Rob

--6u3i4lmlHZm12nVBfexj--
