Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66335E00C18; Mon, 17 Oct 2016 18:31:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
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
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46413E00A7D
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:31:48 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id s8so13764563pfj.2
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 18:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=18H8Dh3nX0+iVxdQQBP/gdEp9TuP+ui40mikHvVc/dE=;
	b=iZH0IyEfvxt7yIHpVUvsq77V4PvTYOaG96J2LQBwvtV4nVToY4oDAfmLApnjhVUBjF
	Bu/JmzQRlqM99yyQmvpvFvXA+PbWo1YYZowxY8tphZAOQPR6KJTt5vULFZPT4PitDlGV
	D5PpXkQfdezERRTKmL0ZmorJw2GypZIK4A7bqYj5EYPRsjRqGDsyMa5lhLIG0Sv29pcR
	IyMsqwxdtTYwRrO/2aoe9fpJpD8So1W0/uPIwnl80z2Bcg//g3PGHSMOxdHMlqD5dfku
	+W86TgLXx0s1ibFq9/j9cBXvMF5OcHwNadAR7A1a6ItmD5scbyXfLg+5NlVG8mr8YMCR
	a28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=18H8Dh3nX0+iVxdQQBP/gdEp9TuP+ui40mikHvVc/dE=;
	b=jOXoIKTbHej/JtPObkDPP44bT9OJ+g+bRMdcXs/hAA0JzrU1nHlo0+1vZ0rKStVGR5
	JLdIZZ1kW1tyQkjbIfGbvFuAla3RDB2E5UwsZf3SnxKq8esLosWvtjDsovMnuuiHKNK5
	suQ7W6zYhxFpI7qMO6i7ymvKn6H6BVLBDY396VGfvVSLWBFyFRNVCraRAIeQSEPj2c3r
	Cfitypo4OE5JV62rEFg3JfDdTxt0g27gAr/ZlzkBn2ngGW2vx2vjbSaWJMUcUrOI8ZOH
	okMVMthopwBk+U8Q+bSPk1ABWhGAfoNGxr/2S74xmceUpmy+5Z+dVhIYopwbMt6gK0Sg
	VTfw==
X-Gm-Message-State: AA6/9Rkmf60E2wfkAqfCC7znqcqShnBAmt3mTCyTKdwsliJaW4nYRrYKhrKNNiNMd3c0Cg==
X-Received: by 10.98.139.193 with SMTP id e62mr594597pfl.84.1476754308681;
	Mon, 17 Oct 2016 18:31:48 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:ec00:906:f8cb:31c1?
	([2601:646:8882:b8c:ec00:906:f8cb:31c1])
	by smtp.gmail.com with ESMTPSA id
	w18sm21343145pfg.60.2016.10.17.18.31.47
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 18:31:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <a03ea6fc-d9e2-a4cc-aa0f-e66bbdfaead7@gmail.com>
Date: Mon, 17 Oct 2016 18:31:41 -0700
Message-Id: <FD5BFAE8-53CB-49D6-82BA-0D68A147266B@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
	<1476748950-21342-5-git-send-email-akuster808@gmail.com>
	<3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com>
	<a03ea6fc-d9e2-a4cc-aa0f-e66bbdfaead7@gmail.com>
To: akuster808 <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 05/17] tpm2simulator: add package
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
X-List-Received-Date: Tue, 18 Oct 2016 01:31:54 -0000
X-Groupsio-MsgNum: 32486
Content-Type: multipart/signed;
	boundary="Apple-Mail=_30D3E725-7523-4EDE-81A0-4B9D3DF3E6FE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_30D3E725-7523-4EDE-81A0-4B9D3DF3E6FE
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_65F9EE75-7695-4DCF-92B4-8C5D97A9F4AD"

--Apple-Mail=_65F9EE75-7695-4DCF-92B4-8C5D97A9F4AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Oct 17, 2016, at 6:21 PM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
> On 10/17/2016 05:13 PM, Khem Raj wrote:
>>> On Oct 17, 2016, at 5:02 PM, Armin Kuster <akuster808@gmail.com> =
<mailto:akuster808@gmail.com> wrote:
>>>=20
>>> Signed-off-by: Armin Kuster <akuster808@gmail.com> =
<mailto:akuster808@gmail.com>
>>> ---
>>> .../tpm2simulator/tpm2simulator-native_116.bb      | 25 =
++++++++++++++++++++++
>>> 1 file changed, 25 insertions(+)
>>> create mode 100644 =
recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>>>=20
>>> diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb =
b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>>> new file mode 100644
>>> index 0000000..33eaf99
>>> --- /dev/null
>>> +++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
>>> @@ -0,0 +1,25 @@
>>> +SUMMARY =3D "TPM 2.0 Simulator Extraction Script"
>>> +LICENSE =3D "BSD-2-Clause"
>>> +LIC_FILES_CHKSUM =3D =
"file://../LICENSE;md5=3D1415f7be284540b81d9d28c67c1a6b8b" =
<file://../LICENSE;md5=3D1415f7be284540b81d9d28c67c1a6b8b>
>>> +
>>> +DEPENDS +=3D "python"
>>> +
>>> +SRCREV =3D "93dc4412432013ed7bcabd42007754c68f6e362e"
>>> +SRC_URI =3D "git://github.com/stwagnr/tpm2simulator.git"
>>> +
>>> +S =3D "${WORKDIR}/git/cmake"
>>> +
>>> +PV =3D "116+git${SRCPV}"
>>> +
>>> +inherit native lib_package cmake
>>> +
>>> +EXTRA_OECMAKE =3D " \
>>> +	-DCMAKE_BUILD_TYPE=3DDebug \
>>> +	-DSPEC_VERSION=3D116 \
>>> +"
>>> +
>>> +do_configure_prepend () {
>>> +	sed -i 's/^SET =3D False/SET =3D True/' =
${WORKDIR}/git/scripts/settings.py
>> use S instead of WORKDIR
> S =3D "${WORKDIR}/git/cmake"
>=20
> that file does not reside there.

I think it will break devtool and externalsrc builds.

>=20
> the build process does a relative ref outside the "cmake" dir to run =
the scripts.
>=20
> unless you mean I should do " ${S}/../scripts/settings.py" ?
>>=20
>>> +}
>>> +
>>> +BBCLASSEXTEND =3D =93native"
>> it is not needed.
> k
>=20
> thanks for the review.
>=20
> - armin
>>=20
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


