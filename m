Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3309E00D40; Mon, 17 Oct 2016 18:32:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E928DE00D0E
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:32:18 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id 128so13793854pfz.1
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=GGNPX17LTgWXX0i/0h6weYkpeWueddRMfJq+MZEGYwc=;
	b=Jdvssn0fKeBiACr51xnPd5ZpmPnDYRwUstslHd0Xr21Ke/ALewTK0TgpMWJZaoFVAr
	sayzB9I4f+TKdvYPd9bXfTzSv5MeCyMl/TrZ7rVIaYXjFKYRZwW9AJkADhh0agMsEX14
	OuisoNwIW4XuucBZLqfZaqFxjIvCoCkC1BhQCXa8N0V+dELtJXWZI7i17yWWeq+euv1I
	RaiKQeuPrd1Zw8q8BTKjIeWhmgJjmmKKUj+w05htI0izHTu0KARIQCf9h+Ugss1PXSSX
	R7mxyqAXbq2zdUsk+TdZUobTuSM34x7sB4pnMEE6sYCa1ANznuch+wSlJczqCYFVj/p4
	bugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=GGNPX17LTgWXX0i/0h6weYkpeWueddRMfJq+MZEGYwc=;
	b=O2RkXVXQrPjWZEw7mEVcu6YMCr8x682uwecyV96H3ZAtTQh7PZqbGjCN0UP0csdSnX
	qMddwquFof8WjeQPbXx+/DrDyzSWzarmc/yfmHLy5agEIHROODlvjgrZr0px1B6IX5QR
	jnGqG+WSFMaO+FvCmeG0Q0C6DNuh8xYQz+lQdE1mSK/BdQ9t59fk4Y4z3W1CvyfJrjGB
	zh9qtH21AvfR/CvHrta5Yvl5XAB+9Klv4gLzQUL0+T3npZEYQwux0Tlq6/isEYmbjE75
	GryflinQsNiSpAGL2xSZliRxmEXGJg7n6j7bWskUo4HV/hgW+tgK09jE8OMQaR843zHJ
	GivA==
X-Gm-Message-State: AA6/9Rkn2dcVk8d7NYMKs49N8FudUAlg7hzIB87CATKEIGjaZo/v3DQzQOhyvbKQXLEdUA==
X-Received: by 10.99.132.195 with SMTP id k186mr451765pgd.119.1476754338350;
	Mon, 17 Oct 2016 18:32:18 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id
	w18sm21343145pfg.60.2016.10.17.18.32.17
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 18:32:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <98085902-b4ca-f333-c008-026226851f18@gmail.com>
Date: Mon, 17 Oct 2016 18:32:17 -0700
Message-Id: <3521F37E-952E-4DD5-A805-4F6C4AD86F46@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-2-git-send-email-akuster808@gmail.com>
	<50477F55-24E5-48C3-B584-15BB8265234B@gmail.com>
	<98085902-b4ca-f333-c008-026226851f18@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 02/17] tpm-tools: add native support
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
X-List-Received-Date: Tue, 18 Oct 2016 01:32:27 -0000
X-Groupsio-MsgNum: 32487
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6838298C-5A47-4AE6-A4E6-0F54F227445E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6838298C-5A47-4AE6-A4E6-0F54F227445E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CDED1FDA-775B-4D3F-9984-6EAD5E0E3A12"

