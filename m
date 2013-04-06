Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A8AE01523
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2013 07:51:15 -0700 (PDT)
Received: by mail-pb0-f46.google.com with SMTP id rp8so2480738pbb.19
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2013 07:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=qggfRLXB0wNOutWtWa4rBq/RhHsuOPHzQnfHSIr18Kw=;
	b=kFpc6idsLiXBbyt5iEMekhKf/zPh2r87MVPw5wNQV0c0fF+/bNTtRY53fQKONRVHdu
	nINc+a34k57vf34bqSbUCcrerrvkslQmRfcV9JV5+kGLWm1dfT2wjCeL3RRnCD2Vi47p
	Cd7E7qKZ9ZDph8I9sQRGyQkm7Zbjp/ycjniayTVZM5fWP4BgeGXqfuMEJ1k7yyqWCJv8
	2vGYMWOrAu8hbTun84iAfGRyGjWoPF1H0zplAUlvsZ0LKfCSk+dvE0AoAk7efRWojF6b
	jqjcdOh4zZtDSsJhiQ/un8EQmtgN6CIx5yyVGfZ7joOi0kvdxQi3npnWwBwiMlX8caHd
	5LWw==
X-Received: by 10.68.202.196 with SMTP id kk4mr20355005pbc.186.1365259875416; 
	Sat, 06 Apr 2013 07:51:15 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id kl4sm18678290pbc.31.2013.04.06.07.51.13
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 06 Apr 2013 07:51:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nyhqnu4JZjsW2m4+pqTwH1mtexXKynJcEZ3=BdjSL+NDQ@mail.gmail.com>
Date: Sat, 6 Apr 2013 07:51:12 -0700
Message-Id: <7E585C08-EF4C-4425-98C8-B7C3AF6A9C4F@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
	<6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
	<CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
	<EC024295-DFE9-4D1A-9EE5-DD7A02EACB5D@gmail.com>
	<CANwz6nyFgN_e_JfSKKm-8_teQkvETkFAsBxpo3HS5nUFeyfp4A@mail.gmail.com>
	<CANwz6nybr1j-K=JgfOdhCTyefQ-4FnEYkm-KOMUVZWtapRJSOg@mail.gmail.com>
	<CANwz6nyhqnu4JZjsW2m4+pqTwH1mtexXKynJcEZ3=BdjSL+NDQ@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Sat, 06 Apr 2013 14:51:15 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_4C88E5BD-6929-4C16-AA17-B0CA1688F806"

--Apple-Mail=_4C88E5BD-6929-4C16-AA17-B0CA1688F806
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 6, 2013, at 4:30 AM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> If I don't set libgfortran my image completes okay. When libgfortran =
in gcc-config-runtime.inc I get do_compile error
>=20
>=20

OK, did you try to run/build any fortran programs with this image.=

--Apple-Mail=_4C88E5BD-6929-4C16-AA17-B0CA1688F806
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Apr 6, 2013, at 4:30 AM, Edward Vidal &lt;<a =
href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><p style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; ">If I don't set libgfortran my image =
completes okay. When libgfortran in gcc-config-runtime.inc I get =
do_compile error</p><br =
class=3D"Apple-interchange-newline"></blockquote></div><br><div>OK, did =
you try to run/build any fortran programs with this =
image.</div></body></html>=

--Apple-Mail=_4C88E5BD-6929-4C16-AA17-B0CA1688F806--
