Subject: Re: Unable to add pre compiled library #yocto
To: yocto@lists.yoctoproject.org
From: "Vijay Rakesh Munganda" <vijayrakeshmunganda@gmail.com>
X-Originating-Location: IN (164.164.95.9)
X-Originating-Platform: Windows Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Jan 2021 03:07:34 -0800
References: <10369.1610519948495180203@lists.yoctoproject.org>
In-Reply-To: <10369.1610519948495180203@lists.yoctoproject.org>
Message-ID: <21945.1610536054963713522@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UplAAwuKSbPg0D1wknDK"

--UplAAwuKSbPg0D1wknDK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is re compiling the .so file is correct? I found one solution online, tried=
 to recompile and my build is got successful.

do_compile(){
${CXX} -shared -o=C2=A0 libopentok.so ${S}/lib/libopentok.so
}

Thanks,
VR

--UplAAwuKSbPg0D1wknDK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is re compiling the .so file is correct? I found one solution online, tried=
 to recompile and my build is got successful.&nbsp;&nbsp;<br /><br />
<div>do_compile(){</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; ${CXX} -shared -o&nbsp; libopentok.so ${S=
}/lib/libopentok.so</div>
<div>}<br /><br />Thanks,<br />VR</div>

--UplAAwuKSbPg0D1wknDK--
