Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B669CE009A0; Fri,  2 Jun 2017 18:09:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.41 listed in list.dnswl.org]
Received: from resqmta-ch2-09v.sys.comcast.net
	(resqmta-ch2-09v.sys.comcast.net [69.252.207.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73852E0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 18:09:05 -0700 (PDT)
Received: from resomta-ch2-11v.sys.comcast.net ([69.252.207.107])
	by resqmta-ch2-09v.sys.comcast.net with SMTP
	id GxYQd1e6MQe9cGxYvdk2oa; Sat, 03 Jun 2017 01:09:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1496452145;
	bh=e6mdXcGhqdXtTnAJKDpJI14bIwMtHNC+l58r52YTpnw=;
	h=Received:Received:From:Message-Id:Content-Type:Mime-Version:
	Subject:Date:To;
	b=aiLtiLY0/p1g+RBoT4TQtXpXVmaBqy/ZIROHDWgr2xj126jDmRpbNAWN3Fa4yURFP
	XDlWGPMwcprWbP9P/qIxrLcwEeu+nugHRO61SKc58IzHSI3yfFVQtZcCxuyvIOxFHA
	iiQHzLuOX/adnymNyz4MmNLhMqE61eQgRmn9ObyD7pkalYJuB/PwjH0JQsnokNsPf+
	fRXG0zqD40GA6UidI6XazoKFbiAIYX0DXRJzXI/7Lt777C+sDlnF55FKZS7+DogBJB
	5HYvBi5CWPoZPyPSBMRR/6HqaRuJMJ8SACsQNlxE51k5rzhZlCgQfZgg8bhgddj48N
	ZGpHVkBrnnalw==
Received: from [IPv6:2601:18f:800:acc1::cc14] ([IPv6:2601:18f:800:acc1::cc14])
	by resomta-ch2-11v.sys.comcast.net with SMTP
	id GxYtdmU4MHHARGxYudyJRH; Sat, 03 Jun 2017 01:09:04 +0000
From: Russell Peterson <bluehills7@comcast.net>
Message-Id: <12DCAD8B-A797-4F98-BBA6-EEDAE523600E@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 2 Jun 2017 21:09:02 -0400
In-Reply-To: <98ca5758-608b-6eb0-3c67-2d944b3a454d@embexus.com>
To: Ayoub Zaki <ayoub.zaki@embexus.com>
References: <7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net>
	<98ca5758-608b-6eb0-3c67-2d944b3a454d@embexus.com>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfHMj5t+WXCO7sWHhX1g8+ndTl3+WKF46XHehpXnBF9Ho5F5ElSkwK4fV7gt7fGA0GQqQ7mf2lpRIh5wWKFOYHobo0yLGP+JkfqxL9akY2wv8TVSAhvss
	GYqWtzA4O9r0LCmc+qEfL8eAYkEtjBwPILPxjQBaz9Q2oRppmANLE68nnXVQkrVUstiUWHFKMBGQMu9K3UueJHzgyGJ3lr5t5v8=
Cc: yocto@yoctoproject.org
Subject: Re: SRCPV and SRC_URI
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
X-List-Received-Date: Sat, 03 Jun 2017 01:09:11 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4D2D6462-1E3C-4CA4-B401-202C51EB11BB"

--Apple-Mail=_4D2D6462-1E3C-4CA4-B401-202C51EB11BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Thanks.  My recipe was actually using +=3D instead of _append and I =
tried various combinations using spaces. Not the issue.=20
The issue turned out to be something about my using patchdir=3D${S}/x in =
the file:// statement.  I removed the patchdir and no more issues.  =
Wasn=E2=80=99t needed anyway.

Thanks for the response.

Russell


> On Jun 2, 2017, at 6:34 PM, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:
>=20
>=20
>=20
> On 03.06.2017 00:26, Russell Peterson wrote:
>> Hello,
>>=20
>> I=E2=80=99m writing a new recipe and doing something I think should =
be simple but instead causes an exception when expanding SRCPV.
>>=20
>> SRCREV =3D =E2=80=9Cxxxxxxxxxxxx=E2=80=9D
>> SRC_URI =3D =E2=80=9Cgit://abc.com/xyz.git <git://abc.com/xyz.git>=E2=80=
=9D
>> PV =3D =E2=80=9C1.2+git${SRCPV}
>>=20
>> The above works fine.  Problem is, when I add a patch I get an =
exception when expanding SRCPV!?
>>=20
>> SRC_URI_append =3D =E2=80=9Cfile://myfile.patch =
<file:///myfile.patch>=E2=80=9D
>=20
> Try with a space right after the first double quote :
> SRC_URI_append =3D =E2=80=9C file://myfile.patch <>=E2=80=9D
>>=20
>> Adding that simple append line breaks my recipe.
>>=20
>> Any clues?  Seems simple but no.  I see countless other recipes that =
do this.
>>=20
>> Regards,
>>=20
>> Russell
>>=20
>>=20
>>=20
>=20
> --=20
>=20
> Ayoub Zaki
>=20
> ayoub.zaki@embexus.com <mailto:ayoub.zaki@embexus.com>
> Mobile: +49(0)176-62901545
> https://embexus.com <https://embexus.com/>

--Apple-Mail=_4D2D6462-1E3C-4CA4-B401-202C51EB11BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Thanks. &nbsp;My recipe was actually using +=3D instead of =
_append and I tried various combinations using spaces. Not the =
issue.&nbsp;<div class=3D"">The issue turned out to be something about =
my using patchdir=3D${S}/x in the file:// statement. &nbsp;I removed the =
patchdir and no more issues. &nbsp;Wasn=E2=80=99t needed =
anyway.</div><div class=3D""><br class=3D""></div><div class=3D"">Thanks =
for the response.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Russell</div><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 2, 2017, at 6:34 PM, Ayoub Zaki &lt;<a =
href=3D"mailto:ayoub.zaki@embexus.com" =
class=3D"">ayoub.zaki@embexus.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8" class=3D"">
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF" class=3D""><p class=3D""><br =
class=3D"">
    </p>
    <br class=3D"">
    <div class=3D"moz-cite-prefix">On 03.06.2017 00:26, Russell Peterson
      wrote:<br class=3D"">
    </div>
    <blockquote type=3D"cite" =
cite=3D"mid:7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net" class=3D"">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8" class=3D"">
      Hello,
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">I=E2=80=99m writing a new recipe and doing =
something I think
        should be simple but instead causes an exception when expanding
        SRCPV.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">SRCREV =3D =E2=80=9Cxxxxxxxxxxxx=E2=80=9D</div>
      <div class=3D"">SRC_URI =3D =E2=80=9C<a =
href=3D"git://abc.com/xyz.git" class=3D"" =
moz-do-not-send=3D"true">git://abc.com/xyz.git</a>=E2=80=9D</div>
      <div class=3D"">PV =3D =E2=80=9C1.2+git${SRCPV}</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">The above works fine. &nbsp;Problem is, when I add =
a
        patch I get an exception when expanding SRCPV!?</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">SRC_URI_append =3D =E2=80=9C<a =
href=3D"file:///myfile.patch" class=3D"" =
moz-do-not-send=3D"true">file://myfile.patch</a>=E2=80=9D</div>
    </blockquote>
    <br class=3D"">
    Try with a space right after the first double quote :<br class=3D"">
    SRC_URI_append =3D =E2=80=9C<a class=3D""> =
file://myfile.patch</a>=E2=80=9D<br class=3D"">
    <blockquote type=3D"cite" =
cite=3D"mid:7F0D1533-4933-4618-B5E8-E953E64061D1@comcast.net" class=3D"">
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Adding that simple append line breaks my =
recipe.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Any clues? &nbsp;Seems simple but no. &nbsp;I see =
countless
        other recipes that do this.</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Regards,</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">Russell</div>
      <div class=3D""><br class=3D"">
      </div>
      <br class=3D"">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br class=3D"">
    </blockquote>
    <br class=3D"">
    <pre class=3D"moz-signature" cols=3D"72">--=20

Ayoub Zaki

<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
<a class=3D"moz-txt-link-freetext" =
href=3D"https://embexus.com/">https://embexus.com</a></pre>
  </div>

</div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_4D2D6462-1E3C-4CA4-B401-202C51EB11BB--
