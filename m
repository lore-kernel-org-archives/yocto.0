Subject: Re: Build failure due to wic-tools dependency #yocto
To: yocto@lists.yoctoproject.org
From: hariprasath.gujulanelango@wabco-auto.com
X-Originating-Location: IN (185.221.69.47)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 05 Sep 2020 07:47:25 -0700
References: <CAMKF1soOUvdS9scA=1tyxoFcY=r=hgxhU_X9M8dGpKjT+MEVTA@mail.gmail.com>
In-Reply-To: <CAMKF1soOUvdS9scA=1tyxoFcY=r=hgxhU_X9M8dGpKjT+MEVTA@mail.gmail.com>
Message-ID: <25048.1599317245296258980@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gNKjvZZbmft7nTjv1ncQ"

--gNKjvZZbmft7nTjv1ncQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi There

Thanks for your reply.As I already mentioned in my original post, this dep=
endency is already present in the wic-tools BB file. The git log also shows=
 the same as below

commit b139ac4910a8c519076eaa865d9b0b7d9e604833
Author: Ed Bartosh <ed.bartosh@linux.intel.com>
Date:=C2=A0 =C2=A0Thu Jul 27 09:54:04 2017 +0300

wic-tools: add dependency to e2fsprogs-native

Added e2fsprogs-native to the list of dependencies for wic-tools
as all fs-related utilities have to be in this list.

(From OE-Core rev: d0ebcf62109d6a131e02cd4c0f04bba203ed6579)

Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

--gNKjvZZbmft7nTjv1ncQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi There<br /><br />Thanks for your reply.As I already mentioned in my orig=
inal post, this dependency is already present in the wic-tools BB file. The=
 git log also shows the same as below<br /><br />
<div>commit b139ac4910a8c519076eaa865d9b0b7d9e604833</div>
<div>Author: Ed Bartosh &lt;ed.bartosh@linux.intel.com&gt;</div>
<div>Date:&nbsp; &nbsp;Thu Jul 27 09:54:04 2017 +0300</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; wic-tools: add dependency to e2fsprogs-native</div>
<div>&nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; Added e2fsprogs-native to the list of dependencies for =
wic-tools</div>
<div>&nbsp; &nbsp; as all fs-related utilities have to be in this list.</d=
iv>
<div>&nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; (From OE-Core rev: d0ebcf62109d6a131e02cd4c0f04bba203ed=
6579)</div>
<div>&nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; Signed-off-by: Ed Bartosh &lt;ed.bartosh@linux.intel.co=
m&gt;</div>
<div>&nbsp; &nbsp; Signed-off-by: Richard Purdie &lt;richard.purdie@linuxf=
oundation.org&gt;</div>
<div><br /><br /></div>

--gNKjvZZbmft7nTjv1ncQ--
