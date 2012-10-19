Return-Path: <peachj@lexmark.com>
Received: from exprod8og117.obsmtp.com (exprod8og117.obsmtp.com [64.18.3.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F0A7E00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 09:03:48 -0700 (PDT)
Received: from mail-qa0-f72.google.com ([209.85.216.72]) (using TLSv1) by
	exprod8ob117.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUIF51TSDS4pvySz49GAAoHWvD5e2b9K1@postini.com;
	Fri, 19 Oct 2012 09:03:48 PDT
Received: by mail-qa0-f72.google.com with SMTP id s11so653087qaa.11
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 09:03:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=s+T45ffip4SNaHYJp/eUlKL/aQEBJ5koqQ3CvZxLV10=;
	b=F+LqMmCK2njC2Ac9nE2JhGrdxhgXJGQ4KQ6xbuAOPhijadr8+nEGCgu0KcBl3HK18y
	CsIBN1e0O8qXCZOhfd2xrxayIjAtRrjcjIJBoVNZloUOiSMKvpw1WF/scOhpQ0elZ1FM
	xi7crrAgmPY/Lonmpa60tmUql9PgJPyBOGNYz2seniWNj2vbKEUAKEv37Toiwk11Ldvw
	Khhx/JNuoJJF2Wb7i0MEIt15oRTg5TTKKYcB85+cFCEnOdmUdxjpKdOPCg9ad3SaLgFf
	6wNOJDv1na2x2FjswHJleberQQzGn7Pt3ap8u8Av76x9UpWGGp3F6SMJ3i6/qPKw6/Nl
	67fA==
Received: by 10.224.183.146 with SMTP id cg18mr920249qab.7.1350662613022;
	Fri, 19 Oct 2012 09:03:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.183.146 with SMTP id cg18mr920246qab.7.1350662612941; Fri,
	19 Oct 2012 09:03:32 -0700 (PDT)
Received: by 10.49.107.136 with HTTP; Fri, 19 Oct 2012 09:03:32 -0700 (PDT)
Date: Fri, 19 Oct 2012 12:03:32 -0400
Message-ID: <CA+QkY1AjaZA1QUU1MyLMz3+N3GndR4jB=U=MgaWE3rjgb1udFQ@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmOmIqIF+TnpsvS53/UVuAymKNwZX6IwgW8nlreOIR+c3jnL/37PV4hB0jrl0C+IAhZLn+qogjSEm3z1BN0CXMjqsgMYUJp47TYcINc9X4k/cIJWSybYvtNEvX9RR9wds/RKzfhPCh/fokGWDoiw6hUjOykEw==
Subject: openssl-native doesn't play nice with sstate (mirrors)?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2012 16:03:48 -0000
Content-Type: multipart/alternative; boundary=20cf302d4cde417b0e04cc6ba549

--20cf302d4cde417b0e04cc6ba549
Content-Type: text/plain; charset=ISO-8859-1

All,

I ran into an issue yesterday when trying to run the openssl binary that
comes out of the openssl-native package.  I had previously built
openssl-native in another location as another user, and that sstate entry
was copied out to an sstate mirror.  I then built openssl-native in my
personal workspace.  That worked fine; I got a cache hit from the sstate
mirror.  However, when trying to run openssl-native (just the openssl
binary itself, no arguments), I got this fatal error:

140295424861888:error:0200100D:system library:fopen:Permission
denied:bss_file.c:169:fopen('<path to original build
directory>/openssl.cnf','rb')
140295424861888:error:2006D002:BIO routines:BIO_new_file:system
lib:bss_file.c:174:
140295424861888:error:0E078002:configuration file routines:DEF_LOAD:system
lib:conf_def.c:199:

In this case, it seemed openssl wanted to find a config to its original
build location, but it wasn't allowed to find it in this case, because that
directory was owned by a different user.  Grepping through the binary and
openssl's *.so files, I found a ton of references to the original build
directory.  I was finally able to get around this behavior by setting a
couple of environment variables to point to the current directory of the
binary (namely, OPENSSLDIR and OPENSSL_CONF), but is this expected
behavior?  Is there some workaround that gets prevents the user of
openssl-native from having to set those environment variables?  Or, is this
a bug in the way openssl-native is built?

Kind regards,

Jerrod

--20cf302d4cde417b0e04cc6ba549
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>I ran into an issue yesterday when trying to run th=
e openssl binary that comes out of the openssl-native package. =A0I had pre=
viously built openssl-native in another location as another user, and that =
sstate entry was copied out to an sstate mirror. =A0I then built openssl-na=
tive in my personal workspace. =A0That worked fine; I got a cache hit from =
the sstate mirror. =A0However, when trying to run openssl-native (just the =
openssl binary itself, no arguments), I got this fatal error:</div>
<div><br></div><div><div>140295424861888:error:0200100D:system library:fope=
n:Permission denied:bss_file.c:169:fopen(&#39;&lt;path to original build di=
rectory&gt;/openssl.cnf&#39;,&#39;rb&#39;)</div><div>140295424861888:error:=
2006D002:BIO routines:BIO_new_file:system lib:bss_file.c:174:</div>
<div>140295424861888:error:0E078002:configuration file routines:DEF_LOAD:sy=
stem lib:conf_def.c:199:</div></div><div><br></div><div>In this case, it se=
emed openssl wanted to find a config to its original build location, but it=
 wasn&#39;t allowed to find it in this case, because that directory was own=
ed by a different user. =A0Grepping through the binary and openssl&#39;s *.=
so files, I found a ton of references to the original build directory. =A0I=
 was finally able to get around this behavior by setting a couple of enviro=
nment variables to point to the current directory of the binary (namely, OP=
ENSSLDIR and=A0OPENSSL_CONF), but is this expected behavior? =A0Is there so=
me workaround that gets prevents the user of openssl-native from having to =
set those environment variables? =A0Or, is this a bug in the way openssl-na=
tive is built?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div>

--20cf302d4cde417b0e04cc6ba549--
