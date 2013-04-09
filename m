Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82710E0121A
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 08:53:14 -0700 (PDT)
Received: by mail-bk0-f46.google.com with SMTP id je9so3752339bkc.19
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 08:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=5sqnbDmF66x8ztnr0Lqou3nvjCffhlr61Ki57gm0Cl4=;
	b=Su2/jMfcf5vkOgF4YxeLd2rpWoLlgsAry31yMJ9Agsp14YY7W1B291L59dPpxYH73x
	/FYc5EMIgPDWmf5Plh1zVhCotfw5yqJV8+G0Tnq8WuI7YhGRzmaYPw13jEd8I1kv0xf2
	L27t9wZpcwR6QQz5L0WBO4X/YP//y0yuUuVmI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=5sqnbDmF66x8ztnr0Lqou3nvjCffhlr61Ki57gm0Cl4=;
	b=MoVCmY2HBmCN9g+0Y6AhCEogl75QEkAYmUPZELOzk/KO/fPLk+WhkyfLZKVCYEqACv
	dBmicd/CuHimf+JI+cSkUo4408PH1wH77W7lNKHFsyq2pQ7U+9L/d3ITtD+eWs6GiW2D
	I2zFSt43kJvErjCk3+VX4C9uAXPLX6q75sTsEMwWUvQzj94e3S1KfwqqgS/+6NDyBeu4
	0lTxV0cf0x62PkHTgN/4jnXhy3qAG6SUls4z0kTbj7Bilvlm4qfTWrSXCkZCOOD/XIna
	jsqDTJPVyQoHKQRGUAPOlFllPyRUVih0ua4i0CMcdhFA779xBh3e+nxVaGbrv3hRV0cU
	TANQ==
MIME-Version: 1.0
X-Received: by 10.205.13.138 with SMTP id pm10mr12887173bkb.73.1365522792714; 
	Tue, 09 Apr 2013 08:53:12 -0700 (PDT)
Received: by 10.204.237.74 with HTTP; Tue, 9 Apr 2013 08:53:12 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304090906420.6611@oneiric>
References: <alpine.DEB.2.02.1304090833380.5655@oneiric>
	<alpine.DEB.2.02.1304090906420.6611@oneiric>
Date: Tue, 9 Apr 2013 08:53:12 -0700
Message-ID: <CA+gsK-rkshysgO-SUnGFUe9GY2VwoeU4GVStP2sZZ2PKnN599w@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkWKMynsmlLDVsKhSwlIWakBpP4+xaDyWVpImwUE/pDsTYgrEYunIqyVwUN4ji9HhrECUWH
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: i think the list of "required software" needs to be clarified
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
X-List-Received-Date: Tue, 09 Apr 2013 15:53:14 -0000
Content-Type: multipart/alternative; boundary=20cf30223a47fe43c004d9ef8c2c

--20cf30223a47fe43c004d9ef8c2c
Content-Type: text/plain; charset=ISO-8859-1

In a sense yes. From how I understand it, anything that is listed as a
required utility in SANITY_REQUIRED_UTILITIES does not even have to be
listed in ASSUME_PROVIDED. The required native utilites should fail the
sanity test right away if they are not there.

For any dependency listed in ASSUME_PROVIDED BitBake will not attempt to
build it. But for instance, even if you do not list "tar-native" in
ASSUME_PROVIDED there is no way for BitBake to build tar since the recipe's
SRC_URI points to a tarball. Catch22.

However, I would expect that all the build essentials (awk make wget tar
bzip2 gzip python unzip perl patch diffutils diffstat git cpp gcc gcc-c++
eglibc-devel texinfo chrpath ccache) are listed in
SANITY_REQUIRED_UTILITIES.

A reason I could see to list all of the required native utilities in
ASSUME_PROVIDED could be the dependency graphs. It does not really add any
value to show the native stuff in the graphs.

:rjs

--20cf30223a47fe43c004d9ef8c2c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In a sense yes. From how I understand it, anything that is=
 listed as a required utility in SANITY_REQUIRED_UTILITIES does not even ha=
ve to be listed in ASSUME_PROVIDED. The required native utilites should fai=
l the sanity test right away if they are not there.<div>
<br></div><div>For any dependency listed in ASSUME_PROVIDED BitBake will no=
t attempt to build it. But for instance, even if you do not list &quot;tar-=
native&quot; in ASSUME_PROVIDED there is no way for BitBake to build tar si=
nce the recipe&#39;s SRC_URI points to a tarball. Catch22.<div>
<br></div><div style>However, I would expect that all the build essentials =
(<span style=3D"color:rgb(51,51,51)">awk make wget tar bzip2 gzip python un=
zip perl patch diffutils diffstat git=A0</span><span style=3D"color:rgb(51,=
51,51)">cpp gcc gcc-c++ eglibc-devel texinfo chrpath ccache) are listed in =
SANITY_REQUIRED_UTILITIES.</span></div>
<div style><span style=3D"color:rgb(51,51,51)"><br></span></div><div style>=
<font color=3D"#333333">A reason I could see to list all of the required na=
tive utilities in ASSUME_PROVIDED could be the dependency graphs. It does n=
ot really add any value to show the native stuff in the graphs.</font></div=
>
<div style><font color=3D"#333333"><br></font></div><div style><font color=
=3D"#333333">:rjs</font></div><div class=3D"gmail_extra"><br><br>
</div></div></div>

--20cf30223a47fe43c004d9ef8c2c--