--Apple-Mail=_CDED1FDA-775B-4D3F-9984-6EAD5E0E3A12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Oct 17, 2016, at 6:29 PM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
> On 10/17/2016 05:10 PM, Khem Raj wrote:
>>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
<mailto:akuster808@gmail.com> wrote:
>>>=20
>>> Signed-off-by: Armin Kuster <akuster808@gmail.com> =
<mailto:akuster808@gmail.com>
>>> ---
>>> recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
>>> recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 =
+++++++++++++++++++++++
>>> 2 files changed, 26 insertions(+)
>>> create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>>>=20
>>> diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb =
b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>>> index 5645976..99ea8ee 100644
>>> --- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>>> +++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
>>> @@ -9,6 +9,7 @@ SECTION =3D "tpm"
>>> LICENSE =3D "CPL-1.0"
>>> LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D059e8cd6165cb4c31e351f2b69388fd9" =
<file://LICENSE;md5=3D059e8cd6165cb4c31e351f2b69388fd9>
>>> DEPENDS =3D "libtspi openssl"
>>> +DEPENDS_class-native =3D "trousers-native"
>>>=20
>>> SRC_URI +=3D " \
>>>     http://downloads.sourceforge.net/project/trousers/$ =
<http://downloads.sourceforge.net/project/trousers/$>{BPN}/${PV}/${BP}.tar=
.gz \
>>> @@ -20,3 +21,5 @@ SRC_URI[md5sum] =3D =
"85a978c4e03fefd4b73cbeadde7c4d0b"
>>> SRC_URI[sha256sum] =3D =
"66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"
>>>=20
>>> inherit autotools gettext
>>> +
>>> +BBCLASSEXTEND =3D "native"
>>> diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb =
b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>>> new file mode 100644
>>> index 0000000..be49dd9
>>> --- /dev/null
>>> +++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
>>> @@ -0,0 +1,23 @@
>>> +SUMMARY =3D "Tools for TPM2."
>>> +DESCRIPTION =3D "tpm2.0-tools"
>>> +LICENSE =3D "BSD"
>>> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea819" =
<file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea819>
>>> +SECTION =3D "tpm"
>>> +
>>> +DEPENDS =3D "tpm2.0-tss openssl curl"
>>> +
>>> +SRCREV =3D "c924cc8ca752e5af6a829f893c6be4b185d56e99"
>>> +
>>> +SRC_URI =3D =
"git://github.com/01org/tpm2.0-tools.git;protocol=3Dgit;branch=3Dmaster;na=
me=3Dtpm2.0-tools;destsuffix=3Dtpm2.0-tools"
>>> +
>>> +S =3D "${WORKDIR}/tpm2.0-tools"
>>> +
>>> +PV =3D "1.0+git${SRCPV}=94
>> it seems to be 2.0 isn=92t it ?
> tpm2.0 refers to the TPM standard version 2, not the sources version. =
There are no versions on the git sources that I could decode. I will =
drop it all together and use SRCPV.
>=20


I see ok thanks

> thanks,
> Armin
>>=20
>>> +
>>> +inherit autotools-brokensep pkgconfig
>>> +
>>> +do_configure () {
>>> +	cd ${S}
>>> +	./bootstrap  --force
>>> +	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
>>> +}
>>> --
>>> 2.7.4
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>=20
>>=20
>=20


--Apple-Mail=_CDED1FDA-775B-4D3F-9984-6EAD5E0E3A12
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 17, 2016, at 6:29 PM, akuster808 &lt;<a =
href=3D"mailto:akuster808@gmail.com" =
class=3D"">akuster808@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta content=3D"text/html; charset=3Dwindows-1252" =
http-equiv=3D"Content-Type" class=3D"">
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D""><p class=3D""><br =
class=3D"">
    </p>
    <br class=3D"">
    <div class=3D"moz-cite-prefix">On 10/17/2016 05:10 PM, Khem Raj =
wrote:<br class=3D"">
    </div>
    <blockquote =
cite=3D"mid:50477F55-24E5-48C3-B584-15BB8265234B@gmail.com" type=3D"cite" =
class=3D"">
      <pre wrap=3D"" class=3D""></pre>
      <blockquote type=3D"cite" class=3D"">
        <pre wrap=3D"" class=3D"">On Oct 17, 2016, at 5:02 PM, Armin =
Kuster <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a> =
wrote:

Signed-off-by: Armin Kuster <a class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:akuster808@gmail.com">&lt;akuster808@gmail.com&gt;</a>
---
recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb     |  3 +++
recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb | 23 =
+++++++++++++++++++++++
2 files changed, 26 insertions(+)
create mode 100644 recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb

