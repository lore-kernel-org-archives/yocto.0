Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1F94E008FA
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:04:40 -0800 (PST)
Received: by mail-pa0-f43.google.com with SMTP id rd3so2743059pab.16
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 09:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=GTHzcMryP6O4+t1RwoxC7ZJL5whRGqrOOa3s2+0br3c=;
	b=zKQLpeQfTBEovHJoUvHDo2dh72rZV0T9kXuwZrdPAHVIMe3dC8sr0rcHEwN0z0a6n4
	BaE27Y5+/FfFVn8UiHKSPywTyp2IK17myvhtHTOuOb42EAxoNo1qaELkaJks21ppaSZr
	Pkjr76iT+IHf7jAmr15laOl6zWNX45ysfkpa9MxcbJvSFYXV7HUz4espYBJ0bV37l7aM
	Gi7dPF1WKPxxqP2QptL7S5KRwCuMjISuBznHVRpLs0l+ZVzKKSNeSGETwIBWL0Ki2JKY
	YB8GQ9d8CsMxk17ABjaMFuOLr5omPfoSoqli4BqffnUOhyXKHClZzTLAPTmzjCoPzMQl
	p8rw==
X-Received: by 10.66.193.202 with SMTP id hq10mr16256179pac.57.1393520679992; 
	Thu, 27 Feb 2014 09:04:39 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	ug9sm12179427pbc.11.2014.02.27.09.04.36 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Feb 2014 09:04:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <530F68E7.9000507@dynamicdevices.co.uk>
Date: Thu, 27 Feb 2014 09:04:35 -0800
Message-Id: <D501F94C-E1AB-4593-92EE-57D633EE0CD5@gmail.com>
References: <cover.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<afe40f17c9ce99846e69584fe14e5083efc90207.1393510407.git.ajlennon@dynamicdevices.co.uk>
	<B124B2C9-2644-4E26-BBD2-D465284C00FE@gmail.com>
	<530F60C9.7090204@dynamicdevices.co.uk>
	<6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com>
	<530F68E7.9000507@dynamicdevices.co.uk>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mono] [PATCH 1/1] gtk-sharp: Updated to GTK# 2.12.21
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
X-List-Received-Date: Thu, 27 Feb 2014 17:04:42 -0000
X-Groupsio-MsgNum: 18243
Content-Type: multipart/signed;
	boundary="Apple-Mail=_CE19A50B-BCB7-440A-BAE6-0573E1037054";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_CE19A50B-BCB7-440A-BAE6-0573E1037054
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_69C6C6E9-1DC0-4AC2-8311-FC6F07699783"

--Apple-Mail=_69C6C6E9-1DC0-4AC2-8311-FC6F07699783
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On Feb 27, 2014, at 8:33 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk> wrote:

>=20
> On 27/02/2014 16:30, Khem Raj wrote:
>>=20
>> On Feb 27, 2014, at 7:59 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk> wrote:
>>=20
>>>=20
>>> On 27/02/2014 15:50, Khem Raj wrote:
>>> >
>>>=20
>>>               > On Feb 27, 2014, at 6:16 AM, Alex J Lennon =
<ajlennon@dynamicdevices.co.uk>
>>>               wrote:
>>>=20
>>>               >
>>>=20
>>>               >> +PR =3D "r1"
>>>=20
>>>               >> +
>>>=20
>>>               >
>>>=20
>>>               > get rid of that
>>>=20
>>> Why is that Khem?
>>>=20
>>=20
>> we have automatic PR server now a days, its enabled by default.=20
>=20
> OK thanks. These are on all / most of the recipes currently in =
meta-mono, so I'll just remove all occurences of ${PR} then (?)

well, whenever you upgrade thats when you will do it. if PR is larger =
than 0 but if you have PR =3D =93r0=94 that you can remove now

>=20
> Rgds, Alex
>=20


--Apple-Mail=_69C6C6E9-1DC0-4AC2-8311-FC6F07699783
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;"><br><div><div>On Feb 27, 2014, at 8:33 AM, Alex J =
Lennon &lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.u=
k</a>&gt; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite">
 =20
    <meta content=3D"text/html; charset=3DISO-8859-1" =
http-equiv=3D"Content-Type">
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <div class=3D"moz-cite-prefix">On 27/02/2014 16:30, Khem Raj =
wrote:<br>
    </div>
    <blockquote =
cite=3D"mid:6621EB19-F8E0-4CF6-8070-841D28363501@gmail.com" type=3D"cite">=

      <meta http-equiv=3D"Content-Type" content=3D"text/html;
        charset=3DISO-8859-1">
      <br>
      <div>
        <div>On Feb 27, 2014, at 7:59 AM, Alex J Lennon &lt;<a =
moz-do-not-send=3D"true" =
href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.u=
k</a>&gt;
          wrote:</div>
        <br class=3D"Apple-interchange-newline">
        <blockquote type=3D"cite">
          <meta content=3D"text/html; charset=3DISO-8859-1" =
http-equiv=3D"Content-Type">
          <div text=3D"#000000" bgcolor=3D"#FFFFFF"> <br>
            On 27/02/2014 15:50, Khem Raj wrote:<br>
            <span style=3D"white-space: pre;">&gt;<br>
              &gt; On Feb 27, 2014, at 6:16 AM, Alex J Lennon <a =
moz-do-not-send=3D"true" class=3D"moz-txt-link-rfc2396E" =
href=3D"mailto:ajlennon@dynamicdevices.co.uk">&lt;ajlennon@dynamicdevices.=
co.uk&gt;</a>
              wrote:<br>
              &gt;<br>
              &gt;&gt; +PR =3D "r1"<br>
              &gt;&gt; +<br>
              &gt;<br>
              &gt; get rid of that</span><br>
            <br>
            Why is that Khem?<br>
            <br>
          </div>
        </blockquote>
      </div>
      <br>
      <div>we have automatic PR server now a days, its enabled by
        default.&nbsp;</div>
    </blockquote>
    <br>
    OK thanks. These are on all / most of the recipes currently in
    meta-mono, so I'll just remove all occurences of ${PR} then =
(?)<br></div></blockquote><div><br></div><div>well, whenever you upgrade =
thats when you will do it. if PR is larger than 0 but if you have PR =3D =
=93r0=94 that you can remove now</div><br><blockquote type=3D"cite"><div =
text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    Rgds, Alex<br>
    <br>
    <div class=3D"moz-signature">
      <div class=3D"preview"> </div>
    </div>
  </div>

</blockquote></div><br></body></html>=

--Apple-Mail=_69C6C6E9-1DC0-4AC2-8311-FC6F07699783--

--Apple-Mail=_CE19A50B-BCB7-440A-BAE6-0573E1037054
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlMPcCMACgkQuwUzVZGdMxRhMgCgjANaHCtvQWb51u9X3dkmpNRV
i1MAn2uYKbqXq+gozZy692TX9yI9FcS3
=DQvt
-----END PGP SIGNATURE-----

--Apple-Mail=_CE19A50B-BCB7-440A-BAE6-0573E1037054--
