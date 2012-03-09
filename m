Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BBDBE013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 08:40:28 -0800 (PST)
Received: by pbbjt11 with SMTP id jt11so3227301pbb.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 08:40:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=3fVYREDIKCxFxZ6+F02eEJtbii85M2jYb0S44dXrV6M=;
	b=RczpHIX36VCQNViLhpor2/F4KSDQew7FlxHHbTEhArsFXntiCpy7r81X1Zk3smRqY5
	bKrrCbKpJZSSqZvnN6jqgsi/y/VR0q3G1IcAqPK5p/nnwM2VEs26Alwwdf6xTunrXPuy
	TGIhcYTis1NjqqxyZCTP5KoxOoK5h5SirfSgsE2Wo8Jhm/e2R8Ua+3+Bc+zkZ3QUrjyh
	hJTIGGHBvBVE5ndXNxS31ClF4Xi3keDR0z2CA45bUbWRfQ63CgwbvH05w9dah9KJ5FAu
	rpf4gzDzXSyTrNFSyhg+QIAW5FDeBSxdFFyQNOrWk2ZlQ6vqQlmA0AyFsn05O/PtMlp1
	826g==
MIME-Version: 1.0
Received: by 10.68.241.102 with SMTP id wh6mr5109747pbc.148.1331311228320;
	Fri, 09 Mar 2012 08:40:28 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.12.11 with HTTP; Fri, 9 Mar 2012 08:40:28 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1203090547080.16743@oneiric>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
Date: Fri, 9 Mar 2012 08:40:28 -0800
X-Google-Sender-Auth: 2yrX2cm5kw9yAeF8fN2xo4vQkpw
Message-ID: <CA+gsK-qbXAMDcgB+puZFuYJ++d=V4FB4Z9_6scF+3b7Qy92UHw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmejkNyK9aoFqLmJvDeRf8VDefnO7s56mBgRrUvIyYQbCIcdoXZiKsxYSWu9nPHNGL181sS
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: contradictory explanations of IMAGE_INSTALL in yocto manuals
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
X-List-Received-Date: Fri, 09 Mar 2012 16:40:28 -0000
Content-Type: multipart/alternative; boundary=047d7b339d19d97cdb04bad20c11

--047d7b339d19d97cdb04bad20c11
Content-Type: text/plain; charset=ISO-8859-1

I tried the versions _append and += as well as _prepend and =+ with the
IMAGE_INSTALL and other variables. So far I have not run into any issues
where one would behave differently from the other. The only thing you have
to remember with the _append and _prepend versions is that you have to
include a space at the beginning for _append and at the end for _prepend.
Although I have found that not always to be consistent either. However, an
additional space does not hurt.

Rudi

--047d7b339d19d97cdb04bad20c11
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span style>I tried the versions _append and +=3D as well as _prepend and =
=3D+ with the IMAGE_INSTALL and other variables. So far I have not run into=
 any issues where one would behave differently from the other. The only thi=
ng you have to remember with the _append and _prepend versions is that you =
have to include a space at the beginning for _append and at the end for _pr=
epend. Although I have found that not always to be consistent either. Howev=
er, an additional space does not hurt.</span><div style>
<br></div><div style>Rudi</div><br><div class=3D"gmail_quote"><br></div>

--047d7b339d19d97cdb04bad20c11--