diff --git a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb =
b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
index 5645976..99ea8ee 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_1.3.8.bb
@@ -9,6 +9,7 @@ SECTION =3D "tpm"
LICENSE =3D "CPL-1.0"
LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" =
href=3D"file://LICENSE;md5=3D059e8cd6165cb4c31e351f2b69388fd9">"file://LIC=
ENSE;md5=3D059e8cd6165cb4c31e351f2b69388fd9"</a>
DEPENDS =3D "libtspi openssl"
+DEPENDS_class-native =3D "trousers-native"

SRC_URI +=3D " \
    <a class=3D"moz-txt-link-freetext" =
href=3D"http://downloads.sourceforge.net/project/trousers/$">http://downlo=
ads.sourceforge.net/project/trousers/$</a>{BPN}/${PV}/${BP}.tar.gz \
@@ -20,3 +21,5 @@ SRC_URI[md5sum] =3D "85a978c4e03fefd4b73cbeadde7c4d0b"
SRC_URI[sha256sum] =3D =
"66eb4ff095542403db6b4bd4b574e8a5c08084fe4e9e5aa9a829ee84e20bea83"

inherit autotools gettext
+
+BBCLASSEXTEND =3D "native"
diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb =
b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
new file mode 100644
index 0000000..be49dd9
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
@@ -0,0 +1,23 @@
+SUMMARY =3D "Tools for TPM2."
+DESCRIPTION =3D "tpm2.0-tools"
+LICENSE =3D "BSD"
+LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" =
href=3D"file://LICENSE;md5=3D91b7c548d73ea16537799e8060cea819">"file://LIC=
ENSE;md5=3D91b7c548d73ea16537799e8060cea819"</a>
+SECTION =3D "tpm"
+
+DEPENDS =3D "tpm2.0-tss openssl curl"
+
+SRCREV =3D "c924cc8ca752e5af6a829f893c6be4b185d56e99"
+
+SRC_URI =3D "<a =
href=3D"git://github.com/01org/tpm2.0-tools.git;protocol=3Dgit;branch=3Dma=
ster;name=3Dtpm2.0-tools;destsuffix=3Dtpm2.0-tools" =
class=3D"">git://github.com/01org/tpm2.0-tools.git;protocol=3Dgit;branch=3D=
master;name=3Dtpm2.0-tools;destsuffix=3Dtpm2.0-tools</a>"
+
+S =3D "${WORKDIR}/tpm2.0-tools"
+
+PV =3D "1.0+git${SRCPV}=94
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"">it seems to be 2.0 isn=92t it ?</pre>
    </blockquote>
    tpm2.0 refers to the TPM standard version 2, not the sources
    version. There are no versions on the git sources that I could
    decode. I will drop it all together and use SRCPV.<br class=3D"">
    <br class=3D""></div></div></blockquote><div><br =
class=3D""></div><div><br class=3D""></div>I see ok thanks</div><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    thanks,<br class=3D"">
    Armin<br class=3D"">
    <blockquote =
cite=3D"mid:50477F55-24E5-48C3-B584-15BB8265234B@gmail.com" type=3D"cite" =
class=3D"">
      <pre wrap=3D"" class=3D"">
</pre>
      <blockquote type=3D"cite" class=3D"">
        <pre wrap=3D"" class=3D"">+
+inherit autotools-brokensep pkgconfig
+
+do_configure () {
+	cd ${S}
+	./bootstrap  --force
+	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
--
2.7.4

--
_______________________________________________
yocto mailing list
<a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class=3D"moz-txt-link-freetext" =
href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yocto=
project.org/listinfo/yocto</a>
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D""></pre>
      <br class=3D"">
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br class=3D"">
    </blockquote>
    <br class=3D"">
  </div>

</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_CDED1FDA-775B-4D3F-9984-6EAD5E0E3A12--

--Apple-Mail=_6838298C-5A47-4AE6-A4E6-0F54F227445E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFe6EACgkQuwUzVZGdMxQYjQCeKKKjfDAw1OR+Nmj2LrNcZcBB
uCMAniajA9GyKQRiDd9gzyEeqctLxAc5
=ASou
-----END PGP SIGNATURE-----

--Apple-Mail=_6838298C-5A47-4AE6-A4E6-0F54F227445E--