--Apple-Mail=_65F9EE75-7695-4DCF-92B4-8C5D97A9F4AD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Oct 17, 2016, at 6:21 PM, akuster808 &lt;<a =
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
    <div class=3D"moz-cite-prefix">On 10/17/2016 05:13 PM, Khem Raj =
wrote:<br class=3D"">
    </div>
    <blockquote =
cite=3D"mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com" type=3D"cite" =
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
.../tpm2simulator/tpm2simulator-native_116.bb      | 25 =
++++++++++++++++++++++
1 file changed, 25 insertions(+)
create mode 100644 recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb

diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb =
b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
new file mode 100644
index 0000000..33eaf99
--- /dev/null
+++ b/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
@@ -0,0 +1,25 @@
+SUMMARY =3D "TPM 2.0 Simulator Extraction Script"
+LICENSE =3D "BSD-2-Clause"
+LIC_FILES_CHKSUM =3D <a class=3D"moz-txt-link-rfc2396E" =
href=3D"file://../LICENSE;md5=3D1415f7be284540b81d9d28c67c1a6b8b">"file://=
../LICENSE;md5=3D1415f7be284540b81d9d28c67c1a6b8b"</a>
+
+DEPENDS +=3D "python"
+
+SRCREV =3D "93dc4412432013ed7bcabd42007754c68f6e362e"
+SRC_URI =3D "<a href=3D"git://github.com/stwagnr/tpm2simulator.git" =
class=3D"">git://github.com/stwagnr/tpm2simulator.git</a>"
+
+S =3D "${WORKDIR}/git/cmake"
+
+PV =3D "116+git${SRCPV}"
+
+inherit native lib_package cmake
+
+EXTRA_OECMAKE =3D " \
+	-DCMAKE_BUILD_TYPE=3DDebug \
+	-DSPEC_VERSION=3D116 \
+"
+
+do_configure_prepend () {
+	sed -i 's/^SET =3D False/SET =3D True/' =
${WORKDIR}/git/scripts/settings.py
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"">use S instead of WORKDIR</pre>
    </blockquote>
    S =3D "${WORKDIR}/git/cmake"<br class=3D"">
    <br class=3D"">
    that file does not reside there.<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div>I =
think it will break devtool and externalsrc builds.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
bgcolor=3D"#FFFFFF" text=3D"#000000" class=3D"">
    <br class=3D"">
    the build process does a relative ref outside the "cmake" dir to run
    the scripts.<br class=3D"">
    <br class=3D"">
    unless you mean I should do " ${S}/../scripts/settings.py" ?<br =
class=3D"">
    <blockquote =
cite=3D"mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com" type=3D"cite" =
class=3D"">
      <pre wrap=3D"" class=3D"">
</pre>
      <blockquote type=3D"cite" class=3D"">
        <pre wrap=3D"" class=3D"">+}
+
+BBCLASSEXTEND =3D =93native"
</pre>
      </blockquote>
      <pre wrap=3D"" class=3D"">it is not needed.</pre>
    </blockquote>
    k<br class=3D"">
    <br class=3D"">
    thanks for the review.<br class=3D"">
    <br class=3D"">
    - armin<br class=3D"">
    <blockquote =
cite=3D"mid:3068B16C-E69A-4A25-A210-688E4248AA9A@gmail.com" type=3D"cite" =
class=3D"">
      <pre wrap=3D"" class=3D"">
</pre>
      <blockquote type=3D"cite" class=3D"">
        <pre wrap=3D"" class=3D"">--
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

--Apple-Mail=_65F9EE75-7695-4DCF-92B4-8C5D97A9F4AD--

--Apple-Mail=_30D3E725-7523-4EDE-81A0-4B9D3DF3E6FE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgFe4IACgkQuwUzVZGdMxQRxgCfa2ToMxbFQ6LfrJ7u507CnMCU
4UYAnjRVBOLlLoMUFSC8p3LtKgeKzH51
=4pfO
-----END PGP SIGNATURE-----

--Apple-Mail=_30D3E725-7523-4EDE-81A0-4B9D3DF3E6FE--
